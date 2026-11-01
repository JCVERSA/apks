package a1;

import android.content.DialogInterface;
import android.view.View;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import ru.zdevs.zarchiver.R;

public final class e implements DialogInterface.OnShowListener {

    public final SlidingUpPanelLayout f156a;

    public final f f157b;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public final void onClick(View view) {
            e.this.f156a.setPanelState(SlidingUpPanelLayout.e.f511a);
        }
    }

    public e(f fVar, SlidingUpPanelLayout slidingUpPanelLayout) {
        this.f157b = fVar;
        this.f156a = slidingUpPanelLayout;
    }

    @Override
    public final void onShow(DialogInterface dialogInterface) {
        View viewFindViewById;
        if (this.f156a.getPanelState() != SlidingUpPanelLayout.e.f513c || (viewFindViewById = this.f157b.f159a.f161a.findViewById(R.id.expand)) == null) {
            return;
        }
        viewFindViewById.setVisibility(0);
        viewFindViewById.setClickable(true);
        viewFindViewById.setOnClickListener(new a());
    }
}
