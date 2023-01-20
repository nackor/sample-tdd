namespace sample_tests;
using Xunit;
using sample.lib;

public class Convert_IntegerToString_Tests
{
    [Fact]
    public void SimpleOne()
    {
        int number = 1;
        string result = Converter.IntegerToString(number);
        Assert.Equal("One",result,true);
    }
}