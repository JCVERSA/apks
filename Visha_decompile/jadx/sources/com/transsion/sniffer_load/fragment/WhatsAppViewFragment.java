package com.transsion.sniffer_load.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.videomodel.WhatsappViewModel;
import com.transsion.playercommon.whatsapp.WhatsappFile;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.adapter.WhatsappAdapter;
import com.transsion.sniffer_load.adapter.diffCallback.WhatsAppDiffCallback;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.utils.ToastUtils;
import defpackage.f5;
import defpackage.hb0;
import defpackage.p06;
import defpackage.raa;
import defpackage.se;
import defpackage.v19;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WhatsAppViewFragment extends PlayBaseFragment {
    public RecyclerView l;
    public WhatsappAdapter m;
    public WhatsappViewModel n;
    public View o;
    public TextView p;
    public View q;
    public int r = 0;
    public CustomGridLayoutManager s;

    private void o0(boolean z) {
        if (!z && this.o == null) {
            View viewInflate = ((ViewStub) getView().findViewById(R.id.main_empty_view)).inflate();
            this.o = viewInflate;
            ((ImageView) viewInflate.findViewById(R.id.lottie_no_videos_view)).setImageResource(com.transsion.common.R.drawable.ic_file_empty_illustration);
            this.p = (TextView) this.o.findViewById(R.id.text_no_videos);
            TextView textView = (TextView) this.o.findViewById(R.id.add_video_tv);
            textView.setVisibility(0);
            textView.setText(R.string.link_wa);
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.p0(view);
                }
            });
            this.p.setText(R.string.file_empty);
        }
        this.l.setVisibility(z ? 0 : 8);
        View view = this.o;
        if (view != null) {
            view.setVisibility(z ? 8 : 0);
        }
    }

    public void t0(Boolean bool) {
        this.m.t(bool.booleanValue());
    }

    public static WhatsAppViewFragment y0(int i) {
        WhatsAppViewFragment whatsAppViewFragment = new WhatsAppViewFragment();
        whatsAppViewFragment.r = i;
        return whatsAppViewFragment;
    }

    public final void A0(List list, int i) {
        Intent intent = new Intent("com.transsion.magicmovie.preview_img_video");
        intent.setPackage(se.a().getPackageName());
        v19.e(list);
        v19.d(i);
        f5.b(intent, 1002, getActivity());
        p06.n0("dl_wa_content_preview_cl", "type", (list == null || list.get(i) == null || !((WhatsappFile) list.get(i)).isVideo()) ? 0 : 1);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i == 1179) {
            Object obj = objArr[0];
            if (obj == null || !(obj instanceof WhatsappFile)) {
                return;
            }
            WhatsappFile whatsappFile = (WhatsappFile) obj;
            List<WhatsappFile> data = this.m.getData();
            for (int i2 = 0; i2 < data.size(); i2++) {
                if (data.get(i2).getFilePath().equals(whatsappFile.getFilePath())) {
                    data.get(i2).setStatus(1);
                    this.m.notifyItemChanged(i2);
                    return;
                }
            }
        }
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1179);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.n = (WhatsappViewModel) new ViewModelProvider(getActivity()).get(WhatsappViewModel.class);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_whatsapp, viewGroup, false);
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        RecyclerView recyclerView = this.l;
        if (recyclerView == null) {
            return;
        }
        if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_PORT) {
            CustomGridLayoutManager customGridLayoutManager = new CustomGridLayoutManager(getContext(), 4);
            this.s = customGridLayoutManager;
            recyclerView.setLayoutManager(customGridLayoutManager);
        } else {
            CustomGridLayoutManager customGridLayoutManager2 = new CustomGridLayoutManager(getContext(), 3);
            this.s = customGridLayoutManager2;
            recyclerView.setLayoutManager(customGridLayoutManager2);
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.l = (RecyclerView) view.findViewById(R.id.rv_content);
        this.q = view.findViewById(R.id.ll_loading);
        WhatsappAdapter whatsappAdapter = new WhatsappAdapter(getContext());
        this.m = whatsappAdapter;
        this.l.setAdapter(whatsappAdapter);
        BaseConstant.SCREEN_TYPE screen_type = this.mScreenType;
        boolean z = screen_type == BaseConstant.SCREEN_TYPE.OPEN_PORT || screen_type == BaseConstant.SCREEN_TYPE.OPEN_LAND;
        RecyclerView recyclerView = this.l;
        CustomGridLayoutManager customGridLayoutManager = new CustomGridLayoutManager(getContext(), z ? 4 : 3);
        this.s = customGridLayoutManager;
        recyclerView.setLayoutManager(customGridLayoutManager);
        this.n.U(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.r0((List) obj);
            }
        }, this.r);
        this.n.Y(this.mActivity, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.s0((WhatsappViewModel.b) obj);
            }
        });
        this.n.X(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.t0((Boolean) obj);
            }
        });
        this.n.W(this, this.r, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.u0((Integer) obj);
            }
        });
        this.m.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.b.v0(baseQuickAdapter, view2, i);
            }
        });
        this.m.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.a.w0(baseQuickAdapter, view2, i);
            }
        });
        this.m.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() {
            @Override
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                return this.a.x0(baseQuickAdapter, view2, i);
            }
        });
    }

    public final void p0(View view) {
        hb0.markTrackSingle("dl_wa_connect_cl", "from", 0);
        if (raa.l(getContext())) {
            return;
        }
        ToastUtils.s(R.string.whats_app_not_installed);
    }

    public final void q0(boolean z) {
        this.q.setVisibility(8);
        if (z) {
            this.l.setVisibility(0);
        }
    }

    public final void r0(List list) {
        final boolean z = (list == null || list.isEmpty()) ? false : true;
        o0(z);
        if (this.q.getVisibility() == 0) {
            this.l.setVisibility(8);
            this.q.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.q0(z);
                }
            }, z ? 500L : 0L);
        }
        if (z) {
            this.m.setNewDiffData(DiffUtil.calculateDiff(new WhatsAppDiffCallback(this.m.getData(), list)), list);
        } else {
            this.m.setNewData(new ArrayList());
        }
    }

    public final void s0(WhatsappViewModel.b bVar) {
        if (bVar.b) {
            WhatsappAdapter whatsappAdapter = this.m;
            whatsappAdapter.w(whatsappAdapter.getData());
        } else if (bVar.a == 0) {
            this.m.g();
        }
    }

    public final void u0(Integer num) {
        this.m.notifyItemChanged(num.intValue());
    }

    public final void v0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        z0(i);
    }

    public final void w0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.cb_select) {
            boolean zIsChecked = ((CheckBox) view).isChecked();
            WhatsappFile whatsappFile = this.m.getData().get(i);
            whatsappFile.isSelected = zIsChecked;
            if (whatsappFile.isSelected) {
                this.m.b(whatsappFile);
            } else {
                this.m.l(whatsappFile);
            }
            this.n.a0(this.m.j().size());
            return;
        }
        if (view.getId() == R.id.iv_download) {
            WhatsappFile whatsappFile2 = this.m.getData().get(i);
            whatsappFile2.setStatus(2);
            this.m.notifyItemChanged(i);
            this.n.c0(getContext(), whatsappFile2, this.r, i);
            p06.n0("dl_wa_content_dl_cl", "type", whatsappFile2.isVideo() ? 1 : 0);
            return;
        }
        if (view.getId() == R.id.ifl_root) {
            boolean zF = this.n.F();
            WhatsappFile whatsappFile3 = this.m.getData().get(i);
            if (zF && !whatsappFile3.isSaved()) {
                whatsappFile3.isSelected = !whatsappFile3.isSelected;
                if (whatsappFile3.isSelected) {
                    this.m.b(whatsappFile3);
                } else {
                    this.m.l(whatsappFile3);
                }
                this.m.notifyItemChanged(i);
                this.n.a0(this.m.j().size());
            }
            z0(i);
        }
    }

    public final boolean x0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (!this.n.F()) {
            WhatsappFile whatsappFile = (WhatsappFile) baseQuickAdapter.getData().get(i);
            if (whatsappFile.isSaved()) {
                Iterator<WhatsappFile> it = this.m.getData().iterator();
                while (it.hasNext()) {
                    if (!it.next().isSaved()) {
                        whatsappFile.isSelected = false;
                        this.n.f0(true);
                        this.n.B(0, this.r);
                        break;
                    }
                }
            } else {
                this.m.v(whatsappFile);
                whatsappFile.isSelected = true;
                this.n.f0(true);
                this.n.B(1, this.r);
            }
        }
        return true;
    }

    public final void z0(int i) {
        List listA;
        if (this.m.k()) {
            return;
        }
        int i2 = this.r;
        if (i2 == 0) {
            listA = this.n.w();
        } else {
            listA = i2 == 1 ? this.n.A() : this.n.z();
        }
        A0(listA, i);
    }
}
