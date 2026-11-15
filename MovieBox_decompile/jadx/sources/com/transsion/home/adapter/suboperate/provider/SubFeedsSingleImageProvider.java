package com.transsion.home.adapter.suboperate.provider;

import android.content.Context;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.adapter.trending.provider.SubjectSingleImgItemProvider;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.ExplainBean;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.videodetail.music.data.MusicLikedFragmentViewModel;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public class SubFeedsSingleImageProvider extends BaseItemProvider {

    private final int f43345e;

    private final boolean f43346f;

    private final SubjectSingleImgItemProvider f43347g;

    private final Lazy f43348h = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SubFeedsSingleImageProvider.G();
        }
    });

    public SubFeedsSingleImageProvider(int i10, boolean z10) {
        this.f43345e = i10;
        this.f43346f = z10;
        this.f43347g = new SubjectSingleImgItemProvider(z10);
    }

    public static final void D(OperateItem operateItem, SubFeedsSingleImageProvider subFeedsSingleImageProvider, View view) {
        List<Object> data;
        Subject feedsSubject = operateItem.getFeedsSubject();
        if (feedsSubject != null) {
            if (yg.l.f76264a.e()) {
                zk.h.f(feedsSubject, "opt_sub_feeds");
                BaseProviderMultiAdapter baseProviderMultiAdapterG = subFeedsSingleImageProvider.g();
                subFeedsSingleImageProvider.H((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(operateItem), feedsSubject, false);
            } else {
                Context contextK = subFeedsSingleImageProvider.k();
                AppCompatActivity appCompatActivity = contextK instanceof AppCompatActivity ? (AppCompatActivity) contextK : null;
                if (appCompatActivity != null) {
                    kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(appCompatActivity), null, null, new SubFeedsSingleImageProvider$convert$2$1$1$1(subFeedsSingleImageProvider, operateItem, feedsSubject, null), 3, null);
                }
            }
        }
    }

    public static final void E(OperateItem operateItem, SubFeedsSingleImageProvider subFeedsSingleImageProvider, View view) {
        Subject feedsSubject;
        List<Object> data;
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L) || (feedsSubject = operateItem.getFeedsSubject()) == null) {
            return;
        }
        zk.h.g(feedsSubject, SubTabFragment.INSTANCE.a(subFeedsSingleImageProvider.f43345e), subFeedsSingleImageProvider.k(), "opt_sub_feeds");
        BaseProviderMultiAdapter baseProviderMultiAdapterG = subFeedsSingleImageProvider.g();
        subFeedsSingleImageProvider.H((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(operateItem), feedsSubject, false);
    }

    public static final MusicLikedFragmentViewModel G() {
        return new MusicLikedFragmentViewModel();
    }

    public final void H(int i10, Subject subject, boolean z10) {
        HashMap map = new HashMap();
        map.put("event_type", z10 ? "browse_feeds_single_item" : "click_feeds_single_item");
        map.put("sequence", String.valueOf(i10));
        map.put("item_type", "rec");
        String ops = subject.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        String subjectId = subject.getSubjectId();
        map.put("subject_id", subjectId != null ? subjectId : "");
        map.put("builtin", subject.getBuiltIn() ? "1" : "0");
        map.put("tabId", String.valueOf(this.f43345e));
        StringBuilder sb2 = new StringBuilder();
        List<ExplainBean> explains = subject.getExplains();
        if (explains != null) {
            Iterator<T> it = explains.iterator();
            while (it.hasNext()) {
                sb2.append(((ExplainBean) it.next()).getType());
                sb2.append(",");
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        map.put("rec_explain_type", StringsKt.r1(string, ','));
        sk.b.d(subject, map);
        if (z10) {
            com.transsion.baselib.helper.a.f42121a.e(SubTabFragment.INSTANCE.a(this.f43345e), map);
        } else {
            com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43345e), map);
        }
    }

    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Subject feedsSubject = item.getFeedsSubject();
        if (feedsSubject != null) {
            this.f43347g.b(helper, item);
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            H((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(item), feedsSubject, true);
        }
        helper.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SubFeedsSingleImageProvider.D(item, this, view);
            }
        });
        View viewH = this.f43347g.H();
        if (viewH != null) {
            viewH.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SubFeedsSingleImageProvider.E(item, this, view);
                }
            });
        }
    }

    protected final MusicLikedFragmentViewModel F() {
        return (MusicLikedFragmentViewModel) this.f43348h.getValue();
    }

    @Override
    public int l() {
        return PostItemType.SINGLE_SUBJECT.ordinal();
    }

    @Override
    public int m() {
        return this.f43347g.m();
    }
}
