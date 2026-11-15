package com.transsion.cloud.fragment;

import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.LifecycleOwnerKt;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.cloud.adapter.CloudDataAdapter;
import com.transsion.cloud.adapter.CloudItemDecoration;
import com.transsion.cloud.fileoperate.CloudFileOperate;
import com.transsion.cloud.fragment.CloudUploadFragment;
import com.transsion.cloud_drive.base.api.model.SpaceStatistics;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.VideoCloudDataLocal;
import com.transsion.netdisk.R;
import com.transsion.netdisk.databinding.LayoutCloudUploadViewBinding;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.widgets.CloudUploadView;
import com.transsion.push.PushConstants;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.widget.OSIconTextView;
import defpackage.a64;
import defpackage.cl0;
import defpackage.cz5;
import defpackage.e6b;
import defpackage.e74;
import defpackage.e84;
import defpackage.el0;
import defpackage.h27;
import defpackage.hz9;
import defpackage.i81;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.sq3;
import defpackage.wh1;
import defpackage.x74;
import defpackage.xkb;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J3\u0010\u000f\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001c\u0010\u0003J-\u0010!\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001e\u001a\u00020\u001d2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\rH\u0014¢\u0006\u0004\b$\u0010\u0015J/\u0010)\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u000b2\u0016\u0010(\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010'0&\"\u0004\u0018\u00010'H\u0016¢\u0006\u0004\b)\u0010*J!\u0010+\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0004H\u0016¢\u0006\u0004\b-\u0010\u0003J\u000f\u0010.\u001a\u00020\rH\u0016¢\u0006\u0004\b.\u0010/J'\u00104\u001a\u00020\u00042\u000e\u00102\u001a\n\u0012\u0004\u0012\u000201\u0018\u0001002\u0006\u00103\u001a\u00020\rH\u0002¢\u0006\u0004\b4\u00105R\u0018\u00108\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010?\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010B\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010D\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010>R\u0018\u0010F\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010AR\u0018\u0010J\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010N\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u001a\u0010R\u001a\b\u0012\u0004\u0012\u00020\r0O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010Q¨\u0006S"}, d2 = {"Lcom/transsion/cloud/fragment/CloudUploadFragment;", "Lcom/transsion/cloud/fragment/CloudBaseFragment;", MethodDecl.initName, "()V", "Lzfb;", "D0", "C0", "Lcom/transsion/cloud/adapter/CloudDataAdapter;", "adapter", "Landroid/view/View;", "view", "", "position", "", "child", "selectItem", "(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V", "initViewModel", "addVideoBarShowStateObserver", PushConstants.PUSH_SERVICE_TYPE_SHOW, "notifyVideoBarShowStateChange", "(Z)V", "getBottomPadding", "(Z)I", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "preload", "loadData", "eventId", "", "", "args", "didReceivedNotification", "(I[Ljava/lang/Object;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onPause", "onBackPressed", "()Z", "", "Lcom/transsion/dbdata/beans/VideoCloudDataLocal;", "videoCloudDataList", "isUpload", "markCloudTransmitList", "(Ljava/util/List;Z)V", CmcdData.STREAM_TYPE_LIVE, "Lcom/transsion/cloud/adapter/CloudDataAdapter;", "mCloudDataAdapter", "Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;", "mBinding", "n", "Landroid/view/ViewGroup;", "mMenuLayout", "o", "Landroid/view/View;", "mIvSearch", TtmlNode.TAG_P, "mTranslateLayout", "q", "mEmptyView", "Lcom/transsion/playercommon/widgets/CloudUploadView;", "r", "Lcom/transsion/playercommon/widgets/CloudUploadView;", "mCloudUploadView", "Lcom/transsion/playercommon/videomodel/MainViewModel;", "s", "Lcom/transsion/playercommon/videomodel/MainViewModel;", "mMainViewModel", "Landroidx/lifecycle/Observer;", "t", "Landroidx/lifecycle/Observer;", "mVideoBarShowStateObserver", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudUploadFragment extends CloudBaseFragment {

    public CloudDataAdapter mCloudDataAdapter;

    public LayoutCloudUploadViewBinding mBinding;

    public ViewGroup mMenuLayout;

    public View mIvSearch;

    public ViewGroup mTranslateLayout;

    public View mEmptyView;

    public CloudUploadView mCloudUploadView;

    public MainViewModel mMainViewModel;

    public final Observer mVideoBarShowStateObserver = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            CloudUploadFragment.M0(this.a, (Boolean) obj);
        }
    };

    public static final class a implements Observer, e84 {
        public final e74 a;

        public a(e74 e74Var) {
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

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.fragment.CloudUploadFragment$markCloudTransmitList$1", f = "CloudUploadFragment.kt", l = {158}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final boolean $isUpload;
        final List<VideoCloudDataLocal> $videoCloudDataList;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.cloud.fragment.CloudUploadFragment$markCloudTransmitList$1$1", f = "CloudUploadFragment.kt", l = {}, m = "invokeSuspend")
        public static final class C02091 extends SuspendLambda implements s74 {
            final boolean $isUpload;
            final long $totalSize;
            final List<VideoCloudDataLocal> $videoCloudDataList;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02091(long j, List<VideoCloudDataLocal> list, boolean z, wh1<? super C02091> wh1Var) {
                super(2, wh1Var);
                this.$totalSize = j;
                this.$videoCloudDataList = list;
                this.$isUpload = z;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new C02091(this.$totalSize, this.$videoCloudDataList, this.$isUpload, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((C02091) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                cz5.f(this.$totalSize, this.$videoCloudDataList.size(), this.$isUpload);
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(List<VideoCloudDataLocal> list, boolean z, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$videoCloudDataList = list;
            this.$isUpload = z;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.$videoCloudDataList, this.$isUpload, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                long jC = cz5.c(this.$videoCloudDataList, this.$isUpload);
                rx5 rx5VarC = mc2.c();
                C02091 c02091 = new C02091(jC, this.$videoCloudDataList, this.$isUpload, null);
                this.label = 1;
                if (cl0.g(rx5VarC, c02091, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    private final void C0() {
        RelativeLayout root;
        ViewStub viewStub;
        if (this.mEmptyView == null) {
            LayoutCloudUploadViewBinding layoutCloudUploadViewBinding = this.mBinding;
            this.mEmptyView = (layoutCloudUploadViewBinding == null || (root = layoutCloudUploadViewBinding.getRoot()) == null || (viewStub = (ViewStub) root.findViewById(R.id.main_empty_view)) == null) ? null : viewStub.inflate();
        }
        View view = this.mEmptyView;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private final void D0() {
        Button btnUploadView;
        Button btnUploadView2;
        RelativeLayout root;
        OSIconTextView oSIconTextView;
        RelativeLayout root2;
        RelativeLayout root3;
        RelativeLayout root4;
        RelativeLayout root5;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        LayoutCloudUploadViewBinding layoutCloudUploadViewBinding = this.mBinding;
        if (layoutCloudUploadViewBinding != null && (recyclerView3 = layoutCloudUploadViewBinding.e) != null) {
            recyclerView3.addItemDecoration(new CloudItemDecoration(com.transsion.utils.a.d(this.mActivity, 16.0f)));
        }
        LayoutCloudUploadViewBinding layoutCloudUploadViewBinding2 = this.mBinding;
        if (layoutCloudUploadViewBinding2 != null && (recyclerView2 = layoutCloudUploadViewBinding2.e) != null) {
            recyclerView2.setLayoutManager(new CustomLinearLayoutManager(getContext()));
        }
        LayoutCloudUploadViewBinding layoutCloudUploadViewBinding3 = this.mBinding;
        if (layoutCloudUploadViewBinding3 != null && (recyclerView = layoutCloudUploadViewBinding3.e) != null) {
            recyclerView.setAdapter(this.mCloudDataAdapter);
        }
        LayoutCloudUploadViewBinding layoutCloudUploadViewBinding4 = this.mBinding;
        CloudUploadView cloudUploadView = null;
        setMCheckBoxAll((layoutCloudUploadViewBinding4 == null || (root5 = layoutCloudUploadViewBinding4.getRoot()) == null) ? null : (CheckBox) root5.findViewById(R.id.title_bar_checkBox));
        LayoutCloudUploadViewBinding layoutCloudUploadViewBinding5 = this.mBinding;
        this.mMenuLayout = (layoutCloudUploadViewBinding5 == null || (root4 = layoutCloudUploadViewBinding5.getRoot()) == null) ? null : (ViewGroup) root4.findViewById(R.id.top_menu_ll);
        LayoutCloudUploadViewBinding layoutCloudUploadViewBinding6 = this.mBinding;
        this.mIvSearch = (layoutCloudUploadViewBinding6 == null || (root3 = layoutCloudUploadViewBinding6.getRoot()) == null) ? null : root3.findViewById(R.id.iv_search);
        LayoutCloudUploadViewBinding layoutCloudUploadViewBinding7 = this.mBinding;
        this.mTranslateLayout = (layoutCloudUploadViewBinding7 == null || (root2 = layoutCloudUploadViewBinding7.getRoot()) == null) ? null : (ViewGroup) root2.findViewById(R.id.translate_layout);
        ViewGroup viewGroup = this.mMenuLayout;
        if (viewGroup != null) {
            viewGroup.setVisibility(0);
        }
        View view = this.mIvSearch;
        if (view != null) {
            view.setVisibility(8);
        }
        ViewGroup viewGroup2 = this.mTranslateLayout;
        if (viewGroup2 != null) {
            viewGroup2.setVisibility(8);
        }
        CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
        if (cloudDataAdapter != null) {
            cloudDataAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    CloudUploadFragment.E0(this.b, baseQuickAdapter, view2, i);
                }
            });
        }
        CheckBox mCheckBoxAll = getMCheckBoxAll();
        if (mCheckBoxAll != null) {
            mCheckBoxAll.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    CloudUploadFragment.F0(this.b, view2);
                }
            });
        }
        LayoutCloudUploadViewBinding layoutCloudUploadViewBinding8 = this.mBinding;
        if (layoutCloudUploadViewBinding8 != null && (oSIconTextView = layoutCloudUploadViewBinding8.g) != null) {
            oSIconTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    CloudUploadFragment.G0(this.b, view2);
                }
            });
        }
        LayoutCloudUploadViewBinding layoutCloudUploadViewBinding9 = this.mBinding;
        if (layoutCloudUploadViewBinding9 != null && (root = layoutCloudUploadViewBinding9.getRoot()) != null) {
            cloudUploadView = (CloudUploadView) root.findViewById(R.id.upload_bottom_view);
        }
        this.mCloudUploadView = cloudUploadView;
        if (cloudUploadView != null && (btnUploadView2 = cloudUploadView.getBtnUploadView()) != null) {
            btnUploadView2.setEnabled(false);
        }
        CloudUploadView cloudUploadView2 = this.mCloudUploadView;
        if (cloudUploadView2 != null && (btnUploadView = cloudUploadView2.getBtnUploadView()) != null) {
            btnUploadView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    CloudUploadFragment.H0(this.b, view2);
                }
            });
        }
        int recyclerBottomPadding = getRecyclerBottomPadding();
        CloudUploadView cloudUploadView3 = this.mCloudUploadView;
        if (cloudUploadView3 != null) {
            int paddingLeft = cloudUploadView3 != null ? cloudUploadView3.getPaddingLeft() : 0;
            CloudUploadView cloudUploadView4 = this.mCloudUploadView;
            int paddingTop = cloudUploadView4 != null ? cloudUploadView4.getPaddingTop() : 0;
            CloudUploadView cloudUploadView5 = this.mCloudUploadView;
            cloudUploadView3.setPadding(paddingLeft, paddingTop, cloudUploadView5 != null ? cloudUploadView5.getPaddingRight() : 0, com.transsion.utils.a.d(this.mContext, recyclerBottomPadding));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void E0(CloudUploadFragment cloudUploadFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        List<VideoCloudData> data;
        ArrayList<VideoCloudData> selectVideoCloudList;
        if (i < baseQuickAdapter.getData().size()) {
            cloudUploadFragment.selectItem(cloudUploadFragment.mCloudDataAdapter, view, i, true);
            ArrayList arrayList = new ArrayList();
            CloudDataAdapter cloudDataAdapter = cloudUploadFragment.mCloudDataAdapter;
            if (cloudDataAdapter != null && (selectVideoCloudList = cloudDataAdapter.getSelectVideoCloudList()) != null) {
                for (VideoCloudData videoCloudData : selectVideoCloudList) {
                    if (videoCloudData instanceof VideoCloudDataLocal) {
                        arrayList.add(videoCloudData);
                    }
                }
            }
            CloudUploadView cloudUploadView = cloudUploadFragment.mCloudUploadView;
            if (cloudUploadView != null) {
                cloudUploadView.updateCount(arrayList.size());
            }
            CloudUploadView cloudUploadView2 = cloudUploadFragment.mCloudUploadView;
            if (cloudUploadView2 != 0) {
                cloudUploadView2.setVideoDataList(arrayList);
            }
            CheckBox mCheckBoxAll = cloudUploadFragment.getMCheckBoxAll();
            if (mCheckBoxAll != null) {
                CloudDataAdapter cloudDataAdapter2 = cloudUploadFragment.mCloudDataAdapter;
                Integer numValueOf = null;
                Integer numValueOf2 = cloudDataAdapter2 != null ? Integer.valueOf(cloudDataAdapter2.l()) : null;
                CloudDataAdapter cloudDataAdapter3 = cloudUploadFragment.mCloudDataAdapter;
                if (cloudDataAdapter3 != null && (data = cloudDataAdapter3.getData()) != null) {
                    numValueOf = Integer.valueOf(data.size());
                }
                mCheckBoxAll.setChecked(y45.e(numValueOf2, numValueOf));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void F0(CloudUploadFragment cloudUploadFragment, View view) {
        ArrayList<VideoCloudData> selectVideoCloudList;
        CheckBox mCheckBoxAll = cloudUploadFragment.getMCheckBoxAll();
        if (mCheckBoxAll == null || !mCheckBoxAll.isChecked()) {
            CloudDataAdapter cloudDataAdapter = cloudUploadFragment.mCloudDataAdapter;
            if (cloudDataAdapter != null) {
                cloudDataAdapter.u(false);
            }
        } else {
            CloudDataAdapter cloudDataAdapter2 = cloudUploadFragment.mCloudDataAdapter;
            if (cloudDataAdapter2 != null) {
                cloudDataAdapter2.u(true);
            }
        }
        ArrayList arrayList = new ArrayList();
        CloudDataAdapter cloudDataAdapter3 = cloudUploadFragment.mCloudDataAdapter;
        if (cloudDataAdapter3 != null && (selectVideoCloudList = cloudDataAdapter3.getSelectVideoCloudList()) != null) {
            for (VideoCloudData videoCloudData : selectVideoCloudList) {
                if (videoCloudData instanceof VideoCloudDataLocal) {
                    arrayList.add(videoCloudData);
                }
            }
        }
        CloudUploadView cloudUploadView = cloudUploadFragment.mCloudUploadView;
        if (cloudUploadView != null) {
            cloudUploadView.updateCount(arrayList.size());
        }
        CloudUploadView cloudUploadView2 = cloudUploadFragment.mCloudUploadView;
        if (cloudUploadView2 != 0) {
            cloudUploadView2.setVideoDataList(arrayList);
        }
        PlayBaseFragment.d dVar = cloudUploadFragment.mEditModeListener;
        if (dVar != null) {
            CloudDataAdapter cloudDataAdapter4 = cloudUploadFragment.mCloudDataAdapter;
            ArrayList selectVideoCloudList2 = cloudDataAdapter4 != null ? cloudDataAdapter4.getSelectVideoCloudList() : null;
            CloudDataAdapter cloudDataAdapter5 = cloudUploadFragment.mCloudDataAdapter;
            dVar.b(selectVideoCloudList2, cloudDataAdapter5 != null ? cloudDataAdapter5.r() : false, false);
        }
    }

    public static final void G0(CloudUploadFragment cloudUploadFragment, View view) {
        FragmentActivity activity = cloudUploadFragment.getActivity();
        if (activity == null || !(activity instanceof BaseActivity)) {
            return;
        }
        a64.a((BaseActivity) activity);
        PlayBaseFragment.d dVar = cloudUploadFragment.mEditModeListener;
        if (dVar != null) {
            dVar.c(false, 1002);
        }
    }

    public static final void H0(final CloudUploadFragment cloudUploadFragment, View view) {
        cz5.g("batch_select");
        CloudUploadView cloudUploadView = cloudUploadFragment.mCloudUploadView;
        y45.g(cloudUploadView);
        cloudUploadFragment.markCloudTransmitList(cloudUploadView.getVideoDataList(), true);
        new e6b(cloudUploadFragment.getActivity(), new e6b.c() {
            @Override
            public final void a(boolean z) {
                CloudUploadFragment.I0(this.a, z);
            }
        }).b(true);
    }

    public static final void I0(CloudUploadFragment cloudUploadFragment, boolean z) {
        CloudUploadView cloudUploadView;
        ArrayList<VideoCloudDataLocal> videoDataList;
        if (!z || (cloudUploadView = cloudUploadFragment.mCloudUploadView) == null || (videoDataList = cloudUploadView.getVideoDataList()) == null) {
            return;
        }
        CloudFileOperate.getInstance().startBatchUploadByVideoCloudDataList(cloudUploadFragment.getActivity(), videoDataList);
        FragmentActivity activity = cloudUploadFragment.getActivity();
        if (activity == null || !(activity instanceof BaseActivity)) {
            return;
        }
        a64.a((BaseActivity) activity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final zfb J0(CloudUploadFragment cloudUploadFragment, List list) {
        Button btnUploadView;
        ArrayList<VideoCloudData> selectVideoCloudList;
        Integer localMediaId;
        List<VideoCloudData> data;
        cloudUploadFragment.isInEditMode = true;
        if (list.isEmpty()) {
            CheckBox mCheckBoxAll = cloudUploadFragment.getMCheckBoxAll();
            if (mCheckBoxAll != null) {
                mCheckBoxAll.setVisibility(8);
            }
        } else {
            CheckBox mCheckBoxAll2 = cloudUploadFragment.getMCheckBoxAll();
            if (mCheckBoxAll2 != null) {
                mCheckBoxAll2.setVisibility(0);
            }
        }
        if (list.isEmpty()) {
            cloudUploadFragment.C0();
        } else {
            View view = cloudUploadFragment.mEmptyView;
            if (view != null) {
                view.setVisibility(8);
            }
        }
        try {
            Log.d("CloudUploadFragment", "it " + list.size());
            CloudDataAdapter cloudDataAdapter = cloudUploadFragment.mCloudDataAdapter;
            if (((cloudDataAdapter == null || (data = cloudDataAdapter.getData()) == null) ? 0 : data.size()) != list.size()) {
                HashSet hashSet = new HashSet();
                CloudDataAdapter cloudDataAdapter2 = cloudUploadFragment.mCloudDataAdapter;
                if (cloudDataAdapter2 != null && (selectVideoCloudList = cloudDataAdapter2.getSelectVideoCloudList()) != null) {
                    for (VideoCloudData videoCloudData : selectVideoCloudList) {
                        if ((videoCloudData instanceof VideoCloudDataLocal) && (localMediaId = ((VideoCloudDataLocal) videoCloudData).getLocalMediaId()) != null) {
                            hashSet.add(Integer.valueOf(localMediaId.intValue()));
                        }
                    }
                }
                CloudDataAdapter cloudDataAdapter3 = cloudUploadFragment.mCloudDataAdapter;
                if (cloudDataAdapter3 != null) {
                    cloudDataAdapter3.g();
                }
                ArrayList arrayList = new ArrayList();
                y45.g(list);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    VideoCloudData videoCloudData2 = (VideoCloudData) it.next();
                    if ((videoCloudData2 instanceof VideoCloudDataLocal) && ((VideoCloudDataLocal) videoCloudData2).getLocalMediaId() != null && i81.d0(hashSet, ((VideoCloudDataLocal) videoCloudData2).getLocalMediaId())) {
                        CloudDataAdapter cloudDataAdapter4 = cloudUploadFragment.mCloudDataAdapter;
                        if (cloudDataAdapter4 != null) {
                            CloudDataAdapter.w(cloudDataAdapter4, videoCloudData2, true, -1, false, 8, null);
                        }
                        arrayList.add(videoCloudData2);
                    }
                }
                CloudDataAdapter cloudDataAdapter5 = cloudUploadFragment.mCloudDataAdapter;
                if (cloudDataAdapter5 != null) {
                    cloudDataAdapter5.setNewData(new ArrayList(list));
                }
                CloudUploadView cloudUploadView = cloudUploadFragment.mCloudUploadView;
                if (cloudUploadView != null) {
                    cloudUploadView.updateCount(arrayList.size());
                }
                CloudUploadView cloudUploadView2 = cloudUploadFragment.mCloudUploadView;
                if (cloudUploadView2 != 0) {
                    cloudUploadView2.setVideoDataList(arrayList);
                }
                CloudUploadView cloudUploadView3 = cloudUploadFragment.mCloudUploadView;
                if (cloudUploadView3 != null && (btnUploadView = cloudUploadView3.getBtnUploadView()) != null) {
                    btnUploadView.setEnabled(!arrayList.isEmpty());
                }
            } else {
                CloudDataAdapter cloudDataAdapter6 = cloudUploadFragment.mCloudDataAdapter;
                if (cloudDataAdapter6 != null) {
                    cloudDataAdapter6.setNewData(new ArrayList(list));
                }
            }
            PlayBaseFragment.d dVar = cloudUploadFragment.mEditModeListener;
            if (dVar != null) {
                dVar.c(true, 1002);
            }
            PlayBaseFragment.d dVar2 = cloudUploadFragment.mEditModeListener;
            if (dVar2 != null) {
                CloudDataAdapter cloudDataAdapter7 = cloudUploadFragment.mCloudDataAdapter;
                ArrayList selectVideoCloudList2 = cloudDataAdapter7 != null ? cloudDataAdapter7.getSelectVideoCloudList() : null;
                CloudDataAdapter cloudDataAdapter8 = cloudUploadFragment.mCloudDataAdapter;
                dVar2.b(selectVideoCloudList2, cloudDataAdapter8 != null ? cloudDataAdapter8.r() : false, false);
            }
            CloudDataAdapter cloudDataAdapter9 = cloudUploadFragment.mCloudDataAdapter;
            if (cloudDataAdapter9 != null) {
                cloudDataAdapter9.y(true);
            }
        } catch (Exception e) {
            Log.d("CloudUploadFragment", "e " + e.getMessage());
        }
        return zfb.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final zfb K0(CloudUploadFragment cloudUploadFragment, Long l) {
        FragmentActivity activity = cloudUploadFragment.getActivity();
        if (activity != null) {
            if (cloudUploadFragment.mContext == null) {
                return zfb.a;
            }
            SpaceStatistics spaceStatistics = (SpaceStatistics) cloudUploadFragment.getMViewModel().getMCloudStorageInfo().getValue();
            long totalSize = spaceStatistics != null ? spaceStatistics.getTotalSize() : 0L;
            SpaceStatistics spaceStatistics2 = (SpaceStatistics) cloudUploadFragment.getMViewModel().getMCloudStorageInfo().getValue();
            long usedSize = spaceStatistics2 != null ? spaceStatistics2.getUsedSize() : 0L;
            d.a aVarA = new d.a(activity).A(R.string.visha_cloud_space_insufficient);
            hz9 hz9Var = hz9.a;
            Locale locale = Locale.getDefault();
            String string = cloudUploadFragment.mContext.getString(R.string.visha_file_size_remaining_space);
            y45.i(string, "getString(...)");
            xkb xkbVar = xkb.a;
            y45.g(l);
            String str = String.format(locale, string, Arrays.copyOf(new Object[]{xkbVar.a(l.longValue()), xkbVar.a(totalSize - usedSize)}, 2));
            y45.i(str, "format(...)");
            aVarA.k(str).m(R.string.got_it, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    CloudUploadFragment.L0(dialogInterface, i);
                }
            }).a().show();
        }
        return zfb.a;
    }

    public static final void L0(DialogInterface dialogInterface, int i) {
    }

    public static final void M0(CloudUploadFragment cloudUploadFragment, Boolean bool) {
        cloudUploadFragment.notifyVideoBarShowStateChange(bool != null ? bool.booleanValue() : false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void addVideoBarShowStateObserver() {
        MutableLiveData mutableLiveData;
        Boolean bool;
        MutableLiveData mutableLiveData2;
        if (getActivity() == null || !isAdded()) {
            return;
        }
        MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.mMainViewModel = mainViewModel;
        if (mainViewModel != null && (mutableLiveData2 = mainViewModel.g) != null) {
            mutableLiveData2.observe(getViewLifecycleOwner(), this.mVideoBarShowStateObserver);
        }
        MainViewModel mainViewModel2 = this.mMainViewModel;
        notifyVideoBarShowStateChange((mainViewModel2 == null || (mutableLiveData = mainViewModel2.g) == null || (bool = (Boolean) mutableLiveData.getValue()) == null) ? false : bool.booleanValue());
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001c  */
    private final int getBottomPadding(boolean show) {
        boolean z;
        MutableLiveData mutableLiveData;
        MainViewModel mainViewModel = this.mMainViewModel;
        if (mainViewModel == null) {
            z = true;
        } else {
            if ((mainViewModel == null || (mutableLiveData = mainViewModel.c) == null) ? false : y45.e(mutableLiveData.getValue(), Boolean.TRUE)) {
                z = true;
            } else {
                z = false;
            }
        }
        boolean zIsFoldScreen = isFoldScreen();
        if (show) {
            return (z && zIsFoldScreen) ? 30 : 60;
        }
        return 0;
    }

    private final void initViewModel() {
        getMViewModel().getMLocalList().observe(getViewLifecycleOwner(), new a(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudUploadFragment.J0(this.b, (List) obj);
            }
        }));
        getMViewModel().getMShowStorageNoEnough().observe(getViewLifecycleOwner(), new a(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudUploadFragment.K0(this.b, (Long) obj);
            }
        }));
    }

    private final void notifyVideoBarShowStateChange(boolean show) {
        FrameLayout frameLayout;
        LayoutCloudUploadViewBinding layoutCloudUploadViewBinding = this.mBinding;
        if (layoutCloudUploadViewBinding == null || (frameLayout = layoutCloudUploadViewBinding.i) == null) {
            return;
        }
        frameLayout.setPadding(frameLayout.getPaddingStart(), frameLayout.getPaddingTop(), frameLayout.getPaddingEnd(), com.transsion.utils.a.d(this.mContext, getBottomPadding(show)));
    }

    private final void selectItem(CloudDataAdapter adapter, View view, int position, boolean child) {
        List<VideoCloudData> data;
        List<VideoCloudData> data2;
        if (adapter == null || (data2 = adapter.getData()) == null || data2.size() != 0) {
            VideoCloudData videoCloudData = (adapter == null || (data = adapter.getData()) == null) ? null : data.get(position);
            y45.h(videoCloudData, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData");
            CheckBox checkBox = view != null ? (CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox) : null;
            if (checkBox != null) {
                checkBox.setChecked(!checkBox.isChecked());
            }
            y45.h(adapter, "null cannot be cast to non-null type com.transsion.cloud.adapter.CloudDataAdapter");
            CloudDataAdapter.w(adapter, videoCloudData, checkBox != null && child == checkBox.isChecked(), position, false, 8, null);
        }
    }

    @Override
    public void didReceivedNotification(int eventId, Object... args) {
        FragmentActivity activity;
        y45.j(args, "args");
        if (eventId == 1129 && (activity = getActivity()) != null && (activity instanceof BaseActivity)) {
            a64.a((BaseActivity) activity);
        }
    }

    @Override
    public void loadData(boolean preload) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            getMViewModel().z(activity);
        }
        getMViewModel().t();
    }

    public final void markCloudTransmitList(List videoCloudDataList, boolean isUpload) {
        if (videoCloudDataList == null) {
            return;
        }
        el0.d(LifecycleOwnerKt.getLifecycleScope(this), mc2.b(), null, new AnonymousClass1(videoCloudDataList, isUpload, null), 2, null);
    }

    @Override
    public boolean onBackPressed() {
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null) {
            dVar.c(false, 1002);
        }
        return super.onBackPressed();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        Window window;
        super.onCreate(savedInstanceState);
        this.mCloudDataAdapter = new CloudDataAdapter();
        FragmentActivity activity = getActivity();
        if (activity == null || (window = activity.getWindow()) == null) {
            return;
        }
        window.setNavigationBarColor(getResources().getColor(R.color.os_altitude_primary_color));
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        y45.j(inflater, "inflater");
        LayoutCloudUploadViewBinding layoutCloudUploadViewBindingC = LayoutCloudUploadViewBinding.c(inflater, container, false);
        this.mBinding = layoutCloudUploadViewBindingC;
        if (layoutCloudUploadViewBindingC != null) {
            return layoutCloudUploadViewBindingC.getRoot();
        }
        return null;
    }

    @Override
    public void onPause() {
        super.onPause();
        h27.c().f(this, 1129);
    }

    @Override
    public void onResume() {
        super.onResume();
        sq3.a().b(getMViewModel().getMIFileOperateListener());
        h27.c().b(this, 1129);
        cz5.e("cloud_upload_select_show");
        loadData(false);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        D0();
        initViewModel();
        loadData(true);
        addVideoBarShowStateObserver();
    }
}
