namespace sample_tests;
using Xunit;
using sample.lib;

public class UnitTest1
{
    [Fact]
    public void SimpleOne()
    {
        int number = 1;
        string result = Converter.IntegerToString(number);
        Assert.Equal(result,"One",true);
    }
}