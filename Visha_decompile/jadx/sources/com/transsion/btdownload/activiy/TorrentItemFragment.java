package com.transsion.btdownload.activiy;

import android.content.DialogInterface;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.format.Formatter;
import android.text.style.StyleSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.bt_download.R;
import com.transsion.btdownload.activiy.TorrentItemFragment;
import com.transsion.btdownload.ui.TorrentItemAdapter;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.widgets.AppFootActionBar;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.widget.FootOperationBar;
import defpackage.a64;
import defpackage.b23;
import defpackage.hb0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pk0;
import defpackage.t74;
import defpackage.vb;
import defpackage.yx2;
import defpackage.zf1;
import java.util.List;
import java.util.Set;
import org.proninyaroslav.libretorrent.core.model.data.TorrentInfo;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.TorrentMetaInfo;

public class TorrentItemFragment extends BaseFragment {
    public View l;
    public TorrentItemViewModel m;
    public TorrentItemAdapter n;
    public AppFootActionBar o;
    public LinearLayout p;
    public LinearLayout q;
    public TextView r;
    public TextView s;
    public CheckBox t;
    public RecyclerView u;
    public int v;

    public class a implements TorrentItemAdapter.b {
        public a() {
        }

        @Override
        public void a(View view, int i) {
            if (view.getId() == R.id.iv_bucket_fragment_checkBox) {
                TorrentItemFragment.this.n.A(i, ((CheckBox) view).isChecked());
                TorrentItemFragment.this.E0();
                TorrentItemFragment.this.A0();
                TorrentItemFragment.this.B0();
            }
        }

        @Override
        public boolean b(View view, int i) {
            if (TorrentItemFragment.this.m.n()) {
                return false;
            }
            TorrentItemFragment.this.n.z(i);
            TorrentItemFragment.this.m.G(true);
            return true;
        }

        @Override
        public void c(View view, int i) {
            if (TorrentItemFragment.this.m.n()) {
                TorrentItemFragment.this.n.D(i);
                TorrentItemFragment.this.E0();
                TorrentItemFragment.this.A0();
                TorrentItemFragment.this.B0();
                return;
            }
            hb0.markDirect("vd_dl_manager_bt_main_task_cl");
            TorrentInfo torrentInfoR = TorrentItemFragment.this.n.r(i);
            TorrentMetaInfo torrentMetaInfoI = pk0.f().i(torrentInfoR.torrentId);
            TorrentItemFragment.this.m.H(torrentInfoR);
            TorrentItemFragment.this.m.I(torrentMetaInfoI);
            TorrentItemFileFragment torrentItemFileFragment = (TorrentItemFileFragment) TorrentItemFileFragment.l0().setBaseActivity((BaseActivity) TorrentItemFragment.this.getActivity());
            torrentItemFileFragment.setNeedBg(true);
            a64.n(torrentItemFileFragment, true, true);
        }
    }

    public void A0() {
        if (this.n.u()) {
            this.t.setChecked(true);
        } else {
            this.t.setChecked(false);
        }
    }

    private void C0(boolean z) {
        this.p.setVisibility(z ? 0 : 8);
        this.q.setVisibility(z ? 8 : 0);
        inflateOperationBar();
        this.o.setVisibility(z ? 0 : 8);
        if (z) {
            E0();
            A0();
        }
        this.s.setVisibility(z ? 8 : 0);
        this.n.C(z);
        getActivity().getWindow().setNavigationBarColor(z ? this.v : getContext().getColor(R.color.transparent));
    }

    private void D0() {
        j0();
    }

    public void E0() {
        String string;
        int iS = this.n.s();
        if (iS == 0) {
            string = getString(R.string.none_select);
        } else {
            string = iS == 1 ? getString(R.string.item, Integer.valueOf(iS)) : getString(R.string.items, Integer.valueOf(iS));
        }
        this.r.setText(string);
    }

