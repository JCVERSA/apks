package com.transsion.cloud.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.cloud.adapter.CloudDataAdapter;
import com.transsion.cloud.adapter.CloudItemDecoration;
import com.transsion.cloud.fragment.CloudRecentlyFragment;
import com.transsion.cloud.viewmodel.RecentlyViewModel;
import com.transsion.dbdata.beans.FileHandlerData;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.netdisk.R;
import com.transsion.netdisk.databinding.LayoutCloudRecentlyViewBinding;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.data.CloudHistoryRequestDataForDelete;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.playercommon.widgets.NewAppFootActionBar;
import com.transsion.push.PushConstants;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.widget.FootOperationBar;
import com.transsion.widgetslib.widget.OSIconTextView;
import defpackage.a64;
import defpackage.az5;
import defpackage.cz5;
import defpackage.d81;
import defpackage.e74;
import defpackage.e84;
import defpackage.h27;
import defpackage.k29;
import defpackage.mo1;
import defpackage.s21;
import defpackage.sf0;
import defpackage.vb;
import defpackage.x74;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\u0003J3\u0010\u0013\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0018\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0019\u0010\u0003J\u0017\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010!\u001a\u00020\u00042\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b!\u0010\"J-\u0010'\u001a\u0004\u0018\u00010\u00062\u0006\u0010$\u001a\u00020#2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0004H\u0016¢\u0006\u0004\b)\u0010\u0003J!\u0010*\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0011H\u0016¢\u0006\u0004\b-\u0010\u001cJ\u0017\u0010.\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0011H\u0016¢\u0006\u0004\b.\u0010\u001cJ\u000f\u0010/\u001a\u00020\u0011H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0004H\u0016¢\u0006\u0004\b1\u0010\u0003J-\u00107\u001a\u00020\u00042\u0006\u00102\u001a\u00020\u000f2\u0006\u00104\u001a\u0002032\f\u00106\u001a\b\u0012\u0004\u0012\u00020305H\u0014¢\u0006\u0004\b7\u00108J/\u0010=\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u000f2\u0016\u0010<\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010;0:\"\u0004\u0018\u00010;H\u0016¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u0004H\u0016¢\u0006\u0004\b?\u0010\u0003R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\"\u0010N\u001a\u00020G8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u0018\u0010Q\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0018\u0010U\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0018\u0010Y\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0018\u0010]\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u001a\u0010a\u001a\b\u0012\u0004\u0012\u00020\u00110^8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b_\u0010`¨\u0006b"}, d2 = {"Lcom/transsion/cloud/fragment/CloudRecentlyFragment;", "Lcom/transsion/cloud/fragment/CloudBaseFragment;", MethodDecl.initName, "()V", "Lzfb;", "X0", "Landroid/view/View;", "view", "initView", "(Landroid/view/View;)V", "V0", "backToPage", "stopEdit", "Lcom/transsion/cloud/adapter/CloudDataAdapter;", "adapter", "", "position", "", "child", "selectItem", "(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V", "b1", "L0", "updateBottomOperationBar", "initBottomOperationBar", "addVideoBarShowStateObserver", PushConstants.PUSH_SERVICE_TYPE_SHOW, "notifyVideoBarShowStateChange", "(Z)V", "getBottomPadding", "(Z)I", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "enter", "editMode", "updateViewWhenEditMode", "onBackPressed", "()Z", "showDeleteDialog", "type", "Lcom/transsion/dbdata/beans/VideoCloudData;", "videoCloudData", "", "videoCloudDataList", "refreshCloudListData", "(ILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V", "eventId", "", "", "args", "didReceivedNotification", "(I[Ljava/lang/Object;)V", "onPause", "Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;", CmcdData.STREAM_TYPE_LIVE, "Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;", "mBinding", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/transsion/cloud/adapter/CloudDataAdapter;", "mCloudDataAdapter", "Lcom/transsion/cloud/viewmodel/RecentlyViewModel;", "n", "Lcom/transsion/cloud/viewmodel/RecentlyViewModel;", "M0", "()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;", "c1", "(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;)V", "mViewModelRecently", "o", "Landroid/view/View;", "mLlTopMenu", "Lcom/transsion/widgetslib/widget/OSIconTextView;", TtmlNode.TAG_P, "Lcom/transsion/widgetslib/widget/OSIconTextView;", "mIvCkClearAll", "Lcom/transsion/playercommon/widgets/NewAppFootActionBar;", "q", "Lcom/transsion/playercommon/widgets/NewAppFootActionBar;", "mEditFootOperationBar", "Lcom/transsion/playercommon/videomodel/MainViewModel;", "r", "Lcom/transsion/playercommon/videomodel/MainViewModel;", "mMainViewModel", "Landroidx/lifecycle/Observer;", "s", "Landroidx/lifecycle/Observer;", "mVideoBarShowStateObserver", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudRecentlyFragment extends CloudBaseFragment {

    public LayoutCloudRecentlyViewBinding mBinding;

    public CloudDataAdapter mCloudDataAdapter;

    public RecentlyViewModel mViewModelRecently;

    public View mLlTopMenu;

    public OSIconTextView mIvCkClearAll;

    public NewAppFootActionBar mEditFootOperationBar;

    public MainViewModel mMainViewModel;

    public final Observer mVideoBarShowStateObserver = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            CloudRecentlyFragment.Y0(this.a, (Boolean) obj);
        }
    };

    public static final class a implements DialogInterface.OnClickListener {

        public static final class C0208a extends sf0 {
            @Override
            public void onNext(BaseResponse baseResponse) {
                y45.j(baseResponse, "voidBaseResponse");
                if (baseResponse.isSuccess()) {
                    h27.c().e(1131, new Object[0]);
                } else {
                    h27.c().e(1129, new Object[0]);
                }
            }

            @Override
            public void onError(Throwable th) {
                y45.j(th, "e");
                h27.c().e(1129, new Object[0]);
            }
        }

        public a() {
        }

        public static final String c(VideoCloudData videoCloudData) {
            y45.g(videoCloudData);
            return videoCloudData.getFileId();
        }

        public static final String d(e74 e74Var, Object obj) {
            return (String) e74Var.invoke(obj);
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            CloudDataAdapter cloudDataAdapter = CloudRecentlyFragment.this.mCloudDataAdapter;
            y45.g(cloudDataAdapter);
            Stream stream = cloudDataAdapter.getSelectVideoCloudList().stream();
            final e74 e74Var = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return CloudRecentlyFragment.a.c((VideoCloudData) obj);
                }
            };
            Object objCollect = stream.map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return CloudRecentlyFragment.a.d(e74Var, obj);
                }
            }).collect(Collectors.toList());
            y45.i(objCollect, "collect(...)");
            ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).deletePlayRecord(new CloudHistoryRequestDataForDelete((List) objCollect)).d0(k29.c()).M(vb.a()).subscribe(new C0208a());
        }
    }

    public static final class b implements CloudDataAdapter.a {
        public b() {
        }

        @Override
        public void a(View view, int i, VideoCloudData videoCloudData, boolean z, View view2) {
            TextView textView;
            List<VideoCloudData> data;
            CloudDataAdapter cloudDataAdapter = CloudRecentlyFragment.this.mCloudDataAdapter;
            if (cloudDataAdapter != null) {
                cloudDataAdapter.v(videoCloudData, true, i, true);
            }
            if (((PlayBaseFragment) CloudRecentlyFragment.this).isInEditMode) {
                return;
            }
            CloudRecentlyFragment.this.editMode(true);
            CheckBox mCheckBoxAll = CloudRecentlyFragment.this.getMCheckBoxAll();
            String string = null;
            if (mCheckBoxAll != null) {
                CloudDataAdapter cloudDataAdapter2 = CloudRecentlyFragment.this.mCloudDataAdapter;
                Integer numValueOf = cloudDataAdapter2 != null ? Integer.valueOf(cloudDataAdapter2.l()) : null;
                CloudDataAdapter cloudDataAdapter3 = CloudRecentlyFragment.this.mCloudDataAdapter;
                mCheckBoxAll.setChecked(y45.e(numValueOf, (cloudDataAdapter3 == null || (data = cloudDataAdapter3.getData()) == null) ? null : Integer.valueOf(data.size())));
            }
            LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding = CloudRecentlyFragment.this.mBinding;
            if (layoutCloudRecentlyViewBinding == null || (textView = layoutCloudRecentlyViewBinding.i) == null) {
                return;
            }
            Context context = ((BaseFragment) CloudRecentlyFragment.this).mContext;
            if (context != null) {
                int i2 = R.string.items;
                CloudDataAdapter cloudDataAdapter4 = CloudRecentlyFragment.this.mCloudDataAdapter;
                string = context.getString(i2, cloudDataAdapter4 != null ? Integer.valueOf(cloudDataAdapter4.l()) : null);
            }
            textView.setText(string);
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

    public static final void N0(CloudRecentlyFragment cloudRecentlyFragment, int i) {
        if (i == 0) {
            cloudRecentlyFragment.L0();
        }
    }

    public static final void O0(CloudRecentlyFragment cloudRecentlyFragment, View view) {
        if (cloudRecentlyFragment.ingoreClickEvent()) {
            return;
        }
        if (cloudRecentlyFragment.isInEditMode) {
            cloudRecentlyFragment.backToPage();
            return;
        }
        FragmentActivity activity = cloudRecentlyFragment.getActivity();
        if (activity != null) {
            BaseActivity baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
            if (baseActivity != null) {
                a64.a(baseActivity);
            }
        }
    }

    public static final void P0(CloudRecentlyFragment cloudRecentlyFragment, View view) {
        TextView textView;
        CheckBox mCheckBoxAll = cloudRecentlyFragment.getMCheckBoxAll();
        if (mCheckBoxAll == null || !mCheckBoxAll.isChecked()) {
            CloudDataAdapter cloudDataAdapter = cloudRecentlyFragment.mCloudDataAdapter;
            if (cloudDataAdapter != null) {
                cloudDataAdapter.u(false);
            }
        } else {
            CloudDataAdapter cloudDataAdapter2 = cloudRecentlyFragment.mCloudDataAdapter;
            if (cloudDataAdapter2 != null) {
                cloudDataAdapter2.u(true);
            }
        }
        PlayBaseFragment.d dVar = cloudRecentlyFragment.mEditModeListener;
        String string = null;
        if (dVar != null) {
            CloudDataAdapter cloudDataAdapter3 = cloudRecentlyFragment.mCloudDataAdapter;
            ArrayList selectVideoCloudList = cloudDataAdapter3 != null ? cloudDataAdapter3.getSelectVideoCloudList() : null;
            CloudDataAdapter cloudDataAdapter4 = cloudRecentlyFragment.mCloudDataAdapter;
            dVar.b(selectVideoCloudList, cloudDataAdapter4 != null ? cloudDataAdapter4.r() : false, false);
        }
        cloudRecentlyFragment.updateBottomOperationBar();
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding = cloudRecentlyFragment.mBinding;
        if (layoutCloudRecentlyViewBinding == null || (textView = layoutCloudRecentlyViewBinding.i) == null) {
            return;
        }
        Context context = cloudRecentlyFragment.mContext;
        if (context != null) {
            int i = R.string.items;
            CloudDataAdapter cloudDataAdapter5 = cloudRecentlyFragment.mCloudDataAdapter;
            string = context.getString(i, cloudDataAdapter5 != null ? Integer.valueOf(cloudDataAdapter5.l()) : null);
        }
        textView.setText(string);
    }

    public static final void Q0(CloudRecentlyFragment cloudRecentlyFragment, View view) {
        cloudRecentlyFragment.showDeleteDialog();
    }

    public static final void R0(CloudRecentlyFragment cloudRecentlyFragment) {
        if (cloudRecentlyFragment.M0().getMIsUploadSelectModel()) {
            return;
        }
        cloudRecentlyFragment.M0().g0();
        RecentlyViewModel.u0(cloudRecentlyFragment.M0(), 0, 1, null);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void S0(CloudRecentlyFragment cloudRecentlyFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        String str;
        TextView textView;
        List<VideoCloudData> data;
        if (i >= baseQuickAdapter.getData().size() || (layoutCloudRecentlyViewBinding = cloudRecentlyFragment.mBinding) == null || (customSwipeRefreshLayout = layoutCloudRecentlyViewBinding.e) == null || customSwipeRefreshLayout.isRefreshing()) {
            return;
        }
        String string = null;
        if (!cloudRecentlyFragment.isInEditMode) {
            Object obj = baseQuickAdapter.getData().get(i);
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData");
            VideoCloudData videoCloudData = (VideoCloudData) obj;
            s21.a aVar = s21.b;
            List data2 = baseQuickAdapter.getData();
            y45.h(data2, "null cannot be cast to non-null type kotlin.collections.List<com.transsion.dbdata.beans.VideoCloudData>");
            aVar.e(data2);
            cloudRecentlyFragment.jumpToPlayForRecent(videoCloudData, 1001);
            if (videoCloudData.getDataType() == 2) {
                str = "medialibrary";
            } else {
                String parentFileId = videoCloudData.getParentFileId();
                str = (parentFileId == null || parentFileId.length() == 0) ? "own" : "shared";
            }
            Long size = videoCloudData.getSize();
            float fB = cz5.b(size != null ? size.longValue() : 0L, true);
            az5.a.u(fB != 0.0f ? Float.valueOf(fB) : null, videoCloudData.getFileName(), str);
            return;
        }
        cloudRecentlyFragment.selectItem(cloudRecentlyFragment.mCloudDataAdapter, view, i, true);
        PlayBaseFragment.d dVar = cloudRecentlyFragment.mEditModeListener;
        if (dVar != null) {
            CloudDataAdapter cloudDataAdapter = cloudRecentlyFragment.mCloudDataAdapter;
            ArrayList selectVideoCloudList = cloudDataAdapter != null ? cloudDataAdapter.getSelectVideoCloudList() : null;
            CloudDataAdapter cloudDataAdapter2 = cloudRecentlyFragment.mCloudDataAdapter;
            dVar.b(selectVideoCloudList, cloudDataAdapter2 != null ? cloudDataAdapter2.r() : false, false);
        }
        cloudRecentlyFragment.updateBottomOperationBar();
        CheckBox mCheckBoxAll = cloudRecentlyFragment.getMCheckBoxAll();
        if (mCheckBoxAll != null) {
            CloudDataAdapter cloudDataAdapter3 = cloudRecentlyFragment.mCloudDataAdapter;
            Integer numValueOf = cloudDataAdapter3 != null ? Integer.valueOf(cloudDataAdapter3.l()) : null;
            CloudDataAdapter cloudDataAdapter4 = cloudRecentlyFragment.mCloudDataAdapter;
            mCheckBoxAll.setChecked(y45.e(numValueOf, (cloudDataAdapter4 == null || (data = cloudDataAdapter4.getData()) == null) ? null : Integer.valueOf(data.size())));
        }
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding2 = cloudRecentlyFragment.mBinding;
        if (layoutCloudRecentlyViewBinding2 == null || (textView = layoutCloudRecentlyViewBinding2.i) == null) {
            return;
        }
        Context context = cloudRecentlyFragment.mContext;
        if (context != null) {
            int i2 = R.string.items;
            CloudDataAdapter cloudDataAdapter5 = cloudRecentlyFragment.mCloudDataAdapter;
            string = context.getString(i2, cloudDataAdapter5 != null ? Integer.valueOf(cloudDataAdapter5.l()) : null);
        }
        textView.setText(string);
    }

    public static final void T0(final CloudRecentlyFragment cloudRecentlyFragment) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        cloudRecentlyFragment.M0().i0(1);
        RecentlyViewModel.u0(cloudRecentlyFragment.M0(), 0, 1, null);
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding = cloudRecentlyFragment.mBinding;
        if (layoutCloudRecentlyViewBinding == null || (customSwipeRefreshLayout = layoutCloudRecentlyViewBinding.e) == null) {
            return;
        }
        customSwipeRefreshLayout.postDelayed(new Runnable() {
            @Override
            public final void run() {
                CloudRecentlyFragment.U0(this.b);
            }
        }, 1000L);
    }

    public static final void U0(CloudRecentlyFragment cloudRecentlyFragment) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding = cloudRecentlyFragment.mBinding;
        if (layoutCloudRecentlyViewBinding == null || (customSwipeRefreshLayout = layoutCloudRecentlyViewBinding.e) == null) {
            return;
        }
        customSwipeRefreshLayout.setRefreshing(false);
    }

    private final void V0() {
        M0().getMCloudRecentlyList().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudRecentlyFragment.W0(this.b, (List) obj);
            }
        }));
    }

    public static final zfb W0(CloudRecentlyFragment cloudRecentlyFragment, List list) {
        CheckBox mCheckBoxAll;
        List<VideoCloudData> data;
        CloudDataAdapter cloudDataAdapter;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        OSIconTextView oSIconTextView;
        if (cloudRecentlyFragment.M0().getMCurrentPage() == 1) {
            List list2 = list;
            if (list2 == null || list2.isEmpty()) {
                OSIconTextView oSIconTextView2 = cloudRecentlyFragment.mIvCkClearAll;
                if (oSIconTextView2 != null) {
                    oSIconTextView2.setVisibility(8);
                }
                NewAppFootActionBar newAppFootActionBar = cloudRecentlyFragment.mEditFootOperationBar;
                if (newAppFootActionBar != null) {
                    newAppFootActionBar.setVisibility(8);
                }
            } else if (!cloudRecentlyFragment.isInEditMode && (oSIconTextView = cloudRecentlyFragment.mIvCkClearAll) != null) {
                oSIconTextView.setVisibility(0);
            }
            if (list != null) {
                CloudDataAdapter cloudDataAdapter2 = cloudRecentlyFragment.mCloudDataAdapter;
                if (cloudDataAdapter2 != null) {
                    cloudDataAdapter2.setNewData(new ArrayList(list));
                }
                LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding = cloudRecentlyFragment.mBinding;
                if (layoutCloudRecentlyViewBinding != null && (customSwipeRefreshLayout = layoutCloudRecentlyViewBinding.e) != null) {
                    customSwipeRefreshLayout.setRefreshing(false);
                }
                if (list.size() < cloudRecentlyFragment.M0().getMPageSize() && (cloudDataAdapter = cloudRecentlyFragment.mCloudDataAdapter) != null) {
                    cloudDataAdapter.loadMoreEnd();
                }
            }
        } else {
            if (list == null || list.isEmpty()) {
                CloudDataAdapter cloudDataAdapter3 = cloudRecentlyFragment.mCloudDataAdapter;
                if (cloudDataAdapter3 != null) {
                    cloudDataAdapter3.loadMoreEnd();
                }
                return zfb.a;
            }
            CloudDataAdapter cloudDataAdapter4 = cloudRecentlyFragment.mCloudDataAdapter;
            if (cloudDataAdapter4 != null) {
                cloudDataAdapter4.addData((Collection) new ArrayList(list));
            }
            CloudDataAdapter cloudDataAdapter5 = cloudRecentlyFragment.mCloudDataAdapter;
            if (cloudDataAdapter5 != null) {
                cloudDataAdapter5.loadMoreComplete();
            }
            CloudDataAdapter cloudDataAdapter6 = cloudRecentlyFragment.mCloudDataAdapter;
            Integer numValueOf = null;
            Integer numValueOf2 = cloudDataAdapter6 != null ? Integer.valueOf(cloudDataAdapter6.l()) : null;
            CloudDataAdapter cloudDataAdapter7 = cloudRecentlyFragment.mCloudDataAdapter;
            if (cloudDataAdapter7 != null && (data = cloudDataAdapter7.getData()) != null) {
                numValueOf = Integer.valueOf(data.size());
            }
            if (!y45.e(numValueOf2, numValueOf) && (mCheckBoxAll = cloudRecentlyFragment.getMCheckBoxAll()) != null) {
                mCheckBoxAll.setChecked(false);
            }
        }
        return zfb.a;
    }

    private final void X0() {
        if (getActivity() != null && !MainApp.p()) {
            ToastUtils.s(R.string.net_not_connect);
        }
        RecentlyViewModel.u0(M0(), 0, 1, null);
    }

    public static final void Y0(CloudRecentlyFragment cloudRecentlyFragment, Boolean bool) {
        cloudRecentlyFragment.notifyVideoBarShowStateChange(bool != null ? bool.booleanValue() : false);
    }

    public static final void Z0(CloudRecentlyFragment cloudRecentlyFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        List data;
        if (view.getId() == R.id.iv_bucket_fragment_item_more) {
            Object obj = (baseQuickAdapter == null || (data = baseQuickAdapter.getData()) == null) ? null : data.get(i);
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData");
            VideoCloudData videoCloudData = (VideoCloudData) obj;
            cloudRecentlyFragment.showMenuDialog(videoCloudData);
            cloudRecentlyFragment.getMViewModel().o0(videoCloudData);
        }
    }

    public static final boolean a1(List list, VideoCloudData videoCloudData) {
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (y45.e(((VideoCloudData) it.next()).getFileId(), videoCloudData.getFileId())) {
                return true;
            }
        }
        return false;
    }

    private final void b1() {
        if (this.isInEditMode) {
            return;
        }
        getMViewModel().i0(1);
        RecentlyViewModel.u0(M0(), 0, 1, null);
    }

    public static final void d1(CloudRecentlyFragment cloudRecentlyFragment, DialogInterface dialogInterface, int i) {
        RecentlyViewModel recentlyViewModelM0 = cloudRecentlyFragment.M0();
        CloudDataAdapter cloudDataAdapter = cloudRecentlyFragment.mCloudDataAdapter;
        recentlyViewModelM0.s0(cloudDataAdapter != null ? cloudDataAdapter.getData() : null);
    }

    public static final void e1(DialogInterface dialogInterface, int i) {
    }

    private final void initView(View view) {
        OSIconTextView oSIconTextView;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        CloudDataAdapter cloudDataAdapter;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        if (view != null) {
            setMCheckBoxAll((CheckBox) view.findViewById(R.id.title_bar_checkBox));
            CheckBox mCheckBoxAll = getMCheckBoxAll();
            if (mCheckBoxAll != null) {
                mCheckBoxAll.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        CloudRecentlyFragment.P0(this.b, view2);
                    }
                });
            }
            View viewFindViewById = view.findViewById(R.id.top_menu_ll);
            this.mLlTopMenu = viewFindViewById;
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
            OSIconTextView oSIconTextView2 = (OSIconTextView) view.findViewById(R.id.iv_download);
            this.mIvCkClearAll = oSIconTextView2;
            if (oSIconTextView2 != null) {
                oSIconTextView2.setText(R.string.os_clean);
            }
            OSIconTextView oSIconTextView3 = this.mIvCkClearAll;
            if (oSIconTextView3 != null) {
                oSIconTextView3.setVisibility(0);
            }
            OSIconTextView oSIconTextView4 = this.mIvCkClearAll;
            if (oSIconTextView4 != null) {
                oSIconTextView4.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        CloudRecentlyFragment.Q0(this.b, view2);
                    }
                });
            }
        }
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding = this.mBinding;
        if (layoutCloudRecentlyViewBinding != null && (recyclerView3 = layoutCloudRecentlyViewBinding.f) != null) {
            recyclerView3.addItemDecoration(new CloudItemDecoration(com.transsion.utils.a.d(this.mActivity, 16.0f)));
        }
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding2 = this.mBinding;
        if (layoutCloudRecentlyViewBinding2 != null && (recyclerView2 = layoutCloudRecentlyViewBinding2.f) != null) {
            recyclerView2.setLayoutManager(new CustomLinearLayoutManager(getContext()));
        }
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding3 = this.mBinding;
        if (layoutCloudRecentlyViewBinding3 != null && (recyclerView = layoutCloudRecentlyViewBinding3.f) != null) {
            recyclerView.setAdapter(this.mCloudDataAdapter);
        }
        CloudDataAdapter cloudDataAdapter2 = this.mCloudDataAdapter;
        if (cloudDataAdapter2 != null) {
            cloudDataAdapter2.setPreLoadNumber(1);
        }
        if (getActivity() != null && (cloudDataAdapter = this.mCloudDataAdapter) != null) {
            cloudDataAdapter.setLoadMoreView(new mo1(getActivity()).a(Boolean.FALSE));
        }
        CloudDataAdapter cloudDataAdapter3 = this.mCloudDataAdapter;
        if (cloudDataAdapter3 != null) {
            LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding4 = this.mBinding;
            cloudDataAdapter3.disableLoadMoreIfNotFullPage(layoutCloudRecentlyViewBinding4 != null ? layoutCloudRecentlyViewBinding4.f : null);
        }
        CloudDataAdapter cloudDataAdapter4 = this.mCloudDataAdapter;
        if (cloudDataAdapter4 != null) {
            BaseQuickAdapter.RequestLoadMoreListener requestLoadMoreListener = new BaseQuickAdapter.RequestLoadMoreListener() {
                @Override
                public final void onLoadMoreRequested() {
                    CloudRecentlyFragment.R0(this.a);
                }
            };
            LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding5 = this.mBinding;
            cloudDataAdapter4.setOnLoadMoreListener(requestLoadMoreListener, layoutCloudRecentlyViewBinding5 != null ? layoutCloudRecentlyViewBinding5.f : null);
        }
        CloudDataAdapter cloudDataAdapter5 = this.mCloudDataAdapter;
        if (cloudDataAdapter5 != null) {
            cloudDataAdapter5.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    CloudRecentlyFragment.S0(this.b, baseQuickAdapter, view2, i);
                }
            });
        }
        CloudDataAdapter cloudDataAdapter6 = this.mCloudDataAdapter;
        if (cloudDataAdapter6 != null) {
            cloudDataAdapter6.setOnDragListener(new b());
        }
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding6 = this.mBinding;
        if (layoutCloudRecentlyViewBinding6 != null && (customSwipeRefreshLayout = layoutCloudRecentlyViewBinding6.e) != null) {
            customSwipeRefreshLayout.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
                @Override
                public final void onRefresh() {
                    CloudRecentlyFragment.T0(this.a);
                }
            });
        }
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding7 = this.mBinding;
        if (layoutCloudRecentlyViewBinding7 == null || (oSIconTextView = layoutCloudRecentlyViewBinding7.h) == null) {
            return;
        }
        oSIconTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                CloudRecentlyFragment.O0(this.b, view2);
            }
        });
    }

    private final void notifyVideoBarShowStateChange(boolean show) {
        RecyclerView recyclerView;
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding = this.mBinding;
        if (layoutCloudRecentlyViewBinding == null || (recyclerView = layoutCloudRecentlyViewBinding.f) == null) {
            return;
        }
        recyclerView.setPadding(recyclerView.getPaddingStart(), recyclerView.getPaddingTop(), recyclerView.getPaddingEnd(), com.transsion.utils.a.d(this.mContext, getBottomPadding(show)));
    }

    private final void stopEdit() {
        backToPage();
    }

    public final void L0() {
        CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
        y45.g(cloudDataAdapter);
        boolean zR = cloudDataAdapter.r();
        Context context = this.mContext;
        CloudDataAdapter cloudDataAdapter2 = this.mCloudDataAdapter;
        y45.g(cloudDataAdapter2);
        FileOperateUtils.g0(zR, context, cloudDataAdapter2.l(), new a());
    }

    public final RecentlyViewModel M0() {
        RecentlyViewModel recentlyViewModel = this.mViewModelRecently;
        if (recentlyViewModel != null) {
            return recentlyViewModel;
        }
        y45.B("mViewModelRecently");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void addVideoBarShowStateObserver() {
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

    public final void backToPage() {
        TextView textView;
        editMode(false);
        CheckBox mCheckBoxAll = getMCheckBoxAll();
        if (mCheckBoxAll != null) {
            mCheckBoxAll.setChecked(false);
        }
        CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
        if (cloudDataAdapter != null) {
            cloudDataAdapter.g();
        }
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding = this.mBinding;
        if (layoutCloudRecentlyViewBinding == null || (textView = layoutCloudRecentlyViewBinding.i) == null) {
            return;
        }
        Context context = this.mContext;
        textView.setText(context != null ? context.getString(R.string.visha_recent_view) : null);
    }

    public final void c1(RecentlyViewModel recentlyViewModel) {
        y45.j(recentlyViewModel, "<set-?>");
        this.mViewModelRecently = recentlyViewModel;
    }

    @Override
    public void didReceivedNotification(int eventId, Object... args) {
        List<VideoCloudData> list;
        y45.j(args, "args");
        switch (eventId) {
            case 1129:
                backToPage();
                break;
            case 1130:
                backToPage();
                break;
            case 1131:
                backToPage();
                b1();
                break;
            case 1133:
                if (!(args.length == 0)) {
                    Object obj = args[0];
                    if (obj instanceof FileHandlerData) {
                        y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.FileHandlerData");
                        FileHandlerData fileHandlerData = (FileHandlerData) obj;
                        VideoCloudData data = fileHandlerData.getData();
                        if (data != null && (list = fileHandlerData.getList()) != null) {
                            refreshCloudListData(fileHandlerData.getHandleType(), data, list);
                            break;
                        }
                    }
                }
                break;
        }
    }

    @Override
    public void editMode(boolean enter) {
        super.editMode(enter);
        this.isInEditMode = enter;
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null) {
            dVar.d(enter, 1001, true);
            PlayBaseFragment.d dVar2 = this.mEditModeListener;
            CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
            ArrayList selectVideoCloudList = cloudDataAdapter != null ? cloudDataAdapter.getSelectVideoCloudList() : null;
            CloudDataAdapter cloudDataAdapter2 = this.mCloudDataAdapter;
            dVar2.b(selectVideoCloudList, cloudDataAdapter2 != null ? cloudDataAdapter2.r() : false, false);
        }
        initBottomOperationBar();
        applyEditFootBarBottomInset(this.mEditFootOperationBar);
        updateViewWhenEditMode(enter);
        CloudDataAdapter cloudDataAdapter3 = this.mCloudDataAdapter;
        if (cloudDataAdapter3 != null) {
            cloudDataAdapter3.y(enter);
        }
        CloudDataAdapter cloudDataAdapter4 = this.mCloudDataAdapter;
        if (cloudDataAdapter4 != null) {
            cloudDataAdapter4.notifyDataSetChanged();
        }
        updateBottomOperationBar();
        this.mActivity.enterEditMode(enter, 1001, true);
        notifyVideoBarShowStateChange(enter);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001c  */
    public final int getBottomPadding(boolean show) {
        boolean z;
        int i;
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
        if (z && zIsFoldScreen && show) {
            i = 115;
        } else {
            i = (show || this.isInEditMode || (z && zIsFoldScreen)) ? 60 : 0;
        }
        int i2 = (zIsFoldScreen || show || !this.isInEditMode) ? i : 0;
        if (z && zIsFoldScreen && this.isInEditMode && !show) {
            return 115;
        }
        return i2;
    }

    public final void initBottomOperationBar() {
        RelativeLayout root;
        if (this.mEditFootOperationBar == null) {
            LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBinding = this.mBinding;
            ViewStub viewStub = (layoutCloudRecentlyViewBinding == null || (root = layoutCloudRecentlyViewBinding.getRoot()) == null) ? null : (ViewStub) root.findViewById(R.id.bottom_action_new_bar);
            if (viewStub != null) {
                NewAppFootActionBar newAppFootActionBar = (NewAppFootActionBar) viewStub.inflate();
                this.mEditFootOperationBar = newAppFootActionBar;
                y45.g(newAppFootActionBar);
                newAppFootActionBar.setListFlag(1001);
                NewAppFootActionBar newAppFootActionBar2 = this.mEditFootOperationBar;
                y45.g(newAppFootActionBar2);
                newAppFootActionBar2.setAnim(true);
                NewAppFootActionBar newAppFootActionBar3 = this.mEditFootOperationBar;
                y45.g(newAppFootActionBar3);
                newAppFootActionBar3.setOnFootOptBarClickListener(new FootOperationBar.n() {
                    @Override
                    public final void onItemClick(int i) {
                        CloudRecentlyFragment.N0(this.b, i);
                    }
                });
                applyEditFootBarBottomInset(this.mEditFootOperationBar);
            }
        }
    }

    @Override
    public boolean onBackPressed() {
        if (!this.isInEditMode) {
            return super.onBackPressed();
        }
        stopEdit();
        return true;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        c1((RecentlyViewModel) new ViewModelProvider(this).get(RecentlyViewModel.class));
        CloudDataAdapter cloudDataAdapter = new CloudDataAdapter();
        this.mCloudDataAdapter = cloudDataAdapter;
        cloudDataAdapter.x(true);
        CloudDataAdapter cloudDataAdapter2 = this.mCloudDataAdapter;
        if (cloudDataAdapter2 != null) {
            cloudDataAdapter2.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
                @Override
                public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    CloudRecentlyFragment.Z0(this.a, baseQuickAdapter, view, i);
                }
            });
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        y45.j(inflater, "inflater");
        LayoutCloudRecentlyViewBinding layoutCloudRecentlyViewBindingC = LayoutCloudRecentlyViewBinding.c(inflater, container, false);
        this.mBinding = layoutCloudRecentlyViewBindingC;
        if (layoutCloudRecentlyViewBindingC != null) {
            return layoutCloudRecentlyViewBindingC.getRoot();
        }
        return null;
    }

    @Override
    public void onPause() {
        super.onPause();
        h27.c().f(this, 1129);
        h27.c().f(this, 1130);
        h27.c().f(this, 1131);
    }

    @Override
    public void onResume() {
        super.onResume();
        h27.c().b(this, 1129);
        h27.c().b(this, 1130);
        h27.c().b(this, 1131);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initView(view);
        V0();
        X0();
        addVideoBarShowStateObserver();
    }

    @Override
    public void refreshCloudListData(int type, VideoCloudData videoCloudData, final List videoCloudDataList) {
        List<VideoCloudData> listK;
        y45.j(videoCloudData, "videoCloudData");
        y45.j(videoCloudDataList, "videoCloudDataList");
        CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
        if (cloudDataAdapter == null || (listK = cloudDataAdapter.getData()) == null) {
            listK = y71.k();
        }
        ArrayList arrayList = new ArrayList(listK);
        if (type == 1) {
            arrayList.remove(videoCloudData);
            CloudDataAdapter cloudDataAdapter2 = this.mCloudDataAdapter;
            if (cloudDataAdapter2 != null) {
                cloudDataAdapter2.setNewData(arrayList);
                return;
            }
            return;
        }
        if (type != 2) {
            if (type != 3) {
                return;
            }
            d81.I(arrayList, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(CloudRecentlyFragment.a1(videoCloudDataList, (VideoCloudData) obj));
                }
            });
            CloudDataAdapter cloudDataAdapter3 = this.mCloudDataAdapter;
            if (cloudDataAdapter3 != null) {
                cloudDataAdapter3.setNewData(arrayList);
                return;
            }
            return;
        }
        Iterator it = arrayList.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (y45.e(((VideoCloudData) it.next()).getFileId(), videoCloudData.getFileId())) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            arrayList.set(i, videoCloudData);
            CloudDataAdapter cloudDataAdapter4 = this.mCloudDataAdapter;
            if (cloudDataAdapter4 != null) {
                cloudDataAdapter4.setNewData(arrayList);
            }
        }
    }

    public final void selectItem(CloudDataAdapter adapter, View view, int position, boolean child) {
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
    public void showDeleteDialog() {
        String string = this.mContext.getString(R.string.visha_clear_all_view_records_hint);
        y45.i(string, "getString(...)");
        new d.a(this.mContext).k(string).u(R.string.clear_empty, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                CloudRecentlyFragment.d1(this.b, dialogInterface, i);
            }
        }).m(com.transsion.playercommon.R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                CloudRecentlyFragment.e1(dialogInterface, i);
            }
        }).a().show();
    }

    public final void updateBottomOperationBar() {
        NewAppFootActionBar newAppFootActionBar = this.mEditFootOperationBar;
        if (newAppFootActionBar != null) {
            newAppFootActionBar.setVisibility(this.isInEditMode ? 0 : 8);
            if (newAppFootActionBar.getVisibility() == 0) {
                CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
                y45.g(cloudDataAdapter);
                newAppFootActionBar.setAllEnable(cloudDataAdapter.l() != 0);
            }
        }
    }

    @Override
    public void updateViewWhenEditMode(boolean enter) {
        super.updateViewWhenEditMode(enter);
        CheckBox mCheckBoxAll = getMCheckBoxAll();
        if (mCheckBoxAll != null) {
            mCheckBoxAll.setVisibility(enter ? 0 : 8);
        }
        OSIconTextView oSIconTextView = this.mIvCkClearAll;
        if (oSIconTextView != null) {
            oSIconTextView.setVisibility(enter ? 8 : 0);
        }
    }
}
