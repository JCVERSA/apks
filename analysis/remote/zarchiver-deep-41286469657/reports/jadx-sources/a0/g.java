package a0;

import android.view.View;
import android.widget.AdapterView;
import ru.zdevs.zarchiver.ZArchiver;

public final class g implements AdapterView.OnItemClickListener {

    public final ZArchiver f44a;

    public g(ZArchiver zArchiver) {
        this.f44a = zArchiver;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        ZArchiver.u(this.f44a, adapterView, i2);
    }
}
