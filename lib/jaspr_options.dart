// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';

import 'sections/about_me.dart' as c0;
import 'components/project_card.dart' as c1;
import 'components/contact.dart' as c2;
import 'components/app_button.dart' as c3;
import 'components/nav_bar.dart' as c4;
import 'components/footer.dart' as c5;
import 'components/service_card.dart' as c6;
import 'pages/home.dart' as c7;
import 'app.dart' as c8;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
const defaultJasprOptions = JasprOptions(
  targets: {
    c0.AboutMeSection: ClientTarget<c0.AboutMeSection>('sections/about_me', params: _params0AboutMeSection),
    c1.ProjectCard: ClientTarget<c1.ProjectCard>('components/project_card', params: _params1ProjectCard),
    c2.ContactCard: ClientTarget<c2.ContactCard>('components/contact', params: _params2ContactCard),
    c3.AppButton: ClientTarget<c3.AppButton>('components/app_button', params: _params3AppButton),
    c4.NavBar: ClientTarget<c4.NavBar>('components/nav_bar'),
    c5.Footer: ClientTarget<c5.Footer>('components/footer'),
    c6.ServiceCard: ClientTarget<c6.ServiceCard>('components/service_card', params: _params6ServiceCard),
    c7.Home: ClientTarget<c7.Home>('pages/home', params: _params7Home),
    c8.App: ClientTarget<c8.App>('app'),
  },
);

Map<String, dynamic> _params0AboutMeSection(c0.AboutMeSection c) => {'about': c.about, 'basic': c.basic};
Map<String, dynamic> _params1ProjectCard(c1.ProjectCard c) =>
    {'title': c.title, 'description': c.description, 'icon': c.icon, 'banner': c.banner, 'url': c.url};
Map<String, dynamic> _params2ContactCard(c2.ContactCard c) =>
    {'icon': c.icon, 'title': c.title, 'description': c.description, 'action': c.action};
Map<String, dynamic> _params3AppButton(c3.AppButton c) =>
    {'label': c.label, 'href': c.href, 'width': c.width, 'height': c.height};
Map<String, dynamic> _params6ServiceCard(c6.ServiceCard c) => {'icon': c.icon, 'label': c.label};
Map<String, dynamic> _params7Home(c7.Home c) => {'data': c.data};
