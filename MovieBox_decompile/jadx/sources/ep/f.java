package ep;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.transsion.room.api.RoomsViewType;
import kotlin.jvm.functions.Function1;

public interface f {
    void a(FragmentActivity fragmentActivity, boolean z10, Function1 function1);

    void b(FragmentActivity fragmentActivity, Function1 function1);

    e c(Context context, RoomsViewType roomsViewType);

    String d();

    void e(double d10, double d11, Function1 function1);

    c f(Fragment fragment);
}
