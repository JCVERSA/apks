package defpackage;

import android.content.DialogInterface;

public final class n9f implements DialogInterface.OnClickListener {
    public final o9f b;

    public n9f(o9f o9fVar) {
        this.b = o9fVar;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.c("Operation denied by user.");
    }
}
