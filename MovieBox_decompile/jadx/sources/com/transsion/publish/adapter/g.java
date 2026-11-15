package com.transsion.publish.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$layout;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.ui.GalleryActivity;
import com.transsion.publish.ui.SelectImageActivity;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class g extends RecyclerView.Adapter {

    public static final a f48270e = new a(null);

    private FrameLayout.LayoutParams f48272b;

    private boolean f48274d;

    private List f48271a = new ArrayList();

    private int f48273c = (com.blankj.utilcode.util.y.b() - (com.blankj.utilcode.util.a0.a(3.0f) * 5)) / 4;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public g() {
        int i10 = this.f48273c;
        this.f48272b = new FrameLayout.LayoutParams(i10, i10);
    }

    private final void j(final c cVar, PhotoEntity photoEntity) {
        if (getItemCount() == 0) {
            TextView textViewI = cVar.i();
            if (textViewI != null) {
                textViewI.setText("0/9");
            }
        } else {
            List list = this.f48271a;
            boolean z10 = false;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((PhotoEntity) it.next()).getIsAdd()) {
                        z10 = true;
                    }
                }
            }
            if (z10) {
                TextView textViewI2 = cVar.i();
                if (textViewI2 != null) {
                    textViewI2.setText((getItemCount() - 1) + "/9");
                }
            } else {
                TextView textViewI3 = cVar.i();
                if (textViewI3 != null) {
                    textViewI3.setText(getItemCount() + "/9");
                }
            }
        }
        View viewF = cVar.f();
        if (viewF != null) {
            viewF.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    g.k(cVar, this, view);
                }
            });
        }
    }

    public static final void k(c cVar, g gVar, View view) {
        Context context;
        View viewF = cVar.f();
        if (viewF == null || (context = viewF.getContext()) == null) {
            return;
        }
        SelectImageActivity.INSTANCE.a(context, 0, 9 - gVar.l().size(), new ArrayList());
    }

    private final void o(final c cVar, final PhotoEntity photoEntity, final int i10) {
        ImageView imageViewH = cVar.h();
        if (imageViewH != null) {
            Glide.with(cVar.itemView.getContext()).load2(photoEntity.getLocalPath()).placeholder(R$drawable.upload_error_cover).into(imageViewH);
        }
        cVar.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                g.p(this.f48243a, cVar, i10, view);
            }
        });
        View viewG = cVar.g();
        if (viewG != null) {
            viewG.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    g.q(this.f48250a, photoEntity, view);
                }
            });
        }
    }

    public static final void p(g gVar, c cVar, int i10, View view) {
        List listL = gVar.l();
        com.transsion.publish.n.f48362b.a().f(listL);
        GalleryActivity.Companion companion = GalleryActivity.INSTANCE;
        Context context = cVar.itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        companion.a(context, listL, i10, 2, 9);
    }

    public static final void q(g gVar, PhotoEntity photoEntity, View view) {
        if (gVar.f48274d) {
            return;
        }
        gVar.f48274d = false;
        gVar.t(photoEntity);
        gVar.f48274d = false;
    }

    private final void t(PhotoEntity photoEntity) {
        this.f48271a.remove(photoEntity);
        jo.b bVar = new jo.b();
        boolean z10 = false;
        bVar.o(0);
        bVar.n(2);
        if (this.f48271a.size() == 0 || (this.f48271a.size() == 1 && ((PhotoEntity) this.f48271a.get(0)).getIsAdd())) {
            List list = this.f48271a;
            if (list != null) {
                list.clear();
            }
            notifyDataSetChanged();
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = jo.b.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, bVar, 0L);
            return;
        }
        if (this.f48271a.size() == 8) {
            Iterator it = this.f48271a.iterator();
            while (it.hasNext()) {
                if (((PhotoEntity) it.next()).getIsAdd()) {
                    z10 = true;
                }
            }
            if (!z10) {
                PhotoEntity photoEntity2 = new PhotoEntity();
                photoEntity2.setAdd(true);
                this.f48271a.add(photoEntity2);
            }
        }
        FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = jo.b.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, bVar, 0L);
        notifyDataSetChanged();
    }

    public final void addData(List data) {
        Intrinsics.h(data, "data");
        int size = this.f48271a.size();
        this.f48271a.addAll(data);
        notifyItemRangeInserted(size, data.size());
    }

    @Override
    public int getItemCount() {
        return this.f48271a.size();
    }

    @Override
    public int getItemViewType(int i10) {
        return ((PhotoEntity) this.f48271a.get(i10)).getIsAdd() ? 2 : 1;
    }

    public final List l() {
        ArrayList arrayList = new ArrayList();
        for (PhotoEntity photoEntity : this.f48271a) {
            if (!photoEntity.getIsAdd()) {
                arrayList.add(photoEntity);
            }
        }
        return arrayList;
    }

    public final List m() {
        return this.f48271a;
    }

    public final boolean n() {
        List list = this.f48271a;
        return list != null && list.isEmpty();
    }

    @Override
    public void onBindViewHolder(c holder, int i10) {
        Intrinsics.h(holder, "holder");
        PhotoEntity photoEntity = (PhotoEntity) this.f48271a.get(i10);
        if (photoEntity.getIsAdd()) {
            j(holder, photoEntity);
        } else {
            o(holder, photoEntity, i10);
        }
    }

    @Override
    public c onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        if (i10 != 1) {
            return i10 != 2 ? new c(null) : new c(LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_add_image, (ViewGroup) null));
        }
        return new c(LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_image, (ViewGroup) null));
    }

    public final void setData(List data) {
        Intrinsics.h(data, "data");
        this.f48271a.clear();
        this.f48271a.addAll(data);
        notifyDataSetChanged();
    }

    public final void u() {
        List list = this.f48271a;
        if (list != null) {
            list.clear();
        }
        notifyDataSetChanged();
    }
}
