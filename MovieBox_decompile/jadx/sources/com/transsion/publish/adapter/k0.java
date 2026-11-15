package com.transsion.publish.adapter;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.transsion.baseui.R$mipmap;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$layout;
import com.transsion.publish.R$string;
import com.transsion.publish.api.VsMediaInfo;
import com.transsion.publish.ui.VideoPreviewActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.math.MathKt;

public final class k0 extends RecyclerView.Adapter {

    private final Function1 f48299a;

    private List f48300b;

    private FrameLayout.LayoutParams f48301c;

    private List f48302d;

    private int f48303e;

    private int f48304f;

    private int f48305g;

    private int f48306h;

    public k0(Function1 selectItem) {
        Intrinsics.h(selectItem, "selectItem");
        this.f48299a = selectItem;
        this.f48300b = new ArrayList();
        this.f48302d = new ArrayList();
        this.f48303e = 1;
        this.f48304f = 52428800;
        this.f48305g = 1200000;
        this.f48306h = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
        int iB = (com.blankj.utilcode.util.y.b() - (com.blankj.utilcode.util.a0.a(3.0f) * 5)) / 4;
        this.f48301c = new FrameLayout.LayoutParams(iB, iB);
    }

    private final void k(m0 m0Var, Function0 function0) {
        if (!n() || m0Var.g().getVisibility() != 0) {
            function0.invoke();
            return;
        }
        String string = Utils.a().getString(R$string.add_video_max_tips);
        Intrinsics.g(string, "getString(...)");
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(this.f48303e)}, 1));
        Intrinsics.g(str, "format(...)");
        com.tn.lib.widget.toast.core.h.f40484a.l(str);
    }

    private final String l(VsMediaInfo vsMediaInfo) {
        int i10 = 0;
        for (Object obj : this.f48302d) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(vsMediaInfo.getVideoPath(), ((VsMediaInfo) obj).getVideoPath())) {
                return String.valueOf(i11);
            }
            i10 = i11;
        }
        return TmcConstants.COLD_OPEN_TYPE;
    }

    private final boolean n() {
        return this.f48302d.size() >= this.f48303e;
    }

    public static final Unit q(boolean z10, boolean z11, boolean z12, k0 k0Var, final m0 m0Var, final VsMediaInfo vsMediaInfo, View it) {
        Intrinsics.h(it, "it");
        if (z10) {
            fh.b.f60176a.e("Exceeded video length, 20 mins Max");
            return Unit.f64096a;
        }
        if (z11) {
            fh.b.f60176a.e(Utils.a().getResources().getString(R$string.add_media_max_size_tips, 50));
            return Unit.f64096a;
        }
        if (z12) {
            fh.b.f60176a.e("video requires at least 3s");
            return Unit.f64096a;
        }
        k0Var.k(m0Var, new Function0() {
            @Override
            public final Object invoke() {
                return k0.r(m0Var, vsMediaInfo);
            }
        });
        return Unit.f64096a;
    }

    public static final Unit r(m0 m0Var, VsMediaInfo vsMediaInfo) {
        VideoPreviewActivity.Companion companion = VideoPreviewActivity.INSTANCE;
        Context context = m0Var.itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        companion.a(context, vsMediaInfo, 2);
        return Unit.f64096a;
    }

    public static final Unit s(boolean z10, boolean z11, boolean z12, final k0 k0Var, m0 m0Var, final VsMediaInfo vsMediaInfo, View it) {
        Intrinsics.h(it, "it");
        if (z10) {
            fh.b.f60176a.e("Exceeded video length, 20 mins Max");
            return Unit.f64096a;
        }
        if (z11) {
            fh.b.f60176a.e(Utils.a().getResources().getString(R$string.add_media_max_size_tips, 50));
            return Unit.f64096a;
        }
        if (z12) {
            fh.b.f60176a.e("video requires at least 3s");
            return Unit.f64096a;
        }
        k0Var.k(m0Var, new Function0() {
            @Override
            public final Object invoke() {
                return k0.t(vsMediaInfo, k0Var);
            }
        });
        return Unit.f64096a;
    }

    public static final Unit t(VsMediaInfo vsMediaInfo, k0 k0Var) {
        if (vsMediaInfo.getEnableSelect()) {
            k0Var.z(vsMediaInfo);
        } else {
            k0Var.y(vsMediaInfo);
        }
        return Unit.f64096a;
    }

    private final void v(TextView textView, long j10) {
        if (j10 == 0) {
            return;
        }
        if (2001 <= j10 && j10 < 3000) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str = String.format("%02d:%02d", Arrays.copyOf(new Object[]{0, 2}, 2));
            Intrinsics.g(str, "format(...)");
            String str2 = String.format(str, Arrays.copyOf(new Object[0], 0));
            Intrinsics.g(str2, "format(...)");
            textView.setText(str2);
            return;
        }
        if (4001 <= j10 && j10 < 5000) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f64324a;
            String str3 = String.format("%02d:%02d", Arrays.copyOf(new Object[]{0, 4}, 2));
            Intrinsics.g(str3, "format(...)");
            String str4 = String.format(str3, Arrays.copyOf(new Object[0], 0));
            Intrinsics.g(str4, "format(...)");
            textView.setText(str4);
            return;
        }
        int iD = MathKt.d(j10 / 1000);
        StringCompanionObject stringCompanionObject3 = StringCompanionObject.f64324a;
        String str5 = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(iD / 60), Integer.valueOf(iD % 60)}, 2));
        Intrinsics.g(str5, "format(...)");
        String str6 = String.format(str5, Arrays.copyOf(new Object[0], 0));
        Intrinsics.g(str6, "format(...)");
        textView.setText(str6);
    }

    private final void w(VsMediaInfo vsMediaInfo) {
        VsMediaInfo vsMediaInfo2 = null;
        for (VsMediaInfo vsMediaInfo3 : this.f48302d) {
            if (TextUtils.equals(vsMediaInfo3.getVideoPath(), vsMediaInfo.getVideoPath())) {
                vsMediaInfo2 = vsMediaInfo3;
            }
        }
        if (this.f48302d.contains(vsMediaInfo)) {
            this.f48302d.remove(vsMediaInfo);
        }
        if (vsMediaInfo2 != null) {
            this.f48302d.remove(vsMediaInfo2);
        }
    }

    private final void y(VsMediaInfo vsMediaInfo) {
        w(vsMediaInfo);
        this.f48302d.add(vsMediaInfo);
        this.f48299a.invoke(Integer.valueOf(this.f48302d.size()));
        vsMediaInfo.setEnableSelect(true);
        int iIndexOf = this.f48300b.indexOf(vsMediaInfo);
        if (iIndexOf >= 0) {
            notifyItemChanged(iIndexOf, Boolean.TRUE);
        }
        if (n()) {
            notifyDataSetChanged();
        }
    }

    private final void z(VsMediaInfo vsMediaInfo) {
        boolean zN = n();
        w(vsMediaInfo);
        this.f48299a.invoke(Integer.valueOf(this.f48302d.size()));
        vsMediaInfo.setEnableSelect(false);
        int iIndexOf = this.f48300b.indexOf(vsMediaInfo);
        if (iIndexOf >= 0) {
            notifyItemChanged(iIndexOf, Boolean.FALSE);
        }
        if (zN) {
            notifyDataSetChanged();
        }
    }

    public final void addData(List data) {
        Intrinsics.h(data, "data");
        int size = this.f48300b.size();
        this.f48300b.addAll(data);
        notifyItemRangeInserted(size, data.size());
    }

    @Override
    public int getItemCount() {
        return this.f48300b.size();
    }

    public final List m() {
        return this.f48302d;
    }

    @Override
    public void onBindViewHolder(final m0 holder, int i10) {
        Intrinsics.h(holder, "holder");
        final VsMediaInfo vsMediaInfo = (VsMediaInfo) this.f48300b.get(i10);
        holder.itemView.setLayoutParams(this.f48301c);
        v(holder.i(), vsMediaInfo.getVideoDuration());
        if (TextUtils.isEmpty(vsMediaInfo.getImagePath())) {
            String videoPath = vsMediaInfo.getVideoPath();
            File file = videoPath != null ? new File(videoPath) : null;
            if (file != null) {
                ni.f.a aVar = ni.f.f67269a;
                Context context = holder.f().getContext();
                Intrinsics.g(context, "getContext(...)");
                aVar.m(context).g(Uri.fromFile(file).toString()).i(R$mipmap.home_ic_default_res).d(holder.f());
            }
        } else {
            ni.f.a aVar2 = ni.f.f67269a;
            Context context2 = holder.f().getContext();
            Intrinsics.g(context2, "getContext(...)");
            aVar2.m(context2).g(vsMediaInfo.getImagePath()).i(R$mipmap.home_ic_default_res).d(holder.f());
        }
        boolean z10 = vsMediaInfo.getVideoSize() >= ((long) this.f48304f);
        boolean z11 = vsMediaInfo.getVideoDuration() >= ((long) this.f48305g);
        boolean z12 = vsMediaInfo.getVideoDuration() < ((long) this.f48306h);
        if (!n()) {
            holder.g().setVisibility(8);
            if (vsMediaInfo.getEnableSelect()) {
                holder.j().setText(l(vsMediaInfo));
                holder.j().setBackgroundResource(R$drawable.bg_linear_r16);
            } else {
                holder.j().setText("");
                holder.j().setBackgroundResource(R$drawable.ic_select_number_bro);
            }
        } else if (vsMediaInfo.getEnableSelect()) {
            holder.g().setVisibility(8);
            holder.j().setText(l(vsMediaInfo));
            holder.j().setBackgroundResource(R$drawable.bg_linear_r16);
        } else {
            holder.g().setVisibility(0);
            holder.j().setText("");
            holder.j().setBackgroundResource(R$drawable.ic_select_number_bro);
        }
        if (z10 || z11 || z12) {
            holder.g().setVisibility(0);
        }
        View itemView = holder.itemView;
        Intrinsics.g(itemView, "itemView");
        final boolean z13 = z11;
        final boolean z14 = z10;
        final boolean z15 = z12;
        uf.c.c(itemView, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return k0.q(z13, z14, z15, this, holder, vsMediaInfo, (View) obj);
            }
        }, 1, null);
        uf.c.c(holder.h(), 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return k0.s(z13, z14, z15, this, holder, vsMediaInfo, (View) obj);
            }
        }, 1, null);
    }

    @Override
    public void onBindViewHolder(m0 holder, int i10, List payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
        if (!(CollectionsKt.k0(payloads) instanceof Boolean)) {
            super.onBindViewHolder(holder, i10, payloads);
            return;
        }
        VsMediaInfo vsMediaInfo = (VsMediaInfo) this.f48300b.get(i10);
        if (vsMediaInfo.getEnableSelect()) {
            holder.j().setText(l(vsMediaInfo));
            holder.j().setBackgroundResource(R$drawable.bg_linear_r16);
        } else {
            holder.j().setText("");
            holder.j().setBackgroundResource(R$drawable.ic_select_number_bro);
        }
    }

    @Override
    public m0 onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.upload_select_video_item, (ViewGroup) null);
        Intrinsics.e(viewInflate);
        return new m0(viewInflate);
    }

    public final void x(VsMediaInfo data) {
        Intrinsics.h(data, "data");
        VsMediaInfo vsMediaInfo = data;
        for (VsMediaInfo vsMediaInfo2 : this.f48300b) {
            if (TextUtils.equals(vsMediaInfo2.getVideoPath(), data.getVideoPath())) {
                vsMediaInfo2.setEnableSelect(data.getEnableSelect());
                vsMediaInfo = vsMediaInfo2;
            }
        }
        if (data.getEnableSelect()) {
            y(vsMediaInfo);
        } else {
            z(vsMediaInfo);
        }
        notifyItemRangeChanged(0, this.f48300b.size(), Boolean.TRUE);
    }
}
