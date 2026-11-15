package com.transsion.home.view.filter.expand;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.b;
import bl.a;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.view.filter.expand.TabExpandView;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import qk.g0;
import uf.c;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\r2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u000f¢\u0006\u0004\b\u001f\u0010\u001aJ\r\u0010 \u001a\u00020\u000f¢\u0006\u0004\b \u0010\u001aJ0\u0010%\u001a\u00020\u000f2!\u0010$\u001a\u001d\u0012\u0013\u0012\u00110\r¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000f0!¢\u0006\u0004\b%\u0010&J\u001b\u0010'\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b'\u0010\u0011R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001c\u00102\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R(\u00106\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\"\u00109\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\t038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00105R3\u0010<\u001a\u001f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000f\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010=R\"\u0010E\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006F"}, d2 = {"Lcom/transsion/home/view/filter/expand/TabExpandView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "Lbl/a;", "list", "", "l", "(Ljava/util/List;)V", WebConstants.FIELD_ITEM, "Landroid/view/View;", "itemView", "f", "(Lbl/a;Landroid/view/View;)Landroid/view/View;", "m", "(Lbl/a;)V", "i", "()V", "", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "enableExpand", "(Z)V", "collapse", "expand", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "onItemClickListener", "setOnItemClickListener", "(Lkotlin/jvm/functions/Function1;)V", "updateData", "Lqk/g0;", "a", "Lqk/g0;", "getBinding", "()Lqk/g0;", "setBinding", "(Lqk/g0;)V", "binding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/List;", "datas", "", "c", "Ljava/util/Map;", "rowMap", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "itemInRow", "e", "Lkotlin/jvm/functions/Function1;", "mOnItemClickListener", "Lbl/a;", "curSelectItem", "g", "I", "getInParentIndex", "()I", "setInParentIndex", "(I)V", "inParentIndex", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TabExpandView extends FrameLayout {
    public static final int $stable = 8;

    private g0 binding;

    private List datas;

    private Map rowMap;

    private Map itemInRow;

    private Function1 mOnItemClickListener;

    private a curSelectItem;

    private int inParentIndex;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TabExpandView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    public static final void e(TabExpandView tabExpandView, View view) {
        AppCompatTextView appCompatTextView = tabExpandView.binding.f69744c;
        appCompatTextView.setSelected(!appCompatTextView.isSelected());
        if (tabExpandView.binding.f69744c.isSelected()) {
            tabExpandView.expand();
        } else {
            tabExpandView.collapse();
        }
    }

    private final View f(final a item, final View itemView) {
        Typeface typefaceDefaultFromStyle;
        if (itemView == null) {
            itemView = u6.a.a(this, R$layout.adapter_filter_item);
        }
        TextView textView = (TextView) itemView.findViewById(R$id.filter_item_name);
        textView.setText(item.a());
        if (item.d()) {
            this.curSelectItem = item;
            textView.setBackgroundResource(R$drawable.bg_selected_filter_item);
            textView.setTextColor(b.getColor(textView.getContext(), R$color.text_01));
            typefaceDefaultFromStyle = Typeface.defaultFromStyle(1);
        } else {
            textView.setBackgroundResource(R$color.transparent);
            textView.setTextColor(b.getColor(textView.getContext(), R$color.text_02));
            typefaceDefaultFromStyle = Typeface.defaultFromStyle(0);
        }
        textView.setTypeface(typefaceDefaultFromStyle);
        itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TabExpandView.h(this.f389a, item, itemView, view);
            }
        });
        return itemView;
    }

    static View g(TabExpandView tabExpandView, a aVar, View view, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            view = null;
        }
        return tabExpandView.f(aVar, view);
    }

    public static final void h(TabExpandView tabExpandView, a aVar, View view, View view2) {
        tabExpandView.m(aVar);
        tabExpandView.f(aVar, view);
        Function1 function1 = tabExpandView.mOnItemClickListener;
        if (function1 != null) {
            function1.invoke(aVar);
        }
    }

    private final void i() {
        this.binding.f69743b.post(new Runnable() {
            @Override
            public final void run() {
                TabExpandView.j(this.f386a);
            }
        });
    }

    public static final void j(TabExpandView tabExpandView) {
        int rowsCount = tabExpandView.binding.f69743b.getRowsCount();
        int i10 = 0;
        for (int i11 = 0; i11 < rowsCount; i11++) {
            ArrayList arrayList = new ArrayList();
            int countInRow = tabExpandView.binding.f69743b.getCountInRow(i11);
            int i12 = 0;
            while (i12 < countInRow) {
                int i13 = i10 + 1;
                a aVar = (a) tabExpandView.datas.get(i10);
                tabExpandView.itemInRow.put(aVar.c(), Integer.valueOf(i11));
                arrayList.add(aVar);
                i12++;
                i10 = i13;
            }
            tabExpandView.rowMap.put(Integer.valueOf(i11), arrayList);
        }
        if (tabExpandView.rowMap.size() > 1) {
            AppCompatTextView tvExpand = tabExpandView.binding.f69744c;
            Intrinsics.g(tvExpand, "tvExpand");
            c.k(tvExpand);
        } else {
            AppCompatTextView tvExpand2 = tabExpandView.binding.f69744c;
            Intrinsics.g(tvExpand2, "tvExpand");
            c.h(tvExpand2);
        }
    }

    public static final void k(TabExpandView tabExpandView) {
        Map map = tabExpandView.itemInRow;
        a aVar = tabExpandView.curSelectItem;
        List list = (List) tabExpandView.rowMap.get((Integer) map.get(aVar != null ? aVar.c() : null));
        if (list == null) {
            list = tabExpandView.datas;
        }
        tabExpandView.l(list);
    }

    private final void l(List list) {
        int childCount = this.binding.f69743b.getChildCount();
        int i10 = 0;
        if (list.size() <= childCount) {
            while (i10 < childCount) {
                View childAt = this.binding.f69743b.getChildAt(i10);
                if (i10 < list.size()) {
                    Intrinsics.e(childAt);
                    c.k(childAt);
                    f((a) list.get(i10), childAt);
                } else {
                    Intrinsics.e(childAt);
                    c.g(childAt);
                }
                i10++;
            }
            return;
        }
        this.binding.f69743b.removeAllViews();
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            a aVar = (a) obj;
            View childAt2 = this.binding.f69743b.getChildAt(i10);
            if (childAt2 != null) {
                f(aVar, childAt2);
            } else {
                this.binding.f69743b.addView(g(this, aVar, null, 2, null));
            }
            i10 = i11;
        }
    }

    private final void m(a item) {
        for (a aVar : this.datas) {
            aVar.e(Intrinsics.c(aVar, item));
        }
        this.curSelectItem = item;
    }

    public final void collapse() {
        this.binding.f69743b.setMaxRows(1);
        this.binding.f69744c.setSelected(false);
        this.binding.f69743b.post(new Runnable() {
            @Override
            public final void run() {
                TabExpandView.k(this.f388a);
            }
        });
    }

    public final void enableExpand(boolean enable) {
        this.binding.f69744c.setEnabled(enable);
    }

    public final void expand() {
        this.binding.f69743b.setMaxRows(Integer.MAX_VALUE);
        this.binding.f69744c.setSelected(true);
        l(this.datas);
    }

    public final g0 getBinding() {
        return this.binding;
    }

    public final int getInParentIndex() {
        return this.inParentIndex;
    }

    public final void setBinding(g0 g0Var) {
        Intrinsics.h(g0Var, "<set-?>");
        this.binding = g0Var;
    }

    public final void setInParentIndex(int i10) {
        this.inParentIndex = i10;
    }

    public final void setOnItemClickListener(Function1<? super a, Unit> onItemClickListener) {
        Intrinsics.h(onItemClickListener, "onItemClickListener");
        this.mOnItemClickListener = onItemClickListener;
    }

    public final void updateData(List<a> list) {
        Intrinsics.h(list, "list");
        this.datas = list;
        this.rowMap.clear();
        this.itemInRow.clear();
        l(list);
        i();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TabExpandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabExpandView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        g0 g0VarC = g0.c(LayoutInflater.from(getContext()), this, true);
        Intrinsics.g(g0VarC, "inflate(...)");
        this.binding = g0VarC;
        this.datas = new ArrayList();
        this.rowMap = new LinkedHashMap();
        this.itemInRow = new LinkedHashMap();
        this.inParentIndex = -1;
        this.binding.f69744c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TabExpandView.e(this.f387a, view);
            }
        });
    }
}
