package com.transsion.publish.adapter;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.gcm.Task;
import com.transsion.baseui.R$mipmap;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$layout;
import com.transsion.publish.R$string;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.ui.ClippingImageActivity;
import com.transsion.publish.ui.GalleryActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

public final class e0 extends RecyclerView.Adapter {

    private final Function1 f48252a;

    private List f48253b;

    private FrameLayout.LayoutParams f48254c;

    private int f48255d;

    private List f48256e;

    private int f48257f;

    private int f48258g;

    private Activity f48259h;

    private int f48260i;

    public static final class a implements View.OnClickListener {

        final PhotoEntity f48262b;

        final f0 f48263c;

        a(PhotoEntity photoEntity, f0 f0Var) {
            this.f48262b = photoEntity;
            this.f48263c = f0Var;
        }

        @Override
        public void onClick(View view) {
            e0 e0Var;
            Activity activity;
            if (com.transsion.baseui.util.c.f42332a.a(view != null ? view.getId() : 0, 500L)) {
                return;
            }
            if (e0.this.f48258g == 5 || e0.this.f48258g == 7) {
                String localPath = this.f48262b.getLocalPath();
                if (localPath == null || (activity = (e0Var = e0.this).f48259h) == null) {
                    return;
                }
                ClippingImageActivity.Companion.b(ClippingImageActivity.INSTANCE, activity, localPath, e0Var.f48258g, null, 8, null);
                return;
            }
            if (e0.this.t()) {
                e0.this.s(this.f48262b, this.f48263c, true);
            } else if (this.f48262b.getEnableSelect()) {
                e0.this.s(this.f48262b, this.f48263c, true);
            } else {
                e0.this.m(this.f48262b, this.f48263c);
            }
        }
    }

    public e0(Function1 selectItem) {
        Intrinsics.h(selectItem, "selectItem");
        this.f48252a = selectItem;
        this.f48253b = new ArrayList();
        this.f48256e = new ArrayList();
        this.f48257f = 9;
        this.f48260i = Task.EXTRAS_LIMIT_BYTES;
        this.f48255d = (com.blankj.utilcode.util.y.b() - (com.blankj.utilcode.util.a0.a(3.0f) * 5)) / 4;
        int i10 = this.f48255d;
        this.f48254c = new FrameLayout.LayoutParams(i10, i10);
    }

    public final void m(PhotoEntity photoEntity, f0 f0Var) {
        o(photoEntity);
        this.f48256e.add(photoEntity);
        this.f48252a.invoke(Integer.valueOf(this.f48256e.size()));
        photoEntity.setEnableSelect(true);
        f0Var.h().setText(p(photoEntity));
        f0Var.h().setBackgroundResource(R$drawable.bg_linear_r16);
        if (t()) {
            notifyDataSetChanged();
        }
    }

    private final void o(PhotoEntity photoEntity) {
        PhotoEntity photoEntity2 = null;
        for (PhotoEntity photoEntity3 : this.f48256e) {
            if (TextUtils.equals(photoEntity3.getLocalPath(), photoEntity.getLocalPath())) {
                photoEntity2 = photoEntity3;
            }
        }
        if (this.f48256e.contains(photoEntity)) {
            this.f48256e.remove(photoEntity);
        }
        if (photoEntity2 != null) {
            this.f48256e.remove(photoEntity2);
        }
    }

