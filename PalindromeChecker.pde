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
  //your code here
   if(onlyLetters(noSpaces(noCapitals(word))).equals(reverse(onlyLetters(noSpaces(noCapitals(word)))))){
    return true;
  }
  else
  return false;
  
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
     sNew = "";
  for(int i = str.length()-1; i >= 0; i--){
   sNew= sNew+ str.substring(i, i+1);
  }
    return sNew;
}
public String noCapitals(String str){
  return str.toLowerCase();
}
public String noSpaces(String sWord){
  String yes = "";
  for(int i=0; i< sWord.length();i ++){
  if(sWord.substring(i,i+1).equals(" ") == false)
  yes = yes + sWord.substring(i,i+1);
  }
  return yes;
}
public String onlyLetters(String word){
  String yes= "";
  for(int i =0; i<word.length();i++){
    if(Character.isLetter(word.charAt(i)) == true)
    yes=yes + word.charAt(i);
  }
  return yes;
}
