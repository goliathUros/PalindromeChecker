public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String newWord = new String();
  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)) == true)
    {
      newWord = newWord + word.charAt(i);
    }
  }
  newWord = newWord.toLowerCase();
  for(int i = 0; i < newWord.length()/2; i++)
  {
    if(newWord.charAt(i) != newWord.charAt(newWord.length()-1-i))
    {
      return false;
    }
  }
  return true;
}