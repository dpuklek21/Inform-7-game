"dp_projekt" by "dino".

Release along with an interpreter.
Release along with a website.
Release along with the introductory booklet.

The story description is "Probudio si se u napuštenoj bolnici. Struja polako nestaje. Istina čeka u mraku."

When play begins:
	say "Budiš se na hladnom metalnom stolu. Svjetlo u operacijsko sobi polako treperi. U daljini čuješ kako neko hoda.";

Time of blackout is a number that varies. Time of blackout is 25.

Every turn:
	decrease Time of blackout by 1;

Every turn when Time of blackout is 5:
	say "Svjetla počinju slabiti. Imaš još malo vremena.";

Every turn when Time of blackout is 0:
	say "Mrak. Bolnica te guta.";
	end the story saying "Nestao si u Odjelu 0.";

The Operating Room is a room. "Nalaziš se u hladnoj operacijskoj sali. Vidiš krvave mrlje na podu oko sebe. Ispred sebe vidiš vrata koja vode na hodnik sjeverno."

The Hallway is north of the Operating Room. "Nalaziš se u dugom mračnom hodniku. Desno od sebe vidiš vrata koja vode u sobe pacijenata, lijevo od sebe vidiš staru ordinaciju. Sjeverno od tebe nalazi se staro skladište iz kojeg se čuju koraci."

The Doctor's Office is west of the Hallway. "Nalaziš se u staroj ordinaciji. Zrak je leden. Na stolu vidiš nož."

The Patient Room is east of the Hallway. "Nalaziš se u sobi za pacijente. Vidiš prazne krevete. Jedan madrac izgleda poderano. Ugledao si ključ na madracu."

The Storage Room is north of the Hallway. "Nalaziš se u skladištu starih medicinskih materijala. Prašina prekriva sve kutije. Sjeverno od sebe vidiš podrum. Lijevo od sebe vidiš izlaz."

The Basement is a room. "Ušao si u Odjel 0. Zidovi su puni imena. Jedno ime je tvoje."

The Courtyard is a room. "Napustio si bolnicu. Noć. Kiša. Sloboda."

The Basement is north of the Storage Room.
The Courtyard is west of the Storage Room.

The knife is in the Doctor's Office.
The description of the knife is "Zahrđali kirurški nož. Još uvijek je oštar."

The brass key is in the Patient Room.
The description is "Stari ključ, skriven u madracu."

The flashlight is in the Operating Room.
The description is "Stara baterijska lampa. Još uvijek radi."

The faceless surgeon is a man in the Storage Room.
The description is "Liječnik bez lica. Zašivena koža, krvava kuta i skalpel u ruci."

The ghost doctor is a person in the Doctor's Office.
The description is "Prozirna figura u liječničkoj kuti."

Instead of talking to the ghost doctor:
	say "'Nismo ih htjeli povrijediti'. 'Samo smo htjeli popraviti smrt.'. 'Istina leži u Odjelu 0.'"

Instead of asking the ghost doctor about "odjel":
	say "'Odjel 0 je mjesto gdje završavaju neuspjesi... i istina.'"

Instead of going to the Hallway when the player does not carry the flashlight:
	say "Previše je mračno. Trebaš neku vrstu svjetla.";

Instead of going to the Storage Room when the player does not carry the knife:
	say "Nešto se miče u mraku... čuješ disanje.";
	say "Prije nego reagiraš, kirurg bez lica te napada.";
	end the story saying "Kirurg bez lica te ubio. Operacija je završena.";

Instead of going north from the Storage Room when the faceless surgeon is in the Storage Room:
	say "Čudovište blokira izlaz prema podrumu!";

Instead of going west from the Storage Room when the faceless surgeon is in the Storage Room:
	say "Čudovište blokira izlaz prema dvorištu!";

Instead of attacking the faceless surgeon:
	if the player carries the knife:
		say "Zabijaš nož u čudovište. Ono ispušta jeziv krik i pada na pod.";
		remove the faceless surgeon from play;
	otherwise:
		say "Pokušavaš se braniti golim rukama. Kirurg bez lica je snažniji od tebe.";
		end the story saying "Kirurg bez lica te ubio. Operacija je završena.";

Instead of going to the Basement when the player does not carry the brass key:
	say "Vrata prema podrumu su zaključana. Trebaš ključ.";

Instead of going to the Courtyard when the player does not carry the brass key:
	say "Izlazna vrata su zaključana. Bez ključa nema bijega.";

Instead of going to the Basement:
	say "Silaziš u Odjel 0. Na zidu vidiš svoje ime. Shvaćaš istinu.";
	end the story saying "Bio si pacijent. Operacija nije uspjela. Postao si dio bolnice.";

Instead of going to the Courtyard:
	say "Izlaziš u noć. Preživio si. Ali bolnica te nikad neće zaboraviti.";
	end the story saying "Pobjegao si... za sada.";

Understand "talk to [someone]" as talking to.
Talking to is an action applying to one visible thing.

