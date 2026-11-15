package wj;

import androidx.fragment.app.FragmentActivity;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberSceneType;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public interface f {

    public static final class a {
        public static Object a(f fVar, String str, String str2, boolean z10, Continuation continuation, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLotteryUserActivityInfo");
            }
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            return fVar.a(str, str2, z10, continuation);
        }
    }

    Object a(String str, String str2, boolean z10, Continuation continuation);

    void b(String str, MemberCheckResult memberCheckResult, g gVar);

    void c(FragmentActivity fragmentActivity, Function1 function1);

    void d(g gVar);

    void e(Integer num, String str, g gVar, MemberSceneType memberSceneType);

    Object f(Continuation continuation);
}
