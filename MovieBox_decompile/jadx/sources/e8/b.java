package e8;

import java.io.File;

public class b {
    public static void a(File file, h8.a aVar) {
        String name = file.getName();
        String parent = file.getParent();
        int iA = aVar.a();
        if (iA <= 0) {
            if (iA == 0) {
                for (int i10 = 1; i10 < Integer.MAX_VALUE; i10++) {
                    File file2 = new File(parent, aVar.c(name, i10));
                    if (!file2.exists()) {
                        file.renameTo(file2);
                        return;
                    }
                }
                return;
            }
            return;
        }
        File file3 = new File(parent, aVar.c(name, iA));
        if (file3.exists()) {
            file3.delete();
        }
        for (int i11 = iA - 1; i11 > 0; i11--) {
            File file4 = new File(parent, aVar.c(name, i11));
            if (file4.exists()) {
                file4.renameTo(new File(parent, aVar.c(name, i11 + 1)));
            }
        }
        file.renameTo(new File(parent, aVar.c(name, 1)));
    }

    public static void b(h8.a aVar) {
        int iA = aVar.a();
        if (iA < 0) {
            throw new IllegalArgumentException("Max backup index should not be less than 0");
        }
        if (iA != Integer.MAX_VALUE) {
            return;
        }
        throw new IllegalArgumentException("Max backup index too big: " + iA);
    }
}
