package com.snaptube.premium.dialog;

import android.os.Bundle;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import o.bx2;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
public final class PiraticalApkWarningDialogFragment$mPos$2 extends Lambda implements bx2 {
    final PiraticalApkWarningDialogFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PiraticalApkWarningDialogFragment$mPos$2(PiraticalApkWarningDialogFragment piraticalApkWarningDialogFragment) {
        super(0);
        this.this$0 = piraticalApkWarningDialogFragment;
    }

    @Override
    public Object invoke() {
        return invoke();
    }

    @Override
    @Nullable
    public final String invoke() {
        Bundle arguments = this.this$0.getArguments();
        if (arguments != null) {
            return arguments.getString(IntentUtil.POS);
        }
        return null;
    }
}
