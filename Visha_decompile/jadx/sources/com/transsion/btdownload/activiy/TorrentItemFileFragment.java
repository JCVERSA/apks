package com.transsion.btdownload.activiy;

import android.content.DialogInterface;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.format.Formatter;
import android.text.style.StyleSpan;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.util.Pair;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.bt_download.R;
import com.transsion.btdownload.FileItemUtils;
import com.transsion.btdownload.TorrentHeaderFileTree;
import com.transsion.btdownload.TorrentedFileTree;
import com.transsion.btdownload.TorrentingFileTree;
import com.transsion.btdownload.activiy.TorrentItemFileFragment;
import com.transsion.btdownload.ui.TorrentItemFileAdapter;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.FileOperateMenuAdapter;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.data.InfoBean;
import com.transsion.playercommon.fragments.AlertDialogFragment;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.SimpleBottomSheetDialog;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.utils.views.HalfListDialogFragmentUtil;
import com.transsion.playercommon.widgets.AppFootActionBar;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.widgetslib.widget.FootOperationBar;
import defpackage.b23;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pk0;
import defpackage.px9;
import defpackage.t74;
import defpackage.vb;
import defpackage.yx2;
import defpackage.zf1;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Consumer;
import org.proninyaroslav.libretorrent.core.model.data.Priority;
import org.proninyaroslav.libretorrent.core.model.filetree.FilePriority;
import org.proninyaroslav.libretorrent.core.model.filetree.TorrentContentFileTree;

public class TorrentItemFileFragment extends BaseFragment {
    public int A;
    public long B;
    public TorrentItemFileAdapter l;
    public TorrentItemViewModel m;
    public FileSelectViewModel n;
    public LinearLayout o;
    public LinearLayout p;
    public LinearLayout q;
    public ImageView r;
    public ImageView s;
    public TextView t;
    public TextView u;
    public TextView v;
    public CheckBox w;
    public RecyclerView x;
    public AppFootActionBar y;
    public boolean z;

    public class a implements Observer {
        public a() {
        }

        @Override
        public void onChanged(Boolean bool) {
            TorrentItemFileFragment.this.C0(bool.booleanValue());
        }
    }

    public class b extends RecyclerView.SimpleOnItemTouchListener {
        public b() {
        }

