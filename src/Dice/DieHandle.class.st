Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
DieHandle >> addDie: aDie [ 
	dice add: aDie
]

{ #category : #'as yet unclassified' }
DieHandle >> diceNumber [
	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	super initialize.
	dice := OrderedCollection new.
]
