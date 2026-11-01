package a0;

import android.view.View;
import android.widget.AdapterView;
import ru.zdevs.zarchiver.ZArchiver;

public final class h implements AdapterView.OnItemLongClickListener {

    public final ZArchiver f47a;

    public h(ZArchiver zArchiver) {
        this.f47a = zArchiver;
    }

    @Override
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        return ZArchiver.v(this.f47a, adapterView, i2);
    }
}
