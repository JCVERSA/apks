package com.google.android.libraries.places.internal;

import okio.Utf8;

public final class zzakj {
    /* JADX WARN: Code duplicated, block: B:14:0x0022 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0035  */
    /* JADX WARN: Code duplicated, block: B:39:0x0064  */
    /* JADX WARN: Code duplicated, block: B:44:0x007f  */
    /* JADX WARN: Code duplicated, block: B:45:0x0083  */
    /* JADX WARN: Code duplicated, block: B:54:0x0024 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x003d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x004b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0074 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x006e A[SYNTHETIC] */
    public static String zza(String str, int i10) {
        int length;
        StringBuilder sb2;
        char cCharAt;
        int iCodePointAt;
        int i11;
        int iCodePointAt2;
        int length2 = str.length();
        int iCharCount = 0;
        int i12 = 0;
        while (i12 != length2) {
            int i13 = i12 + 1;
            char cCharAt2 = str.charAt(i12);
            if (cCharAt2 <= '~') {
                if (cCharAt2 < ' ') {
                    if (cCharAt2 < 55296) {
                        if (cCharAt2 > 57343) {
                            iCodePointAt2 = Character.codePointAt(str, i12);
                            if (iCodePointAt2 < 65536 && (iCodePointAt2 & 65534) != 65534) {
                                i12 += 2;
                            }
                        } else if (cCharAt2 >= 64976 && (cCharAt2 <= 65007 || cCharAt2 >= 65534)) {
                        }
                        length = str.length();
                        sb2 = new StringBuilder(length);
                        while (iCharCount < length) {
                            cCharAt = str.charAt(iCharCount);
                            if (zzb(cCharAt)) {
                                sb2.append(cCharAt);
                                iCharCount++;
                            } else {
                                iCodePointAt = Character.codePointAt(str, iCharCount);
                                if (true != zzb(iCodePointAt)) {
                                    i11 = Utf8.REPLACEMENT_CODE_POINT;
                                } else {
                                    i11 = iCodePointAt;
                                }
                                sb2.appendCodePoint(i11);
                                iCharCount += Character.charCount(iCodePointAt);
                            }
                        }
                        return sb2.toString();
                    }
                    if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != '\t' && cCharAt2 != '\f') {
                        length = str.length();
                        sb2 = new StringBuilder(length);
                        while (iCharCount < length) {
                            cCharAt = str.charAt(iCharCount);
                            if (zzb(cCharAt)) {
                                sb2.append(cCharAt);
                                iCharCount++;
                            } else {
                                iCodePointAt = Character.codePointAt(str, iCharCount);
                                if (true != zzb(iCodePointAt)) {
                                    i11 = Utf8.REPLACEMENT_CODE_POINT;
                                } else {
                                    i11 = iCodePointAt;
                                }
                                sb2.appendCodePoint(i11);
                                iCharCount += Character.charCount(iCodePointAt);
                            }
                        }
                        return sb2.toString();
                    }
                }
            } else if (cCharAt2 >= 55296 || cCharAt2 < 160) {
                if (cCharAt2 < 55296) {
                    if (cCharAt2 > 57343) {
                        iCodePointAt2 = Character.codePointAt(str, i12);
                        if (iCodePointAt2 < 65536) {
                        }
                    } else if (cCharAt2 >= 64976) {
                    }
                    length = str.length();
                    sb2 = new StringBuilder(length);
                    while (iCharCount < length) {
                        cCharAt = str.charAt(iCharCount);
                        if (zzb(cCharAt)) {
                            sb2.append(cCharAt);
                            iCharCount++;
                        } else {
                            iCodePointAt = Character.codePointAt(str, iCharCount);
                            if (true != zzb(iCodePointAt)) {
                                i11 = Utf8.REPLACEMENT_CODE_POINT;
                            } else {
                                i11 = iCodePointAt;
                            }
                            sb2.appendCodePoint(i11);
                            iCharCount += Character.charCount(iCodePointAt);
                        }
                    }
                    return sb2.toString();
                }
                if (cCharAt2 != '\n') {
                    length = str.length();
                    sb2 = new StringBuilder(length);
                    while (iCharCount < length) {
                        cCharAt = str.charAt(iCharCount);
                        if (zzb(cCharAt)) {
                            sb2.append(cCharAt);
                            iCharCount++;
                        } else {
                            iCodePointAt = Character.codePointAt(str, iCharCount);
                            if (true != zzb(iCodePointAt)) {
                                i11 = Utf8.REPLACEMENT_CODE_POINT;
                            } else {
                                i11 = iCodePointAt;
                            }
                            sb2.appendCodePoint(i11);
                            iCharCount += Character.charCount(iCodePointAt);
                        }
                    }
                    return sb2.toString();
                }
            }
            i12 = i13;
        }
        return str;
    }

    public static boolean zzb(int i10) {
        if (i10 <= 126) {
            return i10 >= 32 || i10 == 10 || i10 == 13 || i10 == 9 || i10 == 12;
        }
        if (i10 < 55296) {
            return i10 >= 160;
        }
        if (i10 < 64976) {
            return i10 > 57343;
        }
        return i10 > 65007 && (i10 & 65534) != 65534 && i10 <= 1114111;
    }
}
