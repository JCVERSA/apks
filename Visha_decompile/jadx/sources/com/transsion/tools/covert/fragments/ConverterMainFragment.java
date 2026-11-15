package com.transsion.tools.covert.fragments;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.p003activity.result.ActivityResult;
import androidx.p003activity.result.ActivityResultCallback;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p003activity.result.contract.ActivityResultContracts;
import androidx.p004lifecycle.Observer;
import androidx.viewpager.widget.ViewPager;
import com.transsion.audio.activities.AudioSheetDialogActivity;
import com.transsion.audio.widgets.AudioAppFootActionBar;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.magicvideo.R;
import com.transsion.playercommon.adapter.RtlPageAdapter;
import com.transsion.playercommon.convert.ConvertingTaskManager;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.playercommon.widgets.AppFootActionBar;
import com.transsion.tools.covert.fragments.ConverterMainFragment;
import com.transsion.widgets.CustomTabLayout;
import com.transsion.widgets.RtlViewPager;
import com.transsion.widgetslib.view.OSBigButton;
import com.transsion.widgetslib.widget.FootOperationBar;
import defpackage.a64;
import defpackage.h27;
import defpackage.hb0;
import defpackage.hf7;
import defpackage.lpb;
import defpackage.p06;
import defpackage.pp3;
import defpackage.t08;
import defpackage.vg9;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;

