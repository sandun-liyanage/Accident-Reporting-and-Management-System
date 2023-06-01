using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(accidentTrackingSite.Startup))]
namespace accidentTrackingSite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
