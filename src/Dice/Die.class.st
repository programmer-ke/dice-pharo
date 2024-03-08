Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #initialization }
Die class >> withFaces: anInteger [ 
	| d |
	d := self new.
	d faces: anInteger.
	^ d
]

{ #category : #accessors }
Die >> faces [
 ^ faces
]

{ #category : #setter }
Die >> faces: anInteger [ 
	faces := anInteger
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
