package a0;

import android.view.View;
import ru.zdevs.zarchiver.ZArchiver;

public final class j implements View.OnClickListener {

    public final ZArchiver f51a;

    public j(ZArchiver zArchiver) {
        this.f51a = zArchiver;
    }

    @Override
    public final void onClick(View view) {
        if (view.getTag() != null) {
            this.f51a.D(((Integer) view.getTag()).intValue());
        }
    }
}
