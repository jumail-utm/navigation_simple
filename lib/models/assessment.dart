import 'group_member.dart';

class Assessment {
  GroupMember member;
  List<int> points;

  Assessment(this.member, this.points);

  double get percent => 50.0 * (points.reduce((sum, item) => sum + item));
}
