package defpackage;

import android.content.DialogInterface;

public final class s9f implements DialogInterface.OnClickListener {
    public final t9f b;

    public s9f(t9f t9fVar) {
        this.b = t9fVar;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.c("User canceled the download.");
    }
}
