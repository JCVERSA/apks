package com.transsion.mimedia.fragment;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.launcher.ARouter;
import com.alibaba.android.arouter.utils.TextUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoData;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.mimedia.R;
import com.transsion.mimedia.databinding.FragementMediaLibraryListBinding;
import com.transsion.mimedia.fragment.MediaLibraryListFragment;
import com.transsion.mimedia.viewmodel.MediaLibraryListViewModel;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.sniffer_load.adapter.MediaLibraryListAdapter;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import defpackage.az5;
import defpackage.e74;
import defpackage.e84;
import defpackage.mo1;
import defpackage.s21;
import defpackage.vz5;
import defpackage.x74;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.StringSubstitutor;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 )2\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\bJ\u0019\u0010\r\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0003R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006+"}, d2 = {"Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;", "Lcom/transsion/playercommon/fragments/BaseFragment;", MethodDecl.initName, "()V", "Landroid/view/View;", "view", "Lzfb;", "initTitleBar", "(Landroid/view/View;)V", "f0", "initView", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", "b0", "Lcom/transsion/mimedia/databinding/FragementMediaLibraryListBinding;", CmcdData.STREAM_TYPE_LIVE, "Lcom/transsion/mimedia/databinding/FragementMediaLibraryListBinding;", "mBinding", "Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;", "mAdapter", "", "n", "Ljava/lang/String;", "mMediaLibraryName", "Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;", "o", "Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;", "mViewModelList", TtmlNode.TAG_P, CmcdData.OBJECT_TYPE_AUDIO_ONLY, "mimedia_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaLibraryListFragment extends BaseFragment {

    public static final Companion INSTANCE = new Companion(null);

    public FragementMediaLibraryListBinding mBinding;

    public MediaLibraryListAdapter mAdapter;

    public String mMediaLibraryName = "";

    public MediaLibraryListViewModel mViewModelList;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MediaLibraryListFragment a(Bundle bundle) {
            MediaLibraryListFragment mediaLibraryListFragment = new MediaLibraryListFragment();
            mediaLibraryListFragment.setArguments(bundle);
            return mediaLibraryListFragment;
        }

        public Companion() {
        }
    }

    public static final class b implements MediaLibraryListAdapter.a {
        public b() {
        }

        @Override
        public void a(MIMediaLibraryData mIMediaLibraryData, MIMediaVideoData mIMediaVideoData) {
            y45.j(mIMediaLibraryData, "data");
            y45.j(mIMediaVideoData, "video");
            if (MainApp.w == 0) {
                ToastUtils.s(R.string.net_not_connect);
                return;
            }
            PlayVideoData playVideoDataMediaVideoToPlayVideoData = MIMediaDataUtils.INSTANCE.mediaVideoToPlayVideoData(mIMediaLibraryData, mIMediaVideoData, 1003);
            List<MIMediaVideoData> videoList = mIMediaLibraryData.getVideoList();
            if (videoList != null) {
                s21.b.b(new ArrayList(videoList));
            }
            s21.b.c(MIMediaLibraryData.copy$default(mIMediaLibraryData, null, null, false, null, null, 0, null, 127, null));
            VideoPlayerActivityInner.F2(((BaseFragment) MediaLibraryListFragment.this).mContext, playVideoDataMediaVideoToPlayVideoData);
            az5.a.w(mIMediaLibraryData.getMediaLibraryId(), mIMediaLibraryData.getMediaLibraryName(), mIMediaLibraryData.getVirtualPersonName(), mIMediaLibraryData.getVirtualPersonPhoto(), mIMediaVideoData.getSourceId(), mIMediaVideoData.getTitle());
        }

        @Override
        public void b(MIMediaLibraryData mIMediaLibraryData) {
            y45.j(mIMediaLibraryData, "data");
            ARouter.getInstance().build(VishaRouterTable.PATH_PAGE_ACTIVITY_MEDIA_LIBRARY_VIDEO).withString("mediaLibraryId", mIMediaLibraryData.getMediaLibraryId()).withString("mediaLibraryName", mIMediaLibraryData.getMediaLibraryName()).withBoolean("is_from_library_collect_list", true).withInt("from", 1).navigation();
            az5.a.v(mIMediaLibraryData.getMediaLibraryId(), mIMediaLibraryData.getMediaLibraryName(), mIMediaLibraryData.getVirtualPersonName(), mIMediaLibraryData.getVirtualPersonPhoto());
        }
    }

    public static final class c implements Observer, e84 {
        public final e74 a;

        public c(e74 e74Var) {
            y45.j(e74Var, "function");
            this.a = e74Var;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof Observer) && (obj instanceof e84)) {
                return y45.e(getFunctionDelegate(), ((e84) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override
        public final x74 getFunctionDelegate() {
            return this.a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.a.invoke(obj);
        }
    }

    public static final void X(MediaLibraryListFragment mediaLibraryListFragment, View view) {
        BaseActivity baseActivity = mediaLibraryListFragment.mActivity;
        if (baseActivity != null) {
            baseActivity.onBackPressed();
        }
    }

    public static final void Y(final MediaLibraryListFragment mediaLibraryListFragment) {
        MediaLibraryListViewModel mediaLibraryListViewModel = mediaLibraryListFragment.mViewModelList;
        FragementMediaLibraryListBinding fragementMediaLibraryListBinding = null;
        if (mediaLibraryListViewModel == null) {
            y45.B("mViewModelList");
            mediaLibraryListViewModel = null;
        }
        mediaLibraryListViewModel.l(1);
        MediaLibraryListViewModel mediaLibraryListViewModel2 = mediaLibraryListFragment.mViewModelList;
        if (mediaLibraryListViewModel2 == null) {
            y45.B("mViewModelList");
            mediaLibraryListViewModel2 = null;
        }
        MediaLibraryListViewModel.h(mediaLibraryListViewModel2, 0, 1, null);
        FragementMediaLibraryListBinding fragementMediaLibraryListBinding2 = mediaLibraryListFragment.mBinding;
        if (fragementMediaLibraryListBinding2 == null) {
            y45.B("mBinding");
        } else {
            fragementMediaLibraryListBinding = fragementMediaLibraryListBinding2;
        }
        fragementMediaLibraryListBinding.c.postDelayed(new Runnable() {
            @Override
            public final void run() {
                MediaLibraryListFragment.Z(this.b);
            }
        }, 1000L);
    }

    public static final void Z(MediaLibraryListFragment mediaLibraryListFragment) {
        FragementMediaLibraryListBinding fragementMediaLibraryListBinding = mediaLibraryListFragment.mBinding;
        if (fragementMediaLibraryListBinding == null) {
            y45.B("mBinding");
            fragementMediaLibraryListBinding = null;
        }
        fragementMediaLibraryListBinding.c.setRefreshing(false);
    }

    public static final void a0(MediaLibraryListFragment mediaLibraryListFragment) {
        MediaLibraryListViewModel mediaLibraryListViewModel = mediaLibraryListFragment.mViewModelList;
        if (mediaLibraryListViewModel == null) {
            y45.B("mViewModelList");
            mediaLibraryListViewModel = null;
        }
        mediaLibraryListViewModel.k();
        MediaLibraryListViewModel mediaLibraryListViewModel2 = mediaLibraryListFragment.mViewModelList;
        if (mediaLibraryListViewModel2 == null) {
            y45.B("mViewModelList");
            mediaLibraryListViewModel2 = null;
        }
        MediaLibraryListViewModel.h(mediaLibraryListViewModel2, 0, 1, null);
    }

    public static final zfb c0(MediaLibraryListFragment mediaLibraryListFragment, List list) {
        if (list != null) {
            MediaLibraryListAdapter mediaLibraryListAdapter = mediaLibraryListFragment.mAdapter;
            if (mediaLibraryListAdapter == null) {
                y45.B("mAdapter");
                mediaLibraryListAdapter = null;
            }
            mediaLibraryListAdapter.setNewData(list);
        }
        return zfb.a;
    }

    public static final zfb d0(MediaLibraryListFragment mediaLibraryListFragment, Integer num) {
        MediaLibraryListAdapter mediaLibraryListAdapter = null;
        if (num != null && num.intValue() == 0) {
            MediaLibraryListAdapter mediaLibraryListAdapter2 = mediaLibraryListFragment.mAdapter;
            if (mediaLibraryListAdapter2 == null) {
                y45.B("mAdapter");
            } else {
                mediaLibraryListAdapter = mediaLibraryListAdapter2;
            }
            mediaLibraryListAdapter.loadMoreComplete();
        } else if (num != null && num.intValue() == 1) {
            MediaLibraryListAdapter mediaLibraryListAdapter3 = mediaLibraryListFragment.mAdapter;
            if (mediaLibraryListAdapter3 == null) {
                y45.B("mAdapter");
            } else {
                mediaLibraryListAdapter = mediaLibraryListAdapter3;
            }
            mediaLibraryListAdapter.loadMoreEnd();
        } else if (num != null && num.intValue() == 2) {
            MediaLibraryListAdapter mediaLibraryListAdapter4 = mediaLibraryListFragment.mAdapter;
            if (mediaLibraryListAdapter4 == null) {
                y45.B("mAdapter");
                mediaLibraryListAdapter4 = null;
            }
            List<MIMediaLibraryData> data = mediaLibraryListAdapter4.getData();
            y45.i(data, "getData(...)");
            if (!data.isEmpty()) {
                MediaLibraryListAdapter mediaLibraryListAdapter5 = mediaLibraryListFragment.mAdapter;
                if (mediaLibraryListAdapter5 == null) {
                    y45.B("mAdapter");
                } else {
                    mediaLibraryListAdapter = mediaLibraryListAdapter5;
                }
                mediaLibraryListAdapter.loadMoreFail();
            }
            if (MainApp.w == 0) {
                ToastUtils.s(R.string.net_not_connect);
                vz5.b();
            } else {
                ToastUtils.s(R.string.loading_error);
            }
        }
        return zfb.a;
    }

    public static final void e0(MediaLibraryListFragment mediaLibraryListFragment, Boolean bool) {
        BaseActivity baseActivity = mediaLibraryListFragment.mActivity;
        if (baseActivity == null || baseActivity.isFinishing() || mediaLibraryListFragment.mActivity.isDestroyed()) {
            return;
        }
        MediaLibraryListViewModel mediaLibraryListViewModel = mediaLibraryListFragment.mViewModelList;
        if (mediaLibraryListViewModel == null) {
            y45.B("mViewModelList");
            mediaLibraryListViewModel = null;
        }
        mediaLibraryListViewModel.l(1);
        MediaLibraryListViewModel mediaLibraryListViewModel2 = mediaLibraryListFragment.mViewModelList;
        if (mediaLibraryListViewModel2 == null) {
            y45.B("mViewModelList");
            mediaLibraryListViewModel2 = null;
        }
        MediaLibraryListViewModel.h(mediaLibraryListViewModel2, 0, 1, null);
    }

    private final void f0() {
        if (getActivity() != null && MainApp.w == 0) {
            MediaLibraryListViewModel mediaLibraryListViewModel = this.mViewModelList;
            if (mediaLibraryListViewModel == null) {
                y45.B("mViewModelList");
                mediaLibraryListViewModel = null;
            }
            mediaLibraryListViewModel.i();
        }
        MediaLibraryListViewModel mediaLibraryListViewModel2 = this.mViewModelList;
        if (mediaLibraryListViewModel2 == null) {
            y45.B("mViewModelList");
            mediaLibraryListViewModel2 = null;
        }
        MediaLibraryListViewModel.h(mediaLibraryListViewModel2, 0, 1, null);
    }

    private final void initTitleBar(View view) {
        ((TextView) view.findViewById(R.id.title_bar_title)).setText(TextUtils.isEmpty(this.mMediaLibraryName) ? this.mContext.getString(R.string.visha_popular_sites_already_saved) : this.mMediaLibraryName);
        view.findViewById(R.id.title_bar_back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                MediaLibraryListFragment.X(this.b, view2);
            }
        });
    }

    private final void initView(View view) {
        initTitleBar(view);
        FragementMediaLibraryListBinding fragementMediaLibraryListBinding = this.mBinding;
        MediaLibraryListAdapter mediaLibraryListAdapter = null;
        if (fragementMediaLibraryListBinding == null) {
            y45.B("mBinding");
            fragementMediaLibraryListBinding = null;
        }
        fragementMediaLibraryListBinding.c.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
            @Override
            public final void onRefresh() {
                MediaLibraryListFragment.Y(this.a);
            }
        });
        this.mAdapter = new MediaLibraryListAdapter();
        FragementMediaLibraryListBinding fragementMediaLibraryListBinding2 = this.mBinding;
        if (fragementMediaLibraryListBinding2 == null) {
            y45.B("mBinding");
            fragementMediaLibraryListBinding2 = null;
        }
        RecyclerView recyclerView = fragementMediaLibraryListBinding2.d;
        MediaLibraryListAdapter mediaLibraryListAdapter2 = this.mAdapter;
        if (mediaLibraryListAdapter2 == null) {
            y45.B("mAdapter");
            mediaLibraryListAdapter2 = null;
        }
        recyclerView.setAdapter(mediaLibraryListAdapter2);
        MediaLibraryListAdapter mediaLibraryListAdapter3 = this.mAdapter;
        if (mediaLibraryListAdapter3 == null) {
            y45.B("mAdapter");
            mediaLibraryListAdapter3 = null;
        }
        mediaLibraryListAdapter3.setPreLoadNumber(1);
        if (getActivity() != null) {
            MediaLibraryListAdapter mediaLibraryListAdapter4 = this.mAdapter;
            if (mediaLibraryListAdapter4 == null) {
                y45.B("mAdapter");
                mediaLibraryListAdapter4 = null;
            }
            mediaLibraryListAdapter4.setLoadMoreView(new mo1(getActivity()).a(Boolean.FALSE));
        }
        MediaLibraryListAdapter mediaLibraryListAdapter5 = this.mAdapter;
        if (mediaLibraryListAdapter5 == null) {
            y45.B("mAdapter");
            mediaLibraryListAdapter5 = null;
        }
        FragementMediaLibraryListBinding fragementMediaLibraryListBinding3 = this.mBinding;
        if (fragementMediaLibraryListBinding3 == null) {
            y45.B("mBinding");
            fragementMediaLibraryListBinding3 = null;
        }
        mediaLibraryListAdapter5.disableLoadMoreIfNotFullPage(fragementMediaLibraryListBinding3.d);
        MediaLibraryListAdapter mediaLibraryListAdapter6 = this.mAdapter;
        if (mediaLibraryListAdapter6 == null) {
            y45.B("mAdapter");
            mediaLibraryListAdapter6 = null;
        }
        BaseQuickAdapter.RequestLoadMoreListener requestLoadMoreListener = new BaseQuickAdapter.RequestLoadMoreListener() {
            @Override
            public final void onLoadMoreRequested() {
                MediaLibraryListFragment.a0(this.a);
            }
        };
        FragementMediaLibraryListBinding fragementMediaLibraryListBinding4 = this.mBinding;
        if (fragementMediaLibraryListBinding4 == null) {
            y45.B("mBinding");
            fragementMediaLibraryListBinding4 = null;
        }
        mediaLibraryListAdapter6.setOnLoadMoreListener(requestLoadMoreListener, fragementMediaLibraryListBinding4.d);
        MediaLibraryListAdapter mediaLibraryListAdapter7 = this.mAdapter;
        if (mediaLibraryListAdapter7 == null) {
            y45.B("mAdapter");
        } else {
            mediaLibraryListAdapter = mediaLibraryListAdapter7;
        }
        mediaLibraryListAdapter.i(new b());
    }

    public final void b0() {
        MediaLibraryListViewModel mediaLibraryListViewModel = this.mViewModelList;
        MediaLibraryListViewModel mediaLibraryListViewModel2 = null;
        if (mediaLibraryListViewModel == null) {
            y45.B("mViewModelList");
            mediaLibraryListViewModel = null;
        }
        mediaLibraryListViewModel.getMMediaLibraryList().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return MediaLibraryListFragment.c0(this.b, (List) obj);
            }
        }));
        MediaLibraryListViewModel mediaLibraryListViewModel3 = this.mViewModelList;
        if (mediaLibraryListViewModel3 == null) {
            y45.B("mViewModelList");
        } else {
            mediaLibraryListViewModel2 = mediaLibraryListViewModel3;
        }
        mediaLibraryListViewModel2.getMLoadStatus().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return MediaLibraryListFragment.d0(this.b, (Integer) obj);
            }
        }));
        LiveEventBus.b().d("media_library_collect_cancle").observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                MediaLibraryListFragment.e0(this.a, (Boolean) obj);
            }
        });
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("mediaLibraryName", "");
            this.mMediaLibraryName = string;
            Log.i("MediaLibraryListFragment", "mediaLibraryName: " + string + StringSubstitutor.DEFAULT_VAR_END);
        }
        this.mViewModelList = (MediaLibraryListViewModel) new ViewModelProvider(this).get(MediaLibraryListViewModel.class);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        y45.j(inflater, "inflater");
        FragementMediaLibraryListBinding fragementMediaLibraryListBindingC = FragementMediaLibraryListBinding.c(inflater, container, false);
        this.mBinding = fragementMediaLibraryListBindingC;
        if (fragementMediaLibraryListBindingC == null) {
            y45.B("mBinding");
            fragementMediaLibraryListBindingC = null;
        }
        return fragementMediaLibraryListBindingC.getRoot();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        LiveEventBus.b().d("media_library_collect_cancle").c();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initView(view);
        b0();
        f0();
    }
}