    private void j0() {
        mc7.K(getActivity()).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return TorrentItemFragment.l0((FragmentActivity) obj);
            }
        }).d0(k29.a()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.m0((Long) obj);
            }
        });
    }

    private void k0(boolean z) {
        if (z && this.l == null) {
            return;
        }
        if (this.l == null) {
            View viewInflate = ((ViewStub) getView().findViewById(R.id.activity_empty_view)).inflate();
            this.l = viewInflate;
            ((ImageView) viewInflate.findViewById(R.id.lottie_no_videos_view)).setImageResource(com.transsion.common.R.drawable.ic_file_empty_illustration);
            TextView textView = (TextView) this.l.findViewById(R.id.text_no_videos);
            TextView textView2 = (TextView) this.l.findViewById(R.id.add_video_tv);
            textView2.setVisibility(0);
            textView2.setText(R.string.go_download);
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.n0(view);
                }
            });
            textView.setText(R.string.file_empty);
            hb0.markDirect("vd_dl_manager_bt_main_godl_show");
        }
        if (!z && this.s != null) {
            D0();
        }
        this.s.setVisibility(!z ? 0 : 8);
        this.u.setVisibility(z ? 0 : 8);
        View view = this.l;
        if (view != null) {
            view.setVisibility(z ? 8 : 0);
        }
    }

    public static Long l0(FragmentActivity fragmentActivity) {
        return Long.valueOf(b23.l(yx2.j));
    }

    public void p0(View view) {
        if (this.t.isChecked()) {
            this.n.y();
        } else {
            this.n.E();
        }
        E0();
        A0();
        B0();
    }

    public void q0(View view) {
        this.m.G(false);
    }

    public void r0(View view) {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    public void s0(List list) {
        this.n.submitList(list);
        k0(list != null && list.size() > 0);
    }

    public static Boolean u0(List list) {
        pk0.f().e(list, true);
        return Boolean.TRUE;
    }

    public void w0(final Set set, DialogInterface dialogInterface, int i) {
        mc7.E(set).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return ((TorrentInfo) obj).torrentId;
            }
        }).j0().l(new t74() {
            @Override
            public final Object apply(Object obj) {
                return TorrentItemFragment.u0((List) obj);
            }
        }).m(vb.a()).o(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.v0(set, (Boolean) obj);
            }
        });
    }

    public static void x0(DialogInterface dialogInterface, int i) {
    }

    public void y0(DialogInterface dialogInterface) {
        this.m.G(false);
    }

    public final void B0() {
        AppFootActionBar appFootActionBar = this.o;
        if (appFootActionBar != null) {
            appFootActionBar.setAllEnable(this.n.s() > 0);
        }
    }

    public void F0(final Set set) {
        if (set == null) {
            return;
        }
        d.a aVar = new d.a(this.mContext);
        int size = set.size();
        if (size > 1) {
            aVar.k(getContext().getString(R.string.delete_files_notice, Integer.valueOf(size)));
        } else {
            aVar.j(R.string.delete_file_notice);
        }
        aVar.u(R.string.delete, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.w0(set, dialogInterface, i);
            }
        });
        aVar.m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                TorrentItemFragment.x0(dialogInterface, i);
            }
        });
        aVar.r(new DialogInterface.OnCancelListener() {
            @Override
            public final void onCancel(DialogInterface dialogInterface) {
                this.b.y0(dialogInterface);
            }
        });
        aVar.e(false);
        aVar.f(false);
        aVar.a().show();
    }

    public void inflateOperationBar() {
        if (this.o == null) {
            AppFootActionBar appFootActionBar = (AppFootActionBar) ((ViewStub) getView().findViewById(com.transsion.magicvideo.R.id.bottom_action_bar)).inflate();
            this.o = appFootActionBar;
            appFootActionBar.setOnFootOptBarClickListener(new FootOperationBar.n() {
                @Override
                public final void onItemClick(int i) {
                    this.b.o0(i);
                }
            });
            this.o.setListFlag(34);
            applyEditFootBarBottomInset(this.o);
        }
    }

    public final void m0(Long l) {
        String strReplace = Formatter.formatFileSize(getContext(), l.longValue()).replace(" ", "");
        String strReplace2 = Formatter.formatFileSize(getContext(), b23.h()).replace(" ", "");
        String string = getResources().getString(R.string.download_size_info, strReplace, strReplace2);
        SpannableString spannableString = new SpannableString(string);
        int iIndexOf = string.indexOf(strReplace);
        int iIndexOf2 = string.indexOf(strReplace2);
        spannableString.setSpan(new StyleSpan(1), iIndexOf, strReplace.length() + iIndexOf, 17);
        spannableString.setSpan(new StyleSpan(1), iIndexOf2, strReplace2.length() + iIndexOf2, 17);
        TextView textView = this.s;
        if (textView != null) {
            textView.setText(spannableString);
        }
    }

    public final void n0(View view) {
        RouterBean routerBean = new RouterBean();
        routerBean.setParam(new RouterBean.RouterData());
        routerBean.getParam().setUrl("www.the-piratebay.com");
        routerBean.setType(3);
        RouterUtils.route(routerBean, getContext(), true);
        hb0.markDirect("vd_dl_manager_bt_main_godl_cl");
    }

    public final void o0(int i) {
        F0(this.n.t());
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(com.transsion.magicvideo.R.attr.foot_bar_background, typedValue, true);
        this.v = typedValue.data;
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_torrent_download;
    }

    @Override
    public void onPause() {
        super.onPause();
        this.m.K();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.m.M();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.p = (LinearLayout) view.findViewById(R.id.ll_title_select);
        this.q = (LinearLayout) view.findViewById(R.id.ll_title);
        this.r = (TextView) view.findViewById(R.id.tv_title_select);
        this.t = (CheckBox) view.findViewById(R.id.cb_select);
        this.u = (RecyclerView) view.findViewById(R.id.rv_list);
        this.s = (TextView) view.findViewById(R.id.tv_size_info);
        D0();
        this.t.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.p0(view2);
            }
        });
        view.findViewById(R.id.iv_close_select).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.q0(view2);
            }
        });
        view.findViewById(R.id.iv_back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.r0(view2);
            }
        });
        TorrentItemViewModel torrentItemViewModel = (TorrentItemViewModel) new ViewModelProvider(getActivity()).get(TorrentItemViewModel.class);
        this.m = torrentItemViewModel;
        torrentItemViewModel.r((BaseActivity) getActivity());
        this.m.q().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.s0((List) obj);
            }
        });
        this.m.D(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.t0((Boolean) obj);
            }
        });
        this.n = new TorrentItemAdapter(getContext());
        this.u.setLayoutManager(new LinearLayoutManager(getContext()));
        this.u.setAdapter(this.n);
        this.u.setItemAnimator(null);
        this.n.B(new a());
    }

    public final void t0(Boolean bool) {
        C0(bool.booleanValue());
    }

    public final void v0(Set set, Boolean bool) {
        this.m.G(false);
        List<TorrentInfo> currentList = this.n.getCurrentList();
        currentList.remove(set);
        this.n.submitList(currentList);
    }
}
