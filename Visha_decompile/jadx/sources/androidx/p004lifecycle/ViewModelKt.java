package androidx.p004lifecycle;

import defpackage.mc2;
import defpackage.nk1;
import defpackage.v6a;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u0014\u0010\u0001\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0015\u0010\u0007\u001a\u00020\u0004*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"", "JOB_KEY", "Ljava/lang/String;", "Landroidx/lifecycle/ViewModel;", "Lnk1;", "getViewModelScope", "(Landroidx/lifecycle/ViewModel;)Lnk1;", "viewModelScope", "lifecycle-viewmodel-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ViewModelKt {
    private static final String JOB_KEY = "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY";

    public static final nk1 getViewModelScope(ViewModel viewModel) {
        y45.j(viewModel, "<this>");
        nk1 nk1Var = (nk1) viewModel.getTag(JOB_KEY);
        if (nk1Var != null) {
            return nk1Var;
        }
        Object tagIfAbsent = viewModel.setTagIfAbsent(JOB_KEY, new CloseableCoroutineScope(v6a.b(null, 1, null).plus(mc2.c().b())));
        y45.i(tagIfAbsent, "setTagIfAbsent(\n        …Main.immediate)\n        )");
        return (nk1) tagIfAbsent;
    }
}
