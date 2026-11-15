package so;

import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class f extends RecyclerView.a0 {

    private View f72369a;

    private ImageView f72370b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        this.f72369a = itemView;
        View viewFindViewById = itemView.findViewById(R$id.image);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f72370b = (ImageView) viewFindViewById;
    }

    public final ImageView f() {
        return this.f72370b;
    }

    public final View g() {
        return this.f72369a;
    }
}