    private final String p(PhotoEntity photoEntity) {
        int i10 = 0;
        for (Object obj : this.f48256e) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(photoEntity.getLocalPath(), ((PhotoEntity) obj).getLocalPath())) {
                return String.valueOf(i11);
            }
            i10 = i11;
        }
        return TmcConstants.COLD_OPEN_TYPE;
    }

    public final void s(PhotoEntity photoEntity, f0 f0Var, boolean z10) {
        if (photoEntity.getEnableSelect()) {
            o(photoEntity);
            this.f48252a.invoke(Integer.valueOf(this.f48256e.size()));
            photoEntity.setEnableSelect(false);
            f0Var.h().setText("");
            f0Var.h().setBackgroundResource(R$drawable.ic_select_number_bro);
            if (z10) {
                notifyDataSetChanged();
            }
        }
    }

    public final boolean t() {
        return this.f48256e.size() >= this.f48257f;
    }

    public static final void v(f0 f0Var, e0 e0Var, PhotoEntity photoEntity, int i10, View view) {
        Activity activity;
        String string;
        if (f0Var.i().getVisibility() == 0) {
            Activity activity2 = e0Var.f48259h;
            if (activity2 == null || (string = activity2.getString(R$string.add_img_max_tips)) == null) {
                string = "";
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(e0Var.f48257f)}, 1));
            Intrinsics.g(str, "format(...)");
            com.tn.lib.widget.toast.core.h.f40484a.l(str);
            return;
        }
        int i11 = e0Var.f48258g;
        if (i11 != 5 && i11 != 7) {
            com.transsion.publish.n.f48362b.a().f(e0Var.f48253b);
            GalleryActivity.Companion companion = GalleryActivity.INSTANCE;
            Context context = f0Var.itemView.getContext();
            Intrinsics.g(context, "getContext(...)");
            companion.a(context, e0Var.f48256e, i10, 1, e0Var.f48257f);
            return;
        }
        if (photoEntity.getImageSize() > e0Var.f48260i) {
            fh.b.f60176a.e(Utils.a().getResources().getString(R$string.add_media_max_size_tips, 10));
            return;
        }
        String localPath = photoEntity.getLocalPath();
        if (localPath == null || (activity = e0Var.f48259h) == null) {
            return;
        }
        ClippingImageActivity.Companion.b(ClippingImageActivity.INSTANCE, activity, localPath, e0Var.f48258g, null, 8, null);
    }

    public final void A(PhotoEntity photoEntity) {
        if (photoEntity == null || this.f48256e.contains(photoEntity)) {
            return;
        }
        this.f48256e.add(photoEntity);
    }

    public final void addData(List data) {
        Intrinsics.h(data, "data");
        int size = this.f48253b.size();
        this.f48253b.addAll(data);
        notifyItemRangeInserted(size, data.size());
    }

    @Override
    public int getItemCount() {
        return this.f48253b.size();
    }

    public final void n() {
        List list = this.f48256e;
        if (list != null) {
            list.clear();
        }
    }

    public final List q() {
        return this.f48253b;
    }

    public final List r() {
        return this.f48256e;
    }

    @Override
    public void onBindViewHolder(final f0 holder, final int i10) {
        Intrinsics.h(holder, "holder");
        final PhotoEntity photoEntity = (PhotoEntity) this.f48253b.get(i10);
        holder.itemView.setLayoutParams(this.f48254c);
        if (TextUtils.isEmpty(photoEntity.getThumbPath())) {
            String localPath = photoEntity.getLocalPath();
            if (localPath != null && localPath.length() > 0) {
                File file = new File(photoEntity.getLocalPath());
                ni.f.a aVar = ni.f.f67269a;
                Context context = holder.f().getContext();
                Intrinsics.g(context, "getContext(...)");
                aVar.m(context).g(Uri.fromFile(file).toString()).i(R$mipmap.home_ic_default_res).j(0).m(this.f48255d).c(this.f48255d).d(holder.f());
            }
        } else {
            File file2 = new File(photoEntity.getThumbPath());
            ni.f.a aVar2 = ni.f.f67269a;
            Context context2 = holder.f().getContext();
            Intrinsics.g(context2, "getContext(...)");
            aVar2.m(context2).g(Uri.fromFile(file2).toString()).i(R$mipmap.home_ic_default_res).j(0).m(this.f48255d).c(this.f48255d).d(holder.f());
        }
        if (this.f48258g != 0) {
            holder.i().setVisibility(8);
            holder.h().setBackgroundResource(0);
        } else if (!t()) {
            holder.i().setVisibility(8);
            if (photoEntity.getEnableSelect()) {
                holder.h().setText(p(photoEntity));
                holder.h().setBackgroundResource(R$drawable.bg_linear_r16);
            } else {
                holder.h().setText("");
                holder.h().setBackgroundResource(R$drawable.ic_select_number_bro);
            }
        } else if (photoEntity.getEnableSelect()) {
            holder.i().setVisibility(8);
            holder.h().setText(p(photoEntity));
            holder.h().setBackgroundResource(R$drawable.bg_linear_r16);
        } else {
            holder.i().setVisibility(0);
            holder.h().setText("");
            holder.h().setBackgroundResource(R$drawable.ic_select_number_bro);
        }
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                e0.v(holder, this, photoEntity, i10, view);
            }
        });
        holder.g().setOnClickListener(new a(photoEntity, holder));
    }

    @Override
    public f0 onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_select_image, (ViewGroup) null);
        Intrinsics.e(viewInflate);
        return new f0(viewInflate);
    }

    public final void x() {
        List list = this.f48253b;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((PhotoEntity) it.next()).setEnableSelect(false);
            }
        }
    }

    public final void y(int i10, Activity activity) {
        Intrinsics.h(activity, "activity");
        this.f48258g = i10;
        this.f48259h = activity;
    }

    public final void z(int i10) {
        this.f48257f = i10;
    }
}
