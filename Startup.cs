using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MVC_INF354.Startup))]
namespace MVC_INF354
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
