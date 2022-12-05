The code has been written in PS and has been successfully tested in ISE.

Usage:
1. Run the Script on ISE or PowerShell
2. User will be prompted to input the object values.
3. Once done with the object passing, user will be prompted to pass key to obtain desired value.
4. Key should be in a particular format like a.b.c or a.b 
5. Output will be shown in JSON format for readability

Considerations:
1. Error handling is in place
2. Comments have been added to the PS, wherever needed.

**PFB the sample output:**
Supply values for the following parameters:
(Type !? for Help.)
input1: abc
input2: def
input3: ghi
input4: jkl
key: abc.def
PFB the input object:
{
    "abc":  {
                "def":  {
                            "ghi":  "jkl"
                        }
            }
}
PFB the value based on the provided key
{
    "ghi":  "jkl"
}
