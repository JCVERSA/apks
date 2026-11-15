package defpackage;

import java.io.DataInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ol0 extends se0 {
    public static final a g = new a(null);
    public static final ol0 h = new ol0(1, 0, 7);
    public static final ol0 i = new ol0(new int[0]);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ol0 a(InputStream inputStream) {
            y45.j(inputStream, "stream");
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            u15 u15Var = new u15(1, dataInputStream.readInt());
            ArrayList arrayList = new ArrayList(z71.v(u15Var, 10));
            Iterator it = u15Var.iterator();
            while (it.hasNext()) {
                ((q15) it).nextInt();
                arrayList.add(Integer.valueOf(dataInputStream.readInt()));
            }
            int[] iArrA1 = i81.a1(arrayList);
            return new ol0(Arrays.copyOf(iArrA1, iArrA1.length));
        }

        public a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ol0(int... iArr) {
        super(Arrays.copyOf(iArr, iArr.length));
        y45.j(iArr, "numbers");
    }

    public boolean h() {
        return f(h);
    }
}
