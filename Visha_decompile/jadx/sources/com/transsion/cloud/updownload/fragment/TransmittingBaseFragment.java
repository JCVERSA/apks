package com.transsion.cloud.updownload.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.SpannableString;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.p004lifecycle.ViewModelStoreOwner;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.cloud.updownload.fragment.TransmittingBaseFragment;
import com.transsion.cloud.updownload.viewmodel.TransferDataViewModel;
import com.transsion.cloud.updownload.widgets.TransferOperationBar;
import com.transsion.cloud.upload.task.NewUploadTask;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.utils.TransferNotificationHelper;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.widgets.NotificationView;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.okdownload.NewDownloadTask;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import com.transsion.widgetslib.dialog.d;
import defpackage.b23;
import defpackage.cu4;
import defpackage.hb0;
import defpackage.hf7;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pz6;
import defpackage.ri4;
import defpackage.s44;
import defpackage.t74;
import defpackage.vb;
import defpackage.yx2;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;
import org.mozilla.javascript.ES6Iterator;

public class TransmittingBaseFragment extends PlayBaseFragment implements cu4 {
    public int A;
    public int B;
    public TextView C;
    public CheckBox D;
    public TransferOperationBar E;
    public VideoMainRecyclerView l;
    public RecyclerViewFastScroller m;
    public TransferDataViewModel n;
    public CustomGridLayoutManager o;
    public boolean p;
    public View r;
    public View s;
    public TextView t;
    public ViewGroup u;
    public NotificationView v;
    public d w;
    public boolean x;
    public SharedPreferences.OnSharedPreferenceChangeListener z;
    public ArrayList q = new ArrayList();
    public boolean y = true;
    public MainViewModel F = null;
    public final Observer G = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.G0((Boolean) obj);
        }
    };

    public class a implements Observer {
        public a() {
        }

        @Override
        public void onChanged(List list) {
            TransmittingBaseFragment.this.u0();
        }
    }

    public class b extends CustomGridLayoutManager {
        public b(Context context, int i) {
            super(context, i);
        }

        @Override
        public boolean canScrollVertically() {
            return super.canScrollVertically();
        }
    }

    public class c extends hf7 {
        public c(String str) {
            super(str);
        }

        @Override
        public void a(int i) {
            TransmittingBaseFragment transmittingBaseFragment = TransmittingBaseFragment.this;
            if (transmittingBaseFragment.E != null) {
                transmittingBaseFragment.r0(i);
            }
        }
    }

    public static Long C0(TransmittingBaseFragment transmittingBaseFragment) {
        return Long.valueOf(b23.l(yx2.f));
    }

    public void G0(Boolean bool) {
        notifyVideoBarShowStateChange(bool.booleanValue());
    }

    public static void K0(DialogInterface dialogInterface, int i) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addBottomBarShowStateObserver() {
        MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.F = mainViewModel;
        mainViewModel.g.observe(getViewLifecycleOwner(), this.G);
        notifyVideoBarShowStateChange(((Boolean) this.F.g.getValue()).booleanValue());
    }

    private String v0() {
        return this.mContext.getString(this.p ? R.string.visha_uploading_status : R.string.downloading_status);
    }

    public final void A0(boolean z) {
        s0();
        if (z && this.E != null && getActivity() != null) {
            this.mActivity.resetNavigationBarColor(false);
        } else {
            if (z || getActivity() == null) {
                return;
            }
            this.mActivity.resetNavigationBarColor(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void B0(final boolean z) {
        inflateOperationBar();
        TransferOperationBar transferOperationBar = this.E;
        if (transferOperationBar != null) {
            transferOperationBar.setVisibility(z ? 0 : 8);
            if (z) {
                applyEditFootBarBottomInset(this.E);
            }
            this.E.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.A0(z);
                }
            });
        }
        TextView textView = this.t;
        if (textView != null) {
            textView.setVisibility(z ? 8 : 0);
        }
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null && z) {
            dVar.a(true);
        }
        this.mActivity.enterEditMode(z, 1003, true);
        RecyclerViewFastScroller recyclerViewFastScroller = this.m;
        if (recyclerViewFastScroller != null) {
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) recyclerViewFastScroller.getLayoutParams();
            if (z || z0()) {
                layoutParams.bottomToTop = R.id.transfer_bottom_bar;
            } else {
                layoutParams.bottomToTop = R.id.tv_size_info;
            }
            this.m.setLayoutParams(layoutParams);
        }
        notifyVideoBarShowStateChange(((Boolean) this.F.g.getValue()).booleanValue());
    }

    public final void D0(Long l) {
        SpannableString spannableStringB = s44.b(this.mContext, l.longValue());
        TextView textView = this.t;
        if (textView != null) {
            textView.setText(spannableStringB);
        }
    }

    public final void E0(View view) {
        hb0.markDirect("dl_manager_downloading_nf_cl");
        TransferNotificationHelper.r(getContext(), null);
    }

    public final void F0(View view) {
        if (!this.isInEditMode) {
            BaseActivity baseActivity = this.mActivity;
            if (baseActivity != null) {
                baseActivity.onBackPressed();
                return;
            }
            return;
        }
        editMode(false);
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null) {
            dVar.a(false);
        }
    }

    public final void H0(boolean z) {
        if (resolveNavigationBarInsetPx() > 0) {
            notifyVideoBarShowStateChange(z);
        }
    }

    public final void I0() {
        if (this.p) {
            this.n.m();
        } else {
            this.n.j();
        }
        LiveEventBus.b().c("downloading_delete", Boolean.TRUE);
    }

    public final void J0(List list, DialogInterface dialogInterface, int i) {
        M0(list, this.p);
        if (this.isInEditMode) {
            editMode(false);
            PlayBaseFragment.d dVar = this.mEditModeListener;
            if (dVar != null) {
                dVar.a(false);
            }
        }
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                this.b.I0();
            }
        });
    }

    public int L0(int i) {
        if (i == 0) {
            return 5;
        }
        if (i == 1) {
            return 2;
        }
        if (i == 3) {
            if (pz6.c(MainApp.w)) {
                return 3;
            }
        } else {
            if (i == 2) {
                return 1;
            }
            if (i == 4) {
                return 4;
            }
        }
        return 0;
    }

    public final void M0(List list, boolean z) {
        if (list == null || list.isEmpty()) {
            Log.d("visha_cloud_TransmittingBaseFragment", "No tasks to remove");
            return;
        }
        for (Object obj : new ArrayList(list)) {
            if (z) {
                try {
                    if (obj instanceof NewUploadTask) {
                        ri4.e().m((NewUploadTask) obj);
                    }
                } catch (Exception e) {
                    Log.e("visha_cloud_TransmittingBaseFragment", "Failed to remove task: " + e.getMessage());
                }
            }
            if (!z && (obj instanceof NewDownloadTask)) {
                GlobalDownloadManger.B().u((NewDownloadTask) obj);
            }
        }
    }

    public void N0(int i) {
        this.A = i;
        if (this.C != null && getContext() != null) {
            if (i == 0) {
                this.C.setText(getContext().getString(com.transsion.playercommon.R.string.none_select));
            } else {
                this.C.setText(getContext().getString(i > 1 ? com.transsion.playercommon.R.string.items : com.transsion.playercommon.R.string.item, Integer.valueOf(i)));
            }
        }
        s0();
    }

    public void O0(final List list) {
        String string;
        if (list == null) {
            return;
        }
        if (list.size() > 1) {
            string = this.mContext.getString(this.p ? R.string.visha_cancel_upload_tasks_confirm : R.string.visha_cancel_download_tasks_confirm, Integer.valueOf(list.size()));
        } else {
            string = this.mContext.getString(this.p ? R.string.visha_cancel_upload_task_confirm : R.string.visha_cancel_download_task_confirm);
        }
        d dVarA = new d.a(this.mContext).k(string).u(R.string.ok, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.J0(list, dialogInterface, i);
            }
        }).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                TransmittingBaseFragment.K0(dialogInterface, i);
            }
        }).a();
        this.w = dVarA;
        dVarA.show();
    }

    public void P0(List list) {
        d dVar;
        this.q.clear();
        this.q.addAll(list);
        t0(list);
        updateUiForDataChanged();
        y0();
        if ((list == null || list.isEmpty()) && (dVar = this.w) != null && dVar.isShowing()) {
            this.w.dismiss();
        }
        if (this.isInEditMode) {
            N0(this.A);
        }
        if (this.isInEditMode) {
            if (list == null || list.isEmpty()) {
                editMode(false);
                PlayBaseFragment.d dVar2 = this.mEditModeListener;
                if (dVar2 != null) {
                    dVar2.a(false);
                }
            }
        }
    }

    @Override
    public void b(int i) {
        N0(i);
    }

    public void c(boolean z) {
    }

    @Override
    public void editMode(final boolean z) {
        this.isInEditMode = z;
        CheckBox checkBox = this.D;
        if (checkBox != null) {
            checkBox.setVisibility(z ? 0 : 8);
            this.D.setChecked(false);
        }
        if (this.mBackIv != null) {
            updateBackIcon(z);
        }
        TextView textView = this.C;
        if (textView != null) {
            if (z) {
                textView.setText(R.string.none_select);
            } else {
                textView.setText(v0());
            }
        }
        if (getActivity() == null) {
            return;
        }
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.B0(z);
            }
        });
    }

    @Override
    public void inflateOperationBar() {
        View view;
        if (this.E != null || (view = this.s) == null) {
            return;
        }
        TransferOperationBar transferOperationBar = (TransferOperationBar) ((ViewStub) view.findViewById(R.id.transfer_bottom_action_bar)).inflate();
        this.E = transferOperationBar;
        transferOperationBar.initMenu(this.p ? 2 : 3);
        this.E.setOnFootOptBarClickListener(new c("visha_cloud_TransmittingBaseFragment"));
        applyEditFootBarBottomInset(this.E);
    }

    @Override
    public void initTitleBar(View view) {
        this.mBackIv = view.findViewById(R.id.title_bar_back);
        TextView textView = (TextView) view.findViewById(R.id.title_bar_title);
        this.C = textView;
        textView.setText(v0());
        this.D = (CheckBox) view.findViewById(R.id.title_bar_checkBox);
        this.mBackIv.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.F0(view2);
            }
        });
    }

    public void initView(View view) {
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
    }

    @Override
    public void markPointVisiable(boolean z) {
        super.markPointVisiable(z);
    }

    public void notifyVideoBarShowStateChange(final boolean z) {
        BaseActivity baseActivity;
        TextView textView;
        Log.d("visha_cloud_TransmittingBaseFragment", "notifyVideoBarShowStateChange :" + z);
        int iResolveNavigationBarInsetPx = resolveNavigationBarInsetPx();
        if (this.t != null) {
            int i = (isFoldScreen() && z && !this.isInEditMode) ? 85 : 0;
            TextView textView2 = this.t;
            textView2.setPadding(textView2.getPaddingStart(), this.t.getPaddingTop(), this.t.getPaddingEnd(), com.transsion.utils.a.d(this.mContext, i) + iResolveNavigationBarInsetPx);
        }
        if (this.isInEditMode) {
            applyEditFootBarBottomInset(this.E);
        }
        if (z0() && this.m != null) {
            int i2 = (isFoldScreen() && z && !this.isInEditMode) ? 60 : 0;
            RecyclerViewFastScroller recyclerViewFastScroller = this.m;
            recyclerViewFastScroller.setPadding(recyclerViewFastScroller.getPaddingStart(), this.m.getPaddingTop(), this.m.getPaddingEnd(), com.transsion.utils.a.d(this.mContext, i2) + (this.isInEditMode ? 0 : iResolveNavigationBarInsetPx));
        }
        if (iResolveNavigationBarInsetPx != 0 || (baseActivity = this.mActivity) == null || baseActivity.getApplicationInfo().targetSdkVersion < 36 || (textView = this.t) == null) {
            return;
        }
        textView.post(new Runnable() {
            @Override
            public final void run() {
                this.b.H0(z);
            }
        });
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.x = arguments.getBoolean("support_theme_background", true);
            this.p = arguments.getBoolean("transmit_upload_type", false);
        }
        TransferDataViewModel transferDataViewModel = (TransferDataViewModel) new ViewModelProvider((ViewModelStoreOwner) getContext(), new ViewModelProvider.NewInstanceFactory()).get(TransferDataViewModel.class);
        this.n = transferDataViewModel;
        if (this.p) {
            return;
        }
        transferDataViewModel.getSmartDownloadedTaskLiveData().observe(this, new a());
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.s = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public int onLayoutId() {
        return R.layout.transfer_fragment_trasmitting_layout;
    }

    @Override
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        ArrayList arrayList = this.q;
        w0(arrayList == null || arrayList.isEmpty());
    }

    @Override
    public void onStart() {
        super.onStart();
        this.n.j();
        y0();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        initTitleBar(view);
        this.l = (VideoMainRecyclerView) view.findViewById(R.id.rv_main_fragment);
        this.m = (RecyclerViewFastScroller) view.findViewById(com.transsion.magicvideo.R.id.rv_fast_scroller);
        TextView textView = (TextView) view.findViewById(R.id.tv_size_info);
        this.t = textView;
        textView.setVisibility(this.p ? 8 : 0);
        if (!this.p) {
            TypedValue typedValue = new TypedValue();
            this.mActivity.getTheme().resolveAttribute(R.attr.OsBgPrimary, typedValue, true);
            this.t.setBackgroundColor(this.mActivity.getResources().getColor(typedValue.resourceId));
        }
        this.v = (NotificationView) view.findViewById(R.id.notify_view);
        this.o = new b(getContext(), 1);
        initView(view);
        this.l.setLayoutManager(this.o);
        this.l.setType("download");
        OverScrollDecorHelper.setUpOverScroll(this.l, 0);
        x0();
        u0();
        addBottomBarShowStateObserver();
    }

    public final void q0() {
        View view = this.r;
        if (view != null) {
            view.setPadding(0, 0, 0, this.mActivity.isInMultiWindowMode() ? this.mEmptyPaddingBottomInMulti : this.mEmptyPaddingBottom);
        }
    }

    public void r0(int i) {
    }

    public void s0() {
    }

    public void t0(List list) {
    }

    public void u0() {
        if (this.p) {
            return;
        }
        mc7.K(this).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return TransmittingBaseFragment.C0((TransmittingBaseFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.D0((Long) obj);
            }
        });
    }

    public void w0(boolean z) {
        View view;
        if (this.r == null && (view = this.s) != null) {
            try {
                View viewInflate = ((ViewStub) view.findViewById(R.id.main_empty_view)).inflate();
                this.r = viewInflate;
                ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(R.id.ll_empty_view);
                this.u = viewGroup;
                int i = R.string.file_empty;
                viewGroup.setContentDescription(getString(i));
                TextView textView = (TextView) this.r.findViewById(R.id.text_no_videos);
                ((ImageView) this.r.findViewById(R.id.lottie_no_videos_view)).setImageResource(this.p ? com.transsion.common.R.drawable.ic_video_empty_illustration : com.transsion.common.R.drawable.ic_file_empty_illustration);
                if (this.p) {
                    i = R.string.visha_no_video_uploaded;
                }
                textView.setText(i);
            } catch (Exception e) {
                Log.e("visha_cloud_TransmittingBaseFragment", "inflateEmptyView exception" + e.getMessage());
            }
        }
        q0();
        View view2 = this.r;
        if (view2 != null) {
            view2.setVisibility(z ? 0 : 8);
        }
        if (z) {
            hb0.markTrackSingle("dl_manager_godl_show", ES6Iterator.VALUE_PROPERTY, 1);
        }
    }

    public void x0() {
    }

    public void y0() {
        int i = 8;
        if (this.p) {
            this.v.setVisibility(8);
            return;
        }
        boolean zP = TransferNotificationHelper.p(getContext());
        ArrayList arrayList = this.q;
        boolean z = arrayList != null && arrayList.isEmpty();
        NotificationView notificationView = this.v;
        if (!zP && !z) {
            i = 0;
        }
        notificationView.setVisibility(i);
        if (this.v.getVisibility() == 0) {
            hb0.markDirect("dl_manager_downloading_nf_show");
        }
        this.v.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.E0(view);
            }
        });
    }

    public boolean z0() {
        return this.p;
    }
}
