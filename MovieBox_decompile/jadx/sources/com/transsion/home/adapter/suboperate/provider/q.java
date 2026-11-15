package com.transsion.home.adapter.suboperate.provider;

import android.view.View;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.adapter.trending.provider.SubjectItemProvider;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.ExplainBean;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class q extends BaseItemProvider {

    private final int f43463e;

    private final boolean f43464f;

    private final SubjectItemProvider f43465g;

    public q(int i10, boolean z10) {
        this.f43463e = i10;
        this.f43464f = z10;
        this.f43465g = new SubjectItemProvider(z10);
    }

    public static final void B(OperateItem operateItem, q qVar, View view) {
        List<Object> data;
        Subject feedsSubject = operateItem.getFeedsSubject();
        if (feedsSubject != null) {
            zk.h.f(feedsSubject, "opt_sub_feeds");
            BaseProviderMultiAdapter baseProviderMultiAdapterG = qVar.g();
            qVar.D((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(operateItem), feedsSubject, false);
        }
    }

    public static final void C(OperateItem operateItem, q qVar, View view) {
        Subject feedsSubject;
        List<Object> data;
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L) || (feedsSubject = operateItem.getFeedsSubject()) == null) {
            return;
        }
        zk.h.g(feedsSubject, SubTabFragment.INSTANCE.a(qVar.f43463e), qVar.k(), "opt_sub_feeds");
        BaseProviderMultiAdapter baseProviderMultiAdapterG = qVar.g();
        qVar.D((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(operateItem), feedsSubject, false);
    }

    private final void D(int i10, Subject subject, boolean z10) {
        HashMap map = new HashMap();
        map.put("event_type", z10 ? "browse_feeds_item" : "click_feeds_item");
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
        map.put("tabId", String.valueOf(this.f43463e));
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
            com.transsion.baselib.helper.a.f42121a.e(SubTabFragment.INSTANCE.a(this.f43463e), map);
        } else {
            com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43463e), map);
        }
    }

    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Subject feedsSubject = item.getFeedsSubject();
        if (feedsSubject != null) {
            this.f43465g.b(helper, item);
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            D((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(item), feedsSubject, true);
        }
        helper.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                q.B(item, this, view);
            }
        });
        View viewG = this.f43465g.G();
        if (viewG != null) {
            viewG.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    q.C(item, this, view);
                }
            });
        }
    }

    @Override
    public int l() {
        return PostItemType.SUBJECT.ordinal();
    }

    @Override
    public int m() {
        return this.f43465g.m();
    }
}
