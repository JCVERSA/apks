package androidx.fragment.app;

import android.os.Bundle;
import androidx.annotation.NonNull;
import defpackage.s74;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a!\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0019\u0010\b\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\b\u0010\t\u001a3\u0010\f\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\n¢\u0006\u0004\b\f\u0010\r\u001a\u0019\u0010\u000e\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u000e\u0010\t¨\u0006\u000f"}, d2 = {"Landroidx/fragment/app/Fragment;", "", "requestKey", "Landroid/os/Bundle;", "result", "Lzfb;", "setFragmentResult", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V", "clearFragmentResult", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V", "Lkotlin/Function2;", "listener", "setFragmentResultListener", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ls74;)V", "clearFragmentResultListener", "fragment-ktx_release"}, k = 2, mv = {1, 4, 1})
public final class FragmentKt {
    public static final void clearFragmentResult(Fragment fragment, String str) {
        y45.j(fragment, "$this$clearFragmentResult");
        y45.j(str, "requestKey");
        fragment.getParentFragmentManager().clearFragmentResult(str);
    }

    public static final void clearFragmentResultListener(Fragment fragment, String str) {
        y45.j(fragment, "$this$clearFragmentResultListener");
        y45.j(str, "requestKey");
        fragment.getParentFragmentManager().clearFragmentResultListener(str);
    }

    public static final void setFragmentResult(Fragment fragment, String str, Bundle bundle) {
        y45.j(fragment, "$this$setFragmentResult");
        y45.j(str, "requestKey");
        y45.j(bundle, "result");
        fragment.getParentFragmentManager().setFragmentResult(str, bundle);
    }

    public static final void setFragmentResultListener(Fragment fragment, String str, final s74 s74Var) {
        y45.j(fragment, "$this$setFragmentResultListener");
        y45.j(str, "requestKey");
        y45.j(s74Var, "listener");
        fragment.getParentFragmentManager().setFragmentResultListener(str, fragment, new FragmentResultListener() {
            @Override
            public final void onFragmentResult(@NonNull String str2, @NonNull Bundle bundle) {
                y45.j(str2, "p0");
                y45.j(bundle, "p1");
                y45.i(s74Var.invoke(str2, bundle), "invoke(...)");
            }
        });
    }
}
