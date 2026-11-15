package fo;

import androidx.recyclerview.widget.RecyclerView;
import com.transsion.postdetail.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class w extends o {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(String str, String str2, RecyclerView.s pool) {
        super(str, str2, pool);
        Intrinsics.h(pool, "pool");
    }

    @Override
    public int m() {
        return R$layout.item_provider_room_post_subject_detail;
    }
}
