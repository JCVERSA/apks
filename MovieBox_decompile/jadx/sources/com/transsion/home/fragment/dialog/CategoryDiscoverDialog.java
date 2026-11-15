package com.transsion.home.fragment.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$style;
import com.transsion.home.bean.HomeTabItem;
import com.transsion.home.bean.NameImage;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010!\n\u0002\b\b\b\u0007\u0018\u0000 82\u00020\u0001:\u00049:*;B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\r\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\fJ-\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\u0003J!\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010 \u001a\u00020\u00062\u0010\u0010\u001f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0018\u00010\u001d¢\u0006\u0004\b \u0010!J2\u0010'\u001a\u00020\u00062#\u0010&\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u001e¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u00060\"¢\u0006\u0004\b'\u0010(R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R5\u00103\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u001e¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u0006\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u001c\u00107\u001a\b\u0012\u0004\u0012\u00020\u001e048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106¨\u0006<"}, d2 = {"Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "t0", "(Landroid/view/View;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onActivityCreated", "outState", "onSaveInstanceState", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onResume", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "Lcom/transsion/home/bean/HomeTabItem;", "tabs", "s0", "(Ljava/util/List;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "categoryName", "callback", "q0", "(Lkotlin/jvm/functions/Function1;)V", "", "c", "I", "getCurrentTabIndex", "()I", "r0", "(I)V", "currentTabIndex", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/jvm/functions/Function1;", "mCallback", "", "e", "Ljava/util/List;", "tabList", "f", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "a", "CategorySelectEvent", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CategoryDiscoverDialog extends BaseDialog {

    public static final Companion INSTANCE = new Companion(null);

    public static final int f43695g = 8;

    private int currentTabIndex;

    private Function1 mCallback;

    private List tabList = new ArrayList();

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\n\u001a\u00020\u000bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u000bHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0017"}, d2 = {"Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$CategorySelectEvent;", "Landroid/os/Parcelable;", "categoryName", "", "<init>", "(Ljava/lang/String;)V", "getCategoryName", "()Ljava/lang/String;", "component1", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class CategorySelectEvent implements Parcelable {
        private final String categoryName;
        public static final Parcelable.Creator<CategorySelectEvent> CREATOR = new a();
        public static final int $stable = 8;

        public static final class a implements Parcelable.Creator {
            @Override
            public final CategorySelectEvent createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                return new CategorySelectEvent(parcel.readString());
            }

            @Override
            public final CategorySelectEvent[] newArray(int i10) {
                return new CategorySelectEvent[i10];
            }
        }

        public CategorySelectEvent(String categoryName) {
            Intrinsics.h(categoryName, "categoryName");
            this.categoryName = categoryName;
        }

        public static CategorySelectEvent copy$default(CategorySelectEvent categorySelectEvent, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = categorySelectEvent.categoryName;
            }
            return categorySelectEvent.copy(str);
        }

        public final String getCategoryName() {
            return this.categoryName;
        }

        public final CategorySelectEvent copy(String categoryName) {
            Intrinsics.h(categoryName, "categoryName");
            return new CategorySelectEvent(categoryName);
        }

        @Override
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof CategorySelectEvent) && Intrinsics.c(this.categoryName, ((CategorySelectEvent) other).categoryName);
        }

        public final String getCategoryName() {
            return this.categoryName;
        }

        public int hashCode() {
            return this.categoryName.hashCode();
        }

        public String toString() {
            return "CategorySelectEvent(categoryName=" + this.categoryName + ")";
        }

        @Override
        public final void writeToParcel(Parcel dest, int flags) {
            Intrinsics.h(dest, "dest");
            dest.writeString(this.categoryName);
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0012B\u001d\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/bean/HomeTabItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "data", "", "currentTabIndex", "<init>", "(Ljava/util/List;I)V", "holder", WebConstants.FIELD_ITEM, "", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomeTabItem;)V", "F", "I", "G", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class a extends BaseQuickAdapter {
        private static final C0601a G = new C0601a(null);
        public static final int H = 8;

        @Deprecated
        public static final float I = 22.0f;

        @Deprecated
        public static final float J = 120.0f;

        private final int currentTabIndex;

        private static final class C0601a {
            public C0601a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0601a() {
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(List<HomeTabItem> data, int i10) {
            super(R$layout.item_category_discover_layout, data);
            Intrinsics.h(data, "data");
            this.currentTabIndex = i10;
        }

        public static final Unit D1(AppCompatImageView appCompatImageView, String str, View view, boolean z10, boolean z11, long j10) {
            if (!Intrinsics.c(appCompatImageView.getTag(), str)) {
                return Unit.f64096a;
            }
            if (!z10) {
                appCompatImageView.setVisibility(8);
                view.setVisibility(0);
            }
            return Unit.f64096a;
        }

        @Override
        public void F(BaseViewHolder holder, HomeTabItem item) {
            Integer width;
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            holder.setText(R$id.tvCategoryName, item.getName());
            final View view = holder.getView(R$id.tvCategoryName);
            final AppCompatImageView appCompatImageView = (AppCompatImageView) holder.getView(R$id.ivCategoryNameImage);
            view.setVisibility(0);
            appCompatImageView.setVisibility(8);
            appCompatImageView.setImageDrawable(null);
            NameImage nameImage = item.getNameImage();
            final String url = nameImage != null ? nameImage.getUrl() : null;
            if (url == null || StringsKt.q0(url)) {
                return;
            }
            Context context = holder.itemView.getContext();
            int iA = a0.a(120.0f);
            int iA2 = a0.a(22.0f);
            NameImage nameImage2 = item.getNameImage();
            Integer numValueOf = (nameImage2 == null || (width = nameImage2.getWidth()) == null) ? null : Integer.valueOf(a0.a(width.intValue()));
            int iH = numValueOf != null ? RangesKt.h(numValueOf.intValue(), iA) : -2;
            ViewGroup.LayoutParams layoutParams = appCompatImageView.getLayoutParams();
            ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
            if (bVar != null) {
                ((ViewGroup.MarginLayoutParams) bVar).width = iH;
                ((ViewGroup.MarginLayoutParams) bVar).height = iA2;
                appCompatImageView.setLayoutParams(bVar);
            }
            appCompatImageView.setTag(url);
            appCompatImageView.setVisibility(0);
            view.setVisibility(8);
            ni.f.a aVar = ni.f.f67269a;
            Intrinsics.e(context);
            aVar.m(context).g(url).i(R$color.transparent).b(new Function3() {
                @Override
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return CategoryDiscoverDialog.a.D1(appCompatImageView, url, view, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue(), ((Long) obj3).longValue());
                }
            }).d(appCompatImageView);
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CategoryDiscoverDialog a() {
            return new CategoryDiscoverDialog();
        }

        private Companion() {
        }
    }

    public static final class c extends RecyclerView.l {

        private final int f43699a;

        private final int f43700b;

        private final boolean f43701c;

        public c(int i10, int i11, boolean z10) {
            this.f43699a = i10;
            this.f43700b = i11;
            this.f43701c = z10;
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            int i10 = this.f43699a;
            int i11 = childAdapterPosition % i10;
            if (this.f43701c) {
                int i12 = this.f43700b;
                outRect.left = i12 - ((i11 * i12) / i10);
                outRect.right = ((i11 + 1) * i12) / i10;
                if (childAdapterPosition < i10) {
                    outRect.top = i12;
                }
                outRect.bottom = i12;
                return;
            }
            int i13 = this.f43700b;
            outRect.left = (i11 * i13) / i10;
            outRect.right = i13 - (((i11 + 1) * i13) / i10);
            if (childAdapterPosition >= i10) {
                outRect.top = i13;
            }
        }
    }

    public static final void p0(CategoryDiscoverDialog categoryDiscoverDialog, View view) {
        categoryDiscoverDialog.dismissAllowingStateLoss();
    }

    private final void t0(View view) {
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R$id.rvCategories);
        recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), 2));
        a aVar = new a(this.tabList, this.currentTabIndex);
        aVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i10) {
                CategoryDiscoverDialog.u0(this.f43732a, baseQuickAdapter, view2, i10);
            }
        });
        recyclerView.setAdapter(aVar);
        recyclerView.addItemDecoration(new c(2, a0.a(12.0f), true));
    }

    public static final void u0(CategoryDiscoverDialog categoryDiscoverDialog, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        categoryDiscoverDialog.dismissAllowingStateLoss();
        Function1 function1 = categoryDiscoverDialog.mCallback;
        if (function1 != null) {
            Object objL0 = CollectionsKt.l0(adapter.getData(), i10);
            function1.invoke(objL0 instanceof HomeTabItem ? (HomeTabItem) objL0 : null);
        }
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        if (savedInstanceState == null || !savedInstanceState.getBoolean("category_discover", false)) {
            return;
        }
        dismissAllowingStateLoss();
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        dismissAllowingStateLoss();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.FullScreenDialogFromBottom);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        return inflater.inflate(R$layout.dialog_category_discover_layout, container, false);
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean("category_discover", true);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setLayout(-1, -2);
            window.setGravity(80);
        }
        view.findViewById(R$id.btnClose).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                CategoryDiscoverDialog.p0(this.f43731a, view2);
            }
        });
        t0(view);
    }

    public final void q0(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.mCallback = callback;
    }

    public final void r0(int i10) {
        this.currentTabIndex = i10;
    }

    public final void s0(List tabs) {
        if (tabs == null) {
            return;
        }
        this.tabList.addAll(CollectionsKt.f0(tabs));
    }
}
