Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieHandleTest >> testCreationAndAddingDice [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	
	| handle |		
	handle := DieHandle new.
	handle
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10).
	self assert: handle diceNumber equals: 2.
]

{ #category : #tests }
DieHandleTest >> testCreationWithTheSameDice [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	
	| handle |		
	handle := DieHandle new addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 1.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 2.
]

{ #category : #tests }
DieHandleTest >> testMaxValue [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	
	| handle |		
	handle := DieHandle new.
	handle
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10).
	self assert: handle maxValue equals: 16.
]

{ #category : #tests }
DieHandleTest >> testRoll [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	
	| handle |		
	handle := DieHandle new.
	handle
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10).
	10 timesRepeat:
	  [ self assert: (handle roll between: handle diceNumber and: handle maxValue) ]
]

{ #category : #tests }
DieHandleTest >> testSimpleHandle [
	self assert: 2 D20 diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testSummingDSL [
	
	self assert: (3 D4 + 2 D6) diceNumber equals: 5
]
