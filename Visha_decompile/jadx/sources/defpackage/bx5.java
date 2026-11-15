package defpackage;

import com.transsion.dbdata.beans.media.AudioItem;

public class bx5 {
    public static volatile bx5 b;
    public a a;

    public interface a {
        void a(AudioItem audioItem);
    }

    public static bx5 a() {
        if (b == null) {
            synchronized (bx5.class) {
                try {
                    if (b == null) {
                        b = new bx5();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public void b(AudioItem audioItem) {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a(audioItem);
        }
    }

    public void c(a aVar) {
        this.a = aVar;
        if (aVar != null) {
            aVar.a(null);
        }
    }
}
