package freemarker.template.utility;

import com.alibaba.android.arouter.utils.Consts;
import java.text.ParseException;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.time.TimeZones;
import org.slf4j.Marker;

public abstract class DateUtil {
    public static final TimeZone a = TimeZone.getTimeZone("UTC");
    public static final Pattern b = Pattern.compile("(-?[0-9]+)-([0-9]{2})-([0-9]{2})(Z|(?:[-+][0-9]{2}:[0-9]{2}))?");
    public static final Pattern c = Pattern.compile("(-?[0-9]{4,}?)([0-9]{2})([0-9]{2})");
    public static final Pattern d = Pattern.compile("(-?[0-9]{4,})-([0-9]{2})-([0-9]{2})");
    public static final Pattern e = Pattern.compile("([0-9]{2}):([0-9]{2}):([0-9]{2})(?:\\.([0-9]+))?(Z|(?:[-+][0-9]{2}:[0-9]{2}))?");
    public static final Pattern f = Pattern.compile("([0-9]{2})(?:([0-9]{2})(?:([0-9]{2})(?:[\\.,]([0-9]+))?)?)?(Z|(?:[-+][0-9]{2}(?:[0-9]{2})?))?");
    public static final Pattern g = Pattern.compile("([0-9]{2})(?::([0-9]{2})(?::([0-9]{2})(?:[\\.,]([0-9]+))?)?)?(Z|(?:[-+][0-9]{2}(?::[0-9]{2})?))?");
    public static final Pattern h = Pattern.compile("(-?[0-9]+)-([0-9]{2})-([0-9]{2})T([0-9]{2}):([0-9]{2}):([0-9]{2})(?:\\.([0-9]+))?(Z|(?:[-+][0-9]{2}:[0-9]{2}))?");
    public static final Pattern i = Pattern.compile("(-?[0-9]{4,}?)([0-9]{2})([0-9]{2})T([0-9]{2})(?:([0-9]{2})(?:([0-9]{2})(?:[\\.,]([0-9]+))?)?)?(Z|(?:[-+][0-9]{2}(?:[0-9]{2})?))?");
    public static final Pattern j = Pattern.compile("(-?[0-9]{4,})-([0-9]{2})-([0-9]{2})T([0-9]{2})(?::([0-9]{2})(?::([0-9]{2})(?:[\\.,]([0-9]+))?)?)?(Z|(?:[-+][0-9]{2}(?::[0-9]{2})?))?");
    public static final Pattern k = Pattern.compile("Z|(?:[-+][0-9]{2}:[0-9]{2})");

    public static final class DateParseException extends ParseException {
        public DateParseException(String str) {
            super(str, 0);
        }
    }

