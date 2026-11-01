package a1;

import android.view.View;
import android.view.WindowInsets;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import ru.zdevs.zarchiver.R;

public final class d implements View.OnApplyWindowInsetsListener {

    public final SlidingUpPanelLayout f154a;

    public final f f155b;

    public d(f fVar, SlidingUpPanelLayout slidingUpPanelLayout) {
        this.f155b = fVar;
        this.f154a = slidingUpPanelLayout;
    }

    @Override
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        int systemWindowInsetBottom = windowInsets.getSystemWindowInsetBottom();
        if (systemWindowInsetBottom > 0) {
            View viewFindViewById = this.f155b.findViewById(R.id.sup_container);
            if (viewFindViewById != null) {
                viewFindViewById.setPadding(0, 0, 0, systemWindowInsetBottom);
            }
            this.f154a.g(systemWindowInsetBottom);
        }
        return windowInsets.consumeSystemWindowInsets();
    }
}
