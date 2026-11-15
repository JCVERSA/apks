package io.appmetrica.analytics.coreutils.internal.toggle;

import com.lzy.okgo.model.Progress;
import com.transsion.livecaption.constant.ICode;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;", "Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;", "", "initialState", "", Progress.TAG, MethodDecl.initName, "(ZLjava/lang/String;)V", ICode.CALL.CALL_KEY_STATE, "Lzfb;", "update", "(Z)V", "core-utils_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class OuterStateToggle extends SimpleThreadSafeToggle {
    public OuterStateToggle(boolean z, String str) {
        super(z, str);
    }

    public final void update(boolean state) {
        super.updateState(state);
    }
}
