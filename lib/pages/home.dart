import 'package:devfolio/components/footer.dart';
import 'package:devfolio/components/nav_bar.dart';
import 'package:devfolio/models/data.dart';
import 'package:devfolio/sections/about_me.dart';
import 'package:devfolio/sections/basic_info.dart';
import 'package:devfolio/sections/contact.dart';
import 'package:devfolio/sections/projects.dart';
import 'package:devfolio/sections/services.dart';
import 'package:jaspr/jaspr.dart';

// Make this a client component that receives data as parameters
@client
class Home extends StatelessComponent {
  const Home({
    required this.data,
    super.key,
  });

  // Data passed from server to client via initializing fields
  final Data data;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'home-body', [
      NavBar(),
      BasicInfoSection(
        basic: data.basic,
        socials: data.socials,
      ),
      AboutMeSection(
        about: data.about,
        basic: data.basic,
      ),
      ServicesSection(
        services: data.services,
      ),
      ProjectsSections(
        projects: data.projects,
      ),
      ContactSection(
        contacts: data.contact,
      ),
      Footer(),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.home-body')
        .box(
          width: 100.vw,
        )
        .background(
          color: Colors.black,
        ),
  ];
}
