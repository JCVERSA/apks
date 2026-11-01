package g0;

import android.view.View;
import android.widget.AdapterView;

public final class f implements AdapterView.OnItemSelectedListener {

    public final h f938a;

    public f(h hVar) {
        this.f938a = hVar;
    }

    @Override
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.f938a.w(null, i2);
    }

    @Override
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
