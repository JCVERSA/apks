package androidx.fragment.app;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p009lifecycle.ViewTreeViewModelStoreOwner;
import androidx.p009lifecycle.c0;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;

public class DialogFragment extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    private static final String SAVED_BACK_STACK_ID = "android:backStackId";
    private static final String SAVED_CANCELABLE = "android:cancelable";
    private static final String SAVED_DIALOG_STATE_TAG = "android:savedDialogState";
    private static final String SAVED_INTERNAL_DIALOG_SHOWING = "android:dialogShowing";
    private static final String SAVED_SHOWS_DIALOG = "android:showsDialog";
    private static final String SAVED_STYLE = "android:style";
    private static final String SAVED_THEME = "android:theme";
    public static final int STYLE_NORMAL = 0;
    public static final int STYLE_NO_FRAME = 2;
    public static final int STYLE_NO_INPUT = 3;
    public static final int STYLE_NO_TITLE = 1;
    private int mBackStackId;
    private boolean mCancelable;
    private boolean mCreatingDialog;

    @Nullable
    private Dialog mDialog;
    private boolean mDialogCreated;
    private Runnable mDismissRunnable;
    private boolean mDismissed;
    private Handler mHandler;
    private c0 mObserver;
    private DialogInterface.OnCancelListener mOnCancelListener;
    private DialogInterface.OnDismissListener mOnDismissListener;
    private boolean mShownByMe;
    private boolean mShowsDialog;
    private int mStyle;
    private int mTheme;
    private boolean mViewDestroyed;

    class a implements DialogInterface.OnCancelListener {
        a() {
        }

        @Override
        public void onCancel(DialogInterface dialogInterface) {
            if (DialogFragment.this.mDialog != null) {
                DialogFragment dialogFragment = DialogFragment.this;
                dialogFragment.onCancel(dialogFragment.mDialog);
            }
        }
    }

    class b implements DialogInterface.OnDismissListener {
        b() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            if (DialogFragment.this.mDialog != null) {
                DialogFragment dialogFragment = DialogFragment.this;
                dialogFragment.onDismiss(dialogFragment.mDialog);
            }
        }
    }

    class c implements c0 {
        c() {
        }

        @Override
        public void onChanged(androidx.p009lifecycle.u uVar) {
            if (uVar == null || !DialogFragment.this.mShowsDialog) {
                return;
            }
            View viewRequireView = DialogFragment.this.requireView();
            if (viewRequireView.getParent() != null) {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
            if (DialogFragment.this.mDialog != null) {
                if (FragmentManager.M0(3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("DialogFragment ");
                    sb2.append(this);
                    sb2.append(" setting the content view on ");
                    sb2.append(DialogFragment.this.mDialog);
                }
                DialogFragment.this.mDialog.setContentView(viewRequireView);
            }
        }
    }

    class d extends f {

        final f f8949a;

        d(f fVar) {
            this.f8949a = fVar;
        }

        @Override
        public View c(int i10) {
            return this.f8949a.d() ? this.f8949a.c(i10) : DialogFragment.this.onFindViewById(i10);
        }

        @Override
        public boolean d() {
            return this.f8949a.d() || DialogFragment.this.onHasView();
        }
    }

    public DialogFragment() {
        this.mDismissRunnable = new Runnable() {
            @Override
            @SuppressLint({"SyntheticAccessor"})
            public void run() {
                DialogFragment.this.mOnDismissListener.onDismiss(DialogFragment.this.mDialog);
            }
        };
        this.mOnCancelListener = new a();
        this.mOnDismissListener = new b();
        this.mStyle = 0;
        this.mTheme = 0;
        this.mCancelable = true;
        this.mShowsDialog = true;
        this.mBackStackId = -1;
        this.mObserver = new c();
        this.mDialogCreated = false;
    }

    private void V(boolean z10, boolean z11, boolean z12) {
        if (this.mDismissed) {
            return;
        }
        this.mDismissed = true;
        this.mShownByMe = false;
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.mDialog.dismiss();
            if (!z11) {
                if (Looper.myLooper() == this.mHandler.getLooper()) {
                    onDismiss(this.mDialog);
                } else {
                    this.mHandler.post(this.mDismissRunnable);
                }
            }
        }
        this.mViewDestroyed = true;
        if (this.mBackStackId >= 0) {
            if (z12) {
                getParentFragmentManager().k1(this.mBackStackId, 1);
            } else {
                getParentFragmentManager().h1(this.mBackStackId, 1, z10);
            }
            this.mBackStackId = -1;
            return;
        }
        w wVarP = getParentFragmentManager().p();
        wVarP.x(true);
        wVarP.r(this);
        if (z12) {
            wVarP.k();
        } else if (z10) {
            wVarP.j();
        } else {
            wVarP.i();
        }
    }

    private void W(Bundle bundle) {
        if (this.mShowsDialog && !this.mDialogCreated) {
            try {
                this.mCreatingDialog = true;
                Dialog dialogOnCreateDialog = onCreateDialog(bundle);
                this.mDialog = dialogOnCreateDialog;
                if (this.mShowsDialog) {
                    setupDialog(dialogOnCreateDialog, this.mStyle);
                    Context context = getContext();
                    if (context instanceof Activity) {
                        this.mDialog.setOwnerActivity((Activity) context);
                    }
                    this.mDialog.setCancelable(this.mCancelable);
                    this.mDialog.setOnCancelListener(this.mOnCancelListener);
                    this.mDialog.setOnDismissListener(this.mOnDismissListener);
                    this.mDialogCreated = true;
                } else {
                    this.mDialog = null;
                }
            } finally {
                this.mCreatingDialog = false;
            }
        }
    }

    @Override
    @NonNull
    f createFragmentContainer() {
        return new d(super.createFragmentContainer());
    }

    public void dismiss() {
        V(false, false, false);
    }

    public void dismissAllowingStateLoss() {
        V(true, false, false);
    }

    public void dismissNow() {
        V(false, false, true);
    }

    @Nullable
    public Dialog getDialog() {
        return this.mDialog;
    }

    public boolean getShowsDialog() {
        return this.mShowsDialog;
    }

    public int getTheme() {
        return this.mTheme;
    }

    public boolean isCancelable() {
        return this.mCancelable;
    }

    @Override
    @Deprecated
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        getViewLifecycleOwnerLiveData().k(this.mObserver);
        if (this.mShownByMe) {
            return;
        }
        this.mDismissed = false;
    }

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.mHandler = new Handler();
        this.mShowsDialog = this.mContainerId == 0;
        if (bundle != null) {
            this.mStyle = bundle.getInt(SAVED_STYLE, 0);
            this.mTheme = bundle.getInt(SAVED_THEME, 0);
            this.mCancelable = bundle.getBoolean(SAVED_CANCELABLE, true);
            this.mShowsDialog = bundle.getBoolean(SAVED_SHOWS_DIALOG, this.mShowsDialog);
            this.mBackStackId = bundle.getInt(SAVED_BACK_STACK_ID, -1);
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCreateDialog called for DialogFragment ");
            sb2.append(this);
        }
        return new androidx.activity.q(requireContext(), getTheme());
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            this.mViewDestroyed = true;
            dialog.setOnDismissListener(null);
            this.mDialog.dismiss();
            if (!this.mDismissed) {
                onDismiss(this.mDialog);
            }
            this.mDialog = null;
            this.mDialogCreated = false;
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();
        if (!this.mShownByMe && !this.mDismissed) {
            this.mDismissed = true;
        }
        getViewLifecycleOwnerLiveData().o(this.mObserver);
    }

    @Override
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        if (this.mViewDestroyed) {
            return;
        }
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onDismiss called for DialogFragment ");
            sb2.append(this);
        }
        V(true, true, false);
    }

    @Nullable
    View onFindViewById(int i10) {
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            return dialog.findViewById(i10);
        }
        return null;
    }

    @Override
    @NonNull
    public LayoutInflater onGetLayoutInflater(@Nullable Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = super.onGetLayoutInflater(bundle);
        if (this.mShowsDialog && !this.mCreatingDialog) {
            W(bundle);
            if (FragmentManager.M0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("get layout inflater for DialogFragment ");
                sb2.append(this);
                sb2.append(" from dialog context");
            }
            Dialog dialog = this.mDialog;
            return dialog != null ? layoutInflaterOnGetLayoutInflater.cloneInContext(dialog.getContext()) : layoutInflaterOnGetLayoutInflater;
        }
        if (FragmentManager.M0(2)) {
            String str = "getting layout inflater for DialogFragment " + this;
            if (this.mShowsDialog) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("mCreatingDialog = true: ");
                sb3.append(str);
            } else {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("mShowsDialog = false: ");
                sb4.append(str);
            }
        }
        return layoutInflaterOnGetLayoutInflater;
    }

    boolean onHasView() {
        return this.mDialogCreated;
    }

    @Override
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean(SAVED_INTERNAL_DIALOG_SHOWING, false);
            bundle.putBundle(SAVED_DIALOG_STATE_TAG, bundleOnSaveInstanceState);
        }
        int i10 = this.mStyle;
        if (i10 != 0) {
            bundle.putInt(SAVED_STYLE, i10);
        }
        int i11 = this.mTheme;
        if (i11 != 0) {
            bundle.putInt(SAVED_THEME, i11);
        }
        boolean z10 = this.mCancelable;
        if (!z10) {
            bundle.putBoolean(SAVED_CANCELABLE, z10);
        }
        boolean z11 = this.mShowsDialog;
        if (!z11) {
            bundle.putBoolean(SAVED_SHOWS_DIALOG, z11);
        }
        int i12 = this.mBackStackId;
        if (i12 != -1) {
            bundle.putInt(SAVED_BACK_STACK_ID, i12);
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            this.mViewDestroyed = false;
            dialog.show();
            View decorView = this.mDialog.getWindow().getDecorView();
            ViewTreeLifecycleOwner.b(decorView, this);
            ViewTreeViewModelStoreOwner.b(decorView, this);
            ViewTreeSavedStateRegistryOwner.b(decorView, this);
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override
    public void onViewStateRestored(@Nullable Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.mDialog == null || bundle == null || (bundle2 = bundle.getBundle(SAVED_DIALOG_STATE_TAG)) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
    }

    @Override
    void performCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Bundle bundle2;
        super.performCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView != null || this.mDialog == null || bundle == null || (bundle2 = bundle.getBundle(SAVED_DIALOG_STATE_TAG)) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
    }

    @NonNull
    public final Dialog requireDialog() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            return dialog;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    public void setCancelable(boolean z10) {
        this.mCancelable = z10;
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.setCancelable(z10);
        }
    }

    public void setShowsDialog(boolean z10) {
        this.mShowsDialog = z10;
    }

    public void setStyle(int i10, int i11) {
        if (FragmentManager.M0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Setting style and theme for DialogFragment ");
            sb2.append(this);
            sb2.append(" to ");
            sb2.append(i10);
            sb2.append(", ");
            sb2.append(i11);
        }
        this.mStyle = i10;
        if (i10 == 2 || i10 == 3) {
            this.mTheme = R.style.Theme.Panel;
        }
        if (i11 != 0) {
            this.mTheme = i11;
        }
    }

    public void setupDialog(@NonNull Dialog dialog, int i10) {
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3) {
                return;
            }
            Window window = dialog.getWindow();
            if (window != null) {
                window.addFlags(24);
            }
        }
        dialog.requestWindowFeature(1);
    }

    public void show(FragmentManager fragmentManager, String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        w wVarP = fragmentManager.p();
        wVarP.x(true);
        wVarP.e(this, str);
        wVarP.i();
    }

    public void showNow(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        w wVarP = fragmentManager.p();
        wVarP.x(true);
        wVarP.e(this, str);
        wVarP.k();
    }

    public int show(@NonNull w wVar, @Nullable String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        wVar.e(this, str);
        this.mViewDestroyed = false;
        int i10 = wVar.i();
        this.mBackStackId = i10;
        return i10;
    }

    public DialogFragment(int i10) {
        super(i10);
        this.mDismissRunnable = new Runnable() {
            @Override
            @SuppressLint({"SyntheticAccessor"})
            public void run() {
                DialogFragment.this.mOnDismissListener.onDismiss(DialogFragment.this.mDialog);
            }
        };
        this.mOnCancelListener = new a();
        this.mOnDismissListener = new b();
        this.mStyle = 0;
        this.mTheme = 0;
        this.mCancelable = true;
        this.mShowsDialog = true;
        this.mBackStackId = -1;
        this.mObserver = new c();
        this.mDialogCreated = false;
    }

    @Override
    public void onCancel(DialogInterface dialogInterface) {
    }
}
