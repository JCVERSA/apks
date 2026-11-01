package a0;

import android.view.View;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZSelectFile;
import ru.zdevs.zarchiver.ui.ctrl.fab.FloatingActionMenu;

public final class e1 implements FloatingActionMenu.c {

    public final ZSelectFile f33a;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public final void onClick(View view) {
            e1.this.f33a.f1487m.setMenuState(false);
        }
    }

    public e1(ZSelectFile zSelectFile) {
        this.f33a = zSelectFile;
    }

    @Override
    public final void a(boolean z2) {
        View viewFindViewById = this.f33a.findViewById(R.id.ibActionBg);
        if (z2) {
            viewFindViewById.setVisibility(0);
            viewFindViewById.setOnClickListener(new a());
        } else {
            viewFindViewById.setVisibility(8);
            viewFindViewById.setOnClickListener(null);
        }
    }
}
