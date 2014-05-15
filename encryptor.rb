=begin 
Cryptographt Algorithms -- "ROT-13" by Julius Caesar (Ancient Rome)
	
A  N
B  O
C  P
D  Q
E  R		
F  S
G  T
H  U
I  V
J  W
K  X
L  Y
M  Z
N  A
O  B
P  C
Q  D
R  E
S  F 
T  G
U  H
V  I
W  J
X  K 
Y  L
Z  M

"Hello, World" --encrypt--> "Uryyb, Jbevq"
"anqn" --decrypted--> "nada"
=end

class Encryptor

	def cipher
		{
		'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
    'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
    'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
    'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
    'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
    'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
    'y' => 'l', 'z' => 'm'
    }
	end

	def encrypt_letter(letter)
		cipher[letter.downcase]
	end

	def encrypt(string)
		results = string.split("").collect do |letter|
			encrypt_letter(letter) 
		end	

		results.join
	end
end