package com.transsion.tools.covert.adapter;

import android.content.Context;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.playercommon.convert.ConvertingTask;
import com.transsion.tools.R;
import com.transsion.tools.covert.adapter.ConvertingAdapter;
import defpackage.z7c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.function.Consumer;

public class ConvertingAdapter extends BaseQuickAdapter<ConvertingTask, BaseViewHolder> {
    public int o;
    public int p;
    public ArrayList q;

    public class a implements ConvertingTask.b {
        public final BaseViewHolder a;
        public final ConvertingTask b;

        public a(BaseViewHolder baseViewHolder, ConvertingTask convertingTask) {
            this.a = baseViewHolder;
            this.b = convertingTask;
        }

        @Override
        public void a(int i) {
            ConvertingAdapter.this.u(this.a, i);
        }

        @Override
        public void b(double d) {
            if (this.a.getView(R.id.tv_main_fragment_item_content).getTag().equals(this.b)) {
                this.a.setProgress(R.id.progressBar, (int) (d * 100.0d));
            }
        }
    }

    public ConvertingAdapter(Context context) {
        super(R.layout.converting_adapter_items);
        this.q = new ArrayList();
        this.o = ContextCompat.getColor(context, R.color.os_text_tertiary_color);
        this.p = ContextCompat.getColor(context, R.color.visha_download_error_color);
    }

    public static void s(WeakReference weakReference) {
        ConvertingTask convertingTask = (ConvertingTask) weakReference.get();
        if (convertingTask != null) {
            convertingTask.unregister();
        }
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, ConvertingTask convertingTask) {
        baseViewHolder.getView(R.id.tv_main_fragment_item_content).setTag(convertingTask);
        baseViewHolder.setText(R.id.tv_main_fragment_item, convertingTask.mediaItem.displayName);
        baseViewHolder.addOnClickListener(R.id.iv_converting_remove);
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_item);
        z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(convertingTask.mediaItem), ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.main_fragment_placeholder, this.mContext.getTheme()), imageView);
        u(baseViewHolder, convertingTask.taskStatus);
        baseViewHolder.setProgress(R.id.progressBar, (int) (convertingTask.progress * 100.0d));
        convertingTask.unregister();
        this.q.add(new WeakReference(convertingTask));
        convertingTask.register(new a(baseViewHolder, convertingTask));
    }

    public final int r(int i) {
        if (i == -2) {
            return R.string.video_format_not_support;
        }
        if (i == 11) {
            return R.string.video_has_no_audio;
        }
        if (i != 1) {
            return i != 2 ? R.string.download_status_wait : R.string.converting;
        }
        return R.string.convert_fail;
    }

    public void t() {
        this.q.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ConvertingAdapter.s((WeakReference) obj);
            }
        });
        this.q.clear();
    }

    public final void u(BaseViewHolder baseViewHolder, int i) {
        baseViewHolder.setGone(R.id.progressBar, ConvertingTask.statusNotFailed(i));
        int i2 = R.id.tv_main_fragment_item_status;
        baseViewHolder.setText(i2, r(i));
        baseViewHolder.setTextColor(i2, ConvertingTask.statusNotFailed(i) ? this.o : this.p);
    }
}
