Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieTest >> testCreatingWithNumFaces [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| die |
	die := Die withFaces: 20.
	self assert: die faces equals: 20
]

{ #category : #tests }
DieTest >> testInitialization [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| die |
	die := Die new.
	self assert: die faces equals: 6
]

{ #category : #tests }
DieTest >> testRolling [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| die |
	die := Die new.
	10 timesRepeat:
	  [ self assert: (die roll between: 1 and: 6) ]
]
