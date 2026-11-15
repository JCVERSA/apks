package defpackage;

import android.os.Looper;
import java.util.List;
import kotlinx.coroutines.android.HandlerContext;

public final class qb implements sx5 {
    @Override
    public int a() {
        return 1073741823;
    }

    @Override
    public String b() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override
    public rx5 c(List list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new HandlerContext(un4.c(mainLooper, true), null, 2, null);
        }
        throw new IllegalStateException("The main looper is not available");
    }
}
