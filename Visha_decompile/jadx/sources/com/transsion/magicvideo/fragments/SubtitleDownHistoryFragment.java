package com.transsion.magicvideo.fragments;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.transsion.core.log.LogUtils;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.SubtitleHistoryAdapter;
import com.transsion.magicvideo.data.SubtitleOptStatus;
import com.transsion.magicvideo.fragments.SubtitleDownHistoryFragment;
import com.transsion.magicvideo.model.VideoSubtitleViewModel;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.d;
import defpackage.hb0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.nx8;
import defpackage.pp3;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.w6c;
import defpackage.zf1;
import defpackage.zl6;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class SubtitleDownHistoryFragment extends BaseFragment {
    public ConstraintLayout l;
    public ConstraintLayout m;
    public ImageView n;
    public ImageView o;
    public TextView p;
    public TextView q;
    public CheckBox r;
    public RecyclerView s;
    public LinearLayout t;
    public boolean u;
    public SubtitleHistoryAdapter v;
    public List w = new ArrayList();
    public VideoSubtitleViewModel x;
    public int y;

    public class a extends RecyclerView.ItemDecoration {
        public a() {
        }

        @Override
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            rect.bottom = com.transsion.utils.a.d(((BaseFragment) SubtitleDownHistoryFragment.this).mActivity, 15.0f);
            rect.bottom = com.transsion.utils.a.d(((BaseFragment) SubtitleDownHistoryFragment.this).mActivity, 15.0f);
        }
    }

    public static void P0(DialogInterface dialogInterface, int i) {
        hb0.markTrackSingle("vd_cp_subtitle_downloadsub_history_pop_cl", "statue_num", -1);
        dialogInterface.dismiss();
    }

    public static void S0(DialogInterface dialogInterface, int i) {
        hb0.markTrackSingle("vd_cp_subtitle_downlodasub_history_cl_pop_track", "track", 3);
        dialogInterface.dismiss();
    }

    public static SubtitleDownHistoryFragment T0() {
        Bundle bundle = new Bundle();
        SubtitleDownHistoryFragment subtitleDownHistoryFragment = new SubtitleDownHistoryFragment();
        subtitleDownHistoryFragment.setArguments(bundle);
        return subtitleDownHistoryFragment;
    }

    private void showDeleteDialog() {
        List<SubtitleHistory> value = this.x.selectHistoryLiveData.getValue();
        if (value != null) {
            new d.a(this.mContext).B(value.size() == 1 ? getResources().getString(R.string.delete_subtitle_dialog_title) : getResources().getString(R.string.delete_subtitle_dialog_title_multiple, Integer.valueOf(u0().size()))).k(getResources().getString(R.string.delete_downloaded_dialog_message)).u(R.string.delete, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.b.O0(dialogInterface, i);
                }
            }).m(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    SubtitleDownHistoryFragment.P0(dialogInterface, i);
                }
            }).a().show();
            hb0.markDirect("vd_cp_subtitle_downloadsub_history_del_pop");
        }
    }

    public static void x0(Throwable th) {
        LogUtils.e("SubtitleDownHistoryFragment", "add subtitle error");
    }

    public static SubtitleHistory y0(SubtitleHistory subtitleHistory) {
        subtitleHistory.isCheck = false;
        return subtitleHistory;
    }

    public final void A0(SubtitleOptStatus subtitleOptStatus) {
        if (subtitleOptStatus.isOptSuccess()) {
            this.x.deleteSubtitleHistory.setValue(subtitleOptStatus.getSubtitleHistory());
        } else {
            ToastUtils.s(com.transsion.playercommon.R.string.some_delete_fail);
        }
        this.mActivity.setResult(subtitleOptStatus.isOptSuccess() ? -1 : 0);
    }

    public final boolean C0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (!this.x.isEditModeSubtitleHistory.getValue().booleanValue()) {
            hb0.markDirect("vd_cp_subtitle_downloadsub_history_mulcl");
            this.x.isEditModeSubtitleHistory.setValue(Boolean.TRUE);
            this.v.h(true);
            ((SubtitleHistory) this.w.get(i)).isCheck = true;
            List<SubtitleHistory> listU0 = u0();
            this.r.setChecked(listU0.size() == this.w.size());
            this.x.selectHistoryLiveData.setValue(listU0);
        }
        return false;
    }

    public final void D0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (!this.v.g()) {
            q0(i);
            return;
        }
        ((SubtitleHistory) this.w.get(i)).isCheck = !((SubtitleHistory) this.w.get(i)).isCheck;
        List<SubtitleHistory> listU0 = u0();
        this.r.setChecked(listU0.size() == this.w.size());
        this.x.selectHistoryLiveData.setValue(listU0);
    }

    public final void E0(Boolean bool) {
        this.l.setVisibility(bool.booleanValue() ? 8 : 0);
        this.m.setVisibility(bool.booleanValue() ? 0 : 8);
        this.t.setVisibility(bool.booleanValue() ? 0 : 8);
        if (bool.booleanValue()) {
            s0();
        }
    }

    public final void F0() {
        List list = this.w;
        if (list != null) {
            hb0.markTrackSingle("vd_cp_subtitle_downloadsub_history_pop", hb0.KEY_NAME_NUM, Integer.valueOf(list.size()));
        }
    }

    public final void G0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() != R.id.iv_down_success || this.v.g()) {
            return;
        }
        q0(i);
    }

    public final void H0(View view) {
        hb0.markTrackSingle("vd_cp_subtitle_downloadsub_history_cl", hb0.KEY_NAME_BTN, "modify");
        this.x.isEditModeSubtitleHistory.setValue(Boolean.TRUE);
        this.r.setChecked(false);
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            ((SubtitleHistory) it.next()).isCheck = this.r.isChecked();
        }
        this.x.selectHistoryLiveData.setValue(u0());
        this.v.h(true);
    }

    public final void I0(View view) {
        this.mActivity.getSupportFragmentManager().popBackStack();
    }

    public final void J0(View view) {
        this.x.isEditModeSubtitleHistory.setValue(Boolean.FALSE);
        this.v.h(false);
        this.v.notifyDataSetChanged();
    }

    public final void K0(View view) {
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            ((SubtitleHistory) it.next()).isCheck = this.r.isChecked();
        }
        this.x.selectHistoryLiveData.setValue(u0());
    }

    public final void L0(View view) {
        showDeleteDialog();
    }

    public final void M0(List list) {
        if (list == null) {
            return;
        }
        this.p.setText(list + "Items Selected");
        if (list.isEmpty()) {
            this.p.setText(this.mActivity.getString(R.string.none_select));
            this.t.setEnabled(false);
            this.t.setAlpha(0.6f);
        } else {
            this.p.setText(this.mActivity.getString(list.size() > 1 ? R.string.items : R.string.item, Integer.valueOf(list.size())));
            this.t.setEnabled(true);
            this.t.setAlpha(1.0f);
        }
        this.v.notifyDataSetChanged();
    }

    public final void N0(List list) {
        if (this.v == null || list == null) {
            this.q.setVisibility(8);
            return;
        }
        this.x.isEditModeSubtitleHistory.setValue(Boolean.FALSE);
        this.v.h(false);
        this.w.clear();
        this.w.addAll(list);
        Collections.reverse(this.w);
        this.v.setNewData(this.w);
        this.q.setEnabled(!list.isEmpty());
        this.q.setVisibility(list.isEmpty() ? 8 : 0);
    }

    public final void O0(DialogInterface dialogInterface, int i) {
        List listU0 = u0();
        hb0.markTrackSingle("vd_cp_subtitle_downloadsub_history_pop_cl", "statue_num", Integer.valueOf(listU0.size()));
        t0(listU0);
    }

    public final void Q0(SubtitleHistory subtitleHistory, DialogInterface dialogInterface, int i) {
        hb0.markTrackSingle("vd_cp_subtitle_downlodasub_history_cl_pop_track", "track", 2);
        this.u = true;
        p0(1, subtitleHistory.subPath);
    }

    public final void R0(SubtitleHistory subtitleHistory, DialogInterface dialogInterface, int i) {
        hb0.markTrackSingle("vd_cp_subtitle_downlodasub_history_cl_pop_track", "track", 1);
        this.u = true;
        p0(0, subtitleHistory.subPath);
    }

    public final void U0(final SubtitleHistory subtitleHistory) {
        SubtitleTrackInfo value = this.x.firstCurData.getValue();
        SubtitleTrackInfo value2 = this.x.secondCurData.getValue();
        Context context = this.mContext;
        int i = R.string.track_one;
        String string = context.getString(i);
        if (value == null) {
            string = this.mContext.getString(i) + this.mContext.getString(R.string.null_subtitle);
        }
        Context context2 = this.mContext;
        int i2 = R.string.track_two;
        String string2 = context2.getString(i2);
        if (value2 == null) {
            string2 = this.mContext.getString(i2) + this.mContext.getString(R.string.null_subtitle);
        }
        new d.a(this.mActivity).A(R.string.select_subtitle_track).d(true).w(string2, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i3) {
                this.b.Q0(subtitleHistory, dialogInterface, i3);
            }
        }).p(string, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i3) {
                this.b.R0(subtitleHistory, dialogInterface, i3);
            }
        }).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i3) {
                SubtitleDownHistoryFragment.S0(dialogInterface, i3);
            }
        }).a().show();
        hb0.markDirect("vd_cp_subtitle_downloadsub_cl_pop");
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_subtitle_down_history, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.x = (VideoSubtitleViewModel) getViewModelByActivity(VideoSubtitleViewModel.class);
        this.y = w6c.d(this.mContext, "tracks_value", 0);
        this.n = (ImageView) view.findViewById(R.id.iv_back);
        this.o = (ImageView) view.findViewById(R.id.iv_close);
        this.p = (TextView) view.findViewById(R.id.tv_count);
        this.r = (CheckBox) view.findViewById(R.id.title_bar_checkBox);
        this.q = (TextView) view.findViewById(R.id.tv_edit);
        this.s = (RecyclerView) view.findViewById(R.id.rv_content);
        this.t = (LinearLayout) view.findViewById(R.id.ll_clear);
        this.l = (ConstraintLayout) view.findViewById(R.id.title_bar);
        this.m = (ConstraintLayout) view.findViewById(R.id.title_bar_edit);
        this.s.setLayoutManager(new LinearLayoutManager(this.mActivity));
        SubtitleHistoryAdapter subtitleHistoryAdapter = new SubtitleHistoryAdapter(this.w, false);
        this.v = subtitleHistoryAdapter;
        this.s.setAdapter(subtitleHistoryAdapter);
        this.v.bindToRecyclerView(this.s);
        View viewInflate = LayoutInflater.from(this.mActivity).inflate(R.layout.empty_data_layout, (ViewGroup) this.s, false);
        ((TextView) viewInflate.findViewById(R.id.tv_empty_hint)).setText(getResources().getString(R.string.subtitle_download_empty_hint));
        this.v.setEmptyView(viewInflate);
        this.s.addItemDecoration(new a());
        this.v.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() {
            @Override
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                return this.a.C0(baseQuickAdapter, view2, i);
            }
        });
        this.v.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.b.D0(baseQuickAdapter, view2, i);
            }
        });
        this.v.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.a.G0(baseQuickAdapter, view2, i);
            }
        });
        this.q.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.H0(view2);
            }
        });
        this.n.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.I0(view2);
            }
        });
        this.o.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.J0(view2);
            }
        });
        this.r.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.K0(view2);
            }
        });
        this.t.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.L0(view2);
            }
        });
        this.x.selectHistoryLiveData.observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.M0((List) obj);
            }
        });
        this.x.subtitleHistoryLiveLiveData.observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.N0((List) obj);
            }
        });
        this.x.isEditModeSubtitleHistory.observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.E0((Boolean) obj);
            }
        });
        this.s.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.F0();
            }
        }, 300L);
    }

    public final void p0(final int i, final String str) {
        mc7.K(this).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.v0(i, str, (SubtitleDownHistoryFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.w0(i, (Boolean) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                SubtitleDownHistoryFragment.x0((Throwable) obj);
            }
        });
    }

    public final void q0(int i) {
        if (i < 0 || i >= this.w.size()) {
            return;
        }
        SubtitleHistory subtitleHistory = (SubtitleHistory) this.w.get(i);
        hb0.markTrackSingle("vd_cp_subtitle_downloadsub_history_cl", hb0.KEY_NAME_BTN, AuthInfo.Component.CODE_SUBTITLE);
        if (pp3.r() && w6c.c(this.mActivity, "tracks_switch", false)) {
            U0(subtitleHistory);
        } else {
            this.u = true;
            p0(this.y, subtitleHistory.subPath);
        }
    }

    public final void r0(int i) {
        Intent intent = new Intent();
        intent.putExtra("track_value", i);
        this.mActivity.setResult(this.u ? -1 : 0, intent);
        this.mActivity.finish();
    }

    public final void s0() {
        this.w.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return SubtitleDownHistoryFragment.y0((SubtitleHistory) obj);
            }
        }).collect(Collectors.toList());
    }

    public final void t0(List list) {
        mc7.C((SubtitleHistory[]) list.toArray(new SubtitleHistory[list.size()])).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.z0((SubtitleHistory) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.A0((SubtitleOptStatus) obj);
            }
        });
    }

    public final List u0() {
        return (List) this.w.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((SubtitleHistory) obj).isCheck;
            }
        }).collect(Collectors.toList());
    }

    public final Boolean v0(int i, String str, SubtitleDownHistoryFragment subtitleDownHistoryFragment) {
        int intExtra = this.mActivity.getIntent().getIntExtra("media_id", 0);
        SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
        subtitleTrackInfo.track = i;
        subtitleTrackInfo.path = str;
        return Boolean.valueOf(tpb.j0().t(intExtra, subtitleTrackInfo) > 0);
    }

    public final void w0(int i, Boolean bool) {
        if (bool.booleanValue()) {
            r0(i);
        }
    }

    public final SubtitleOptStatus z0(SubtitleHistory subtitleHistory) {
        File file = new File(subtitleHistory.subPath);
        boolean zExists = file.exists();
        boolean z = !zExists;
        if (zExists && file.delete()) {
            z = true;
        }
        if (!z && nx8.f(this.mContext, file)) {
            z = true;
        }
        if (file.exists()) {
            z = false;
        }
        if (!z) {
            return new SubtitleOptStatus(subtitleHistory, false);
        }
        zl6 zl6Var = new zl6(this.mContext);
        ArrayList arrayList = new ArrayList();
        arrayList.add(file.getAbsolutePath());
        zl6Var.a(arrayList);
        tpb.j0().e(subtitleHistory);
        tpb.j0().q(subtitleHistory.subPath);
        return new SubtitleOptStatus(subtitleHistory, true);
    }
}