public class ConverterMainFragment extends PlayBaseFragment implements FootOperationBar.n, ConvertingTaskManager.c {
    public ConstraintLayout A;
    public PlayListModel B;
    public MainViewModel C;
    public Button l;
    public List m;
    public RtlViewPager n;
    public CustomTabLayout o;
    public View p;
    public View q;
    public AudioAppFootActionBar r;
    public View s;
    public View t;
    public ArrayList u;
    public int v;
    public View w;
    public View x;
    public boolean y = false;
    public boolean z = false;
    public final Observer D = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.I0((Boolean) obj);
        }
    };
    public PlayBaseFragment.d E = new f();
    public ActivityResultLauncher F = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() {
        @Override
        public final void onActivityResult(Object obj) {
            ((ActivityResult) obj).getResultCode();
        }
    });

    public class a implements View.OnLayoutChangeListener {
        public final View b;

        public a(View view) {
            this.b = view;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.b.removeOnLayoutChangeListener(this);
            int width = view.getWidth();
            if (width <= 0) {
                return;
            }
            int iMin = Math.min((int) (width * 0.3f), com.transsion.utils.a.d(ConverterMainFragment.this.requireContext(), 320.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) ConverterMainFragment.this.l.getLayoutParams();
            layoutParams.width = iMin;
            layoutParams.gravity = 1;
            ConverterMainFragment.this.l.setLayoutParams(layoutParams);
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            ConverterMainFragment.this.R0(false);
        }
    }

    public class c implements BaseFragment.d {
        public c() {
        }

        @Override
        public void a(boolean z) {
            if (ConverterMainFragment.this.n.getCurrentItem() == 0) {
                ConverterMainFragment.this.Q0(z);
            }
        }
    }

    public class d implements ViewPager.OnPageChangeListener {
        public d() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override
        public void onPageSelected(int i) {
            boolean z = false;
            if (i != 0) {
                ConverterMainFragment.this.Q0(false);
                return;
            }
            BaseFragment baseFragmentB0 = ConverterMainFragment.this.B0(0);
            if (baseFragmentB0 instanceof ConvertedFragment) {
                ConvertedFragment convertedFragment = (ConvertedFragment) baseFragmentB0;
                z = !convertedFragment.P0();
                convertedFragment.H2();
            }
            ConverterMainFragment.this.Q0(z);
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View view) {
            ConverterMainFragment converterMainFragment = ConverterMainFragment.this;
            BaseFragment baseFragmentB0 = converterMainFragment.B0(converterMainFragment.n.getCurrentItem());
            if (baseFragmentB0 instanceof PlayBaseFragment) {
                ((PlayBaseFragment) baseFragmentB0).selectAll(((PlayBaseFragment) ConverterMainFragment.this).mAllCheckBox.isChecked());
            }
        }
    }

    public class f implements PlayBaseFragment.d {
        public f() {
        }

        @Override
        public void a(boolean z) {
            ConverterMainFragment.this.R0(z);
        }

        @Override
        public void b(ArrayList arrayList, boolean z, boolean z2) {
            if (((PlayBaseFragment) ConverterMainFragment.this).mEditModeListener != null) {
                ((PlayBaseFragment) ConverterMainFragment.this).mEditModeListener.b(arrayList, z, z2);
            }
            ConverterMainFragment.this.u = arrayList;
            int size = arrayList.size();
            ((PlayBaseFragment) ConverterMainFragment.this).mAllCheckBox.setChecked(z);
            if (size == 0) {
                ((PlayBaseFragment) ConverterMainFragment.this).mTitleTv.setText(ConverterMainFragment.this.getContext().getString(R.string.none_select));
            } else {
                ((PlayBaseFragment) ConverterMainFragment.this).mTitleTv.setText(ConverterMainFragment.this.getContext().getString(size > 1 ? R.string.items : R.string.item, Integer.valueOf(size)));
            }
            AudioAppFootActionBar audioAppFootActionBar = ConverterMainFragment.this.r;
            if (audioAppFootActionBar != null) {
                audioAppFootActionBar.setAllEnable((size == 0 || z2) ? false : true);
            }
        }

        @Override
        public void d(boolean z, int i, boolean z2) {
            ConverterMainFragment.this.R0(z);
        }
    }

    public class g extends hf7 {
        public g(String str) {
            super(str);
        }

        @Override
        public void a(int i) {
            b(i == 0 ? 1000 : 500);
            ConverterMainFragment.this.onItemClick(i);
        }
    }

    public BaseFragment B0(int i) {
        List list = this.m;
        if (list == null || list.isEmpty() || i < 0 || i >= this.m.size()) {
            return null;
        }
        return (BaseFragment) this.m.get(i);
    }

    private void C0(boolean z) {
        int i;
        boolean zC = t08.c(this.mContext);
        if (!z && this.w == null) {
            View viewInflate = ((ViewStub) this.s.findViewById(com.transsion.tools.R.id.activity_empty_view)).inflate();
            this.w = viewInflate;
            viewInflate.setContentDescription(getString(com.transsion.sniffer_load.R.string.file_empty));
            ((ImageView) this.w.findViewById(com.transsion.tools.R.id.lottie_no_videos_view)).setImageResource(com.transsion.common.R.drawable.ic_file_empty_illustration);
        }
        View view = this.w;
        if (view != null) {
            TextView textView = (TextView) view.findViewById(com.transsion.tools.R.id.text_no_videos);
            TextView textView2 = (TextView) this.w.findViewById(com.transsion.tools.R.id.add_video_tv);
            if (zC) {
                textView.setText(com.transsion.tools.R.string.file_empty);
                textView2.setVisibility(4);
            } else {
                Resources resources = getResources();
                if (pp3.t) {
                    i = pp3.c ? R.string.permission_all_file_1_pre : R.string.permission_all_file_1;
                } else {
                    i = pp3.c ? R.string.permission_write_extenal_1_pre : R.string.permission_write_extenal_1;
                }
                textView.setText(resources.getString(i));
                textView2.setVisibility(0);
                textView2.setText(R.string.permission_go);
                textView2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        this.b.G0(view2);
                    }
                });
            }
        }
        this.n.setVisibility(z ? 0 : 8);
        this.t.setVisibility(z ? 0 : 8);
        View view2 = this.w;
        if (view2 != null) {
            view2.setVisibility(z ? 8 : 0);
        }
    }

    private void D0() {
        this.m = new ArrayList();
        ConvertedFragment convertedFragment = (ConvertedFragment) ConvertedFragment.G2(this.v).setBaseActivity(this.mActivity);
        convertedFragment.setEditModeListener(this.E);
        convertedFragment.setDragAnimationView(this.A);
        convertedFragment.setMenuShowListener(new c());
        this.m.add(convertedFragment);
        ConvertingFragment convertingFragment = (ConvertingFragment) new ConvertingFragment().setBaseActivity(this.mActivity);
        convertingFragment.setEditModeListener(this.E);
        this.m.add(convertingFragment);
        this.n.setAdapter(new RtlPageAdapter(getChildFragmentManager(), this.m, getResources().getStringArray(com.transsion.tools.R.array.video_convert_menu)));
        this.o.setupWithViewPager(this.n);
        if (this.v != 0 && ConvertingTaskManager.j().n(this.v)) {
            E0();
        }
        S0(ConvertingTaskManager.j().l().size());
        this.n.addOnPageChangeListener(new d());
    }

    public void G0(View view) {
        t08.l(getActivity());
    }

    public void I0(Boolean bool) {
        notifyVideoBarShowStateChange(bool.booleanValue());
    }

    public static Integer L0(MediaItem mediaItem) {
        return Integer.valueOf(mediaItem.id);
    }

    public static void M0(View view) {
        h27.c().e(1024, view, Boolean.TRUE);
    }

    public static ConverterMainFragment O0(int i) {
        ConverterMainFragment converterMainFragment = new ConverterMainFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("video_to_mp3_item_id", i);
        converterMainFragment.setArguments(bundle);
        return converterMainFragment;
    }

    public void R0(boolean z) {
        this.isInEditMode = z;
        inflateOperationBar();
        this.n.setCanScroll(!z);
        AudioAppFootActionBar audioAppFootActionBar = this.r;
        if (audioAppFootActionBar != null) {
            audioAppFootActionBar.initShow(z);
            this.r.setVisibility(z ? 0 : 8);
            if (z) {
                applyEditFootBarBottomInset(this.r);
                this.r.openFootOperationBar();
                this.r.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.N0();
                    }
                });
            } else {
                this.r.closeFootOperationBar();
            }
        }
        this.mBackIv.setVisibility(z ? 8 : 0);
        this.mAllCheckBox.setVisibility(z ? 0 : 8);
        this.mAllCheckBox.setOnClickListener(new e());
        this.p.setVisibility(z ? 0 : 8);
        this.q.setEnabled(!z);
        this.q.setAlpha(z ? 0.4f : 1.0f);
        this.o.setTabChildEnable(!z);
        this.l.setVisibility(z ? 8 : 0);
        if (!z) {
            this.mTitleTv.setText(com.transsion.playercommon.R.string.convert_to_audio);
            BaseFragment baseFragmentB0 = B0(this.n.getCurrentItem());
            if (baseFragmentB0 instanceof PlayBaseFragment) {
                ((PlayBaseFragment) baseFragmentB0).editMode(false);
            }
        }
        MainViewModel mainViewModel = this.C;
        if (mainViewModel != null) {
            notifyVideoBarShowStateChange(Boolean.TRUE.equals(mainViewModel.g.getValue()));
        }
    }

    private void T0() {
        boolean zC = t08.c(this.mContext);
        Button button = this.l;
        if (button != null) {
            button.setVisibility((!zC || this.isInEditMode) ? 8 : 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addBottomBarShowStateObserver() {
        MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.C = mainViewModel;
        mainViewModel.g.observe(getViewLifecycleOwner(), this.D);
        notifyVideoBarShowStateChange(((Boolean) this.C.g.getValue()).booleanValue());
    }

    public void A0(boolean z) {
        ArrayList arrayList = this.u;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        Set set = (Set) this.u.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((MediaItem) obj).data;
            }
        }).collect(Collectors.toSet());
        if (z) {
            AudioFilterUtils.i(set);
            hb0.markDirect("vd_mul_cancel_filt_cl");
        } else {
            AudioFilterUtils.k(set);
            hb0.markDirect("vd_mul_filt_cl");
        }
        editMode(false);
        h27.c().e(1109, new Object[0]);
    }

    public final void E0() {
        if (this.n == null || !isAdded() || getChildFragmentManager().isStateSaved()) {
            return;
        }
        this.n.post(new Runnable() {
            @Override
            public final void run() {
                this.b.H0();
            }
        });
    }

    public final void H0() {
        RtlViewPager rtlViewPager = this.n;
        if (rtlViewPager == null || rtlViewPager.getAdapter() == null || !isAdded() || getChildFragmentManager().isStateSaved()) {
            return;
        }
        this.n.setCurrentItem(1, false);
    }

    public final void K0() {
        R0(false);
        for (Fragment fragment : this.m) {
            if (fragment instanceof BaseFragment) {
                ((BaseFragment) fragment).refresh();
            }
        }
    }

    public final void N0() {
        applyEditFootBarBottomInset(this.r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void P0(int i) {
        this.r.setOperateFinishListener(new AppFootActionBar.c() {
            @Override
            public final void finish() {
                this.a.K0();
            }
        });
        if (i == 0) {
            this.r.preShare(false);
            p06.f0(null, "vd_mul_share_cl", 932460000041L);
            return;
        }
        if (i == 1) {
            A0(false);
            return;
        }
        if (i != 2) {
            if (i != 3) {
                return;
            }
            FileOperateUtils fileOperateUtils = new FileOperateUtils(this.mContext, this.u, 31, true);
            this.mFileOperateUtils = fileOperateUtils;
            this.r.setFileOperateUtils(fileOperateUtils);
            this.r.preDelete(0, this.u, false);
            p06.f0(null, "vd_mul_del_cl", 932460000040L);
            return;
        }
        ArrayList arrayList = this.u;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.u.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ConverterMainFragment.L0((MediaItem) obj);
            }
        }).collect(Collectors.toList());
        Intent intent = new Intent();
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS, arrayList2);
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, 31);
        vg9.e((ArrayList) this.B.d().getValue());
        vg9.f(this.u);
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, false);
        intent.setClass(this.mActivity, AudioSheetDialogActivity.class);
        this.F.launch(intent);
    }

    public final void Q0(boolean z) {
        this.q.setVisibility(z ? 0 : 4);
    }

    public final void S0(int i) {
        CustomTabLayout customTabLayout = this.o;
        if (customTabLayout != null) {
            customTabLayout.showBadgeView(1, i > 0);
            if (i > 0) {
                this.o.updateBadgeView(1, i);
            }
        }
    }

    public final void U0() {
        Button button = this.l;
        if (button == null) {
            return;
        }
        if (button instanceof OSBigButton) {
            ((OSBigButton) button).setMinButtonHeightDp(46);
        }
        View view = (View) this.l.getParent();
        if (view == null) {
            return;
        }
        view.addOnLayoutChangeListener(new a(view));
    }

    @Override
    public void a(int i) {
        S0(i);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i == 1081) {
            T0();
            return;
        }
        if (i == 1104) {
            E0();
            return;
        }
        boolean z = true;
        if (i == 1085) {
            boolean zBooleanValue = ((Boolean) objArr[0]).booleanValue();
            this.z = !zBooleanValue;
            if (!this.y && zBooleanValue) {
                z = false;
            }
            C0(z);
            return;
        }
        if (i == 1086 && objArr != null) {
            boolean zBooleanValue2 = ((Boolean) objArr[0]).booleanValue();
            this.y = !zBooleanValue2;
            if (zBooleanValue2 && !this.z) {
                z = false;
            }
            C0(z);
        }
    }

    @Override
    public void inflateOperationBar() {
        super.inflateOperationBar();
        if (this.r == null) {
            AudioAppFootActionBar audioAppFootActionBar = (AudioAppFootActionBar) ((ViewStub) this.s.findViewById(com.transsion.tools.R.id.bottom_convert_action_bar)).inflate();
            this.r = audioAppFootActionBar;
            audioAppFootActionBar.setOnFootOptBarClickListener(this);
            this.r.setOnFootOptBarClickListener(new g("ConverterMainFragment"));
            this.r.setListFlag(31);
            applyEditFootBarBottomInset(this.r);
        }
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1081);
        this.mEvents.add(1104);
        this.mEvents.add(1086);
        this.mEvents.add(1085);
    }

    @Override
    public void initTitleBar(View view) {
        super.initTitleBar(view);
        this.mTitleBarLayout.setVisibility(0);
        this.p = view.findViewById(com.transsion.tools.R.id.title_bar_close_multiple_select);
        this.mTitleTv.setText(com.transsion.playercommon.R.string.convert_to_audio);
        this.p.setOnClickListener(new b());
    }

    public void notifyVideoBarShowStateChange(boolean z) {
        Log.d("ConverterMainFragment", "notifyVideoBarShowStateChange :" + z);
        View view = this.x;
        if (view == null) {
            return;
        }
        if (!this.isInEditMode) {
            applyPaddingBottomWithNav(view, com.transsion.utils.a.d(this.mContext, z ? 60.0f : 0.0f));
        } else if (view.getPaddingBottom() != 0) {
            View view2 = this.x;
            view2.setPadding(view2.getPaddingStart(), this.x.getPaddingTop(), this.x.getPaddingEnd(), 0);
        }
    }

    @Override
    public boolean onBackPressed() {
        if (!this.isInEditMode) {
            return super.onBackPressed();
        }
        R0(false);
        return true;
    }

    @Override
    public void onClick(View view) {
        super.onClick(view);
        if (view.getId() != com.transsion.tools.R.id.select_and_convert || lpb.g()) {
            return;
        }
        SelectVideoMainFragment selectVideoMainFragment = (SelectVideoMainFragment) new SelectVideoMainFragment().setBaseActivity(this.mActivity);
        selectVideoMainFragment.setNeedBg(true);
        a64.n(selectVideoMainFragment, true, true);
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (com.transsion.utils.a.A()) {
            U0();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.v = arguments.getInt("video_to_mp3_item_id");
        }
        this.mActivity.setInConvertPage(true);
        this.B = (PlayListModel) getViewModelByActivity(PlayListModel.class);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.s = super.onCreateView(layoutInflater, viewGroup, bundle);
        ConvertingTaskManager.j().L("ConverterMainFragment", this);
        return this.s;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.s = null;
        this.r = null;
        ConvertingTaskManager.j().G("ConverterMainFragment");
        this.mActivity.setInConvertPage(false);
        for (Fragment fragment : this.m) {
            if (fragment instanceof PlayBaseFragment) {
                PlayBaseFragment playBaseFragment = (PlayBaseFragment) fragment;
                playBaseFragment.setEditModeListener(null);
                playBaseFragment.setDragAnimationView(null);
            }
        }
        List list = this.m;
        if (list != null) {
            list.clear();
        }
        RtlViewPager rtlViewPager = this.n;
        if (rtlViewPager != null) {
            rtlViewPager.setAdapter(null);
        }
    }

    @Override
    public void onFinishRequestPermission(int i, boolean z) {
        super.onFinishRequestPermission(i, z);
        for (Fragment fragment : this.m) {
            if (fragment instanceof BaseFragment) {
                BaseFragment.cast(fragment).onFinishRequestPermission(i, z);
            }
        }
    }

    @Override
    public void onItemClick(int i) {
        this.r.setSelectItems(this.u);
        P0(i);
    }

    @Override
    public int onLayoutId() {
        return com.transsion.utils.a.A() ? com.transsion.tools.R.layout.converter_main_manager_tablet : com.transsion.tools.R.layout.converter_main_manager;
    }

    @Override
    public void onResume() {
        super.onResume();
        T0();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(com.transsion.tools.R.dimen.video_main_activity_fragment_top_padding));
        this.A = (ConstraintLayout) view.findViewById(com.transsion.tools.R.id.cl_drag_animation_view);
        this.x = view.findViewById(com.transsion.tools.R.id.container_ll);
        this.l = (Button) view.findViewById(com.transsion.tools.R.id.select_and_convert);
        this.n = (RtlViewPager) view.findViewById(com.transsion.tools.R.id.viewpager);
        this.o = (CustomTabLayout) view.findViewById(com.transsion.tools.R.id.tab_layout);
        this.t = view.findViewById(com.transsion.tools.R.id.tab_ll);
        this.l.setOnClickListener(this);
        if (com.transsion.utils.a.A()) {
            U0();
        }
        View viewFindViewById = view.findViewById(com.transsion.tools.R.id.audio_convert_sort);
        this.q = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                ConverterMainFragment.M0(view2);
            }
        });
        initTitleBar(view);
        D0();
        addBottomBarShowStateObserver();
    }
}
