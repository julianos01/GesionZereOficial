using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GZere.Startup))]
namespace GZere
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
