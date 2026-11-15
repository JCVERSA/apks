package com.cloud.tmc.miniapp.defaultimpl;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.integration.callback.OnPhotoSelectListener;
import com.cloud.tmc.integration.proxy.DialogProxy;
import com.cloud.tmc.integration.proxy.ImageSelectProxy;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.miniapp.base.BaseActivity;
import com.cloud.tmc.miniapp.ui.ImagePreviewActivity;
import com.cloud.tmc.miniapp.ui.ImageSelectActivity;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.cloud.tmc.miniutils.util.PermissionUtils;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

public final class TmcImageSelectImpl implements ImageSelectProxy {

    public static final class OooO00o implements PermissionUtils.SimpleCallback {
        public final Context OooO00o;
        public final ArrayList<String> OooO0O0;
        public final boolean OooO0OO;
        public final int OooO0Oo;
        public final BridgeCallback OooO0o0;

        public OooO00o(Context context, ArrayList<String> arrayList, boolean z10, int i10, BridgeCallback bridgeCallback) {
            this.OooO00o = context;
            this.OooO0O0 = arrayList;
            this.OooO0OO = z10;
            this.OooO0Oo = i10;
            this.OooO0o0 = bridgeCallback;
        }

        @Override
        public void onDenied() {
            BridgeCallback bridgeCallback = this.OooO0o0;
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed preview image, no permission : PI002").build());
            }
            Object obj = TmcProxy.get(DialogProxy.class);
            Intrinsics.g(obj, "get(DialogProxy::class.java)");
            DialogProxy.DefaultImpls.showStoragePermissionDialog$default((DialogProxy) obj, this.OooO00o, null, null, 6, null);
        }

        @Override
        public void onGranted() {
            Context context = this.OooO00o;
            if (context instanceof BaseActivity) {
                ImagePreviewActivity.Companion.launch((BaseActivity) context, 0, this.OooO0O0, this.OooO0OO, this.OooO0Oo);
            }
        }
    }

    public static final class OooO0O0 implements PermissionUtils.SimpleCallback {
        public final OnPhotoSelectListener OooO00o;
        public final Context OooO0O0;
        public final int OooO0OO;

        public static final class OooO00o extends Lambda implements Function0<Unit> {
            public final OnPhotoSelectListener OooO00o;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public OooO00o(OnPhotoSelectListener onPhotoSelectListener) {
                super(0);
                this.OooO00o = onPhotoSelectListener;
            }

            @Override
            public Object invoke() {
                try {
                    this.OooO00o.onDialogClickCancel();
                } catch (Throwable unused) {
                }
                return Unit.f64096a;
            }
        }

        public static final class C0295OooO0O0 implements OnPhotoSelectListener {
            public final OnPhotoSelectListener OooO00o;

            public C0295OooO0O0(OnPhotoSelectListener onPhotoSelectListener) {
                this.OooO00o = onPhotoSelectListener;
            }

            @Override
            public void onCancel() {
                this.OooO00o.onCancel();
            }

            @Override
            public void onDialogClickCancel() {
                OnPhotoSelectListener.DefaultImpls.onDialogClickCancel(this);
            }

            @Override
            public void onSelected(ArrayList<String> arrayList, ArrayList<Integer> arrayList2, boolean z10) {
                OnPhotoSelectListener.DefaultImpls.onSelected(this, arrayList, arrayList2, z10);
            }

            @Override
            public void onSelected(ArrayList<String> data) {
                Intrinsics.h(data, "data");
                this.OooO00o.onSelected(data);
            }

            @Override
            public void onAuthorized(boolean z10) {
            }
        }

        public OooO0O0(OnPhotoSelectListener onPhotoSelectListener, Context context, int i10) {
            this.OooO00o = onPhotoSelectListener;
            this.OooO0O0 = context;
            this.OooO0OO = i10;
        }

        @Override
        public void onDenied() {
            this.OooO00o.onAuthorized(false);
            ((DialogProxy) TmcProxy.get(DialogProxy.class)).showStoragePermissionDialog(this.OooO0O0, null, new OooO00o(this.OooO00o));
        }

        @Override
        public void onGranted() {
            this.OooO00o.onAuthorized(true);
            Context context = this.OooO0O0;
            if (context instanceof BaseActivity) {
                ImageSelectActivity.Companion.launch((BaseActivity) context, this.OooO0OO, new C0295OooO0O0(this.OooO00o));
            }
        }
    }

    @Override
    public void imagePreview(Context context, ArrayList<String> urls, boolean z10, int i10, BridgeCallback bridgeCallback) {
        Intrinsics.h(context, "context");
        Intrinsics.h(urls, "urls");
        PermissionUtils.permissionGroup(PermissionConstants.STORAGE_READ).callback(new OooO00o(context, urls, z10, i10, bridgeCallback)).request();
    }

    @Override
    public void imageSelect(Context context, int i10, OnPhotoSelectListener listener) {
        Intrinsics.h(context, "context");
        Intrinsics.h(listener, "listener");
        PermissionUtils.permissionGroup(PermissionConstants.MEDIA_IMAGES).callback(new OooO0O0(listener, context, i10)).request();
    }

    public final boolean isDestroy(Context context) {
        if (context == null) {
            return true;
        }
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            return activity.isFinishing() || activity.isDestroyed();
        }
        if (!(context instanceof FragmentActivity)) {
            return false;
        }
        FragmentActivity fragmentActivity = (FragmentActivity) context;
        return fragmentActivity.isFinishing() || fragmentActivity.isDestroyed();
    }
}
