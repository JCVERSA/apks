package sp;

import android.content.Context;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.moviedetailapi.h;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import kotlin.jvm.internal.Intrinsics;
import ni.f;
import sm.e;

public final class c extends BaseItemProvider {
    @Override
    public int l() {
        return 1;
    }

    @Override
    public int m() {
        return R$layout.item_works_layout_room;
    }

    @Override
    public void b(BaseViewHolder helper, VideoDetailPlayBean item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Context context = helper.itemView.getContext();
        ImageView imageView = (ImageView) helper.itemView.findViewById(R$id.ivCover);
        String coverUrl = item.getCoverUrl();
        if (coverUrl != null) {
            f.a aVar = f.f67269a;
            Intrinsics.e(context);
            f.b bVarG = aVar.m(context).g(coverUrl);
            String thumbnail = item.getThumbnail();
            if (thumbnail == null) {
                thumbnail = "";
            }
            f.b bVarL = bVarG.l(thumbnail);
            Intrinsics.e(imageView);
            bVarL.d(imageView);
        }
        helper.setText(R$id.tvSubject, item.getTitle());
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tvTag);
        if (appCompatTextView != null) {
            appCompatTextView.setText(" " + e.f72346a.g(item.getSubjectType()));
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(h.a(item.getSubjectType()), 0, 0, 0);
        }
    }
}
