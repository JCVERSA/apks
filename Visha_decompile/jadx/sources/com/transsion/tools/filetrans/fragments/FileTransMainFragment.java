package com.transsion.tools.filetrans.fragments;

import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.markpoint.a;
import com.transsion.effectengine.bounceeffect.IOverScrollDecor;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.RtlPageAdapter;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.push.PushConstants;
import com.transsion.tools.R;
import com.transsion.tools.filetrans.fragments.FileTransMainFragment;
import com.transsion.widgets.CustomTabLayout;
import com.transsion.widgets.RtlViewPager;
import defpackage.h27;
import defpackage.kdc;
import defpackage.mu3;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@RequiresApi(29)
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u0000 c2\u00020\u00012\u00020\u0002:\u0001dB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0015\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\nJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J+\u0010!\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u000f2\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001f0\u001e\"\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0019\u0010%\u001a\u00020\u00052\b\u0010$\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0007H\u0016¢\u0006\u0004\b'\u0010(J\r\u0010)\u001a\u00020\u0007¢\u0006\u0004\b)\u0010(J\u001f\u0010-\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u0007H\u0002¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0005H\u0002¢\u0006\u0004\b/\u0010\u0004R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R*\u0010E\u001a\u0016\u0012\u0004\u0012\u00020A\u0018\u00010@j\n\u0012\u0004\u0012\u00020A\u0018\u0001`B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010M\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010Q\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0018\u0010U\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR$\u0010W\u001a\u0012\u0012\u0004\u0012\u00020*0@j\b\u0012\u0004\u0012\u00020*`B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010DR$\u0010X\u001a\u0012\u0012\u0004\u0012\u00020\u000f0@j\b\u0012\u0004\u0012\u00020\u000f`B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010DR\u0018\u0010\\\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010\r\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u001a\u0010b\u001a\b\u0012\u0004\u0012\u00020\u00070_8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b`\u0010a¨\u0006e"}, d2 = {"Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;", "Lcom/transsion/playercommon/fragments/PlayBaseFragment;", "Landroid/view/View$OnClickListener;", MethodDecl.initName, "()V", "Lzfb;", "addBottomBarShowStateObserver", "", PushConstants.PUSH_SERVICE_TYPE_SHOW, "notifyVideoBarShowStateChange", "(Z)V", "r0", "k0", "mIsHistory", "p0", "", "onLayoutId", "()I", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "v", "onClick", "(Landroid/view/View;)V", "onResume", "initEvents", "eventId", "", "", "args", "didReceivedNotification", "(I[Ljava/lang/Object;)V", "Landroid/view/animation/Animation;", "animator", "onFragmentAnimationEnd", "(Landroid/view/animation/Animation;)V", "onBackPressed", "()Z", "j0", "Lcom/transsion/dbdata/beans/media/MediaItem;", "mediaItem", "add", "o0", "(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V", "q0", "Landroid/widget/LinearLayout;", CmcdData.STREAM_TYPE_LIVE, "Landroid/widget/LinearLayout;", "mContainer", "Lcom/transsion/widgets/CustomTabLayout;", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/transsion/widgets/CustomTabLayout;", "mOsTabLayout", "Lcom/transsion/widgets/RtlViewPager;", "n", "Lcom/transsion/widgets/RtlViewPager;", "mViewPager", "Lcom/transsion/playercommon/adapter/RtlPageAdapter;", "o", "Lcom/transsion/playercommon/adapter/RtlPageAdapter;", "mVideosPageAdapter", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", TtmlNode.TAG_P, "Ljava/util/ArrayList;", "mFragments", "Landroid/widget/ImageView;", "q", "Landroid/widget/ImageView;", "mCloseIv", "Landroid/widget/FrameLayout;", "r", "Landroid/widget/FrameLayout;", "mLlSort", "Landroid/widget/TextView;", "s", "Landroid/widget/TextView;", "mTvSelectCount", "Landroid/widget/Button;", "t", "Landroid/widget/Button;", "mStartSendBt", "u", "mSelectMediaItems", "mSelectMediaItemIds", "Lcom/transsion/playercommon/videomodel/MainViewModel;", "w", "Lcom/transsion/playercommon/videomodel/MainViewModel;", "mMainViewModel", "x", "Z", "Landroidx/lifecycle/Observer;", "y", "Landroidx/lifecycle/Observer;", "mBottomBarShowStateObserver", "z", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "tools_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class FileTransMainFragment extends PlayBaseFragment implements View.OnClickListener {

    public LinearLayout mContainer;

    public CustomTabLayout mOsTabLayout;

    public RtlViewPager mViewPager;

    public RtlPageAdapter mVideosPageAdapter;

    public ArrayList mFragments;

    public ImageView mCloseIv;

    public FrameLayout mLlSort;

    public TextView mTvSelectCount;

    public Button mStartSendBt;

    public MainViewModel mMainViewModel;

    public boolean mIsHistory;

    public final ArrayList mSelectMediaItems = new ArrayList();

    public final ArrayList mSelectMediaItemIds = new ArrayList();

    public final Observer mBottomBarShowStateObserver = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            FileTransMainFragment.m0(this.a, ((Boolean) obj).booleanValue());
        }
    };

    public static final class b implements CustomTabLayout.OnTabSelectedListener {
        public final HashMap a = new HashMap();

        public b() {
        }

        @Override
        public void onTabReselected(CustomTabLayout.Tab tab) {
            y45.j(tab, "tab");
        }

        @Override
        public void onTabSelected(CustomTabLayout.Tab tab) {
            CustomTabLayout.SlidingTabIndicator slidingTabIndicator;
            y45.j(tab, "tab");
            String textViewContent = tab.view.getTextViewContent();
            if (textViewContent != null) {
                if (!this.a.containsKey(textViewContent)) {
                    Paint paint = new Paint();
                    paint.setTextSize(tab.view.getTextViewSize().floatValue());
                    paint.setTypeface(Typeface.SANS_SERIF);
                    paint.setFakeBoldText(true);
                    Rect rect = new Rect();
                    paint.getTextBounds(textViewContent, 0, textViewContent.length(), rect);
                    this.a.put(textViewContent, Integer.valueOf(rect.width() / 2));
                }
                Integer num = (Integer) this.a.get(textViewContent);
                if (num != null) {
                    FileTransMainFragment fileTransMainFragment = FileTransMainFragment.this;
                    int iIntValue = num.intValue();
                    CustomTabLayout customTabLayout = fileTransMainFragment.mOsTabLayout;
                    if (customTabLayout != null && (slidingTabIndicator = customTabLayout.slidingTabIndicator) != null) {
                        slidingTabIndicator.setSelectedIndicatorWidth(iIntValue);
                    }
                    CustomTabLayout customTabLayout2 = fileTransMainFragment.mOsTabLayout;
                    if (customTabLayout2 != null) {
                        customTabLayout2.invalidate();
                    }
                }
            }
        }

        @Override
        public void onTabUnselected(CustomTabLayout.Tab tab) {
            y45.j(tab, "tab");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void addBottomBarShowStateObserver() {
        MutableLiveData mutableLiveData;
        MutableLiveData mutableLiveData2;
        MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.mMainViewModel = mainViewModel;
        if (mainViewModel != null && (mutableLiveData2 = mainViewModel.g) != null) {
            mutableLiveData2.observe(getViewLifecycleOwner(), this.mBottomBarShowStateObserver);
        }
        MainViewModel mainViewModel2 = this.mMainViewModel;
        Boolean bool = (mainViewModel2 == null || (mutableLiveData = mainViewModel2.g) == null) ? null : (Boolean) mutableLiveData.getValue();
        y45.g(bool);
        notifyVideoBarShowStateChange(bool.booleanValue());
    }

    private final void k0() {
        this.mBounceListener = new PlayBaseFragment.b() {
            @Override
            public final void a(IOverScrollDecor iOverScrollDecor) {
                FileTransMainFragment.l0(this.a, iOverScrollDecor);
            }
        };
        this.mFragments = new ArrayList();
        PlayBaseFragment playBaseFragment = (PlayBaseFragment) FileTransVideoFragment.INSTANCE.a(this.mIsHistory ? 99 : 4).setBaseActivity((BaseActivity) getActivity());
        playBaseFragment.setBounceListener(this.mBounceListener);
        playBaseFragment.setAppBar(this.mAppBarLayout, this.mToolBarLayout);
        ArrayList arrayList = this.mFragments;
        if (arrayList != null) {
            arrayList.add(playBaseFragment);
        }
        PlayBaseFragment playBaseFragment2 = (PlayBaseFragment) FileTransAudioFragment.INSTANCE.a(this.mIsHistory ? 98 : 21).setBaseActivity((BaseActivity) getActivity());
        playBaseFragment2.setBounceListener(this.mBounceListener);
        playBaseFragment2.setAppBar(this.mAppBarLayout, this.mToolBarLayout);
        ArrayList arrayList2 = this.mFragments;
        if (arrayList2 != null) {
            arrayList2.add(playBaseFragment2);
        }
        String[] stringArray = getResources().getStringArray(R.array.file_trans_tab_list);
        y45.i(stringArray, "getStringArray(...)");
        RtlPageAdapter rtlPageAdapter = new RtlPageAdapter(getChildFragmentManager(), this.mFragments, stringArray);
        this.mVideosPageAdapter = rtlPageAdapter;
        RtlViewPager rtlViewPager = this.mViewPager;
        if (rtlViewPager != null) {
            y45.g(rtlPageAdapter);
            rtlViewPager.setOffscreenPageLimit(rtlPageAdapter.getCount());
        }
        RtlViewPager rtlViewPager2 = this.mViewPager;
        if (rtlViewPager2 != null) {
            rtlViewPager2.setAdapter(this.mVideosPageAdapter);
        }
        RtlViewPager rtlViewPager3 = this.mViewPager;
        if (rtlViewPager3 != null) {
            rtlViewPager3.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {
                @Override
                public void onPageScrollStateChanged(int state) {
                }

                @Override
                public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                }

                @Override
                public void onPageSelected(int position) {
                }
            });
        }
        OverScrollDecorHelper.setUpOverScroll(this.mViewPager);
        CustomTabLayout customTabLayout = this.mOsTabLayout;
        if (customTabLayout != null) {
            customTabLayout.setupWithViewPager(this.mViewPager);
        }
        CustomTabLayout customTabLayout2 = this.mOsTabLayout;
        if (customTabLayout2 != null) {
            customTabLayout2.isFirstLevelTab(true);
        }
    }

    public static final void l0(FileTransMainFragment fileTransMainFragment, IOverScrollDecor iOverScrollDecor) {
        fileTransMainFragment.nestedScroll(iOverScrollDecor);
    }

    public static final void m0(FileTransMainFragment fileTransMainFragment, boolean z) {
        fileTransMainFragment.notifyVideoBarShowStateChange(z);
    }

    public static final void n0(FileTransMainFragment fileTransMainFragment, View view) {
        if (!fileTransMainFragment.mIsHistory) {
            a.C0214a.c(a.a, "select_file", 0, 2, null);
        }
        fileTransMainFragment.mActivity.onBackPressed();
    }

    private final void notifyVideoBarShowStateChange(boolean show) {
        Log.d("FileTransMainFragment", "notifyVideoBarShowStateChange :" + show);
        LinearLayout linearLayout = this.mContainer;
        if (linearLayout != null) {
            applyPaddingBottomWithNav(linearLayout, com.transsion.utils.a.d(this.mContext, show ? 60 : 0));
        }
    }

    private final void r0() {
        Button button = this.mStartSendBt;
        if (button != null) {
            button.setEnabled(!this.mSelectMediaItems.isEmpty());
        }
        TextView textView = this.mTvSelectCount;
        if (textView != null) {
            textView.setText(this.mSelectMediaItems.size() > 1 ? getString(R.string.items, Integer.valueOf(this.mSelectMediaItems.size())) : getString(R.string.item, Integer.valueOf(this.mSelectMediaItems.size())));
        }
    }

    @Override
    public void didReceivedNotification(int eventId, Object... args) {
        y45.j(args, "args");
        super.didReceivedNotification(eventId, Arrays.copyOf(args, args.length));
        if (eventId == 1172) {
            Object obj = args[0];
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem");
            Object obj2 = args[1];
            y45.h(obj2, "null cannot be cast to non-null type kotlin.Boolean");
            o0((MediaItem) obj, ((Boolean) obj2).booleanValue());
        }
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1172);
    }

    public final boolean j0() {
        return this.mbFragmentShowCompleted;
    }

    public final void o0(MediaItem mediaItem, boolean add) {
        Log.i("FileTransMainFragment", "[TEST] sendSelectItem: " + mediaItem);
        if (add) {
            this.mSelectMediaItemIds.add(Integer.valueOf(mediaItem.id));
            this.mSelectMediaItems.add(mediaItem);
        } else {
            this.mSelectMediaItems.remove(mediaItem);
            this.mSelectMediaItemIds.remove(Integer.valueOf(mediaItem.id));
        }
        r0();
    }

    @Override
    public boolean onBackPressed() {
        if (!this.mIsHistory) {
            a.C0214a.c(a.a, "select_file", 0, 2, null);
        }
        return super.onBackPressed();
    }

    @Override
    public void onClick(View v) {
        boolean z;
        Object objInstantiateItem;
        PagerAdapter adapter;
        y45.j(v, "v");
        super.onClick(v);
        if (R.id.start_send == v.getId()) {
            q0();
            return;
        }
        if (R.id.ll_sort_layout == v.getId()) {
            RtlViewPager rtlViewPager = this.mViewPager;
            if (rtlViewPager != null) {
                int currentItem = rtlViewPager.getCurrentItem();
                RtlViewPager rtlViewPager2 = this.mViewPager;
                if (rtlViewPager2 == null || (adapter = rtlViewPager2.getAdapter()) == null) {
                    objInstantiateItem = null;
                } else {
                    RtlViewPager rtlViewPager3 = this.mViewPager;
                    y45.g(rtlViewPager3);
                    objInstantiateItem = adapter.instantiateItem((ViewGroup) rtlViewPager3, currentItem);
                }
                z = objInstantiateItem instanceof FileTransVideoFragment;
            } else {
                z = false;
            }
            showSortPopupWindow(this.mLlSort, z, true);
        }
    }

    @Override
    public void onFragmentAnimationEnd(Animation animator) {
        super.onFragmentAnimationEnd(animator);
        this.mbFragmentShowCompleted = true;
        h27.c().e(1118, new Object[0]);
    }

    @Override
    public int onLayoutId() {
        return R.layout.file_trans_select_main_fragment;
    }

    @Override
    public void onResume() {
        super.onResume();
        loadData(false);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (this.needBg) {
            backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(com.transsion.audio.R.dimen.video_main_activity_fragment_top_padding));
        }
        this.mContainer = (LinearLayout) view.findViewById(R.id.container_ll);
        CustomTabLayout customTabLayout = (CustomTabLayout) view.findViewById(R.id.tab_layout);
        this.mOsTabLayout = customTabLayout;
        if (customTabLayout != null) {
            customTabLayout.addOnTabSelectedListener((CustomTabLayout.OnTabSelectedListener) new b());
        }
        this.mViewPager = (RtlViewPager) view.findViewById(R.id.show_select_video_pager);
        this.mAppBarLayout = (AppBarLayout) view.findViewById(R.id.app_bar);
        TextView textView = (TextView) view.findViewById(R.id.tv_title);
        this.mTitleTv = textView;
        textView.setText(getString(this.mIsHistory ? R.string.visha_file_trans_receive_history : R.string.visha_select_files_to_send));
        ImageView imageView = (ImageView) view.findViewById(R.id.ic_close);
        this.mCloseIv = imageView;
        if (imageView != null) {
            imageView.setRotationY(kdc.a(this.mContext) ? 180.0f : 0.0f);
        }
        this.mTvSelectCount = (TextView) view.findViewById(R.id.tv_select_count);
        Button button = (Button) view.findViewById(R.id.start_send);
        this.mStartSendBt = button;
        if (button != null) {
            button.setOnClickListener(this);
        }
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.ll_sort_layout);
        this.mLlSort = frameLayout;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(this);
        }
        FrameLayout frameLayout2 = this.mLlSort;
        if (frameLayout2 != null) {
            frameLayout2.setVisibility(!this.mIsHistory ? 8 : 0);
        }
        ImageView imageView2 = this.mCloseIv;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    FileTransMainFragment.n0(this.b, view2);
                }
            });
        }
        ImageView imageView3 = this.mCloseIv;
        if (imageView3 != null) {
            imageView3.setVisibility(0);
        }
        ((FrameLayout) view.findViewById(R.id.bottom_bar)).setVisibility(!this.mIsHistory ? 0 : 8);
        k0();
        addBottomBarShowStateObserver();
        r0();
        if (!this.mIsHistory) {
            a.a.i();
        }
    }

    public final void p0(boolean mIsHistory) {
        this.mIsHistory = mIsHistory;
    }

    public final void q0() {
        a.a.h(this.mSelectMediaItems.size());
        mu3.a.k(this.mContext, true, this.mSelectMediaItems);
    }
}
