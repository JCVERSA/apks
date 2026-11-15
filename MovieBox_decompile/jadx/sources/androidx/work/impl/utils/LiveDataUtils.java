package androidx.work.impl.utils;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.z;

public abstract class LiveDataUtils {

    class AnonymousClass1 implements c0 {

        Object f15321a = null;

        final k4.c f15322b;

        final Object f15323c;

        final l.a f15324d;

        final z f15325e;

        AnonymousClass1(k4.c cVar, Object obj, l.a aVar, z zVar) {
            this.f15322b = cVar;
            this.f15323c = obj;
            this.f15324d = aVar;
            this.f15325e = zVar;
        }

        @Override
        public void onChanged(final Object obj) {
            this.f15322b.c(new Runnable() {
                @Override
                public void run() {
                    synchronized (AnonymousClass1.this.f15323c) {
                        try {
                            Object objApply = AnonymousClass1.this.f15324d.apply(obj);
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            Object obj2 = anonymousClass1.f15321a;
                            if (obj2 == null && objApply != null) {
                                anonymousClass1.f15321a = objApply;
                                anonymousClass1.f15325e.n(objApply);
                            } else if (obj2 != null && !obj2.equals(objApply)) {
                                AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                                anonymousClass2.f15321a = objApply;
                                anonymousClass2.f15325e.n(objApply);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            });
        }
    }

    public static LiveData a(LiveData liveData, l.a aVar, k4.c cVar) {
        Object obj = new Object();
        z zVar = new z();
        zVar.r(liveData, new AnonymousClass1(cVar, obj, aVar, zVar));
        return zVar;
    }
}
