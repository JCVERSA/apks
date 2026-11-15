package com.hisavana.mintegral.check;

import android.content.Context;
import android.text.TextUtils;
import com.hisavana.common.bean.AppStartInfo;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.MBridgeSDK;
import com.mbridge.msdk.out.MBridgeSDKFactory;
import com.mbridge.msdk.out.SDKInitStatusListener;
import com.mbridge.msdk.system.MBridgeSDKImpl;
import java.util.Map;

public final class MBridgeSDKManager {

    private static MBridgeSDKInitializeState f32474e;

    private volatile String f32475a;

    private volatile String f32476b;

    private volatile MBridgeSDKInitializeListener f32477c;

    private MBridgeSDK f32478d;

    private static final class ClassHolder {

        private static final MBridgeSDKManager f32479a = new MBridgeSDKManager();
    }

    private static class DefaultSDKInitStatusListener implements SDKInitStatusListener {

        private String f32480a;

        private String f32481b;

        private MBridgeSDKInitializeListener f32482c;

        public DefaultSDKInitStatusListener(String str, String str2, MBridgeSDKInitializeListener mBridgeSDKInitializeListener) {
            this.f32480a = str;
            this.f32481b = str2;
            this.f32482c = mBridgeSDKInitializeListener;
        }

        @Override
        public void onInitFail(String str) {
            MBridgeSDKInitializeState unused = MBridgeSDKManager.f32474e = MBridgeSDKInitializeState.SDK_STATE_INITIALIZE_FAILURE;
            MBridgeSDKInitializeListener mBridgeSDKInitializeListener = this.f32482c;
            if (mBridgeSDKInitializeListener != null) {
                mBridgeSDKInitializeListener.onInitializeFailure("sdk initialize failed： an exception occurs");
            }
        }

        @Override
        public void onInitSuccess() {
            MBridgeSDKInitializeState unused = MBridgeSDKManager.f32474e = MBridgeSDKInitializeState.SDK_STATE_INITIALIZE_SUCCESS;
            MBridgeSDKInitializeListener mBridgeSDKInitializeListener = this.f32482c;
            if (mBridgeSDKInitializeListener != null) {
                mBridgeSDKInitializeListener.onInitializeSuccess(this.f32480a, this.f32481b);
            }
        }
    }

    public interface MBridgeSDKInitializeListener {
        void onInitializeFailure(String str);

        void onInitializeSuccess(String str, String str2);
    }

    public enum MBridgeSDKInitializeState {
        SDK_STATE_UN_INITIALIZE,
        SDK_STATE_INITIALIZING,
        SDK_STATE_INITIALIZE_SUCCESS,
        SDK_STATE_INITIALIZE_FAILURE
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
    private void b(Context context, boolean z10, Map map, MBridgeSDKInitializeListener mBridgeSDKInitializeListener) {
        try {
            MBridgeConstans.DEBUG = z10;
            MBridgeSDKImpl mBridgeSDK = MBridgeSDKFactory.getMBridgeSDK();
            this.f32478d = mBridgeSDK;
            Map<String, String> mBConfigurationMap = mBridgeSDK.getMBConfigurationMap(this.f32476b, this.f32475a, "");
            if (map != null && !map.isEmpty()) {
                mBConfigurationMap.putAll(map);
            }
            this.f32478d.setConsentStatus(context, AppStartInfo.userConsent ? 1 : 0);
            this.f32478d.init(mBConfigurationMap, context, new DefaultSDKInitStatusListener(this.f32475a, this.f32476b, this.f32477c));
            this.f32478d.setCoppaStatus(context, AppStartInfo.ageRestrictedUser);
        } catch (Exception e10) {
            f32474e = MBridgeSDKInitializeState.SDK_STATE_INITIALIZE_FAILURE;
            if (this.f32477c != null) {
                mBridgeSDKInitializeListener.onInitializeFailure(e10.getMessage());
            }
        }
    }

    private boolean c(Context context, String str, String str2) {
        boolean z10;
        String str3;
        boolean z11 = false;
        if (context == null) {
            str3 = "context must not null";
            z10 = false;
        } else {
            z10 = true;
            str3 = "";
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            z11 = z10;
        } else if (TextUtils.isEmpty(str3)) {
            str3 = "appKey or appID must not null";
        } else {
            str3 = str3 + " & appKey or appID must not null";
        }
        if (!z11 && !TextUtils.isEmpty(str3) && this.f32477c != null) {
            f32474e = MBridgeSDKInitializeState.SDK_STATE_INITIALIZE_FAILURE;
            this.f32477c.onInitializeFailure(str3);
        }
        return z11;
    }

    public static MBridgeSDKManager getInstance() {
        return ClassHolder.f32479a;
    }

    public String getAppID() {
        return this.f32476b;
    }

    public String getAppKey() {
        return this.f32475a;
    }

    public MBridgeSDKInitializeState getCurrentState() {
        return f32474e;
    }

    public MBridgeSDK getMBridgeSDK() {
        return this.f32478d;
    }

    public synchronized void initialize(Context context, String str, String str2, boolean z10, Map<String, String> map, MBridgeSDKInitializeListener mBridgeSDKInitializeListener) {
        MBridgeSDKInitializeState mBridgeSDKInitializeState = f32474e;
        MBridgeSDKInitializeState mBridgeSDKInitializeState2 = MBridgeSDKInitializeState.SDK_STATE_INITIALIZING;
        if (mBridgeSDKInitializeState == mBridgeSDKInitializeState2) {
            if (mBridgeSDKInitializeListener != null) {
                mBridgeSDKInitializeListener.onInitializeFailure("sdk is initializing");
            }
            return;
        }
        this.f32477c = mBridgeSDKInitializeListener;
        if (c(context, str, str2)) {
            if (f32474e == MBridgeSDKInitializeState.SDK_STATE_INITIALIZE_SUCCESS && TextUtils.equals(this.f32476b, str2) && TextUtils.equals(this.f32475a, str)) {
                if (this.f32477c != null) {
                    this.f32477c.onInitializeSuccess(this.f32475a, this.f32476b);
                }
            } else {
                f32474e = mBridgeSDKInitializeState2;
                this.f32475a = str;
                this.f32476b = str2;
                b(context, z10, map, this.f32477c);
            }
        }
    }

    private MBridgeSDKManager() {
        f32474e = MBridgeSDKInitializeState.SDK_STATE_UN_INITIALIZE;
    }

    public synchronized void initialize(Context context, String str, String str2, boolean z10, Map<String, String> map) {
        initialize(context, str, str2, z10, map, null);
    }

    public synchronized void initialize(Context context, String str, String str2) {
        initialize(context, str, str2, false, null, null);
    }

    public synchronized void initialize(Context context, String str, String str2, boolean z10) {
        initialize(context, str, str2, z10, null, null);
    }

    public synchronized void initialize(Context context, String str, String str2, boolean z10, MBridgeSDKInitializeListener mBridgeSDKInitializeListener) {
        initialize(context, str, str2, z10, null, mBridgeSDKInitializeListener);
    }

    public synchronized void initialize(Context context, String str, String str2, MBridgeSDKInitializeListener mBridgeSDKInitializeListener) {
        initialize(context, str, str2, false, null, mBridgeSDKInitializeListener);
    }
}
