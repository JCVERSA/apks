package so;

import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class g extends RecyclerView.a0 {

    private View f72371a;

    private ImageView f72372b;

    private TnTextView f72373c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        this.f72371a = itemView;
        View viewFindViewById = itemView.findViewById(R$id.image);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f72372b = (ImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.desc);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f72373c = (TnTextView) viewFindViewById2;
    }

    public final TnTextView f() {
        return this.f72373c;
    }

    public final ImageView g() {
        return this.f72372b;
    }

    public final View h() {
        return this.f72371a;
    }
}
