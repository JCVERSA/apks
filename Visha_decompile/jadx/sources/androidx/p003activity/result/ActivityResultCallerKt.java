package androidx.p003activity.result;

import androidx.p003activity.result.ActivityResultCallerKt;
import androidx.p003activity.result.contract.ActivityResultContract;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a[\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u000b\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\f\u0010\r\u001aS\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u000b\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0005\u001a\u00028\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\f\u0010\u000e¨\u0006\u000f"}, d2 = {"I", "O", "Landroidx/activity/result/ActivityResultCaller;", "Landroidx/activity/result/contract/ActivityResultContract;", "contract", "input", "Landroidx/activity/result/ActivityResultRegistry;", "registry", "Lkotlin/Function1;", "Lzfb;", "callback", "Landroidx/activity/result/ActivityResultLauncher;", "registerForActivityResult", "(Landroidx/activity/result/ActivityResultCaller;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/activity/result/ActivityResultRegistry;Le74;)Landroidx/activity/result/ActivityResultLauncher;", "(Landroidx/activity/result/ActivityResultCaller;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Le74;)Landroidx/activity/result/ActivityResultLauncher;", "activity_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ActivityResultCallerKt {
    public static final <I, O> ActivityResultLauncher<zfb> registerForActivityResult(ActivityResultCaller activityResultCaller, ActivityResultContract<I, O> activityResultContract, I i, ActivityResultRegistry activityResultRegistry, final e74 e74Var) {
        y45.j(activityResultCaller, "<this>");
        y45.j(activityResultContract, "contract");
        y45.j(activityResultRegistry, "registry");
        y45.j(e74Var, "callback");
        return new ActivityResultCallerLauncher(activityResultCaller.registerForActivityResult(activityResultContract, activityResultRegistry, new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                ActivityResultCallerKt.registerForActivityResult$lambda$0(e74Var, obj);
            }
        }), activityResultContract, i);
    }

    public static final void registerForActivityResult$lambda$0(e74 e74Var, Object obj) {
        y45.j(e74Var, "$callback");
        e74Var.invoke(obj);
    }

    public static final void registerForActivityResult$lambda$1(e74 e74Var, Object obj) {
        y45.j(e74Var, "$callback");
        e74Var.invoke(obj);
    }

    public static final <I, O> ActivityResultLauncher<zfb> registerForActivityResult(ActivityResultCaller activityResultCaller, ActivityResultContract<I, O> activityResultContract, I i, final e74 e74Var) {
        y45.j(activityResultCaller, "<this>");
        y45.j(activityResultContract, "contract");
        y45.j(e74Var, "callback");
        return new ActivityResultCallerLauncher(activityResultCaller.registerForActivityResult(activityResultContract, new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                ActivityResultCallerKt.registerForActivityResult$lambda$1(e74Var, obj);
            }
        }), activityResultContract, i);
    }
}
