package com.snaptube.base;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.snaptube.premium.viewmodel.UiDarkConfig;
import com.trello.rxlifecycle.components.RxFragment;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.SourceDebugExtension;
import o.fc1;
import o.ih6;
import o.or3;
import o.r35;
import o.t14;
import o.uf8;
import o.x24;
import o.z24;
import o.za3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001:\u0001IB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00112\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0017\u0010\fJ\u000f\u0010\u0019\u001a\u00020\u0018H\u0015¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ#\u0010\u001f\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u001d*\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0018H\u0004¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\u0003J\u000f\u0010\"\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\"\u0010\u0003J\u000f\u0010#\u001a\u00020\u0006H\u0016¢\u0006\u0004\b#\u0010\u0003J\u000f\u0010$\u001a\u00020\u0006H\u0016¢\u0006\u0004\b$\u0010\u0003J\u000f\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b%\u0010\u0003J\u000f\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010\u0003J\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010\u0003J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020(H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020(H\u0016¢\u0006\u0004\b1\u0010-J\u000f\u00103\u001a\u0004\u0018\u000102¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020(H\u0016¢\u0006\u0004\b5\u0010-J\u000f\u00106\u001a\u00020\u0006H\u0002¢\u0006\u0004\b6\u0010\u0003R\u001b\u0010<\u001a\u0002078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\u0018\u0010?\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u001a\u0010D\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\f\n\u0004\bA\u0010B\u0012\u0004\bC\u0010\u0003R\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bF\u0010G¨\u0006J"}, d2 = {"Lcom/snaptube/base/BaseFragment;", "Lcom/trello/rxlifecycle/components/RxFragment;", "<init>", "()V", "Landroid/content/Context;", "context", "Lo/mg8;", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onActivityCreated", "", "E2", "()I", "H2", "(Landroid/view/View;)V", "T", "id", "C2", "(I)Landroid/view/View;", "onStart", "onResume", "onPause", "onStop", "onDestroyView", "onDestroy", "onDetach", "", "isVisibleToUser", "setUserVisibleHint", "(Z)V", "D2", "()Z", "Lcom/snaptube/premium/viewmodel/UiDarkConfig;", "F2", "()Lcom/snaptube/premium/viewmodel/UiDarkConfig;", "I2", "Lo/x24;", "K2", "()Lo/x24;", "J2", "B2", "Lo/uf8;", "c", "Lo/t14;", "G2", "()Lo/uf8;", "uiDarkModeViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/view/View;", "mRootView", "Lo/z24;", "e", "Lo/z24;", "getMReportDelegate$annotations", "mReportDelegate", "Lo/r35;", "f", "Lo/r35;", "navFragmentAdapter", "a", "base_release"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseFragment.kt\ncom/snaptube/base/BaseFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,175:1\n84#2,6:176\n*S KotlinDebug\n*F\n+ 1 BaseFragment.kt\ncom/snaptube/base/BaseFragment\n*L\n27#1:176,6\n*E\n"})
public class BaseFragment extends RxFragment {

    public View mRootView;

    @Inject
    @JvmField
    @Nullable
    public r35 navFragmentAdapter;

    public final t14 uiDarkModeViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, ih6.b(uf8.class), new BaseFragment$special$$inlined$activityViewModels$default$1(this), new BaseFragment$special$$inlined$activityViewModels$default$2(this));

    public final z24 mReportDelegate = new z24(getClass().getSimpleName() + "{" + Integer.toHexString(hashCode()) + "}");

    public interface a {
        void s0(BaseFragment baseFragment);
    }

    private final uf8 G2() {
        return (uf8) this.uiDarkModeViewModel.getValue();
    }

    public final void B2() {
        r35 r35Var;
        if (J2() || (r35Var = this.navFragmentAdapter) == null) {
            return;
        }
        r35Var.a(this);
    }

    public final View C2(int id) {
        View view = this.mRootView;
        if (view != null) {
            return view.findViewById(id);
        }
        return null;
    }

    public boolean D2() {
        return false;
    }

    public int E2() {
        return 0;
    }

    public UiDarkConfig F2() {
        return UiDarkConfig.e.a();
    }

    public void H2(View view) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
    }

    public boolean I2() {
        return this instanceof za3;
    }

    public boolean J2() {
        return false;
    }

    public final x24 K2() {
        if (getView() == null) {
            return null;
        }
        return getViewLifecycleOwner();
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mReportDelegate.q();
    }

    @Override
    public void onAttach(Context context) {
        or3.f(context, "context");
        super.onAttach(context);
        this.mReportDelegate.r();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Context context = getContext();
        ((a) fc1.a(context != null ? context.getApplicationContext() : null)).s0(this);
        this.mReportDelegate.s();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        or3.f(inflater, "inflater");
        int iE2 = E2();
        View viewInflate = iE2 != 0 ? inflater.inflate(iE2, container, false) : super.onCreateView(inflater, container, savedInstanceState);
        this.mReportDelegate.t();
        return viewInflate;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.mReportDelegate.u();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.mReportDelegate.v();
        this.mRootView = null;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        this.mReportDelegate.w();
    }

    @Override
    public void onPause() {
        super.onPause();
        this.mReportDelegate.x();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.mReportDelegate.y();
        if (I2()) {
            G2().t(F2());
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        this.mReportDelegate.z();
    }

    @Override
    public void onStop() {
        super.onStop();
        this.mReportDelegate.A();
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        this.mRootView = view;
        B2();
        H2(view);
    }

    @Override
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        this.mReportDelegate.B(isVisibleToUser);
    }
}
