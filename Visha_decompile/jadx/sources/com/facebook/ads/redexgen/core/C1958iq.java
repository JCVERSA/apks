package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.io.File;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mozilla.classfile.ByteCode;

@MetaExoPlayerCustomization(type = {"NON_FINAL"}, value = "D54147219: For usage in Hero Simple Cache")
public final class C1958iq extends C1072Lx {
    public static byte[] A00;
    public static String[] A01 = {"OfRtwvXctRBBw9gKY8TWbFYEyrfTWUJ5", "O6KpU7VzQb47vbeRDg05X09dlcjSdrsx", "cGvb3Ixjw9glBryIXlKjYbTfS5Fhfs8X", "N3q9w52q7yAs4MQ92KFgaGGqaH957eGg", "tjYOyBogfVGQWArOceKhNo0cgBZwypsu", "xmSgRcjNSrQyzCd8Uu5cYZa5hRrGr9a8", "10tums6VyruOnAjrgpE7eJ8", "dQkd96lx4iAtJg2k9NqdAtWwc5SxpqrB"};
    public static final Pattern A02;
    public static final Pattern A03;
    public static final Pattern A04;

    /* JADX WARN: Code duplicated, block: B:26:0x00aa A[PHI: r8
      0x00aa: PHI (r8v2 long) = (r8v0 long), (r8v3 long) binds: [B:30:0x00d7, B:25:0x00a8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 22 out of bounds for length 20
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static C1958iq A01(File file, long j, long j2, M6 m6) {
        String strA0F;
        long j3;
        long j4 = j2;
        long length = j;
        String name = file.getName();
        if (!name.endsWith(A07(1, 7, 86))) {
            file = A06(file, m6);
            if (file == null) {
                return null;
            }
            name = file.getName();
        }
        Matcher matcher = A04.matcher(name);
        if (!matcher.matches() || (strA0F = m6.A0F(Integer.parseInt((String) C3M.A01(matcher.group(1))))) == null) {
            return null;
        }
        if (length == -1) {
            length = file.length();
        }
        String[] strArr = A01;
        if (strArr[0].charAt(16) == strArr[2].charAt(16)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[0] = "3kLuDF7WddxsAuj74YBqy147zLEiHTF0";
        strArr2[2] = "yBKAMqN1ItuNGOhP7OCxzG9BVSMF66iW";
        if (length == 0) {
            return null;
        }
        String strGroup = matcher.group(2);
        if (A01[7].charAt(17) != 'N') {
            String[] strArr3 = A01;
            strArr3[4] = "3kqdJGKw3CP8mm7UdAcKh0LFQ5WJAflS";
            strArr3[3] = "ycjOreuQW9uSgeP7cymbjNDk2aBjdnIT";
            j3 = Long.parseLong((String) C3M.A01(strGroup));
            if (j4 == C.TIME_UNSET) {
                j4 = Long.parseLong((String) C3M.A01(matcher.group(3)));
            }
        } else {
            A01[7] = "aSANG9oSWduq5GFK5NdZXfdN35yUyqYg";
            j3 = Long.parseLong((String) C3M.A01(strGroup));
            if (j4 == C.TIME_UNSET) {
                j4 = Long.parseLong((String) C3M.A01(matcher.group(3)));
            }
        }
        return new C1958iq(strA0F, j3, length, j4, file);
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 31);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A00 = new byte[]{93, -93, -21, -88, -93, -38, -19, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -82, -76, -79, -81, -30, -76, -82, -30, -22, -79, -81, -30, -76, -82, -30, -22, -79, -81, -30, -76, -4, -73, -30, -76, -21, -2, -11, -86, -13, -67, -61, -64, -66, -15, -61, -67, -15, -7, -64, -66, -15, -61, -67, -15, -7, -64, -66, -15, -61, ByteCode.T_LONG, -57, -15, -61, -6, 13, 4, -71, -40, -94, -42, -34, -91, -93, -42, -88, -94, -42, -34, -91, -93, -42, -88, -94, -42, -34, -91, -93, -42, -88, -16, -83, -42, -88, -33, -14, -23, -98};
    }

    static {
        A08();
        A02 = Pattern.compile(A07(8, 29, 103), 32);
        A03 = Pattern.compile(A07(37, 29, 118), 32);
        A04 = Pattern.compile(A07(66, 30, 91), 32);
    }

    public C1958iq(String str, long j, long j2, long j3, File file) {
        super(str, j, j2, j3, file);
    }

    public static C1958iq A02(File file, long j, M6 m6) {
        return A01(file, j, C.TIME_UNSET, m6);
    }

    public static C1958iq A03(String str, long j) {
        return new C1958iq(str, j, -1L, C.TIME_UNSET, null);
    }

    public static C1958iq A04(String str, long j, long j2) {
        return new C1958iq(str, j, j2, C.TIME_UNSET, null);
    }

    public static File A05(File file, int i, long j, long j2) {
        StringBuilder sbAppend = new StringBuilder().append(i);
        String strA07 = A07(0, 1, 16);
        return new File(file, sbAppend.append(strA07).append(j).append(strA07).append(j2).append(A07(1, 7, 86)).toString());
    }

    public static File A06(File file, M6 m6) {
        String strA0l = null;
        String name = file.getName();
        Matcher matcher = A03.matcher(name);
        if (matcher.matches()) {
            String key = matcher.group(1);
            strA0l = AbstractC06244a.A0l((String) C3M.A01(key));
        } else {
            matcher = A02.matcher(name);
            if (matcher.matches()) {
                String key2 = matcher.group(1);
                Object objA01 = C3M.A01(key2);
                String[] strArr = A01;
                String filename = strArr[0];
                if (filename.charAt(16) == strArr[2].charAt(16)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[0] = "SH9gvm8hJK4XlSeUgFI9DN0CGl9RiOAn";
                strArr2[2] = "6Y4JW5a7TLCjGmr1nVotQhjybpiv9cHJ";
                strA0l = (String) objA01;
            }
        }
        if (strA0l == null) {
            return null;
        }
        File file2 = (File) C3M.A02(file.getParentFile());
        int iA0B = m6.A0B(strA0l);
        String key3 = matcher.group(2);
        long j = Long.parseLong((String) C3M.A01(key3));
        String key4 = matcher.group(3);
        File fileA05 = A05(file2, iA0B, j, Long.parseLong((String) C3M.A01(key4)));
        if (!file.renameTo(fileA05)) {
            return null;
        }
        return fileA05;
    }

    public final C1958iq A09(File file, long j) {
        C3M.A08(this.A05);
        return new C1958iq(this.A04, this.A02, this.A01, j, file);
    }
}
