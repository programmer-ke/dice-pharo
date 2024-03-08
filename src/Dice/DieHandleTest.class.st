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
