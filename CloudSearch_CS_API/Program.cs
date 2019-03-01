using System;
using System.Collections.Specialized;
using System.Net;


namespace CloudSearch_CS_API
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("CloudSearch - API request in .NET CORE");
            using (WebClient client = new WebClient())
            {

                byte[] response =
                client.UploadValues("https://cloudsearch.cf/api/endpoint.php", new NameValueCollection()
                {
                    { "domain", "deceptionlive.com" }
                //  { "ip", "1.1.1.1"}
                });

                string result = System.Text.Encoding.UTF8.GetString(response);
                Console.WriteLine(result);
            }
        }
    }
}
