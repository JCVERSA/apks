package com.transsion.publish.adapter;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$layout;
import com.transsion.publish.api.VsMediaInfo;
import com.transsion.publish.ui.SelectVideoActivity;
import com.transsion.publish.ui.VideoPreviewActivity;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

public final class v extends RecyclerView.Adapter {

    public static final a f48337e = new a(null);

    private FrameLayout.LayoutParams f48339b;

    private boolean f48341d;

    private List f48338a = new ArrayList();

    private int f48340c = (com.blankj.utilcode.util.y.b() - (com.blankj.utilcode.util.a0.a(3.0f) * 5)) / 4;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public v() {
        int i10 = this.f48340c;
        this.f48339b = new FrameLayout.LayoutParams(i10, i10);
    }

    private final void j(final l0 l0Var, VsMediaInfo vsMediaInfo) {
        TextView textViewI = l0Var.i();
        if (textViewI != null) {
            textViewI.setVisibility(4);
        }
        View viewF = l0Var.f();
        if (viewF != null) {
            viewF.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    v.k(l0Var, view);
                }
            });
        }
    }

    public static final void k(l0 l0Var, View view) {
        Intent intent = new Intent(l0Var.itemView.getContext(), (Class<?>) SelectVideoActivity.class);
        intent.setFlags(ASTNode.DEOP);
        l0Var.itemView.getContext().startActivity(intent);
    }

    private final void o(final l0 l0Var, final VsMediaInfo vsMediaInfo, int i10) {
        l0Var.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                v.p(l0Var, vsMediaInfo, view);
            }
        });
        View viewG = l0Var.g();
        if (viewG != null) {
            viewG.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    v.q(this.f48335a, view);
                }
            });
        }
        if (!TextUtils.isEmpty(vsMediaInfo.getImagePath())) {
            ImageView imageViewH = l0Var.h();
            if (imageViewH != null) {
                ni.f.a aVar = ni.f.f67269a;
                Context context = l0Var.itemView.getContext();
                Intrinsics.g(context, "getContext(...)");
                aVar.m(context).g(vsMediaInfo.getImagePath()).i(R$drawable.upload_error_cover).j(4).d(imageViewH);
                return;
            }
            return;
        }
        File file = new File(vsMediaInfo.getVideoPath());
        ImageView imageViewH2 = l0Var.h();
        if (imageViewH2 != null) {
            ni.f.a aVar2 = ni.f.f67269a;
            Context context2 = l0Var.itemView.getContext();
            Intrinsics.g(context2, "getContext(...)");
            aVar2.m(context2).g(Uri.fromFile(file).toString()).i(R$drawable.upload_error_cover).j(4).d(imageViewH2);
        }
    }

    public static final void p(l0 l0Var, VsMediaInfo vsMediaInfo, View view) {
        VideoPreviewActivity.Companion companion = VideoPreviewActivity.INSTANCE;
        Context context = l0Var.itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        companion.a(context, vsMediaInfo, 1);
    }

    public static final void q(v vVar, View view) {
        if (vVar.f48341d) {
            return;
        }
        vVar.f48341d = false;
        jo.b bVar = new jo.b();
        bVar.o(1);
        bVar.n(2);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = jo.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, bVar, 0L);
        vVar.notifyDataSetChanged();
        vVar.f48341d = false;
    }

    @Override
    public int getItemCount() {
        return this.f48338a.size();
    }

    @Override
    public int getItemViewType(int i10) {
        return ((VsMediaInfo) this.f48338a.get(i10)).getIsAdd() ? 2 : 1;
    }

    public final List l() {
        ArrayList arrayList = new ArrayList();
        List<VsMediaInfo> list = this.f48338a;
        if (list != null) {
            for (VsMediaInfo vsMediaInfo : list) {
                if (!vsMediaInfo.getIsAdd()) {
                    arrayList.add(vsMediaInfo);
                }
            }
        }
        return arrayList;
    }

    public final List m() {
        return this.f48338a;
    }

    public final boolean n() {
        List list = this.f48338a;
        return list != null && list.isEmpty();
    }

    @Override
    public void onBindViewHolder(l0 holder, int i10) {
        Intrinsics.h(holder, "holder");
        VsMediaInfo vsMediaInfo = (VsMediaInfo) this.f48338a.get(i10);
        if (vsMediaInfo.getIsAdd()) {
            j(holder, vsMediaInfo);
        } else {
            o(holder, vsMediaInfo, i10);
        }
    }

    @Override
    public l0 onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        if (i10 != 1) {
            return i10 != 2 ? new l0(null) : new l0(LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_add_video, (ViewGroup) null));
        }
        return new l0(LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_video, (ViewGroup) null));
    }

    public final void setData(List data) {
        Intrinsics.h(data, "data");
        this.f48338a.clear();
        this.f48338a.addAll(data);
        notifyDataSetChanged();
    }

    public final void t() {
        List list = this.f48338a;
        if (list != null) {
            list.clear();
        }
        notifyDataSetChanged();
    }
}
