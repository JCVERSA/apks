package com.bykv.vk.openvk.preload.a.b.a.a;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

public final class a {

    private static final TimeZone f19710a = TimeZone.getTimeZone("UTC");

    /* JADX WARN: Code duplicated, block: B:85:0x01be  */
    /* JADX WARN: Code duplicated, block: B:86:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:89:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:91:0x01df  */
    /* JADX WARN: Instruction removed from duplicated block: B:86:0x01c0, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:91:0x01df, please report this as an issue */
    public static Date a(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        String message;
        int i10;
        int i11;
        int i12;
        int iA;
        int length;
        TimeZone timeZone;
        char cCharAt;
        try {
            int index = parsePosition.getIndex();
            int i13 = index + 4;
            int iA2 = a(str, index, i13);
            if (a(str, i13, '-')) {
                i13 = index + 5;
            }
            int i14 = i13 + 2;
            int iA3 = a(str, i13, i14);
            if (a(str, i14, '-')) {
                i14 = i13 + 3;
            }
            int i15 = i14 + 2;
            int iA4 = a(str, i14, i15);
            boolean zA = a(str, i15, 'T');
            if (!zA && str.length() <= i15) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(iA2, iA3 - 1, iA4);
                parsePosition.setIndex(i15);
                return gregorianCalendar.getTime();
            }
            if (zA) {
                int i16 = i14 + 5;
                int iA5 = a(str, i14 + 3, i16);
                if (a(str, i16, ':')) {
                    i16 = i14 + 6;
                }
                int i17 = i16 + 2;
                int iA6 = a(str, i16, i17);
                if (a(str, i17, ':')) {
                    i17 = i16 + 3;
                }
                if (str.length() <= i17 || (cCharAt = str.charAt(i17)) == 'Z' || cCharAt == '+' || cCharAt == '-') {
                    i11 = iA6;
                    i12 = 0;
                    iA = 0;
                    i15 = i17;
                    i10 = iA5;
                } else {
                    int i18 = i17 + 2;
                    iA = a(str, i17, i18);
                    if (iA > 59 && iA < 63) {
                        iA = 59;
                    }
                    if (a(str, i18, '.')) {
                        int i19 = i17 + 3;
                        int iA7 = a(str, i17 + 4);
                        int iMin = Math.min(iA7, i17 + 6);
                        int iA8 = a(str, i19, iMin);
                        int i20 = iMin - i19;
                        if (i20 == 1) {
                            iA8 *= 100;
                        } else if (i20 == 2) {
                            iA8 *= 10;
                        }
                        i10 = iA5;
                        i15 = iA7;
                        i11 = iA6;
                        i12 = iA8;
                    } else {
                        i10 = iA5;
                        i15 = i18;
                        i11 = iA6;
                        i12 = 0;
                    }
                }
            } else {
                i10 = 0;
                i11 = 0;
                i12 = 0;
                iA = 0;
            }
            if (str.length() <= i15) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char cCharAt2 = str.charAt(i15);
            if (cCharAt2 == 'Z') {
                timeZone = f19710a;
                length = i15 + 1;
            } else {
                if (cCharAt2 != '+' && cCharAt2 != '-') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt2 + "'");
                }
                String strSubstring = str.substring(i15);
                if (strSubstring.length() < 5) {
                    strSubstring = strSubstring + "00";
                }
                length = i15 + strSubstring.length();
                if ("+0000".equals(strSubstring) || "+00:00".equals(strSubstring)) {
                    timeZone = f19710a;
                } else {
                    String strConcat = "GMT".concat(strSubstring);
                    TimeZone timeZone2 = TimeZone.getTimeZone(strConcat);
                    String id2 = timeZone2.getID();
                    if (!id2.equals(strConcat) && !id2.replace(":", "").equals(strConcat)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + strConcat + " given, resolves to " + timeZone2.getID());
                    }
                    timeZone = timeZone2;
                }
            }
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
            gregorianCalendar2.setLenient(false);
            gregorianCalendar2.set(1, iA2);
            gregorianCalendar2.set(2, iA3 - 1);
            gregorianCalendar2.set(5, iA4);
            gregorianCalendar2.set(11, i10);
            gregorianCalendar2.set(12, i11);
            gregorianCalendar2.set(13, iA);
            gregorianCalendar2.set(14, i12);
            parsePosition.setIndex(length);
            return gregorianCalendar2.getTime();
        } catch (IllegalArgumentException e10) {
            e = e10;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + '\"';
            }
            message = e.getMessage();
            if (message != null || message.isEmpty()) {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        } catch (IndexOutOfBoundsException e11) {
            e = e11;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + '\"';
            }
            message = e.getMessage();
            if (message != null) {
                message = "(" + e.getClass().getName() + ")";
            } else {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException2 = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException2.initCause(e);
            throw parseException2;
        } catch (NumberFormatException e12) {
            e = e12;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + '\"';
            }
            message = e.getMessage();
            if (message != null) {
                message = "(" + e.getClass().getName() + ")";
            } else {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException3 = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException3.initCause(e);
            throw parseException3;
        }
    }

    private static boolean a(String str, int i10, char c10) {
        return i10 < str.length() && str.charAt(i10) == c10;
    }

    private static int a(String str, int i10, int i11) throws NumberFormatException {
        int i12;
        int i13;
        if (i10 < 0 || i11 > str.length() || i10 > i11) {
            throw new NumberFormatException(str);
        }
        if (i10 < i11) {
            i13 = i10 + 1;
            int iDigit = Character.digit(str.charAt(i10), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i12 = -iDigit;
        } else {
            i12 = 0;
            i13 = i10;
        }
        while (i13 < i11) {
            int i14 = i13 + 1;
            int iDigit2 = Character.digit(str.charAt(i13), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i12 = (i12 * 10) - iDigit2;
            i13 = i14;
        }
        return -i12;
    }

    private static int a(String str, int i10) {
        while (i10 < str.length()) {
            char cCharAt = str.charAt(i10);
            if (cCharAt < '0' || cCharAt > '9') {
                return i10;
            }
            i10++;
        }
        return str.length();
    }
}
