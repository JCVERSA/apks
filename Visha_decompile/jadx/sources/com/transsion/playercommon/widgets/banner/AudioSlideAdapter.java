package com.transsion.playercommon.widgets.banner;

import android.text.TextUtils;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.playercommon.R;
import com.transsion.playercommon.widgets.banner.AudioSlideAdapter;
import com.transsion.widgets.GestureUtil;
import defpackage.e74;
import defpackage.p06;
import defpackage.r0a;
import defpackage.ry5;
import defpackage.se;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ5\u0010\u000f\u001a\u00020\u000e2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u000f\u0010\u0010R6\u0010\u0019\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0011j\u0004\u0018\u0001`\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;", "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;", "Lcom/transsion/dbdata/beans/media/AudioItem;", MethodDecl.initName, "()V", "", "p0", "getLayoutId", "(I)I", "Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;", "holder", "data", "position", "pageSize", "Lzfb;", "B", "(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Lcom/transsion/dbdata/beans/media/AudioItem;II)V", "Lkotlin/Function1;", "Lcom/transsion/playercommon/widgets/banner/OnViewClickListener;", "t", "Le74;", "getOnViewClickListener", "()Le74;", "D", "(Le74;)V", "onViewClickListener", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AudioSlideAdapter extends BaseBannerAdapter<AudioItem> {

    public e74 onViewClickListener;

    public static final void C(AudioSlideAdapter audioSlideAdapter, AudioItem audioItem, int i) {
        if (i == 3 || i == 5) {
            e74 e74Var = audioSlideAdapter.onViewClickListener;
            if (e74Var != null) {
                e74Var.invoke(audioItem);
            }
            if (i == 3) {
                p06.a0("vd_miniplayer_slip_up", "status", "1");
            } else {
                ry5.g("audioplaypage");
            }
        }
    }

    @Override
    public void c(BaseViewHolder holder, final AudioItem data, int position, int pageSize) {
        y45.j(holder, "holder");
        y45.j(data, "data");
        TextView textView = (TextView) holder.findViewById(R.id.info_title);
        TextView textView2 = (TextView) holder.findViewById(R.id.artist);
        boolean z = TextUtils.isEmpty(data.artistName) || data.artistName.equals(r0a.e(R.string.visha_unknown));
        textView.setText(data.getDisplayName());
        textView2.setText(data.artistName);
        if (getIsForceLight()) {
            textView.setTextColor(ContextCompat.getColor(se.a(), R.color.black));
            textView2.setTextColor(ContextCompat.getColor(se.a(), R.color.os_color_black50));
        }
        if (z) {
            textView2.setVisibility(8);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView2.setEllipsize(truncateAt);
            textView.setEllipsize(truncateAt);
            textView.setSingleLine(false);
        } else {
            textView2.setVisibility(0);
            TextUtils.TruncateAt truncateAt2 = TextUtils.TruncateAt.MARQUEE;
            textView2.setEllipsize(truncateAt2);
            textView.setEllipsize(truncateAt2);
            textView.setSingleLine(true);
        }
        textView.setMaxLines(2);
        GestureUtil.scrollGesture(holder.itemView, new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i) {
                AudioSlideAdapter.C(this.a, data, i);
            }
        });
    }

    public final void D(e74 e74Var) {
        this.onViewClickListener = e74Var;
    }

    @Override
    public int getLayoutId(int p0) {
        return R.layout.item_bottom_bar_music_info;
    }
}
