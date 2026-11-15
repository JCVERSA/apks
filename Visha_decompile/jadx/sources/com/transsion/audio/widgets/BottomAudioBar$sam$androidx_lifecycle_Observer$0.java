package com.transsion.audio.widgets;

import androidx.p004lifecycle.Observer;
import defpackage.e74;
import defpackage.e84;
import defpackage.x74;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class BottomAudioBar$sam$androidx_lifecycle_Observer$0 implements Observer, e84 {
    private final e74 function;

    public BottomAudioBar$sam$androidx_lifecycle_Observer$0(e74 e74Var) {
        y45.j(e74Var, "function");
        this.function = e74Var;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof Observer) && (obj instanceof e84)) {
            return y45.e(getFunctionDelegate(), ((e84) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override
    public final x74 getFunctionDelegate() {
        return this.function;
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override
    public final void onChanged(Object obj) {
        this.function.invoke(obj);
    }
}
