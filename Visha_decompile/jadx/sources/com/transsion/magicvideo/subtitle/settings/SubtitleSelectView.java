package com.transsion.magicvideo.subtitle.settings;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.p004lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.SubtitleItemAdapter;
import com.transsion.magicvideo.model.VideoSubtitleViewModel;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.utils.CustomLinearLayoutManager;
import defpackage.f16;
import defpackage.pp3;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class SubtitleSelectView extends LinearLayout {
    public static final String UNSELECTED_ITEM_TAG = "UNSELECTED_ITEM_TAG";
    public Context b;
    public VideoSubtitleViewModel c;
    public MutableLiveData d;
    public View e;
    public RecyclerView f;
    public ArrayList g;
    public SubtitleItemAdapter h;
    public c i;
    public int j;
    public ImageView k;
    public CustomLinearLayoutManager l;
    public final Observer m;

    public class a implements BaseQuickAdapter.OnItemClickListener {
        public a() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            SubtitleSelectView.this.k(baseQuickAdapter, view, i);
        }
    }

    public class b implements BaseQuickAdapter.OnItemChildClickListener {
        public b() {
        }

        @Override
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            SubtitleSelectView.this.k(baseQuickAdapter, view, i);
        }
    }

    public interface c {
        void a(int i);

        void b();

        void c(int i);

        void d(SubtitleTrackInfo subtitleTrackInfo, int i);
    }

    public SubtitleSelectView(Context context) {
        this(context, null);
    }

    public final void k(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (i == 0) {
            c cVar = this.i;
            if (cVar != null) {
                cVar.a(this.j);
            }
        } else {
            SubtitleTrackInfo subtitleTrackInfo = (SubtitleTrackInfo) this.g.get(i);
            if (subtitleTrackInfo.showArrow) {
                c cVar2 = this.i;
                if (cVar2 != null) {
                    cVar2.c(this.j);
                    return;
                }
                return;
            }
            Log.e("VishaTranPlaye", "position:" + i + StringUtils.COMMA + subtitleTrackInfo);
            if (this.i != null) {
                f16.f(this.j + 1);
                this.i.d(subtitleTrackInfo, this.j);
            }
        }
        this.h.r(i);
        this.h.notifyDataSetChanged();
        this.k.performClick();
    }

    public final void l() {
        SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
        subtitleTrackInfo.path = this.b.getResources().getString(R.string.local_subtitle);
        subtitleTrackInfo.name = UNSELECTED_ITEM_TAG;
        subtitleTrackInfo.showArrow = true;
        ArrayList arrayList = this.g;
        arrayList.add(arrayList.size(), subtitleTrackInfo);
    }

    public final void m() {
        SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
        subtitleTrackInfo.path = this.b.getResources().getString(R.string.subtitle_unselected);
        subtitleTrackInfo.name = UNSELECTED_ITEM_TAG;
        this.g.add(0, subtitleTrackInfo);
    }

    public final void n() {
        this.e = LayoutInflater.from(this.b).inflate(R.layout.subtitle_select_layout, (ViewGroup) this, true);
        this.k = (ImageView) findViewById(R.id.iv_title_bar_back);
        findViewById(R.id.ll_local_subtitle).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.q(view);
            }
        });
        o();
        p();
    }

    public final void o() {
        this.f = (RecyclerView) this.e.findViewById(R.id.rv_subtitle_list);
        SubtitleItemAdapter subtitleItemAdapter = new SubtitleItemAdapter(this.b);
        this.h = subtitleItemAdapter;
        subtitleItemAdapter.d(true);
        CustomLinearLayoutManager customLinearLayoutManager = new CustomLinearLayoutManager(this.b);
        this.l = customLinearLayoutManager;
        this.f.setLayoutManager(customLinearLayoutManager);
        this.f.setAdapter(this.h);
        this.h.setOnItemClickListener(new a());
        this.h.setOnItemChildClickListener(new b());
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.c.getSystemSubtitlesLiveData().removeObserver(this.m);
    }

    public final void p() {
        if (this.j == -1) {
            return;
        }
        this.c = (VideoSubtitleViewModel) new ViewModelProvider((ViewModelStoreOwner) this.b, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(VideoSubtitleViewModel.class);
        Log.e("SubtitleSelectView", "initViewModel " + this.j);
        MutableLiveData<List<SubtitleTrackInfo>> firstTrackData = this.j == 0 ? this.c.getFirstTrackData() : this.c.getSecondTrackData();
        this.d = firstTrackData;
        firstTrackData.observe((BaseActivity) this.b, this.m);
    }

    public final void q(View view) {
        c cVar = this.i;
        if (cVar != null) {
            cVar.c(this.j);
        }
    }

    public void setCurrentPath(String str) {
    }

    public void setSubtitleOperateListener(c cVar) {
        this.i = cVar;
    }

    public void setTrackValue(int i) {
        this.j = i;
        p();
    }

    public SubtitleSelectView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SubtitleSelectView(Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SubtitleSelectView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.g = new ArrayList();
        this.j = -1;
        this.m = new Observer() {
            @Override
            public void onChanged(List list) {
                boolean zIsEmpty;
                SubtitleTrackInfo value = (SubtitleSelectView.this.j == 0 ? SubtitleSelectView.this.c.firstCurData : SubtitleSelectView.this.c.secondCurData).getValue();
                SubtitleSelectView.this.g.clear();
                if (pp3.j()) {
                    SubtitleSelectView.this.g.addAll(VideoPlayManager.X().h0());
                    zIsEmpty = SubtitleSelectView.this.g.isEmpty();
                } else {
                    zIsEmpty = true;
                }
                SubtitleSelectView.this.g.addAll(list);
                if (!pp3.j() || zIsEmpty) {
                    SubtitleSelectView.this.m();
                }
                SubtitleSelectView.this.l();
                final int i3 = 0;
                if (value == null) {
                    SubtitleSelectView.this.h.r(0);
                } else {
                    int i4 = 0;
                    for (int i5 = 0; i5 < SubtitleSelectView.this.g.size(); i5++) {
                        SubtitleTrackInfo subtitleTrackInfo = (SubtitleTrackInfo) SubtitleSelectView.this.g.get(i5);
                        if (subtitleTrackInfo.isInnerSubtitle ? subtitleTrackInfo.sub_inner_id == value.sub_inner_id : TextUtils.equals(subtitleTrackInfo.path, value.path)) {
                            SubtitleSelectView.this.h.r(i5);
                            i4 = i5;
                        }
                    }
                    i3 = i4;
                }
                SubtitleSelectView.this.h.setNewData(SubtitleSelectView.this.g);
                SubtitleSelectView.this.f.scrollToPosition(i3);
                SubtitleSelectView.this.f.post(new Runnable() {
                    @Override
                    public void run() {
                        View viewFindViewByPosition = SubtitleSelectView.this.l.findViewByPosition(i3);
                        if (viewFindViewByPosition != null) {
                            SubtitleSelectView.this.l.scrollToPositionWithOffset(i3, (SubtitleSelectView.this.f.getHeight() / 2) - (viewFindViewByPosition.getHeight() / 2));
                        }
                    }
                });
            }
        };
        this.b = context;
        n();
    }
}
