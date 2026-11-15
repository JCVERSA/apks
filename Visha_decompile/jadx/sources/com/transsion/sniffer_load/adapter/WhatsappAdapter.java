package com.transsion.sniffer_load.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.playercommon.whatsapp.WhatsappFile;
import com.transsion.sniffer_load.R;
import com.transsion.widgets.InterceptFrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WhatsappAdapter extends BaseQuickAdapter<WhatsappFile, BaseViewHolder> {
    public boolean o;
    public Context p;
    public volatile List q;

    public class a implements View.OnLongClickListener {
        public final BaseViewHolder b;

        public a(BaseViewHolder baseViewHolder) {
            this.b = baseViewHolder;
        }

        @Override
        public boolean onLongClick(View view) {
            WhatsappAdapter.this.getOnItemLongClickListener().onItemLongClick(WhatsappAdapter.this, view, this.b.getAdapterPosition());
            return true;
        }
    }

    public WhatsappAdapter(Context context) {
        super(R.layout.adapter_whatsapp);
        this.q = new ArrayList();
        this.p = context;
    }

    public void b(WhatsappFile whatsappFile) {
        this.q.add(whatsappFile);
    }

    public void g() {
        this.q.clear();
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, WhatsappFile whatsappFile) {
        RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(this.p).load2(whatsappFile.getDocumentFile() == null ? whatsappFile.getFilePath() : whatsappFile.getDocumentFile().getUri());
        int i = R.drawable.main_fragment_placeholder;
        requestBuilderLoad2.placeholder(i).error(i).into((ImageView) baseViewHolder.getView(R.id.iv_cover));
        baseViewHolder.setVisible(R.id.iv_canplay, whatsappFile.isVideo());
        baseViewHolder.itemView.setClickable(true);
        baseViewHolder.addOnClickListener(R.id.ifl_root);
        int i2 = R.id.iv_download;
        baseViewHolder.addOnClickListener(i2);
        baseViewHolder.getView(i2).setOnLongClickListener(new a(baseViewHolder));
        if (whatsappFile.isDefStatus()) {
            i(baseViewHolder, whatsappFile);
        } else if (whatsappFile.isSaving()) {
            s(baseViewHolder, whatsappFile);
        } else {
            r(baseViewHolder, whatsappFile);
        }
    }

    public final void i(BaseViewHolder baseViewHolder, WhatsappFile whatsappFile) {
        baseViewHolder.getView(R.id.pb_saving).setVisibility(8);
        boolean z = false;
        baseViewHolder.getView(R.id.iv_download).setVisibility(this.o ? 8 : 0);
        int i = R.id.cb_select;
        baseViewHolder.getView(i).setVisibility(this.o ? 0 : 8);
        CheckBox checkBox = (CheckBox) baseViewHolder.getView(i);
        if (this.o && this.q.contains(whatsappFile)) {
            z = true;
        }
        checkBox.setChecked(z);
        u(baseViewHolder, true);
    }

    public List j() {
        return this.q;
    }

    public boolean k() {
        return this.o;
    }

    public void l(WhatsappFile whatsappFile) {
        this.q.remove(whatsappFile);
    }

    public final void r(BaseViewHolder baseViewHolder, WhatsappFile whatsappFile) {
        baseViewHolder.getView(R.id.pb_saving).setVisibility(8);
        baseViewHolder.getView(R.id.iv_download).setVisibility(8);
        baseViewHolder.getView(R.id.cb_select).setVisibility(8);
        u(baseViewHolder, !this.o);
    }

    public final void s(BaseViewHolder baseViewHolder, WhatsappFile whatsappFile) {
        baseViewHolder.getView(R.id.pb_saving).setVisibility(0);
        baseViewHolder.getView(R.id.iv_download).setVisibility(8);
        baseViewHolder.getView(R.id.cb_select).setVisibility(8);
        u(baseViewHolder, true);
    }

    public void t(boolean z) {
        this.o = z;
        notifyDataSetChanged();
    }

    public final void u(BaseViewHolder baseViewHolder, boolean z) {
        ((InterceptFrameLayout) baseViewHolder.itemView).setChildClickable(z).setAlpha(z ? 1.0f : 0.6f);
    }

    public void v(WhatsappFile whatsappFile) {
        this.q.clear();
        this.q.add(whatsappFile);
    }

    public void w(List list) {
        this.q.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WhatsappFile whatsappFile = (WhatsappFile) it.next();
            if (whatsappFile.isDefStatus()) {
                this.q.add(whatsappFile);
            }
        }
    }
}
