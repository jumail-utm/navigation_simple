import 'group_member.dart';

class Assessment {
  GroupMember member;
  List<int> points;

  Assessment(this.member, this.points);

  double get percent =>
      (points.reduce((sum, item) => sum + item) / 20.0) * 100.0;
}
