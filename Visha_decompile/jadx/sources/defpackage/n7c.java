package defpackage;

import java.util.Arrays;
import java.util.HashSet;

public abstract class n7c {
    public static final HashSet a;
    public static final HashSet b;
    public static final String[] c;
    public static final String[] d;
    public static final String[] e;

    static {
        HashSet hashSet = new HashSet();
        a = hashSet;
        HashSet hashSet2 = new HashSet();
        b = hashSet2;
        c = new String[]{"%.srt%", "%.ass%", "%.stl%", "%.ttml%"};
        d = new String[]{"%.srt%", "%.txt%", "%.ass%", "%.ssa%", "%.smi%", "%.utf8%"};
        e = new String[]{"%.idx%", "%.sub%"};
        hashSet.addAll(Arrays.asList(".srt", ".txt", ".ass", ".ssa", ".idx", ".sub", ".smi", ".utf8"));
        hashSet2.addAll(Arrays.asList(".srt", ".ass", ".stl", ".ttml"));
    }

    public static boolean a(String str) {
        return str != null && (str.endsWith(".srt") || str.endsWith(".txt") || str.endsWith(".idx") || str.endsWith(".sub"));
    }

    public static boolean b(String str) {
        return (pp3.j() ? a : b).contains(str);
    }
}