    public interface a {
        Date a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, TimeZone timeZone);
    }

    public interface b {
        GregorianCalendar a(TimeZone timeZone, Date date);
    }

    public static final class c implements a {
        public GregorianCalendar a;
        public TimeZone b;

        @Override
        public Date a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, TimeZone timeZone) {
            GregorianCalendar gregorianCalendar = this.a;
            if (gregorianCalendar == null) {
                GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone, Locale.US);
                this.a = gregorianCalendar2;
                gregorianCalendar2.setLenient(false);
                this.a.setGregorianChange(new Date(Long.MIN_VALUE));
            } else if (this.b != timeZone) {
                gregorianCalendar.setTimeZone(timeZone);
                this.b = timeZone;
            }
            this.a.set(0, i);
            this.a.set(1, i2);
            this.a.set(2, i3);
            this.a.set(5, i4);
            this.a.set(11, i5);
            this.a.set(12, i6);
            this.a.set(13, i7);
            this.a.set(14, i8);
            if (z) {
                this.a.add(5, 1);
            }
            return this.a.getTime();
        }
    }

    public static final class d implements b {
        public GregorianCalendar a;
        public TimeZone b;

        @Override
        public GregorianCalendar a(TimeZone timeZone, Date date) {
            GregorianCalendar gregorianCalendar = this.a;
            if (gregorianCalendar == null) {
                GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone, Locale.US);
                this.a = gregorianCalendar2;
                gregorianCalendar2.setGregorianChange(new Date(Long.MIN_VALUE));
            } else if (this.b != timeZone) {
                gregorianCalendar.setTimeZone(timeZone);
                this.b = timeZone;
            }
            this.a.setTime(date);
            return this.a;
        }
    }

    public static int a(char[] cArr, int i2, int i3) {
        int i4 = i2 + 1;
        cArr[i2] = (char) ((i3 / 10) + 48);
        int i5 = i2 + 2;
        cArr[i4] = (char) ((i3 % 10) + 48);
        return i5;
    }

    public static String b(Date date, boolean z, boolean z2, boolean z3, int i2, TimeZone timeZone, b bVar) {
        return c(date, z, z2, z3, i2, timeZone, false, bVar);
    }

    public static String c(Date date, boolean z, boolean z2, boolean z3, int i2, TimeZone timeZone, boolean z4, b bVar) {
        int i3;
        int iA;
        int i4;
        if (!z4 && !z2 && z3) {
            throw new IllegalArgumentException("ISO 8601:2004 doesn't specify any formats where the offset is shown but the time isn't.");
        }
        TimeZone timeZone2 = timeZone == null ? a : timeZone;
        GregorianCalendar gregorianCalendarA = bVar.a(timeZone2, date);
        if (z2) {
            i3 = !z ? 18 : 29;
        } else {
            i3 = (z4 ? 6 : 0) + 10;
        }
        char[] cArr = new char[i3];
        boolean z5 = true;
        if (z) {
            int i5 = gregorianCalendarA.get(1);
            if (i5 > 0 && gregorianCalendarA.get(0) == 0) {
                i5 = (-i5) + (!z4 ? 1 : 0);
            }
            int i6 = 4;
            if (i5 < 0 || i5 >= 9999) {
                String strValueOf = String.valueOf(i5);
                char[] cArr2 = new char[(i3 - 4) + strValueOf.length()];
                int i7 = 0;
                i6 = 0;
                while (i7 < strValueOf.length()) {
                    cArr2[i6] = strValueOf.charAt(i7);
                    i7++;
                    i6++;
                }
                cArr = cArr2;
            } else {
                cArr[0] = (char) ((i5 / 1000) + 48);
                cArr[1] = (char) (((i5 % 1000) / 100) + 48);
                cArr[2] = (char) (((i5 % 100) / 10) + 48);
                cArr[3] = (char) ((i5 % 10) + 48);
            }
            cArr[i6] = '-';
            int iA2 = a(cArr, i6 + 1, gregorianCalendarA.get(2) + 1);
            cArr[iA2] = '-';
            iA = a(cArr, iA2 + 1, gregorianCalendarA.get(5));
            if (z2) {
                cArr[iA] = 'T';
                iA++;
            }
        } else {
            iA = 0;
        }
        if (z2) {
            iA = a(cArr, iA, gregorianCalendarA.get(11));
            if (i2 >= 5) {
                cArr[iA] = ':';
                iA = a(cArr, iA + 1, gregorianCalendarA.get(12));
                if (i2 >= 6) {
                    cArr[iA] = ':';
                    iA = a(cArr, iA + 1, gregorianCalendarA.get(13));
                    if (i2 >= 7) {
                        int i8 = gregorianCalendarA.get(14);
                        int i9 = i2 != 8 ? 0 : 3;
                        if (i8 != 0 || i9 != 0) {
                            if (i8 > 999) {
                                throw new RuntimeException("Calendar.MILLISECOND > 999");
                            }
                            int i10 = iA + 1;
                            cArr[iA] = '.';
                            while (true) {
                                iA = i10 + 1;
                                cArr[i10] = (char) ((i8 / 100) + 48);
                                i9--;
                                i8 = (i8 % 100) * 10;
                                if (i8 == 0 && i9 <= 0) {
                                    break;
                                }
                                i10 = iA;
                            }
                        }
                    }
                }
            }
        }
        if (z3) {
            if (timeZone2 == a) {
                i4 = iA + 1;
                cArr[iA] = 'Z';
            } else {
                int offset = timeZone2.getOffset(date.getTime());
                if (offset < 0) {
                    offset = -offset;
                    z5 = false;
                }
                int i11 = offset / 1000;
                int i12 = i11 % 60;
                int i13 = i11 / 60;
                int i14 = i13 % 60;
                int i15 = i13 / 60;
                if (i12 == 0 && i14 == 0 && i15 == 0) {
                    i4 = iA + 1;
                    cArr[iA] = 'Z';
                } else {
                    int i16 = iA + 1;
                    cArr[iA] = z5 ? '+' : '-';
                    int iA3 = a(cArr, i16, i15);
                    cArr[iA3] = ':';
                    iA = a(cArr, iA3 + 1, i14);
                    if (i12 != 0) {
                        cArr[iA] = ':';
                        iA = a(cArr, iA + 1, i12);
                    }
                }
            }
            iA = i4;
        }
        return new String(cArr, 0, iA);
    }

    public static String d(Date date, boolean z, boolean z2, boolean z3, int i2, TimeZone timeZone, b bVar) {
        return c(date, z, z2, z3, i2, timeZone, true, bVar);
    }

    public static TimeZone e(String str) throws UnrecognizedTimeZoneException {
        if (h(str)) {
            return str.equalsIgnoreCase("UTC") ? a : TimeZone.getTimeZone(str);
        }
        TimeZone timeZone = TimeZone.getTimeZone(str);
        if (h(timeZone.getID())) {
            throw new UnrecognizedTimeZoneException(str);
        }
        return timeZone;
    }

    public static int f(String str, String str2, int i2, int i3) throws DateParseException {
        if (str == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("The ");
            stringBuffer.append(str2);
            stringBuffer.append(" part ");
            stringBuffer.append("is missing.");
            throw new DateParseException(stringBuffer.toString());
        }
        int i4 = str.startsWith("-") ? 1 : 0;
        int i5 = i4;
        while (i4 < str.length() - 1 && str.charAt(i4) == '0') {
            i4++;
        }
        if (i4 != 0) {
            str = str.substring(i4);
        }
        try {
            int i6 = Integer.parseInt(str);
            if (i5 != 0) {
                i6 = -i6;
            }
            if (i6 < i2) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("The ");
                stringBuffer2.append(str2);
                stringBuffer2.append(" part ");
                stringBuffer2.append("must be at least ");
                stringBuffer2.append(i2);
                stringBuffer2.append(Consts.DOT);
                throw new DateParseException(stringBuffer2.toString());
            }
            if (i6 <= i3) {
                return i6;
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("The ");
            stringBuffer3.append(str2);
            stringBuffer3.append(" part ");
            stringBuffer3.append("can't be more than ");
            stringBuffer3.append(i3);
            stringBuffer3.append(Consts.DOT);
            throw new DateParseException(stringBuffer3.toString());
        } catch (NumberFormatException unused) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("The ");
            stringBuffer4.append(str2);
            stringBuffer4.append(" part ");
            stringBuffer4.append("is a malformed integer.");
            throw new DateParseException(stringBuffer4.toString());
        }
    }

    public static int g(String str) throws DateParseException {
        if (str == null) {
            return 0;
        }
        if (str.length() > 3) {
            str = str.substring(0, 3);
        }
        int iF = f(str, "partial-seconds", 0, Integer.MAX_VALUE);
        if (str.length() == 1) {
            return iF * 100;
        }
        return str.length() == 2 ? iF * 10 : iF;
    }

    public static boolean h(String str) {
        if (str.length() < 3) {
            return false;
        }
        char cCharAt = str.charAt(0);
        char cCharAt2 = str.charAt(1);
        char cCharAt3 = str.charAt(2);
        if (((cCharAt != 'G' && cCharAt != 'g') || ((cCharAt2 != 'M' && cCharAt2 != 'm') || (cCharAt3 != 'T' && cCharAt3 != 't'))) && (((cCharAt != 'U' && cCharAt != 'u') || ((cCharAt2 != 'T' && cCharAt2 != 't') || (cCharAt3 != 'C' && cCharAt3 != 'c'))) && ((cCharAt != 'U' && cCharAt != 'u') || ((cCharAt2 != 'T' && cCharAt2 != 't') || cCharAt3 != '1')))) {
            return false;
        }
        if (str.length() == 3) {
            return true;
        }
        String strSubstring = str.substring(3);
        if (strSubstring.startsWith(Marker.ANY_NON_NULL_MARKER)) {
            return strSubstring.equals("+0") || strSubstring.equals("+00") || strSubstring.equals("+00:00");
        }
        return strSubstring.equals("-0") || strSubstring.equals("-00") || strSubstring.equals("-00:00");
    }

    public static Date i(Matcher matcher, TimeZone timeZone, boolean z, a aVar) throws DateParseException {
        int i2;
        int i3;
        boolean z2;
        NullArgumentException.check("defaultTZ", timeZone);
        try {
            int iF = f(matcher.group(1), "year", Integer.MIN_VALUE, Integer.MAX_VALUE);
            if (iF <= 0) {
                int i4 = (-iF) + (!z ? 1 : 0);
                if (i4 == 0) {
                    throw new DateParseException("Year 0 is not allowed in XML schema dates. BC 1 is -1, AD 1 is 1.");
                }
                i2 = i4;
                i3 = 0;
            } else {
                i2 = iF;
                i3 = 1;
            }
            int iF2 = f(matcher.group(2), "month", 1, 12) - 1;
            int iF3 = f(matcher.group(3), "day-of-month", 1, 31);
            int iF4 = f(matcher.group(4), "hour-of-day", 0, 24);
            if (iF4 == 24) {
                z2 = true;
                iF4 = 0;
            } else {
                z2 = false;
            }
            String strGroup = matcher.group(5);
            int iF5 = strGroup != null ? f(strGroup, "minute", 0, 59) : 0;
            String strGroup2 = matcher.group(6);
            int iF6 = strGroup2 != null ? f(strGroup2, "second", 0, 60) : 0;
            int iG = g(matcher.group(7));
            TimeZone timeZoneN = n(matcher.group(8), timeZone);
            if (z2 && (iF5 != 0 || iF6 != 0 || iG != 0)) {
                throw new DateParseException("Hour 24 is only allowed in the case of midnight.");
            }
            return aVar.a(i3, i2, iF2, iF3, iF4, iF5, iF6, iG, z2, timeZoneN);
        } catch (IllegalArgumentException unused) {
            throw new DateParseException("Date-time calculation faliure. Probably the date-time is formally correct, but refers to an unexistent date-time (like February 30).");
        }
    }

    public static Date j(Matcher matcher, TimeZone timeZone, boolean z, a aVar) throws DateParseException {
        int i2;
        int i3;
        NullArgumentException.check("defaultTZ", timeZone);
        try {
            int iF = f(matcher.group(1), "year", Integer.MIN_VALUE, Integer.MAX_VALUE);
            if (iF <= 0) {
                int i4 = (-iF) + (!z ? 1 : 0);
                if (i4 == 0) {
                    throw new DateParseException("Year 0 is not allowed in XML schema dates. BC 1 is -1, AD 1 is 1.");
                }
                i2 = i4;
                i3 = 0;
            } else {
                i2 = iF;
                i3 = 1;
            }
            int iF2 = f(matcher.group(2), "month", 1, 12) - 1;
            int iF3 = f(matcher.group(3), "day-of-month", 1, 31);
            if (z) {
                timeZone = n(matcher.group(4), timeZone);
            }
            return aVar.a(i3, i2, iF2, iF3, 0, 0, 0, 0, false, timeZone);
        } catch (IllegalArgumentException unused) {
            throw new DateParseException("Date calculation faliure. Probably the date is formally correct, but refers to an unexistent date (like February 30).");
        }
    }

    public static Date k(String str, TimeZone timeZone, a aVar) throws DateParseException {
        Pattern pattern = d;
        Matcher matcher = pattern.matcher(str);
        if (!matcher.matches()) {
            Pattern pattern2 = c;
            Matcher matcher2 = pattern2.matcher(str);
            if (!matcher2.matches()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("The value didn't match the expected pattern: ");
                stringBuffer.append(pattern);
                stringBuffer.append(" or ");
                stringBuffer.append(pattern2);
                throw new DateParseException(stringBuffer.toString());
            }
            matcher = matcher2;
        }
        return j(matcher, timeZone, false, aVar);
    }

    public static Date l(String str, TimeZone timeZone, a aVar) throws DateParseException {
        Pattern pattern = j;
        Matcher matcher = pattern.matcher(str);
        if (!matcher.matches()) {
            Pattern pattern2 = i;
            Matcher matcher2 = pattern2.matcher(str);
            if (!matcher2.matches()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("The value (");
                stringBuffer.append(str);
                stringBuffer.append(") didn't match the expected pattern: ");
                stringBuffer.append(pattern);
                stringBuffer.append(" or ");
                stringBuffer.append(pattern2);
                throw new DateParseException(stringBuffer.toString());
            }
            matcher = matcher2;
        }
        return i(matcher, timeZone, false, aVar);
    }

    public static Date m(String str, TimeZone timeZone, a aVar) throws DateParseException {
        Pattern pattern = g;
        Matcher matcher = pattern.matcher(str);
        if (!matcher.matches()) {
            Pattern pattern2 = f;
            Matcher matcher2 = pattern2.matcher(str);
            if (!matcher2.matches()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("The value didn't match the expected pattern: ");
                stringBuffer.append(pattern);
                stringBuffer.append(" or ");
                stringBuffer.append(pattern2);
                throw new DateParseException(stringBuffer.toString());
            }
            matcher = matcher2;
        }
        return o(matcher, timeZone, aVar);
    }

    public static TimeZone n(String str, TimeZone timeZone) throws DateParseException {
        if (str == null) {
            return timeZone;
        }
        if (str.equals("Z")) {
            return a;
        }
        StringBuffer stringBuffer = new StringBuffer(9);
        stringBuffer.append(TimeZones.GMT_ID);
        stringBuffer.append(str.charAt(0));
        String strSubstring = str.substring(1, 3);
        f(strSubstring, "offset-hours", 0, 23);
        stringBuffer.append(strSubstring);
        if (str.length() > 3) {
            int i2 = str.charAt(3) == ':' ? 4 : 3;
            String strSubstring2 = str.substring(i2, i2 + 2);
            f(strSubstring2, "offset-minutes", 0, 59);
            stringBuffer.append(':');
            stringBuffer.append(strSubstring2);
        }
        return TimeZone.getTimeZone(stringBuffer.toString());
    }

    public static Date o(Matcher matcher, TimeZone timeZone, a aVar) throws DateParseException {
        int i2;
        boolean z;
        int i3;
        NullArgumentException.check("defaultTZ", timeZone);
        try {
            int iF = f(matcher.group(1), "hour-of-day", 0, 24);
            if (iF == 24) {
                z = true;
                i2 = 0;
            } else {
                i2 = iF;
                z = false;
            }
            String strGroup = matcher.group(2);
            int iF2 = strGroup != null ? f(strGroup, "minute", 0, 59) : 0;
            String strGroup2 = matcher.group(3);
            int iF3 = strGroup2 != null ? f(strGroup2, "second", 0, 60) : 0;
            int iG = g(matcher.group(4));
            TimeZone timeZoneN = n(matcher.group(5), timeZone);
            if (!z) {
                i3 = 1;
            } else {
                if (iF2 != 0 || iF3 != 0 || iG != 0) {
                    throw new DateParseException("Hour 24 is only allowed in the case of midnight.");
                }
                i3 = 2;
            }
            return aVar.a(1, 1970, 0, i3, i2, iF2, iF3, iG, false, timeZoneN);
        } catch (IllegalArgumentException unused) {
            throw new DateParseException("Unexpected time calculation faliure.");
        }
    }

    public static Date p(String str, TimeZone timeZone, a aVar) throws DateParseException {
        Pattern pattern = b;
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            return j(matcher, timeZone, true, aVar);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("The value didn't match the expected pattern: ");
        stringBuffer.append(pattern);
        throw new DateParseException(stringBuffer.toString());
    }

    public static Date q(String str, TimeZone timeZone, a aVar) throws DateParseException {
        Pattern pattern = h;
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            return i(matcher, timeZone, true, aVar);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("The value didn't match the expected pattern: ");
        stringBuffer.append(pattern);
        throw new DateParseException(stringBuffer.toString());
    }

    public static Date r(String str, TimeZone timeZone, a aVar) throws DateParseException {
        Pattern pattern = e;
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            return o(matcher, timeZone, aVar);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("The value didn't match the expected pattern: ");
        stringBuffer.append(pattern);
        throw new DateParseException(stringBuffer.toString());
    }
}
