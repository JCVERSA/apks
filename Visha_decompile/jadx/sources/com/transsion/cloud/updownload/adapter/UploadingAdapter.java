package com.transsion.cloud.updownload.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.cloud.updownload.adapter.UploadingAdapter;
import com.transsion.cloud.updownload.viewmodel.TransferDataViewModel;
import com.transsion.cloud.upload.model.UploadProgressInfo;
import com.transsion.cloud.upload.task.NewUploadTask;
import com.transsion.cloud.upload.task.UploadHeaderTask;
import com.transsion.playercommon.core.MainApp;
import com.transsion.sniffer_load.R;
import defpackage.cu4;
import defpackage.kz6;
import defpackage.nhb;
import defpackage.r13;
import defpackage.s44;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class UploadingAdapter extends BaseMultiItemQuickAdapter<NewUploadTask, BaseViewHolder> {
    public boolean o;
    public Context p;
    public ArrayList q;
    public TransferDataViewModel r;
    public cu4 s;

    public class a extends nhb {
        public final BaseViewHolder b;
        public final NewUploadTask c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Object obj, BaseViewHolder baseViewHolder, NewUploadTask newUploadTask) {
            super(obj);
            this.b = baseViewHolder;
            this.c = newUploadTask;
        }

        @Override
        public void a(UploadProgressInfo uploadProgressInfo) {
            if (UploadingAdapter.this.x(this.b, uploadProgressInfo)) {
                if (uploadProgressInfo.status == 9) {
                    UploadingAdapter.this.F(this.b, this.c);
                } else {
                    UploadingAdapter.this.J(this.b, uploadProgressInfo);
                    UploadingAdapter.this.I(this.b, uploadProgressInfo.status);
                }
                UploadingAdapter.this.r.w();
                UploadingAdapter.this.H(uploadProgressInfo);
            }
        }

        @Override
        public void b(UploadProgressInfo uploadProgressInfo) {
            if (UploadingAdapter.this.x(this.b, uploadProgressInfo)) {
                UploadingAdapter.this.J(this.b, uploadProgressInfo);
                UploadingAdapter.this.r.m();
                this.c.unRegister("UploadingAdapter");
                UploadingAdapter.this.H(uploadProgressInfo);
            }
        }

        @Override
        public void c(UploadProgressInfo uploadProgressInfo) {
            if (UploadingAdapter.this.x(this.b, uploadProgressInfo)) {
                UploadingAdapter.this.J(this.b, uploadProgressInfo);
                UploadingAdapter.this.I(this.b, uploadProgressInfo.status);
                UploadingAdapter.this.r.w();
                UploadingAdapter.this.H(uploadProgressInfo);
            }
        }

        @Override
        public void d(UploadProgressInfo uploadProgressInfo) {
            if (UploadingAdapter.this.x(this.b, uploadProgressInfo)) {
                if (uploadProgressInfo.status == 8) {
                    this.b.setText(R.id.tv_main_fragment_item_speed, R.string.visha_video_transcoding_new);
                } else {
                    this.b.setText(R.id.tv_main_fragment_item_speed, kz6.a(this.b.itemView.getContext(), uploadProgressInfo.speed));
                }
                UploadingAdapter.this.G(uploadProgressInfo, this.b);
                this.b.setTextColor(R.id.tv_main_fragment_item_speed, UploadingAdapter.this.p.getColor(R.color.os_text_tertiary_color));
                this.b.getView(R.id.tv_main_fragment_item_size).setVisibility(0);
                UploadingAdapter.this.r.w();
                UploadingAdapter.this.H(uploadProgressInfo);
            }
        }

        @Override
        public void e(UploadProgressInfo uploadProgressInfo, boolean z) {
        }

        @Override
        public void f(UploadProgressInfo uploadProgressInfo) {
            if (UploadingAdapter.this.x(this.b, uploadProgressInfo)) {
                UploadingAdapter.this.w(this.b, this.c);
                UploadingAdapter.this.r.w();
            }
        }

        @Override
        public void g(UploadProgressInfo uploadProgressInfo) {
            if (UploadingAdapter.this.x(this.b, uploadProgressInfo)) {
                UploadingAdapter.this.J(this.b, uploadProgressInfo);
                UploadingAdapter.this.I(this.b, uploadProgressInfo.status);
                UploadingAdapter.this.r.w();
                UploadingAdapter.this.H(uploadProgressInfo);
            }
        }
    }

    public UploadingAdapter(Context context, TransferDataViewModel transferDataViewModel) {
        super(null);
        this.o = false;
        this.q = new ArrayList();
        addItemType(0, R.layout.adapter_downloading);
        addItemType(1, R.layout.adapter_downloading_title);
        this.p = context;
        this.r = transferDataViewModel;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000d  */
    public void I(BaseViewHolder baseViewHolder, int i) {
        int i2;
        View view = baseViewHolder.getView(R.id.tv_main_fragment_item_size);
        if (i != 2) {
            i2 = i == 8 ? 0 : 8;
        }
        view.setVisibility(i2);
    }

    private int t() {
        return -33776;
    }

    public static boolean y(NewUploadTask newUploadTask) {
        return !newUploadTask.isHeaderTask();
    }

    public void A(boolean z) {
        this.q.clear();
        if (z) {
            this.q.addAll(u());
        }
        cu4 cu4Var = this.s;
        if (cu4Var != null) {
            cu4Var.c(z);
            this.s.b(this.q.size());
        }
        notifyDataSetChanged();
    }

    public void B(NewUploadTask newUploadTask, boolean z, int i) {
        Log.d("UploadingAdapter", "selectItem " + z + StringUtils.COMMA + i);
        if (z) {
            if (!this.q.contains(newUploadTask)) {
                this.q.add(newUploadTask);
            }
        } else if (this.q.contains(newUploadTask)) {
            this.q.remove(newUploadTask);
        }
        this.s.b(this.q.size());
        notifyItemChanged(i);
    }

    public void C(boolean z) {
        if (this.o == z) {
            return;
        }
        this.o = z;
        notifyDataSetChanged();
    }

    public void D(cu4 cu4Var) {
        this.s = cu4Var;
    }

    public void E(ArrayList arrayList) {
        this.q.clear();
        this.q.addAll(arrayList);
    }

    public final void F(BaseViewHolder baseViewHolder, NewUploadTask newUploadTask) {
        int i;
        UploadProgressInfo uploadProgressInfo = newUploadTask.mProgressInfo;
        I(baseViewHolder, uploadProgressInfo.status);
        int i2 = R.id.iv_retry;
        baseViewHolder.setGone(i2, !this.o && ((i = uploadProgressInfo.status) == 4 || i == 9)).addOnClickListener(i2);
        ((ImageView) baseViewHolder.getView(R.id.iv_data_source)).setActivated(newUploadTask.mProgressInfo.status == 4);
        if (uploadProgressInfo.status != 2) {
            J(baseViewHolder, uploadProgressInfo);
            return;
        }
        String strA = kz6.a(baseViewHolder.itemView.getContext(), uploadProgressInfo.speed);
        int i3 = R.id.tv_main_fragment_item_speed;
        baseViewHolder.setText(i3, strA);
        baseViewHolder.setTextColor(i3, this.p.getColor(R.color.os_text_tertiary_color));
    }

    public final void G(UploadProgressInfo uploadProgressInfo, BaseViewHolder baseViewHolder) {
        if (uploadProgressInfo.totalSize > 0) {
            int i = uploadProgressInfo.status;
            if (i == 8) {
                int i2 = R.id.tv_main_fragment_item_size;
                baseViewHolder.setText(i2, uploadProgressInfo.transcodingProgress + "%");
                baseViewHolder.getView(i2).setVisibility(0);
            } else if (i == 9) {
                baseViewHolder.getView(R.id.tv_main_fragment_item_size).setVisibility(8);
            } else {
                String strD = s44.d(baseViewHolder.itemView.getContext(), uploadProgressInfo.totalSize);
                int i3 = R.id.tv_main_fragment_item_size;
                baseViewHolder.setText(i3, String.format("%s", strD));
                baseViewHolder.getView(i3).setVisibility(0);
            }
        } else {
            int i4 = R.id.tv_main_fragment_item_size;
            baseViewHolder.setText(i4, String.format("%s", "--"));
            baseViewHolder.getView(i4).setVisibility(0);
        }
        baseViewHolder.setProgress(R.id.progressBar, (int) (uploadProgressInfo.fraction * 100.0f));
    }

    public final void H(UploadProgressInfo uploadProgressInfo) {
        int i = uploadProgressInfo.lastStatus;
        if ((i != 4 || uploadProgressInfo.status == 4) && (i == 4 || uploadProgressInfo.status != 4)) {
            return;
        }
        this.r.l();
    }

    public final void J(BaseViewHolder baseViewHolder, UploadProgressInfo uploadProgressInfo) {
        int i = uploadProgressInfo.status;
        if (i != 5 && i != 4 && i != 9 && (MainApp.w == 0 || i == 7)) {
            int i2 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i2, R.string.net_not_connect);
            baseViewHolder.setTextColor(i2, this.p.getColor(R.color.visha_download_error_color));
            return;
        }
        if (i == 0) {
            int i3 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i3, R.string.download_connecting);
            baseViewHolder.setTextColor(i3, this.p.getColor(R.color.os_text_tertiary_color));
            return;
        }
        if (i == 1) {
            int i4 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i4, R.string.download_status_wait);
            baseViewHolder.setTextColor(i4, this.p.getColor(R.color.os_text_tertiary_color));
            return;
        }
        if (i == 3) {
            int i5 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i5, R.string.download_status_pause);
            baseViewHolder.setTextColor(i5, this.p.getColor(R.color.os_text_tertiary_color));
            return;
        }
        if (i == 4) {
            int i6 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i6, R.string.visha_upload_error);
            baseViewHolder.setTextColor(i6, t());
            return;
        }
        if (i == 5) {
            int i7 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i7, R.string.complete);
            baseViewHolder.setTextColor(i7, this.p.getColor(R.color.visha_basic_color));
            return;
        }
        if (i == 6) {
            int i8 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i8, this.p.getString(R.string.visha_wifi_auto_upload));
            baseViewHolder.setTextColor(i8, this.p.getColor(R.color.visha_download_error_color));
        } else if (i == 8) {
            int i9 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i9, R.string.visha_video_transcoding_new);
            baseViewHolder.setTextColor(i9, this.p.getColor(R.color.os_text_tertiary_color));
        } else {
            if (i != 9) {
                return;
            }
            int i10 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i10, R.string.visha_video_transcoding_failed);
            baseViewHolder.setTextColor(i10, t());
        }
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, NewUploadTask newUploadTask) {
        if (newUploadTask.isHeaderTask()) {
            TextView textView = (TextView) baseViewHolder.getView(R.id.tv_title_working);
            textView.setText(((UploadHeaderTask) newUploadTask).getHeaderType() == UploadHeaderTask.HeaderType.FAILED ? this.p.getString(com.transsion.playercommon.R.string.visha_upload_error) : this.p.getString(R.string.visha_uploading_status));
            textView.setVisibility(this.o ? 8 : 0);
        } else {
            baseViewHolder.getView(R.id.tv_main_fragment_item).setTag(Integer.valueOf(newUploadTask.mProgressInfo.hashCode()));
            z(baseViewHolder, newUploadTask);
            w(baseViewHolder, newUploadTask);
        }
    }

    @Override
    public void setNewData(List list) {
        super.setNewData(list);
    }

    public List u() {
        return (List) getData().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return UploadingAdapter.y((NewUploadTask) obj);
            }
        }).collect(Collectors.toList());
    }

    public ArrayList v() {
        return this.q;
    }

    public final void w(BaseViewHolder baseViewHolder, NewUploadTask newUploadTask) {
        UploadProgressInfo uploadProgressInfo = newUploadTask.mProgressInfo;
        baseViewHolder.setText(R.id.tv_main_fragment_item, r13.h(uploadProgressInfo.fileName));
        G(uploadProgressInfo, baseViewHolder);
        try {
            RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(this.p).load2(uploadProgressInfo.filePath);
            int i = com.transsion.magicvideo.R.drawable.main_fragment_placeholder;
            requestBuilderLoad2.error(i).placeholder(i).into((ImageView) baseViewHolder.getView(R.id.iv_bucket_fragment_item));
        } catch (Exception e) {
            Log.e("UploadingAdapter", "initItemStatus: " + newUploadTask.mProgressInfo + StringUtils.COMMA + e.getMessage());
        }
        int i2 = R.id.iv_bucket_fragment_checkBox;
        baseViewHolder.setGone(i2, this.o).addOnClickListener(i2).setChecked(i2, this.q.contains(newUploadTask));
        int i3 = R.id.iv_close_button;
        baseViewHolder.setGone(i3, !this.o).addOnClickListener(i3);
        F(baseViewHolder, newUploadTask);
    }

    public final boolean x(BaseViewHolder baseViewHolder, UploadProgressInfo uploadProgressInfo) {
        int i = R.id.tv_main_fragment_item;
        if (baseViewHolder.getView(i) == null || baseViewHolder.getView(i).getTag() == null) {
            return true;
        }
        return uploadProgressInfo.hashCode() == ((Integer) baseViewHolder.getView(i).getTag()).intValue();
    }

    public final void z(BaseViewHolder baseViewHolder, NewUploadTask newUploadTask) {
        newUploadTask.register(new a("UploadingAdapter", baseViewHolder, newUploadTask));
    }
}
