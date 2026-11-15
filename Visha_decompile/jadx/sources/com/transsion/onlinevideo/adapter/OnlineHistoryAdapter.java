package com.transsion.onlinevideo.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.SuperiorRecommend;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.OnlineHistoryAdapter;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import defpackage.at7;
import defpackage.d06;
import defpackage.hb0;
import defpackage.pp3;
import defpackage.wna;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class OnlineHistoryAdapter extends BaseQuickAdapter<HistoryBean, BaseViewHolder> {
    public int o;
    public ArrayList p;
    public ArrayList q;
    public HistoryBean r;
    public Context s;
    public boolean t;
    public a u;

    public interface a {
        void b(int i);

        void c(boolean z);
    }

    public OnlineHistoryAdapter(Context context) {
        super(R.layout.rv_item_online_history_video);
        this.p = new ArrayList();
        this.q = new ArrayList();
        this.r = new HistoryBean();
        this.s = context;
    }

    public static boolean l(HistoryBean historyBean) {
        return !historyBean.isTimeItem;
    }

    public void A(boolean z) {
        this.t = z;
    }

    public void B(BaseViewHolder baseViewHolder, HistoryBean historyBean) {
        String string;
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(com.transsion.magicvideo.R.id.iv_bucket_fragment_item);
        long j = historyBean.duration;
        if (j != 0) {
            long j2 = historyBean.lastPos;
            int i = (j2 <= 0 || j <= 0) ? 0 : (int) ((j2 * 100) / j);
            NumberFormat percentInstance = NumberFormat.getPercentInstance();
            String str = percentInstance.format(i / 100.0f);
            if (i < 1) {
                string = this.mContext.getString(com.transsion.magicvideo.R.string.progress_text_less_format, percentInstance.format(0.009999999776482582d));
            } else {
                string = i >= 100 ? this.mContext.getString(com.transsion.magicvideo.R.string.online_history_watch_done) : this.mContext.getString(com.transsion.magicvideo.R.string.progress_text_format, str);
            }
            int i2 = com.transsion.magicvideo.R.id.sb_history;
            baseViewHolder.setVisible(i2, true).setProgress(i2, i).setText(com.transsion.magicvideo.R.id.tv_main_fragment_item_size, string);
        }
        View view = baseViewHolder.itemView;
        int i3 = com.transsion.magicvideo.R.id.iv_bucket_fragment_checkBox;
        CheckBox checkBox = (CheckBox) view.findViewById(i3);
        int i4 = this.o;
        if (i4 == 4 || i4 == 6 || i4 == 29) {
            checkBox.setVisibility(0);
            baseViewHolder.addOnClickListener(i3);
            checkBox.setChecked(this.p.contains(historyBean));
        } else {
            checkBox.setVisibility(8);
        }
        baseViewHolder.setText(com.transsion.magicvideo.R.id.tv_main_fragment_item, historyBean.videoName);
        baseViewHolder.setText(R.id.iv_serial_tag, at7.a(Integer.valueOf(historyBean.serial_count), historyBean.finish_status));
        Glide.with(this.mContext).asBitmap().load2(historyBean.videoCover).placeholder(ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.ic_video_horizontal_placeholder, this.mContext.getTheme())).into(imageView);
    }

    public final void C(BaseViewHolder baseViewHolder, HistoryBean historyBean) {
        boolean z = false;
        final SuperiorRecommend superiorRecommend = historyBean.getRecommends()[0];
        if (superiorRecommend == null) {
            baseViewHolder.getView(R.id.ll_recommend_1).setVisibility(4);
        } else {
            int i = R.id.ll_recommend_1;
            baseViewHolder.getView(i).setVisibility(0);
            baseViewHolder.getView(i).setOnLongClickListener(null);
            baseViewHolder.setText(R.id.iv_serial_tag1, at7.a(Integer.valueOf(superiorRecommend.getSerial_count()), superiorRecommend.getFinish_status()));
            baseViewHolder.setText(R.id.tv_media_title1, superiorRecommend.getVideo_name());
            baseViewHolder.setVisible(R.id.iv_vip1, pp3.L && superiorRecommend.showVipLogo());
            Glide.with(this.mContext).asBitmap().load2(!k() ? superiorRecommend.getCover_x() : superiorRecommend.getCover_y()).centerCrop().placeholder(!k() ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).error(!k() ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).into((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_media_cover1));
            baseViewHolder.getView(i).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.r(superiorRecommend, view);
                }
            });
        }
        final SuperiorRecommend superiorRecommend2 = historyBean.getRecommends()[1];
        if (superiorRecommend2 == null) {
            baseViewHolder.getView(R.id.ll_recommend_2).setVisibility(4);
        } else {
            int i2 = R.id.ll_recommend_2;
            baseViewHolder.getView(i2).setVisibility(0);
            baseViewHolder.getView(i2).setOnLongClickListener(null);
            baseViewHolder.setText(R.id.iv_serial_tag2, at7.a(Integer.valueOf(superiorRecommend2.getSerial_count()), superiorRecommend2.getFinish_status()));
            baseViewHolder.setText(R.id.tv_media_title2, superiorRecommend2.getVideo_name());
            baseViewHolder.setVisible(R.id.iv_vip2, pp3.L && superiorRecommend2.showVipLogo());
            Glide.with(this.mContext).asBitmap().load2(!k() ? superiorRecommend2.getCover_x() : superiorRecommend2.getCover_y()).centerCrop().placeholder(!k() ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).error(!k() ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).into((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_media_cover2));
            baseViewHolder.getView(i2).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.s(superiorRecommend2, view);
                }
            });
        }
        final SuperiorRecommend superiorRecommend3 = historyBean.getRecommends()[2];
        if (superiorRecommend3 == null) {
            baseViewHolder.getView(R.id.ll_recommend_3).setVisibility(4);
            return;
        }
        int i3 = R.id.ll_recommend_3;
        baseViewHolder.getView(i3).setVisibility(0);
        baseViewHolder.getView(i3).setOnLongClickListener(null);
        baseViewHolder.setText(R.id.iv_serial_tag3, at7.a(Integer.valueOf(superiorRecommend3.getSerial_count()), superiorRecommend3.getFinish_status()));
        baseViewHolder.setText(R.id.tv_media_title3, superiorRecommend3.getVideo_name());
        int i4 = R.id.iv_vip3;
        if (pp3.L && superiorRecommend3.showVipLogo()) {
            z = true;
        }
        baseViewHolder.setVisible(i4, z);
        Glide.with(this.mContext).asBitmap().load2(!k() ? superiorRecommend3.getCover_x() : superiorRecommend3.getCover_y()).centerCrop().placeholder(!k() ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).error(!k() ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).into((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_media_cover3));
        baseViewHolder.getView(i3).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.t(superiorRecommend3, view);
            }
        });
    }

    public final void D(BaseViewHolder baseViewHolder, HistoryBean historyBean) {
    }

    @Override
    public int getItemViewType(int i) {
        HistoryBean item = getItem(i);
        if (item.isTimeItem && TextUtils.isEmpty(item.title)) {
            return 4;
        }
        if (item.getRecommends() != null) {
            return 5;
        }
        return item.title != null ? 6 : 1;
    }

    public boolean h(HistoryBean historyBean) {
        int iIndexOf = getData().indexOf(historyBean) + 1;
        int itemCount = getItemCount();
        while (true) {
            int i = iIndexOf + 1;
            if (i > itemCount || getData().get(iIndexOf).isTimeItem) {
                break;
            }
            if (!this.p.contains(getData().get(iIndexOf))) {
                return false;
            }
            iIndexOf = i;
        }
        return true;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, HistoryBean historyBean) {
        int itemViewType = baseViewHolder.getItemViewType();
        if (itemViewType != 4) {
            if (itemViewType == 1) {
                B(baseViewHolder, historyBean);
                return;
            } else if (itemViewType == 6) {
                D(baseViewHolder, historyBean);
                return;
            } else {
                C(baseViewHolder, historyBean);
                return;
            }
        }
        try {
            baseViewHolder.itemView.findViewById(com.transsion.magicvideo.R.id.divider).setVisibility(baseViewHolder.getLayoutPosition() != 0 ? 0 : 8);
            baseViewHolder.setText(com.transsion.magicvideo.R.id.tv_main_fragment_item_date, wna.h(this.mContext, historyBean.lastWatchTime / 1000));
            View view = baseViewHolder.itemView;
            int i = com.transsion.magicvideo.R.id.iv_bucket_fragment_checkBox;
            CheckBox checkBox = (CheckBox) view.findViewById(i);
            int i2 = this.o;
            if (i2 == 4 || i2 == 6) {
                checkBox.setVisibility(0);
                baseViewHolder.addOnClickListener(i);
                checkBox.setChecked(h(historyBean));
            } else {
                checkBox.setVisibility(8);
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    public ArrayList j() {
        return this.p;
    }

    public boolean k() {
        return this.t;
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return createBaseViewHolder(viewGroup, R.layout.rv_item_online_history_video);
        }
        if (i == 4) {
            return createBaseViewHolder(viewGroup, R.layout.rv_item_fragment_date);
        }
        return i == 6 ? createBaseViewHolder(viewGroup, R.layout.rv_item_fragment_title) : createBaseViewHolder(viewGroup, R.layout.rv_item_fragment_recommend);
    }

    public final void r(SuperiorRecommend superiorRecommend, View view) {
        u(superiorRecommend);
    }

    public final void s(SuperiorRecommend superiorRecommend, View view) {
        u(superiorRecommend);
    }

    public void setOnSelectListener(a aVar) {
        this.u = aVar;
    }

    public final void t(SuperiorRecommend superiorRecommend, View view) {
        u(superiorRecommend);
    }

    public final void u(SuperiorRecommend superiorRecommend) {
        if (this.o == 6) {
            return;
        }
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(superiorRecommend.getVideo_id(), superiorRecommend.getVideo_serial_source_id(), superiorRecommend.getVideo_name()).setShortVideo(PlayDetailDataManger.isShortVideo(superiorRecommend.getVideo_id() + ""))).withMarkParam(d06.b, 0).build(), this.s);
        hb0.markDirect("vd_ott_history_more_nodata_video_cl");
    }

    public void v(boolean z) {
        this.p.clear();
        if (z) {
            if (SortUtil.o()) {
                y();
                this.p.addAll(this.q);
            } else {
                this.p.addAll(getData());
            }
        }
        this.u.c(z);
        notifyDataSetChanged();
    }

    public void w(HistoryBean historyBean, boolean z, int i) {
        Log.d("OnlineHistoryAdapter", "selectItem " + z + StringUtils.COMMA + i);
        if (historyBean.isTimeItem) {
            x(z, i);
            return;
        }
        if (z) {
            if (!this.p.contains(historyBean)) {
                this.p.add(historyBean);
            }
        } else if (this.p.contains(historyBean)) {
            this.p.remove(historyBean);
        }
        this.u.b(this.p.size());
        notifyDataSetChanged();
    }

    public void x(boolean z, int i) {
        int i2 = i + 1;
        int itemCount = getItemCount();
        while (true) {
            int i3 = i2 + 1;
            if (i3 > itemCount || getData().get(i2).isTimeItem) {
                break;
            }
            HistoryBean historyBean = getData().get(i2);
            if (z) {
                if (!this.p.contains(historyBean)) {
                    this.p.add(historyBean);
                }
            } else if (this.p.contains(historyBean)) {
                this.p.remove(historyBean);
            }
            i2 = i3;
        }
        this.u.b(this.p.size());
        notifyDataSetChanged();
    }

    public void y() {
        this.q.clear();
        this.q.addAll((List) getData().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return OnlineHistoryAdapter.l((HistoryBean) obj);
            }
        }).collect(Collectors.toList()));
    }

    public void z(int i) {
        this.o = i;
    }
}
