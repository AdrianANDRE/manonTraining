# language: en
Feature: Message

	Scenario Outline: Message
		Given Je suis "prénom"
		When J'accepte la quête : <dataset>
		Then J'ai un message de confirmation

		@MacGuffin
		Examples:
		| dataset |
		| "Trouver le MacGuffin et le mettre en sûreté" |