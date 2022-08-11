
class DateUtil {

  /// 根据时间戳判断是否是今天
  static bool isToday(int milliseconds, {bool isUtc = false}) {
    if (milliseconds == 0) return false;
    DateTime old = DateTime.fromMillisecondsSinceEpoch(milliseconds, isUtc: isUtc);
    DateTime now = isUtc ? DateTime.now().toUtc() : DateTime.now().toLocal();
    return old.year == now.year && old.month == now.month && old.day == now.day;
  }

  static bool isSameDay(DateTime date1, DateTime date2) {
    return date2.year == date1.year && date2.month == date1.month && date2.day == date1.day;
  }
}