package b0;

import android.view.MotionEvent;
import android.view.View;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.activity.OpenAsDlg;

public final class h implements View.OnTouchListener {

    public final View f282a;

    public final OpenAsDlg f283b;

    public h(OpenAsDlg openAsDlg) {
        this.f283b = openAsDlg;
        this.f282a = openAsDlg.findViewById(R.id.sup_container);
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || motionEvent.getY() >= this.f282a.getTop()) {
            return false;
        }
        int i2 = OpenAsDlg.f1591f;
        this.f283b.a(true);
        return false;
    }
}
