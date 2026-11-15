package com.transsion.publish.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$layout;
import com.transsion.publish.R$string;
import com.transsion.publish.api.AudioEntity;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class b0 extends RecyclerView.Adapter {

    private FrameLayout.LayoutParams f48229b;

    private x f48230c;

    private AudioEntity f48232e;

    private List f48228a = new ArrayList();

    private int f48231d = (com.blankj.utilcode.util.y.b() - (com.blankj.utilcode.util.a0.a(3.0f) * 5)) / 4;

    public b0() {
        int i10 = this.f48231d;
        this.f48229b = new FrameLayout.LayoutParams(i10, i10);
    }

    public static final void m(b0 b0Var, AudioEntity audioEntity, View view) {
        if (b0Var.k(audioEntity.getSize())) {
            fh.b.f60176a.e(Utils.a().getResources().getString(R$string.add_media_max_size_tips, 50));
            return;
        }
        if (audioEntity.getEnableSelect()) {
            Iterator it = b0Var.f48228a.iterator();
            while (it.hasNext()) {
                ((AudioEntity) it.next()).setEnableSelect(false);
            }
            audioEntity.setPlay(false);
            b0Var.f48232e = null;
            b0Var.notifyDataSetChanged();
            return;
        }
        Iterator it2 = b0Var.f48228a.iterator();
        while (it2.hasNext()) {
            ((AudioEntity) it2.next()).setEnableSelect(false);
        }
        audioEntity.setPlay(true);
        audioEntity.setEnableSelect(true);
        b0Var.f48232e = audioEntity;
        x xVar = b0Var.f48230c;
        if (xVar != null) {
            xVar.a(audioEntity);
        }
        b0Var.notifyDataSetChanged();
    }

    public final void addData(List data) {
        Intrinsics.h(data, "data");
        int size = this.f48228a.size();
        this.f48228a.addAll(data);
        notifyItemRangeInserted(size, data.size());
    }

    @Override
    public int getItemCount() {
        return this.f48228a.size();
    }

    public final List h() {
        return this.f48228a;
    }

    public final AudioEntity i() {
        return this.f48232e;
    }

    public final String j(long j10) {
        BigDecimal bigDecimal = new BigDecimal(String.valueOf(j10));
        BigDecimal bigDecimal2 = new BigDecimal("1024");
        double dDoubleValue = bigDecimal.divide(bigDecimal2, 1, 1).doubleValue();
        if (dDoubleValue < 1024.0d) {
            return dDoubleValue + "KB";
        }
        String string = new BigDecimal(dDoubleValue).divide(bigDecimal2, 1, 1).toString();
        Intrinsics.g(string, "toString(...)");
        return string + AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_MB;
    }

    public final boolean k(long j10) {
        long j11 = 1024;
        long j12 = j10 / j11;
        return j12 >= 1024 && j12 / j11 >= 50;
    }

    @Override
    public void onBindViewHolder(c0 holder, int i10) {
        Intrinsics.h(holder, "holder");
        final AudioEntity audioEntity = (AudioEntity) this.f48228a.get(i10);
        holder.i().setText(audioEntity.getImageTitle());
        TextView textViewG = holder.g();
        String strJ = j(audioEntity.getSize());
        Long duration = audioEntity.getDuration();
        textViewG.setText(strJ + " " + TimeUtilKt.p((duration != null ? duration.longValue() : 0L) / ((long) 1000)));
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                b0.m(this.f48222a, audioEntity, view);
            }
        });
        if (audioEntity.getEnableSelect()) {
            holder.h().setVisibility(0);
        } else {
            holder.h().setVisibility(8);
        }
        if (audioEntity.getPlay()) {
            holder.f().setImageResource(R$drawable.ic_audio_pause);
        } else {
            holder.f().setImageResource(R$drawable.ic_audio_play);
        }
        if (!k(audioEntity.getSize())) {
            holder.j().setVisibility(8);
        } else {
            holder.j().getBackground().mutate().setAlpha(178);
            holder.j().setVisibility(0);
        }
    }

    @Override
    public c0 onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_select_music, parent, false);
        Intrinsics.e(viewInflate);
        return new c0(viewInflate);
    }

    public final void o() {
        List<AudioEntity> list = this.f48228a;
        if (list != null) {
            for (AudioEntity audioEntity : list) {
                if (audioEntity.getPlay()) {
                    audioEntity.setPlay(false);
                }
            }
        }
        notifyDataSetChanged();
    }

    public final void p(x selectItemClickListener) {
        Intrinsics.h(selectItemClickListener, "selectItemClickListener");
        this.f48230c = selectItemClickListener;
    }
}
