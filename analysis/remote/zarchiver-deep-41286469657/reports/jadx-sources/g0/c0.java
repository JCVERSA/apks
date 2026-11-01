package g0;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

public final class c0 extends i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {
    @Override
    public final void e() {
        g();
    }

    @Override
    public final int l() {
        return 13;
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        i.c cVar = this.f960a;
        if (cVar != null) {
            cVar.b(this);
        }
        e();
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        i.c cVar;
        if (i2 == -2 && (cVar = this.f960a) != null) {
            cVar.b(this);
        }
        e();
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        if (view == null || this.f965f == null) {
            return;
        }
        g();
    }

    @Override
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        return false;
    }
}
