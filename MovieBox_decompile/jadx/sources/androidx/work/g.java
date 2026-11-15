package androidx.work;

import java.util.List;

public abstract class g {

    private static final String f15135a = j.i("InputMerger");

    public static g a(String str) {
        try {
            return (g) Class.forName(str).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception e10) {
            j.e().d(f15135a, "Trouble instantiating + " + str, e10);
            return null;
        }
    }

    public abstract d b(List list);
}