        @Override
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            TorrentItemFileFragment.this.z = motionEvent.getAction() == 0;
            return super.onInterceptTouchEvent(recyclerView, motionEvent);
        }
    }

    public class c implements BaseQuickAdapter.OnItemClickListener {
        public c() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            TorrentContentFileTree item = TorrentItemFileFragment.this.l.getItem(i);
            if ((item instanceof TorrentedFileTree) || (item instanceof TorrentingFileTree)) {
                return;
            }
            if (TorrentItemFileFragment.this.n.a()) {
                TorrentItemFileFragment.this.l.E(i);
                TorrentItemFileFragment.this.E0();
                TorrentItemFileFragment.this.B0();
            } else if (TorrentItemFileFragment.this.l.getItemViewType(i) == 1004) {
                FileItemUtils.a((BaseActivity) TorrentItemFileFragment.this.getActivity(), new File(yx2.j, item.getPath()).getAbsolutePath(), item.getName());
            }
        }
    }

    public class d implements BaseQuickAdapter.OnItemChildClickListener {
        public d() {
        }

        @Override
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (view.getId() == R.id.iv_bucket_fragment_checkBox) {
                TorrentItemFileFragment.this.l.B(i, ((CheckBox) view).isChecked());
                TorrentItemFileFragment.this.E0();
                TorrentItemFileFragment.this.B0();
            } else if (view.getId() == R.id.iv_bucket_fragment_item_more) {
                TorrentItemFileFragment torrentItemFileFragment = TorrentItemFileFragment.this;
                torrentItemFileFragment.G0(torrentItemFileFragment.l.getItem(i));
            }
        }
    }

    public class e implements BaseQuickAdapter.OnItemChildLongClickListener {
        public e() {
        }

        @Override
        public boolean onItemChildLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (TorrentItemFileFragment.this.n.a()) {
                return false;
            }
            TorrentContentFileTree item = TorrentItemFileFragment.this.l.getItem(i);
            if ((item instanceof TorrentedFileTree) || (item instanceof TorrentingFileTree)) {
                return false;
            }
            TorrentItemFileFragment.this.l.x(i);
            TorrentItemFileFragment.this.n.c(true);
            return true;
        }
    }

    public class f implements Observer {
        public f() {
        }

        @Override
        public void onChanged(Boolean bool) {
            TorrentItemFileFragment.this.l.C(bool.booleanValue());
        }
    }

    public void C0(boolean z) {
        this.o.setVisibility(z ? 0 : 8);
        this.p.setVisibility(z ? 8 : 0);
        inflateOperationBar();
        if (z) {
            this.y.openFootOperationBar();
        } else {
            this.y.closeFootOperationBar();
        }
        getActivity().getWindow().setNavigationBarColor(z ? this.A : getContext().getColor(R.color.transparent));
        this.q.setVisibility(z ? 8 : 0);
        if (z) {
            E0();
            B0();
            this.y.setAllEnable(this.l.r() > 0);
        }
        this.l.D(z);
    }

    private void k0() {
        mc7.K(getActivity()).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return TorrentItemFileFragment.n0((FragmentActivity) obj);
            }
        }).d0(k29.a()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.m0((Long) obj);
            }
        });
    }

    public static TorrentItemFileFragment l0() {
        return new TorrentItemFileFragment();
    }

    public static Long n0(FragmentActivity fragmentActivity) {
        return Long.valueOf(b23.l(yx2.j));
    }

    public void p0(View view) {
        if (this.w.isChecked()) {
            this.l.w();
        } else {
            this.l.F();
        }
        E0();
    }

    public void q0(View view) {
        this.n.c(false);
    }

    public void r0(View view) {
        getActivity().onBackPressed();
    }

    public static void u0() {
    }

    public static void v0(Priority[] priorityArr, TorrentContentFileTree torrentContentFileTree) {
        priorityArr[torrentContentFileTree.getIndex()] = Priority.IGNORE;
        if (torrentContentFileTree.getReceivedBytes() == torrentContentFileTree.size()) {
            new File(yx2.j, torrentContentFileTree.getPath()).delete();
        }
    }

    public static void x0(DialogInterface dialogInterface, int i) {
    }

    public static void y0(DialogInterface dialogInterface) {
    }

    public static void z0() {
    }

    public final void A0(TorrentContentFileTree torrentContentFileTree, SimpleBottomSheetDialog simpleBottomSheetDialog, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (ingoreClickEvent()) {
            return;
        }
        this.B = System.currentTimeMillis();
        FileOperateItem fileOperateItem = (FileOperateItem) view.getTag();
        if (fileOperateItem.getFlag() == 5) {
            HashSet hashSet = new HashSet(1);
            hashSet.add(torrentContentFileTree);
            H0(hashSet);
        } else {
            F0(torrentContentFileTree, new AlertDialogFragment.c() {
                @Override
                public final void onDialogDismiss() {
                    TorrentItemFileFragment.z0();
                }
            });
        }
        if (fileOperateItem.getFlag() == 7 || fileOperateItem.getFlag() == 3 || fileOperateItem.getFlag() == 2) {
            return;
        }
        simpleBottomSheetDialog.dismissAllowingStateLoss();
    }

    public final void B0() {
        if (this.l.u()) {
            this.w.setChecked(true);
        } else {
            this.w.setChecked(false);
        }
    }

    public final void D0() {
        k0();
    }

    public final void E0() {
        String string;
        int iR = this.l.r();
        if (iR == 0) {
            string = getString(R.string.none_select);
        } else {
            string = iR == 1 ? getString(R.string.item, Integer.valueOf(iR)) : getString(R.string.items, Integer.valueOf(iR));
        }
        this.t.setText(string);
        AppFootActionBar appFootActionBar = this.y;
        if (appFootActionBar != null) {
            appFootActionBar.setAllEnable(iR > 0);
        }
    }

    public void F0(TorrentContentFileTree torrentContentFileTree, AlertDialogFragment.c cVar) {
        AlertDialogFragment.b bVar = new AlertDialogFragment.b();
        AlertDialogFragment alertDialogFragmentA = bVar.c(com.transsion.playercommon.R.layout.dialog_details).a();
        FragmentManager supportFragmentManager = ((BaseActivity) this.mContext).getSupportFragmentManager();
        bVar.b(com.transsion.playercommon.R.string.ok).d(com.transsion.playercommon.R.string.info);
        alertDialogFragmentA.show(supportFragmentManager, "detail_dialog_fragment_tag");
        supportFragmentManager.executePendingTransactions();
        alertDialogFragmentA.setOnDialogDismissListener(cVar);
        if (alertDialogFragmentA.getDialog() != null) {
            RecyclerView recyclerView = (RecyclerView) alertDialogFragmentA.getDialog().findViewById(com.transsion.playercommon.R.id.rv_bucket_fragment_info);
            FileOperateUtils.InfoAdapter infoAdapter = new FileOperateUtils.InfoAdapter(com.transsion.playercommon.R.layout.item_bucket_fragment_info);
            recyclerView.setLayoutManager(new CustomLinearLayoutManager(this.mContext));
            recyclerView.setAdapter(infoAdapter);
            ArrayList arrayList = new ArrayList();
            if (torrentContentFileTree == null) {
                return;
            }
            if (torrentContentFileTree.getName() != null) {
                InfoBean infoBean = new InfoBean(com.transsion.playercommon.R.string.name, torrentContentFileTree.getRealName(), 0L);
                infoBean.setMultiLines(true);
                arrayList.add(infoBean);
            }
            if (torrentContentFileTree.size() != 0) {
                arrayList.add(new InfoBean(com.transsion.playercommon.R.string.size, Formatter.formatFileSize(this.mContext, torrentContentFileTree.size()), 0L));
            }
            if (torrentContentFileTree.getName() != null) {
                InfoBean infoBean2 = new InfoBean(com.transsion.playercommon.R.string.path, yx2.i + File.separator + torrentContentFileTree.getRealName(), 0L);
                infoBean2.setMultiLines(true);
                arrayList.add(infoBean2);
            }
            infoAdapter.setNewData(arrayList);
        }
    }

    public final void G0(final TorrentContentFileTree torrentContentFileTree) {
        HalfListDialogFragmentUtil halfListDialogFragmentUtil = new HalfListDialogFragmentUtil(this.mContext, "bt_file_dialog", R.layout.file_operate_list, R.layout.audio_playlist_bucket_list);
        halfListDialogFragmentUtil.e(new HalfListDialogFragmentUtil.a() {
            @Override
            public final void a(SimpleBottomSheetDialog simpleBottomSheetDialog, View view) {
                this.a.t0(torrentContentFileTree, simpleBottomSheetDialog, view);
            }
        });
        halfListDialogFragmentUtil.g();
        halfListDialogFragmentUtil.setDismissListener2(new HalfListDialogFragmentUtil.b() {
            @Override
            public final void onDismiss() {
                TorrentItemFileFragment.u0();
            }
        });
    }

    public void H0(final Set set) {
        if (set == null) {
            return;
        }
        com.transsion.widgetslib.dialog.d.a aVar = new com.transsion.widgetslib.dialog.d.a(this.mContext);
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
                TorrentItemFileFragment.x0(dialogInterface, i);
            }
        });
        aVar.r(new DialogInterface.OnCancelListener() {
            @Override
            public final void onCancel(DialogInterface dialogInterface) {
                TorrentItemFileFragment.y0(dialogInterface);
            }
        });
        aVar.f(false);
        aVar.a().show();
    }

    public void t0(final SimpleBottomSheetDialog simpleBottomSheetDialog, View view, final TorrentContentFileTree torrentContentFileTree) {
        ((TextView) view.findViewById(com.transsion.magicvideo.R.id.media_name)).setText(torrentContentFileTree.getRealName());
        RecyclerView recyclerView = (RecyclerView) view.findViewById(com.transsion.magicvideo.R.id.rv_operate_list);
        FileOperateMenuAdapter fileOperateMenuAdapter = new FileOperateMenuAdapter(this.mContext);
        recyclerView.setAdapter(fileOperateMenuAdapter);
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(this.mContext));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new FileOperateItem(R.drawable.ic_info, R.string.info, 6));
        fileOperateMenuAdapter.setNewData(arrayList);
        fileOperateMenuAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.b.A0(torrentContentFileTree, simpleBottomSheetDialog, baseQuickAdapter, view2, i);
            }
        });
    }

    public void inflateOperationBar() {
        if (this.y == null) {
            AppFootActionBar appFootActionBar = (AppFootActionBar) ((ViewStub) getView().findViewById(com.transsion.magicvideo.R.id.bottom_action_bar)).inflate();
            this.y = appFootActionBar;
            appFootActionBar.initShow(false);
            this.y.setOnFootOptBarClickListener(new FootOperationBar.n() {
                @Override
                public final void onItemClick(int i) {
                    this.b.o0(i);
                }
            });
            this.y.setListFlag(34);
            applyEditFootBarBottomInset(this.y);
        }
    }

    public boolean ingoreClickEvent() {
        return Math.abs(System.currentTimeMillis() - this.B) < 500;
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
        TextView textView = this.v;
        if (textView != null) {
            textView.setText(spannableString);
        }
    }

    public final void o0(int i) {
        H0(this.l.s());
    }

    @Override
    public boolean onBackPressed() {
        FileSelectViewModel fileSelectViewModel = this.n;
        if (fileSelectViewModel == null || !fileSelectViewModel.a()) {
            return super.onBackPressed();
        }
        this.n.c(false);
        return true;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.m = (TorrentItemViewModel) new ViewModelProvider(getActivity()).get(TorrentItemViewModel.class);
        this.n = (FileSelectViewModel) new ViewModelProvider(this).get(FileSelectViewModel.class);
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(com.transsion.magicvideo.R.attr.foot_bar_background, typedValue, true);
        this.A = typedValue.data;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_torrent_file_item, viewGroup, false);
    }

    @Override
    public void onPause() {
        super.onPause();
        this.m.J();
    }

    @Override
    public void onResume() {
        super.onResume();
        TorrentItemViewModel torrentItemViewModel = this.m;
        torrentItemViewModel.L(torrentItemViewModel.p().torrentId);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.needBg) {
            backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(com.transsion.audio.R.dimen.video_main_activity_fragment_top_padding));
        }
        this.o = (LinearLayout) view.findViewById(R.id.ll_title_select);
        this.p = (LinearLayout) view.findViewById(R.id.ll_title);
        this.r = (ImageView) view.findViewById(R.id.iv_close_select);
        this.s = (ImageView) view.findViewById(R.id.iv_back);
        this.t = (TextView) view.findViewById(R.id.tv_title_select);
        this.u = (TextView) view.findViewById(R.id.tv_title);
        this.w = (CheckBox) view.findViewById(R.id.cb_select);
        this.x = (RecyclerView) view.findViewById(R.id.rv_list);
        this.v = (TextView) view.findViewById(R.id.tv_size_info);
        this.q = (LinearLayout) view.findViewById(R.id.ll_size_info);
        D0();
        this.w.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.p0(view2);
            }
        });
        this.r.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.q0(view2);
            }
        });
        this.s.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.r0(view2);
            }
        });
        this.n.b(getViewLifecycleOwner(), new a());
        this.l = new TorrentItemFileAdapter(getContext(), px9.b(this.m.p().stateCode), this.m.p().torrentId, this.m);
        this.x.addOnItemTouchListener(new b());
        this.m.k().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.s0((Pair) obj);
            }
        });
        this.x.setLayoutManager(new LinearLayoutManager(getContext()));
        this.x.setAdapter(this.l);
        this.l.setOnItemClickListener(new c());
        this.l.setOnItemChildClickListener(new d());
        this.l.setOnItemChildLongClickListener(new e());
        this.m.C(this, new f());
        this.m.F(pk0.f().j(this.m.p().torrentId).isPaused());
        this.u.setText(this.m.p().name);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void s0(Pair pair) {
        RecyclerView recyclerView = this.x;
        if ((recyclerView != null && recyclerView.getScrollState() == 1) || this.z || pair == null || pair.second == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            S s = pair.second;
            if (i >= ((TorrentContentFileTree[]) s).length) {
                break;
            }
            if (!((TorrentContentFileTree[]) s)[i].getFilePriority().getType().equals(FilePriority.Type.IGNORE)) {
                if (((TorrentContentFileTree[]) pair.second)[i].size() > ((TorrentContentFileTree[]) pair.second)[i].getReceivedBytes()) {
                    arrayList.add(((TorrentContentFileTree[]) pair.second)[i]);
                    i2++;
                } else {
                    arrayList2.add(((TorrentContentFileTree[]) pair.second)[i]);
                    i3++;
                }
            }
            i++;
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new TorrentHeaderFileTree());
        if (i2 > 0) {
            arrayList3.add(new TorrentingFileTree());
        }
        arrayList3.addAll(arrayList);
        if (i3 > 0) {
            arrayList3.add(new TorrentedFileTree());
        }
        arrayList3.addAll(arrayList2);
        this.l.z(i3);
        this.l.A(i2);
        this.l.setNewData(arrayList3);
    }

    public final void w0(Set set, DialogInterface dialogInterface, int i) {
        String strL = this.m.l();
        final Priority[] filePriorities = pk0.f().j(strL).getFilePriorities();
        set.stream().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                TorrentItemFileFragment.v0(filePriorities, (TorrentContentFileTree) obj);
            }
        });
        pk0.f().p(strL, filePriorities);
        this.n.c(false);
    }
}
