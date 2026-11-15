package defpackage;

import kotlin.coroutines.d;
import kotlinx.coroutines.a;

public class zv9 extends a {
    public zv9(d dVar, boolean z) {
        super(dVar, true, z);
    }

    @Override
    public boolean handleJobException(Throwable th) {
        kk1.a(getContext(), th);
        return true;
    }
}
