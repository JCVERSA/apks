package im;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.memberapi.MemberSource;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.OpType;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.h1;

public interface b {

    public static final class a {
        public static void a(b bVar, Function0 function0, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkShowAdState");
            }
            if ((i10 & 1) != 0) {
                function0 = null;
            }
            bVar.A(function0);
        }

        public static void b(b bVar, Function2 function2, Function0 function0, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: claimMemberShipReward");
            }
            if ((i10 & 1) != 0) {
                function2 = null;
            }
            if ((i10 & 2) != 0) {
                function0 = null;
            }
            bVar.y(function2, function0);
        }

        public static void c(b bVar, Activity activity, MemberSource memberSource, c cVar, boolean z10, String str, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startMemberPage");
            }
            if ((i10 & 8) != 0) {
                z10 = false;
            }
            boolean z11 = z10;
            if ((i10 & 16) != 0) {
                str = "";
            }
            bVar.u(activity, memberSource, cVar, z11, str);
        }
    }

    void A(Function0 function0);

    int B();

    void C(Activity activity, String str, String str2, j jVar);

    void D(f fVar);

    void E();

    h1 a();

    Object b(MemberSceneType memberSceneType, Integer num, Function1 function1, Continuation continuation);

    boolean c();

    void d(MemberSceneType memberSceneType, Integer num, im.a aVar);

    boolean e();

    void f();

    void g(Integer num, im.a aVar);

    void h();

    boolean i(Fragment fragment);

    void j(MemberDetail memberDetail);

    void k(MemberTaskItem memberTaskItem, Function2 function2, Function1 function1);

    MemberDetail l();

    boolean m();

    void n(OpType opType, Function1 function1);

    void o();

    void p(d dVar);

    void q();

    Fragment r();

    void s(d dVar);

    void t();

    void u(Activity activity, MemberSource memberSource, c cVar, boolean z10, String str);

    void v(f fVar);

    void w(float f10);

    void x(Activity activity, MemberSource memberSource, MemberCheckResult memberCheckResult, c cVar);

    void y(Function2 function2, Function0 function0);

    boolean z();
}
