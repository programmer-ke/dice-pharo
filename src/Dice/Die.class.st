Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #accessors }
Die >> faces [
 ^ faces
]

{ #category : #initialization }
Die >> initialize [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	super initialize.
	faces := 6
]

{ #category : #accessors }
Die >> roll [
 ^ faces atRandom
]
