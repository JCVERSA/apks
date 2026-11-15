package com.facebook.ads.redexgen.core;

import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.C;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.tranplayer.MediaPlayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mozilla.classfile.ByteCode;

public final class C05370p extends AbstractC07127k {
    public static byte[] A05;
    public static String[] A06 = {"W2LX5ghCjNUdHPD6UOG9gNVP2r8Jjr9N", "hy0Kd51hxMRklx2U40MO6uTjDebxbFFc", "3rXKYQ25IDS9XLMelMDoz8fDuc1jWejt", "VHZF6nyXCVj1GWlzSFxOxU8Mk9", "1hZxQPwvp7yuSjm13xBtOFGqAv7wvaBL", "2txr67moghbeiUbFZCBGyiXHK8tBuFWn", "gHf8B0vtrS2LcJp", "q573XCdkPfkFHQHQX29TvMro8DPY3qfe"};
    public static final Pattern A07;
    public float A00;
    public float A01;
    public Map<String, C0997Ja> A02;
    public final JV A03;
    public final boolean A04;

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 4);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A05 = new byte[]{85, 39, 48, 53, 39, 83, 107, 36, 38, 53, 38, 48, 39, 83, 107, 36, 38, 53, 39, 83, 107, 36, 38, 84, 53, 33, 82, 39, 83, 107, 36, 38, 75, 35, 52, 25, 17, 28, 31, 23, 5, 21, 74, 75, 98, 127, 96, 108, 121, 55, 101, 93, 95, 70, 70, 95, 88, 81, 22, 17, 101, 66, 79, 90, 83, 12, 17, 22, 90, 95, 88, 83, 22, 84, 83, 80, 89, 68, 83, 22, 17, 112, 89, 68, 91, 87, 66, 12, 17, 22, 90, 95, 88, 83, 12, 22, 37, 29, 31, 6, 6, 31, 24, 17, 86, 18, 31, 23, 26, 25, 17, 3, 19, 86, 26, 31, 24, 19, 86, 20, 19, 16, 25, 4, 19, 86, 21, 25, 27, 6, 26, 19, 2, 19, 86, 16, 25, 4, 27, 23, 2, 76, 86, 53, 13, 15, 22, 22, 15, 8, 1, 70, 2, 15, 7, 10, 9, 1, 19, 3, 70, 10, 15, 8, 3, 70, 17, 15, 18, 14, 70, 0, 3, 17, 3, 20, 70, 5, 9, 10, 19, ByteCode.T_LONG, 8, 21, 70, 18, 14, 7, 8, 70, 0, 9, 20, ByteCode.T_LONG, 7, 18, 92, 70, 66, 122, 120, 97, 97, 120, 127, 118, 49, 120, 127, 103, 112, 125, 120, 117, 49, 101, 120, 124, 120, 127, 118, 43, 49, 101, 69, 87, 114, 83, 85, 89, 82, 83, 68, 36, 3, 14, 27, 18, 77, 45, 22, 19, 22, 23, 15, 22, 88, 25, 20, 17, 31, 22, 21, 29, 22, 12, 66, 88, 40, 54, 5, 22, 29, 7, 0, 46, 94, 86, 102, 119, 108, 117, 113, 37, 76, 107, 99, 106, 88, 13, 0, 98, 118, 5, 34, 47, 58, 51, 37, ByteCode.T_LONG, 124, 113, 19, 7, 116, 83, 94, 75, 66, 84, 122, 7, 70, 85, 66, 7, 73, 72, 83, 7, 84, 82, 87, 87, 72, 85, 83, 66, 67, 75, 70, 36, 59, 48, 67, 100, 105, 124, 117, 99, 77, 92, 78, 5, 49, 108, 94, 5, 25, 20, 12, 7, 16, 6, 13, 94, 66, 79, 87, 92, 75, 93, 87, -72, -38};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0D(String str, JV jv, List<List<C2263o2>> list, List<Long> list2) {
        String strA07 = A07(34, 9, 116);
        C3M.A07(str.startsWith(strA07));
        String[] strArrSplit = str.substring(strA07.length()).split(A07(32, 1, 99), jv.A01);
        int length = strArrSplit.length;
        int i = jv.A01;
        String strA08 = A07(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 10, 50);
        if (length != i) {
            AnonymousClass44.A07(strA08, A07(143, 55, 98) + str);
            return;
        }
        long jA04 = A04(strArrSplit[jv.A02]);
        String strA09 = A07(198, 25, 21);
        if (jA04 == C.TIME_UNSET) {
            AnonymousClass44.A07(strA08, strA09 + str);
            return;
        }
        long jA05 = A04(strArrSplit[jv.A00]);
        if (jA05 == C.TIME_UNSET) {
            AnonymousClass44.A07(strA08, strA09 + str);
            return;
        }
        C0997Ja c0997Ja = (this.A02 == null || jv.A03 == -1) ? null : this.A02.get(strArrSplit[jv.A03].trim());
        String str2 = strArrSplit[jv.A04];
        JX jxA02 = JX.A02(str2);
        String strA04 = JX.A04(str2);
        String strA010 = A07(331, 2, 4);
        String strA011 = A07(0, 1, 91);
        C2263o2 c2263o2A06 = A06(strA04.replace(strA010, strA011).replace(A07(335, 2, 52), strA011).replace(A07(333, 2, 93), A07(TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_2, 2, 126)), c0997Ja, jxA02, this.A01, this.A00);
        int iA03 = A03(jA05, list2, list);
        for (int iA04 = A03(jA04, list2, list); iA04 < iA03; iA04++) {
            list.get(iA04).add(c2263o2A06);
        }
    }

    static {
        A09();
        A07 = Pattern.compile(A07(1, 31, 11));
    }

    public C05370p() {
        this(null);
    }

    public C05370p(List<byte[]> list) {
        super(A07(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 10, 50));
        this.A01 = -3.4028235E38f;
        this.A00 = -3.4028235E38f;
        if (list != null && !list.isEmpty()) {
            this.A04 = true;
            String strA0q = AbstractC06244a.A0q(list.get(0));
            String formatLine = A07(43, 7, 9);
            C3M.A07(strA0q.startsWith(formatLine));
            this.A03 = (JV) C3M.A01(JV.A00(strA0q));
            A0A(new C4J(list.get(1)));
            return;
        }
        this.A04 = false;
        this.A03 = null;
    }

    public static float A00(int i) {
        switch (i) {
            case 0:
                return 0.05f;
            case 1:
                return 0.5f;
            case 2:
                return 0.95f;
            default:
                return -3.4028235E38f;
        }
    }

    public static int A01(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                AnonymousClass44.A07(A07(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 10, 50), A07(239, 19, 124) + i);
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                if (A06[3].length() != 26) {
                    throw new RuntimeException();
                }
                A06[6] = "Sg07jKGUv12uLKgMKKFA3fI9zPLxcTEi";
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    public static int A02(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                AnonymousClass44.A07(A07(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 10, 50), A07(239, 19, 124) + i);
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                return 0;
            case 2:
            case 5:
            case 8:
                if (A06[3].length() != 26) {
                    throw new RuntimeException();
                }
                String[] strArr = A06;
                strArr[5] = "bBVjASvxGIVEucqGKWBeREj1nHP5tR7K";
                strArr[4] = "afA0CT9VteApb4cGitBpBAxXonSmRtRK";
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    public static int A03(long j, List<Long> list, List<List<C2263o2>> list2) {
        ArrayList arrayList;
        int i = 0;
        int insertionIndex = list.size();
        for (int i2 = insertionIndex - 1; i2 >= 0; i2--) {
            long jLongValue = list.get(i2).longValue();
            int i3 = A06[7].charAt(28);
            if (i3 == 116) {
                throw new RuntimeException();
            }
            A06[7] = "L6yhcoI2CoUL0EEbj8PtMmDYbUY1DBiP";
            if (jLongValue == j) {
                return i2;
            }
            if (list.get(i2).longValue() < j) {
                i = i2 + 1;
                break;
            }
        }
        list.add(i, Long.valueOf(j));
        if (i == 0) {
            arrayList = new ArrayList();
        } else {
            int insertionIndex2 = i - 1;
            arrayList = new ArrayList(list2.get(insertionIndex2));
        }
        list2.add(i, arrayList);
        return i;
    }

    public static long A04(String str) {
        Matcher matcher = A07.matcher(str.trim());
        if (!matcher.matches()) {
            return C.TIME_UNSET;
        }
        return (Long.parseLong((String) AbstractC06244a.A0f(matcher.group(1))) * 60 * 60 * 1000000) + (Long.parseLong((String) AbstractC06244a.A0f(matcher.group(2))) * 60 * 1000000) + (Long.parseLong((String) AbstractC06244a.A0f(matcher.group(3))) * 1000000) + (Long.parseLong((String) AbstractC06244a.A0f(matcher.group(4))) * 10000);
    }

    public static Layout.Alignment A05(int i) {
        switch (i) {
            case -1:
                return null;
            case 0:
            default:
                AnonymousClass44.A07(A07(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 10, 50), A07(239, 19, 124) + i);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    public static C2263o2 A06(String str, C0997Ja c0997Ja, JX jx, float f, float f2) {
        int i;
        SpannableString spannableString = new SpannableString(str);
        C3C c3cA0G = new C3C().A0G(spannableString);
        if (c0997Ja != null) {
            if (c0997Ja.A04 != null) {
                spannableString.setSpan(new ForegroundColorSpan(c0997Ja.A04.intValue()), 0, spannableString.length(), 33);
            }
            if (c0997Ja.A02 == 3 && c0997Ja.A03 != null) {
                spannableString.setSpan(new BackgroundColorSpan(c0997Ja.A03.intValue()), 0, spannableString.length(), 33);
            }
            if (c0997Ja.A00 != -3.4028235E38f) {
                if (A06[3].length() != 26) {
                    throw new RuntimeException();
                }
                String[] strArr = A06;
                strArr[5] = "hamZaHHK5iJw0vPowwB4Xi3W6GQULYkl";
                strArr[4] = "AtQHcqF1nJuVU9oQ1sBsNKUnqzSBt8ub";
                if (f2 != -3.4028235E38f) {
                    c3cA0G.A08(c0997Ja.A00 / f2, 1);
                }
            }
            if (c0997Ja.A06 && c0997Ja.A07) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (c0997Ja.A06) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (c0997Ja.A07) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (c0997Ja.A09) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (c0997Ja.A08) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i2 = jx.A00;
        if (A06[6].length() == 19) {
            throw new RuntimeException();
        }
        A06[7] = "i2mc5u7bs2HiiqvdNfcyeR2hNUTbHa8c";
        if (i2 != -1) {
            i = jx.A00;
        } else if (c0997Ja != null) {
            i = c0997Ja.A01;
        } else {
            i = -1;
        }
        C3C cue = c3cA0G.A0F(A05(i));
        cue.A0A(A02(i)).A09(A01(i));
        if (jx.A01 != null && f2 != -3.4028235E38f && f != -3.4028235E38f) {
            c3cA0G.A04(jx.A01.x / f);
            c3cA0G.A07(jx.A01.y / f2, 0);
        } else {
            c3cA0G.A04(A00(c3cA0G.A01()));
            c3cA0G.A07(A00(c3cA0G.A00()), 0);
        }
        return c3cA0G.A0H();
    }

    public static Map<String, C0997Ja> A08(C4J c4j) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        JW jwA00 = null;
        while (true) {
            String strA0T = c4j.A0T();
            if (strA0T == null || (c4j.A07() != 0 && c4j.A0B() == 91)) {
                break;
            }
            if (strA0T.startsWith(A07(43, 7, 9))) {
                jwA00 = JW.A00(strA0T);
            } else if (strA0T.startsWith(A07(233, 6, 115))) {
                if (jwA00 == null) {
                    String currentLine = A07(50, 46, 50) + strA0T;
                    AnonymousClass44.A07(A07(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 10, 50), currentLine);
                } else {
                    C0997Ja c0997JaA04 = C0997Ja.A04(strA0T, jwA00);
                    if (c0997JaA04 != null) {
                        linkedHashMap.put(c0997JaA04.A05, c0997JaA04);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private void A0A(C4J c4j) {
        while (true) {
            String strA0T = c4j.A0T();
            if (strA0T != null) {
                if (A07(266, 13, 1).equalsIgnoreCase(strA0T)) {
                    A0B(c4j);
                } else if (A07(TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE, 12, 20).equalsIgnoreCase(strA0T)) {
                    this.A02 = A08(c4j);
                } else if (A07(279, 11, 82).equalsIgnoreCase(strA0T)) {
                    AnonymousClass44.A06(A07(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 10, 50), A07(MediaPlayer.Event.Prepared, 29, 35));
                } else if (A07(258, 8, 119).equalsIgnoreCase(strA0T)) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:15:0x0054  */
    /* JADX WARN: Code duplicated, block: B:22:0x0083  */
    private void A0B(C4J c4j) {
        while (true) {
            String strA0T = c4j.A0T();
            if (strA0T != null) {
                if (c4j.A07() == 0 || c4j.A0B() != 91) {
                    String[] strArrSplit = strA0T.split(A07(33, 1, 29));
                    if (strArrSplit.length == 2) {
                        byte b = 0;
                        String strA01 = AbstractC1942iY.A01(strArrSplit[0].trim());
                        String currentLine = A06[7];
                        if (currentLine.charAt(28) != 't') {
                            String[] strArr = A06;
                            strArr[5] = "TxjPtR6Me2tOCH56RvBuXVxOpTFPkhKs";
                            strArr[4] = "CGC80sv4xmOos6ad3yBESqJRjeXwJGgE";
                            switch (strA01.hashCode()) {
                                case 1879649548:
                                    if (!strA01.equals(A07(337, 8, 113))) {
                                        b = -1;
                                    }
                                    break;
                                case 1879649549:
                                    String currentLine2 = A06[0];
                                    if (currentLine2.charAt(2) == 'L') {
                                        A06[3] = "57knmpqjR0Ls81goizN6npBH6l";
                                        if (!strA01.equals(A07(345, 8, 42))) {
                                            b = -1;
                                        } else {
                                            b = 1;
                                        }
                                    } else {
                                        String[] strArr2 = A06;
                                        strArr2[5] = "y7TEYh3wOWaLWgkmzZBlA5JQj6rjOZZg";
                                        strArr2[4] = "3gq1Vhf6xja9YBkNvRBFSeYMsj86kNRf";
                                        if (!strA01.equals(A07(345, 8, 31))) {
                                            b = -1;
                                        } else {
                                            b = 1;
                                        }
                                    }
                                    break;
                                default:
                                    b = -1;
                                    break;
                            }
                            switch (b) {
                                case 0:
                                    this.A01 = Float.parseFloat(strArrSplit[1].trim());
                                    break;
                                case 1:
                                    try {
                                        this.A00 = Float.parseFloat(strArrSplit[1].trim());
                                    } catch (NumberFormatException unused) {
                                    }
                                    break;
                            }
                        } else {
                            throw new RuntimeException();
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void A0C(C4J c4j, List<List<C2263o2>> list, List<Long> list2) {
        JV jvA00 = this.A04 ? this.A03 : null;
        while (true) {
            String strA0T = c4j.A0T();
            if (strA0T != null) {
                if (strA0T.startsWith(A07(43, 7, 9))) {
                    jvA00 = JV.A00(strA0T);
                } else if (strA0T.startsWith(A07(34, 9, 116))) {
                    if (jvA00 == null) {
                        AnonymousClass44.A07(A07(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 10, 50), A07(96, 47, 114) + strA0T);
                    } else {
                        A0D(strA0T, jvA00, list, list2);
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override
    public final J7 A0g(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        C4J c4j = new C4J(bArr, i);
        if (!this.A04) {
            A0A(c4j);
        }
        A0C(c4j, arrayList, arrayList2);
        return new C2036k8(arrayList, arrayList2);
    }
}
