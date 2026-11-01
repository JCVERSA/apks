package a1;

import android.view.MotionEvent;
import android.view.View;
import ru.zdevs.zarchiver.R;

public final class b implements View.OnTouchListener {

    public final View f151a;

    public final f f152b;

    public b(f fVar) {
        this.f152b = fVar;
        this.f151a = fVar.findViewById(R.id.sup_container);
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || motionEvent.getY() >= this.f151a.getTop()) {
            return false;
        }
        this.f152b.dismiss();
        return false;
    }
}
