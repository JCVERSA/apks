package androidx.p003activity.result;

import android.content.Context;
import android.content.Intent;
import androidx.core.app.ActivityOptionsCompat;
import androidx.p003activity.result.contract.ActivityResultContract;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003B1\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0010\b\u001a\u00028\u0000¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0012R#\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\b\u001a\u00028\u00008\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R'\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00010\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u0015R&\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00010\u00068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u0013\u001a\u0004\b\u001e\u0010\u0015¨\u0006\u001f"}, d2 = {"Landroidx/activity/result/ActivityResultCallerLauncher;", "I", "O", "Landroidx/activity/result/ActivityResultLauncher;", "Lzfb;", "launcher", "Landroidx/activity/result/contract/ActivityResultContract;", "callerContract", "callerInput", MethodDecl.initName, "(Landroidx/activity/result/ActivityResultLauncher;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;)V", "input", "Landroidx/core/app/ActivityOptionsCompat;", "options", "launch", "(Lzfb;Landroidx/core/app/ActivityOptionsCompat;)V", "unregister", "()V", "Landroidx/activity/result/ActivityResultLauncher;", "Landroidx/activity/result/contract/ActivityResultContract;", "getCallerContract", "()Landroidx/activity/result/contract/ActivityResultContract;", "Ljava/lang/Object;", "getCallerInput", "()Ljava/lang/Object;", "resultContract$delegate", "Lyi5;", "getResultContract", "resultContract", "contract", "getContract", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ActivityResultCallerLauncher<I, O> extends ActivityResultLauncher<zfb> {
    private final ActivityResultContract<I, O> callerContract;
    private final I callerInput;
    private final ActivityResultContract<zfb, O> contract;
    private final ActivityResultLauncher<I> launcher;

    private final yi5 resultContract;

    public ActivityResultCallerLauncher(ActivityResultLauncher<I> activityResultLauncher, ActivityResultContract<I, O> activityResultContract, I i) {
        y45.j(activityResultLauncher, "launcher");
        y45.j(activityResultContract, "callerContract");
        this.launcher = activityResultLauncher;
        this.callerContract = activityResultContract;
        this.callerInput = i;
        this.resultContract = b.a(new c74(this) {
            final ActivityResultCallerLauncher<I, O> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Type inference failed for: r0v0, types: [androidx.activity.result.ActivityResultCallerLauncher$resultContract$2$1] */
            @Override
            public final AnonymousClass1 invoke() {
                final ActivityResultCallerLauncher<I, O> activityResultCallerLauncher = this.this$0;
                return new ActivityResultContract<zfb, O>() {
                    @Override
                    public O parseResult(int resultCode, Intent intent) {
                        return (O) activityResultCallerLauncher.getCallerContract().parseResult(resultCode, intent);
                    }

                    @Override
                    public Intent createIntent(Context context, zfb input) {
                        y45.j(context, "context");
                        y45.j(input, "input");
                        return activityResultCallerLauncher.getCallerContract().createIntent(context, activityResultCallerLauncher.getCallerInput());
                    }
                };
            }
        });
        this.contract = getResultContract();
    }

    private final ActivityResultContract<zfb, O> getResultContract() {
        return (ActivityResultContract) this.resultContract.getValue();
    }

    public final ActivityResultContract<I, O> getCallerContract() {
        return this.callerContract;
    }

    public final I getCallerInput() {
        return this.callerInput;
    }

    @Override
    public ActivityResultContract<zfb, ?> getContract() {
        return this.contract;
    }

    @Override
    public void unregister() {
        this.launcher.unregister();
    }

    @Override
    public void launch(zfb input, ActivityOptionsCompat options) {
        y45.j(input, "input");
        this.launcher.launch(this.callerInput, options);
    }
}
