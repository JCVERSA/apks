package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.util.ArrayMap;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.integration.ActivityHelper;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.base.BaseAdapter;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import com.cloud.tmc.miniapp.utils.MessageBubbleUtils;
import com.cloud.tmc.miniutils.util.ViewUtils;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
public final class OooOOO0 extends com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o<OooOOO0> {
    public final ArrayMap<Integer, BottomDialog$MenuItem> OooO;
    public final Lazy OooO00o;
    public final Lazy OooO0O0;
    public final Lazy OooO0OO;
    public final Lazy OooO0Oo;
    public final com.cloud.tmc.miniapp.dialog.OooOOO OooO0o;
    public final Lazy OooO0o0;
    public String OooO0oO;
    public BaseAdapter.OnItemClickListener OooO0oo;

    public static final class OooO extends Lambda implements Function0<AppCompatImageView> {
        public OooO() {
            super(0);
        }

        @Override
        public Object invoke() {
            return (AppCompatImageView) OooOOO0.this.findViewById(R.id.iv_go);
        }
    }

    public static final class OooO00o implements BaseAdapter.OnChildClickListener {
        public OooO00o() {
        }

        @Override
        public void onChildClick(RecyclerView recyclerView, View view, int i10) {
            BaseAdapter.OnItemClickListener onItemClickListener = OooOOO0.this.OooO0oo;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(recyclerView, view, i10);
            }
        }
    }

    public static final class OooO0O0 implements com.cloud.tmc.miniapp.dialog.OooO0O0.OooOOO0 {
        public OooO0O0() {
        }

        @Override
        public void OooO00o(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(OooOOO0.this.OooO0oO, PointAnalyseType.POINT_MORE_EXIT, "");
        }
    }

    @SourceDebugExtension
    public static final class OooO0OO implements com.cloud.tmc.miniapp.dialog.OooO0O0.Oooo000 {
        public final Context OooO0O0;

        public OooO0OO(Context context) {
            this.OooO0O0 = context;
        }

        @Override
        public void onShow(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            if (MessageBubbleUtils.OooO00o.OooO00o()) {
                try {
                    Iterator<BottomDialog$MenuItem> it = OooOOO0.this.OooO0o.getData().iterator();
                    int i10 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i10 = -1;
                            break;
                        } else if (Intrinsics.c(it.next().getId(), "message")) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                    Integer numValueOf = Integer.valueOf(i10);
                    if (i10 < 0) {
                        numValueOf = null;
                    }
                    if (numValueOf != null) {
                        OooOOO0 oooOOO0 = OooOOO0.this;
                        Context context = this.OooO0O0;
                        int iIntValue = numValueOf.intValue();
                        BottomDialog$MenuItem bottomDialog$MenuItem = oooOOO0.OooO0o.getData().get(iIntValue);
                        Intrinsics.h(context, "context");
                        bottomDialog$MenuItem.setDotBadge(((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(context, TmcConstants.KEY_MSG_ID, TmcConstants.KEY_MINI_NEW_MESSAGE_STATUS, false));
                        oooOOO0.OooO0o.notifyItemChanged(iIntValue);
                    }
                } catch (Throwable th2) {
                    TmcLogger.e("BottomDialog", th2);
                }
            }
        }
    }

    public static final class OooO0o extends Lambda implements Function0<ActivityHelper> {
        public final Context OooO00o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0o(Context context) {
            super(0);
            this.OooO00o = context;
        }

        @Override
        public Object invoke() {
            Context context = this.OooO00o;
            MiniAppActivity miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
            if (miniAppActivity != null) {
                return miniAppActivity.getMActivityHelper();
            }
            return null;
        }
    }

    public static final class OooOO0 extends Lambda implements Function0<AppCompatImageView> {
        public OooOO0() {
            super(0);
        }

        @Override
        public Object invoke() {
            return (AppCompatImageView) OooOOO0.this.findViewById(R.id.iv_logo);
        }
    }

    public static final class OooOO0O extends Lambda implements Function0<RecyclerView> {
        public OooOO0O() {
            super(0);
        }

        @Override
        public Object invoke() {
            return (RecyclerView) OooOOO0.this.findViewById(R.id.rv_menu_items);
        }
    }

    public static final class OooOOO extends Lambda implements Function0<TextView> {
        public OooOOO() {
            super(0);
        }

        @Override
        public Object invoke() {
            return (TextView) OooOOO0.this.findViewById(R.id.tv_product_name);
        }
    }

    public static final class C0303OooOOO0 extends Lambda implements Function0<TextView> {
        public C0303OooOOO0() {
            super(0);
        }

        @Override
        public Object invoke() {
            return (TextView) OooOOO0.this.findViewById(R.id.tv_company_name);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooOOO0(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.OooO00o = LazyKt.b(new OooOO0());
        this.OooO0O0 = LazyKt.b(new OooOOO());
        this.OooO0OO = LazyKt.b(new C0303OooOOO0());
        this.OooO0Oo = LazyKt.b(new OooO());
        this.OooO0o0 = LazyKt.b(new OooOO0O());
        com.cloud.tmc.miniapp.dialog.OooOOO oooOOO = new com.cloud.tmc.miniapp.dialog.OooOOO(context);
        this.OooO0o = oooOOO;
        this.OooO0oO = "";
        LazyKt.b(new OooO0o(context));
        this.OooO = new ArrayMap<>();
        setContentView(R.layout.mini_layout_bottom_dialog);
        setBackgroundDimEnabled(true);
        oooOOO.setOnChildClickListener(R.id.fl_container, new OooO00o());
        RecyclerView recyclerViewOooO0O0 = OooO0O0();
        if (recyclerViewOooO0O0 != null) {
            recyclerViewOooO0O0.setAdapter(oooOOO);
        }
        AppCompatImageView appCompatImageViewOooO00o = OooO00o();
        if (appCompatImageViewOooO00o != null) {
            appCompatImageViewOooO00o.setRotationY(ViewUtils.isLayoutRtl() ? 180.0f : 0.0f);
        }
        addOnCancelListener(new OooO0O0());
        addOnShowListener(new OooO0OO(context));
    }

    public final AppCompatImageView OooO00o() {
        return (AppCompatImageView) this.OooO0Oo.getValue();
    }

    public final RecyclerView OooO0O0() {
        return (RecyclerView) this.OooO0o0.getValue();
    }

    public final TextView OooO0OO() {
        return (TextView) this.OooO0OO.getValue();
    }

    public final void OooO00o(String id2) {
        Intrinsics.h(id2, "id");
        Iterator<T> it = this.OooO0o.getData().iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            Object next = it.next();
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(((BottomDialog$MenuItem) next).getId(), id2)) {
                break;
            } else {
                i10 = i11;
            }
        }
        if (i10 != -1) {
            this.OooO.put(Integer.valueOf(i10), this.OooO0o.getItem(i10));
            this.OooO0o.getData().remove(i10);
        }
        this.OooO0o.notifyDataSetChanged();
    }
}
