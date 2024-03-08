Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #initialization }
DieHandle >> + aDieHandle [

	| handle |
	handle := self class new.
	self dice do: [ :each | handle addDie: each ].
	aDieHandle dice do: [ :each | handle addDie: each ].
	^ handle.
]

{ #category : #'as yet unclassified' }
DieHandle >> addDie: aDie [ 
	dice add: aDie
]

{ #category : #accessing }
DieHandle >> dice [
	^ dice
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

{ #category : #initialization }
DieHandle >> maxValue [
	| result |
	result := 0.
	dice do: [ :each | result := result + each faces ].
	^ result.
]

{ #category : #initialization }
DieHandle >> roll [
	| result |
	result := 0.
	dice do: [ :each | result := result + each roll ].
	^ result.
]
