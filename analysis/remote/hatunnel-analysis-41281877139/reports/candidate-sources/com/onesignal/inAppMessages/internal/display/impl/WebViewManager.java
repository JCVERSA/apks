package com.onesignal.inAppMessages.internal.display.impl;

import android.app.Activity;
import android.os.Build;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import app.fast.ssh.ProtectedFastSSH;
import com.onesignal.common.AndroidUtils;
import com.onesignal.common.JSONObjectExtensionsKt;
import com.onesignal.common.ViewUtils;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.internal.application.IActivityLifecycleHandler;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.internal.InAppMessage;
import com.onesignal.inAppMessages.internal.InAppMessageClickResult;
import com.onesignal.inAppMessages.internal.InAppMessageContent;
import com.onesignal.inAppMessages.internal.InAppMessagePage;
import com.onesignal.inAppMessages.internal.lifecycle.IInAppLifecycleService;
import com.onesignal.inAppMessages.internal.prompt.IInAppMessagePromptFactory;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0000\u0018\u0000 >2\u00020\u0001:\u0003>?@B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0006\u0010\u001d\u001a\u00020\u001eJ\u0012\u0010\u001f\u001a\u00020\u00122\b\u0010 \u001a\u0004\u0018\u00010\u0012H\u0002J\u000e\u0010!\u001a\u00020\u001eH\u0082@¢\u0006\u0002\u0010\"J\u000e\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u0010J\u000e\u0010%\u001a\u00020\u001eH\u0086@¢\u0006\u0002\u0010\"J\b\u0010&\u001a\u00020\u001eH\u0002J\u0010\u0010'\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0010\u0010(\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010*\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010+\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010,\u001a\u00020-H\u0002J\u0010\u0010.\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020/H\u0007J\u0016\u00100\u001a\u00020\u001e2\u0006\u00101\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005J\u0012\u00102\u001a\u00020\u001e2\b\u00103\u001a\u0004\u0018\u00010\u0018H\u0002J\u0010\u00104\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J&\u00105\u001a\u00020\u001e2\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00122\u0006\u00108\u001a\u00020\u0010H\u0086@¢\u0006\u0002\u00109J\u0018\u0010:\u001a\u00020\u001e2\b\u0010;\u001a\u0004\u0018\u00010\u0015H\u0082@¢\u0006\u0002\u0010<J\u000e\u0010=\u001a\u00020\u001eH\u0082@¢\u0006\u0002\u0010\"R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006A"}, d2 = {"Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager;", "Lcom/onesignal/core/internal/application/IActivityLifecycleHandler;", "message", "Lcom/onesignal/inAppMessages/internal/InAppMessage;", "activity", "Landroid/app/Activity;", "messageContent", "Lcom/onesignal/inAppMessages/internal/InAppMessageContent;", "_lifecycle", "Lcom/onesignal/inAppMessages/internal/lifecycle/IInAppLifecycleService;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_promptFactory", "Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;", "(Lcom/onesignal/inAppMessages/internal/InAppMessage;Landroid/app/Activity;Lcom/onesignal/inAppMessages/internal/InAppMessageContent;Lcom/onesignal/inAppMessages/internal/lifecycle/IInAppLifecycleService;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;)V", "closing", "", "currentActivityName", "", "dismissFired", "lastPageHeight", "", "Ljava/lang/Integer;", "messageView", "Lcom/onesignal/inAppMessages/internal/display/impl/InAppMessageView;", "messageViewMutex", "Lkotlinx/coroutines/sync/Mutex;", "webView", "Lcom/onesignal/inAppMessages/internal/display/impl/OSWebView;", "backgroundDismissAndAwaitNextMessage", "", "bodySnippet", "body", "calculateHeightAndShowWebViewAfterNewActivity", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createNewInAppMessageView", "dragToDismissDisabled", "dismissAndAwaitNextMessage", "enableWebViewRemoteDebugging", "getWebViewMaxSizeX", "getWebViewMaxSizeY", "onActivityAvailable", "onActivityStopped", "pageRectToViewHeight", "jsonObject", "Lorg/json/JSONObject;", "secureSetup", "Landroid/webkit/WebView;", "setContentSafeAreaInsets", "content", "setMessageView", "view", "setWebViewToMaxSize", "setupWebView", "currentActivity", "base64Message", "isFullScreen", "(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showMessageView", "newHeight", "(Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateSafeAreaInsets", "Companion", "OSJavaScriptInterface", "Position", "com.onesignal.inAppMessages"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebViewManager implements IActivityLifecycleHandler {
    private static final int LOG_BODY_SNIPPET_MAX_CHARS = 200;
    private final IApplicationService _applicationService;
    private final IInAppLifecycleService _lifecycle;
    private final IInAppMessagePromptFactory _promptFactory;
    private Activity activity;
    private boolean closing;
    private String currentActivityName;
    private boolean dismissFired;
    private Integer lastPageHeight;
    private final InAppMessage message;
    private final InAppMessageContent messageContent;
    private InAppMessageView messageView;
    private final Mutex messageViewMutex;
    private OSWebView webView;
    public static final String EVENT_TYPE_ACTION_TAKEN = ProtectedFastSSH.s("ꀯ");
    public static final String IAM_PAGE_META_DATA_KEY = ProtectedFastSSH.s("ꀰ");
    public static final String SET_SAFE_AREA_INSETS_SCRIPT = ProtectedFastSSH.s("ꀱ");
    public static final String SET_SAFE_AREA_INSETS_JS_FUNCTION = ProtectedFastSSH.s("ꀲ");
    public static final String EVENT_TYPE_RENDERING_COMPLETE = ProtectedFastSSH.s("ꀳ");
    public static final String JS_OBJ_NAME = ProtectedFastSSH.s("ꀴ");
    public static final String GET_PAGE_META_DATA_JS_FUNCTION = ProtectedFastSSH.s("ꀵ");
    public static final String IAM_DISPLAY_LOCATION_KEY = ProtectedFastSSH.s("ꀶ");
    public static final String EVENT_TYPE_PAGE_CHANGE = ProtectedFastSSH.s("ꀷ");
    public static final String IAM_DRAG_TO_DISMISS_DISABLED_KEY = ProtectedFastSSH.s("ꀸ");
    public static final String SAFE_AREA_JS_OBJECT = ProtectedFastSSH.s("ꀹ");
    public static final String EVENT_TYPE_RESIZE = ProtectedFastSSH.s("ꀺ");
    public static final String EVENT_TYPE_KEY = ProtectedFastSSH.s("ꀻ");
    private static final int MARGIN_PX_SIZE = ViewUtils.INSTANCE.dpToPx(24);

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007¨\u0006\u0012"}, d2 = {"Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$OSJavaScriptInterface;", "", "(Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager;)V", "getDisplayLocation", "Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;", "jsonObject", "Lorg/json/JSONObject;", "getDragToDismissDisabled", "", "getPageHeightData", "", "handleActionTaken", "", "handlePageChange", "handleRenderComplete", "postMessage", "message", "", "com.onesignal.inAppMessages"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public final class OSJavaScriptInterface {
        public OSJavaScriptInterface() {
        }

        private final Position getDisplayLocation(JSONObject jsonObject) {
            String strS = ProtectedFastSSH.s("ꀒ");
            Position position = Position.FULL_SCREEN;
            try {
                if (jsonObject.has(strS) && !Intrinsics.areEqual(jsonObject.get(strS), "")) {
                    String strOptString = jsonObject.optString(strS, ProtectedFastSSH.s("ꀓ"));
                    Intrinsics.checkNotNullExpressionValue(strOptString, ProtectedFastSSH.s("ꀔ"));
                    Locale locale = Locale.getDefault();
                    Intrinsics.checkNotNullExpressionValue(locale, ProtectedFastSSH.s("ꀕ"));
                    String upperCase = strOptString.toUpperCase(locale);
                    Intrinsics.checkNotNullExpressionValue(upperCase, ProtectedFastSSH.s("ꀖ"));
                    return Position.valueOf(upperCase);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return position;
        }

        private final boolean getDragToDismissDisabled(JSONObject jsonObject) {
            try {
                return jsonObject.getBoolean(ProtectedFastSSH.s("ꀗ"));
            } catch (JSONException unused) {
                return false;
            }
        }

        private final int getPageHeightData(JSONObject jsonObject) {
            try {
                WebViewManager webViewManager = WebViewManager.this;
                Activity activityAccess$getActivity$p = WebViewManager.access$getActivity$p(webViewManager);
                JSONObject jSONObject = jsonObject.getJSONObject(ProtectedFastSSH.s("ꀘ"));
                Intrinsics.checkNotNullExpressionValue(jSONObject, ProtectedFastSSH.s("ꀙ"));
                return WebViewManager.access$pageRectToViewHeight(webViewManager, activityAccess$getActivity$p, jSONObject);
            } catch (JSONException unused) {
                return -1;
            }
        }

        private final void handleActionTaken(JSONObject jsonObject) throws JSONException {
            JSONObject jSONObject = jsonObject.getJSONObject(ProtectedFastSSH.s("ꀚ"));
            Intrinsics.checkNotNull(jSONObject);
            String strSafeString = JSONObjectExtensionsKt.safeString(jSONObject, ProtectedFastSSH.s("ꀛ"));
            WebViewManager.access$setClosing$p(WebViewManager.this, jSONObject.getBoolean(ProtectedFastSSH.s("ꀜ")));
            if (WebViewManager.access$getMessage$p(WebViewManager.this).getIsPreview()) {
                WebViewManager.access$get_lifecycle$p(WebViewManager.this).messageActionOccurredOnPreview(WebViewManager.access$getMessage$p(WebViewManager.this), new InAppMessageClickResult(jSONObject, WebViewManager.access$get_promptFactory$p(WebViewManager.this)));
            } else if (strSafeString != null) {
                WebViewManager.access$get_lifecycle$p(WebViewManager.this).messageActionOccurredOnMessage(WebViewManager.access$getMessage$p(WebViewManager.this), new InAppMessageClickResult(jSONObject, WebViewManager.access$get_promptFactory$p(WebViewManager.this)));
            }
            if (WebViewManager.access$getClosing$p(WebViewManager.this)) {
                WebViewManager.this.backgroundDismissAndAwaitNextMessage();
            }
        }

        private final void handlePageChange(JSONObject jsonObject) throws JSONException {
            WebViewManager.access$get_lifecycle$p(WebViewManager.this).messagePageChanged(WebViewManager.access$getMessage$p(WebViewManager.this), new InAppMessagePage(jsonObject));
        }

        private final void handleRenderComplete(JSONObject jsonObject) {
            Position displayLocation = getDisplayLocation(jsonObject);
            int pageHeightData = displayLocation == Position.FULL_SCREEN ? -1 : getPageHeightData(jsonObject);
            boolean dragToDismissDisabled = getDragToDismissDisabled(jsonObject);
            WebViewManager.access$getMessageContent$p(WebViewManager.this).setDisplayLocation(displayLocation);
            WebViewManager.access$getMessageContent$p(WebViewManager.this).setPageHeight(pageHeightData);
            WebViewManager.this.createNewInAppMessageView(dragToDismissDisabled);
        }

        @JavascriptInterface
        public final void postMessage(String message) {
            InAppMessageView inAppMessageViewAccess$getMessageView$p;
            String strS = ProtectedFastSSH.s("ꀝ");
            Intrinsics.checkNotNullParameter(message, ProtectedFastSSH.s("ꀞ"));
            try {
                Logging.debug$default(strS + message, null, 2, null);
                JSONObject jSONObject = new JSONObject(message);
                String string = jSONObject.getString(ProtectedFastSSH.s("ꀟ"));
                if (string != null) {
                    switch (string.hashCode()) {
                        case -1484226720:
                            if (string.equals(ProtectedFastSSH.s("ꀣ"))) {
                                handlePageChange(jSONObject);
                            }
                            break;
                        case -934437708:
                            string.equals(ProtectedFastSSH.s("ꀢ"));
                            break;
                        case 42998156:
                            if (string.equals(ProtectedFastSSH.s("ꀡ"))) {
                                handleRenderComplete(jSONObject);
                            }
                            break;
                        case 1851145598:
                            if (string.equals(ProtectedFastSSH.s("ꀠ")) && (inAppMessageViewAccess$getMessageView$p = WebViewManager.access$getMessageView$p(WebViewManager.this)) != null && !inAppMessageViewAccess$getMessageView$p.getIsDragging()) {
                                handleActionTaken(jSONObject);
                            }
                            break;
                        default:
                            break;
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;", "", "(Ljava/lang/String;I)V", "isBanner", "", "()Z", "TOP_BANNER", "BOTTOM_BANNER", "CENTER_MODAL", "FULL_SCREEN", "com.onesignal.inAppMessages"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public enum Position {
        TOP_BANNER,
        BOTTOM_BANNER,
        CENTER_MODAL,
        FULL_SCREEN;

        private static final EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public class WhenMappings {
            public static final int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Position.values().length];
                try {
                    iArr[Position.TOP_BANNER.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Position.BOTTOM_BANNER.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public static EnumEntries<Position> getEntries() {
            return $ENTRIES;
        }

        public final boolean isBanner() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            return i == 1 || i == 2;
        }
    }

    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager$backgroundDismissAndAwaitNextMessage$1", f = "WebViewManager.kt", i = {}, l = {458}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
        }

        @Override
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return WebViewManager.this.new AnonymousClass1(continuation);
        }

        @Override
        public Object invoke(Continuation<? super Unit> continuation) {
            return invoke2(continuation);
        }

        public final Object invoke2(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (WebViewManager.this.dismissAndAwaitNextMessage(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException(ProtectedFastSSH.s("ꀨ"));
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager", f = "WebViewManager.kt", i = {1, 2}, l = {247, 252, 258}, m = "calculateHeightAndShowWebViewAfterNewActivity", n = {"this", "this"}, s = {"L$0", "L$0"})
    static final class C01761 extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        C01761(Continuation<? super C01761> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewManager.access$calculateHeightAndShowWebViewAfterNewActivity(WebViewManager.this, this);
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016¨\u0006\u0006"}, d2 = {"com/onesignal/inAppMessages/internal/display/impl/WebViewManager$createNewInAppMessageView$1", "Lcom/onesignal/inAppMessages/internal/display/impl/InAppMessageView$InAppMessageViewListener;", "onMessageWasDismissed", "", "onMessageWasDisplayed", "onMessageWillDismiss", "com.onesignal.inAppMessages"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class C01771 implements InAppMessageView.InAppMessageViewListener {
        final WebViewManager $self;

        C01771(WebViewManager webViewManager) {
            this.$self = webViewManager;
        }

        @Override
        public void onMessageWasDismissed() {
            WebViewManager.access$get_lifecycle$p(WebViewManager.this).messageWasDismissed(WebViewManager.access$getMessage$p(WebViewManager.this));
            WebViewManager.access$get_applicationService$p(WebViewManager.this).removeActivityLifecycleHandler(this.$self);
        }

        @Override
        public void onMessageWasDisplayed() {
            WebViewManager.access$get_lifecycle$p(WebViewManager.this).messageWasDisplayed(WebViewManager.access$getMessage$p(WebViewManager.this));
        }

        @Override
        public void onMessageWillDismiss() {
            WebViewManager.access$get_lifecycle$p(WebViewManager.this).messageWillDismiss(WebViewManager.access$getMessage$p(WebViewManager.this));
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager", f = "WebViewManager.kt", i = {0}, l = {474}, m = "dismissAndAwaitNextMessage", n = {"this"}, s = {"L$0"})
    static final class C01781 extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        C01781(Continuation<? super C01781> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewManager.this.dismissAndAwaitNextMessage(this);
        }
    }

    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager$onActivityAvailable$1", f = "WebViewManager.kt", i = {}, l = {299, 306, 310}, m = "invokeSuspend", n = {}, s = {})
    static final class C01791 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final String $lastActivityName;
        int label;
        final WebViewManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01791(String str, WebViewManager webViewManager, Continuation<? super C01791> continuation) {
            super(1, continuation);
            this.$lastActivityName = str;
            this.this$0 = webViewManager;
        }

        @Override
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C01791(this.$lastActivityName, this.this$0, continuation);
        }

        @Override
        public Object invoke(Continuation<? super Unit> continuation) {
            return invoke2(continuation);
        }

        public final Object invoke2(Continuation<? super Unit> continuation) {
            return ((C01791) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
        
            if (com.onesignal.inAppMessages.internal.display.impl.WebViewManager.access$showMessageView(r5.this$0, null, r5) == r0) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x006f, code lost:
        
            if (com.onesignal.inAppMessages.internal.display.impl.WebViewManager.access$showMessageView(r6, com.onesignal.inAppMessages.internal.display.impl.WebViewManager.access$getLastPageHeight$p(r6), r5) == r0) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x007d, code lost:
        
            if (com.onesignal.inAppMessages.internal.display.impl.WebViewManager.access$calculateHeightAndShowWebViewAfterNewActivity(r5.this$0, r5) == r0) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x007f, code lost:
        
            return r0;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                String str = this.$lastActivityName;
                if (str == null) {
                    this.label = 1;
                } else if (Intrinsics.areEqual(str, WebViewManager.access$getCurrentActivityName$p(this.this$0))) {
                    this.label = 3;
                } else if (!WebViewManager.access$getClosing$p(this.this$0)) {
                    if (WebViewManager.access$getMessageView$p(this.this$0) != null) {
                        InAppMessageView inAppMessageViewAccess$getMessageView$p = WebViewManager.access$getMessageView$p(this.this$0);
                        Intrinsics.checkNotNull(inAppMessageViewAccess$getMessageView$p);
                        inAppMessageViewAccess$getMessageView$p.removeAllViews();
                    }
                    WebViewManager webViewManager = this.this$0;
                    this.label = 2;
                }
            } else {
                if (i != 1 && i != 2 && i != 3) {
                    throw new IllegalStateException(ProtectedFastSSH.s("ꀪ"));
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager", f = "WebViewManager.kt", i = {0, 0, 0}, l = {371}, m = "setupWebView", n = {"this", "currentActivity", "base64Message"}, s = {"L$0", "L$1", "L$2"})
    static final class C01801 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        C01801(Continuation<? super C01801> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewManager.this.setupWebView(null, null, false, this);
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager", f = "WebViewManager.kt", i = {0, 0, 0, 1, 1, 2, 2, 3}, l = {546, 339, 342, 343}, m = "showMessageView", n = {"this", "newHeight", "$this$withLock_u24default$iv", "this", "$this$withLock_u24default$iv", "this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$1", "L$0"})
    static final class C01811 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        C01811(Continuation<? super C01811> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewManager.access$showMessageView(WebViewManager.this, null, this);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager$updateSafeAreaInsets$2", f = "WebViewManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WebViewManager.this.new AnonymousClass2(continuation);
        }

        @Override
        public Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return invoke2(coroutineScope, continuation);
        }

        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException(ProtectedFastSSH.s("ꀮ"));
            }
            ResultKt.throwOnFailure(obj);
            int[] cutoutAndStatusBarInsets = ViewUtils.INSTANCE.getCutoutAndStatusBarInsets(WebViewManager.access$getActivity$p(WebViewManager.this));
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = String.format(ProtectedFastSSH.s("ꀫ"), Arrays.copyOf(new Object[]{Boxing.boxInt(cutoutAndStatusBarInsets[0]), Boxing.boxInt(cutoutAndStatusBarInsets[1]), Boxing.boxInt(cutoutAndStatusBarInsets[2]), Boxing.boxInt(cutoutAndStatusBarInsets[3])}, 4));
            String strS = ProtectedFastSSH.s("ꀬ");
            Intrinsics.checkNotNullExpressionValue(str, strS);
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            String str2 = String.format(ProtectedFastSSH.s("ꀭ"), Arrays.copyOf(new Object[]{str}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, strS);
            OSWebView oSWebViewAccess$getWebView$p = WebViewManager.access$getWebView$p(WebViewManager.this);
            Intrinsics.checkNotNull(oSWebViewAccess$getWebView$p);
            oSWebViewAccess$getWebView$p.evaluateJavascript(str2, null);
            return Unit.INSTANCE;
        }
    }

    public static void m769$r8$lambda$LSvTr9x1LwyIciC2dO6bijaCfg(WebViewManager webViewManager, String str) {
        calculateHeightAndShowWebViewAfterNewActivity$lambda$0(webViewManager, str);
    }

    public WebViewManager(InAppMessage inAppMessage, Activity activity, InAppMessageContent inAppMessageContent, IInAppLifecycleService iInAppLifecycleService, IApplicationService iApplicationService, IInAppMessagePromptFactory iInAppMessagePromptFactory) {
        Intrinsics.checkNotNullParameter(inAppMessage, ProtectedFastSSH.s("ꀼ"));
        Intrinsics.checkNotNullParameter(activity, ProtectedFastSSH.s("ꀽ"));
        Intrinsics.checkNotNullParameter(inAppMessageContent, ProtectedFastSSH.s("ꀾ"));
        Intrinsics.checkNotNullParameter(iInAppLifecycleService, ProtectedFastSSH.s("ꀿ"));
        Intrinsics.checkNotNullParameter(iApplicationService, ProtectedFastSSH.s("ꁀ"));
        Intrinsics.checkNotNullParameter(iInAppMessagePromptFactory, ProtectedFastSSH.s("ꁁ"));
        this.message = inAppMessage;
        this.activity = activity;
        this.messageContent = inAppMessageContent;
        this._lifecycle = iInAppLifecycleService;
        this._applicationService = iApplicationService;
        this._promptFactory = iInAppMessagePromptFactory;
        this.messageViewMutex = MutexKt.Mutex$default(false, 1, null);
    }

    public static final Object access$calculateHeightAndShowWebViewAfterNewActivity(WebViewManager webViewManager, Continuation continuation) {
        return webViewManager.calculateHeightAndShowWebViewAfterNewActivity(continuation);
    }

    public static final Activity access$getActivity$p(WebViewManager webViewManager) {
        return webViewManager.activity;
    }

    public static final boolean access$getClosing$p(WebViewManager webViewManager) {
        return webViewManager.closing;
    }

    public static final String access$getCurrentActivityName$p(WebViewManager webViewManager) {
        return webViewManager.currentActivityName;
    }

    public static final Integer access$getLastPageHeight$p(WebViewManager webViewManager) {
        return webViewManager.lastPageHeight;
    }

    public static final InAppMessage access$getMessage$p(WebViewManager webViewManager) {
        return webViewManager.message;
    }

    public static final InAppMessageContent access$getMessageContent$p(WebViewManager webViewManager) {
        return webViewManager.messageContent;
    }

    public static final InAppMessageView access$getMessageView$p(WebViewManager webViewManager) {
        return webViewManager.messageView;
    }

    public static final OSWebView access$getWebView$p(WebViewManager webViewManager) {
        return webViewManager.webView;
    }

    public static final IApplicationService access$get_applicationService$p(WebViewManager webViewManager) {
        return webViewManager._applicationService;
    }

    public static final IInAppLifecycleService access$get_lifecycle$p(WebViewManager webViewManager) {
        return webViewManager._lifecycle;
    }

    public static final IInAppMessagePromptFactory access$get_promptFactory$p(WebViewManager webViewManager) {
        return webViewManager._promptFactory;
    }

    public static final int access$pageRectToViewHeight(WebViewManager webViewManager, Activity activity, JSONObject jSONObject) {
        return webViewManager.pageRectToViewHeight(activity, jSONObject);
    }

    public static final void access$setClosing$p(WebViewManager webViewManager, boolean z) {
        webViewManager.closing = z;
    }

    public static final Object access$showMessageView(WebViewManager webViewManager, Integer num, Continuation continuation) {
        return webViewManager.showMessageView(num, continuation);
    }

    public static final Object access$updateSafeAreaInsets(WebViewManager webViewManager, Continuation continuation) {
        return webViewManager.updateSafeAreaInsets(continuation);
    }

    private final String bodySnippet(String body) {
        String str = body;
        if (str == null || str.length() == 0) {
            return ProtectedFastSSH.s("ꁂ");
        }
        String strReplace$default = StringsKt.replace$default(StringsKt.replace$default(body, '\n', ' ', false, 4, (Object) null), '\r', ' ', false, 4, (Object) null);
        if (strReplace$default.length() <= 200) {
            return strReplace$default;
        }
        return StringsKt.take(strReplace$default, 200) + Typography.ellipsis;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x009b  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
    
        if (showMessageView(null, r0) == r1) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Object calculateHeightAndShowWebViewAfterNewActivity(Continuation<? super Unit> continuation) throws Throwable {
        C01761 c01761;
        WebViewManager webViewManager;
        WebViewManager webViewManager2;
        if (continuation instanceof C01761) {
            c01761 = (C01761) continuation;
            if ((c01761.label & Integer.MIN_VALUE) != 0) {
                c01761.label -= Integer.MIN_VALUE;
            } else {
                c01761 = new C01761(continuation);
            }
        } else {
            c01761 = new C01761(continuation);
        }
        Object obj = c01761.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c01761.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            InAppMessageView inAppMessageView = this.messageView;
            if (inAppMessageView == null) {
                return Unit.INSTANCE;
            }
            Intrinsics.checkNotNull(inAppMessageView);
            if (inAppMessageView.getDisplayPosition() != Position.FULL_SCREEN || this.messageContent.getIsFullBleed()) {
                Logging.debug$default(ProtectedFastSSH.s("ꁄ"), null, 2, null);
                IApplicationService iApplicationService = this._applicationService;
                c01761.L$0 = this;
                c01761.label = 2;
                if (iApplicationService.waitUntilActivityReady(c01761) != coroutine_suspended) {
                    webViewManager = this;
                    webViewManager.setWebViewToMaxSize(webViewManager.activity);
                    if (webViewManager.messageContent.getIsFullBleed()) {
                        c01761.L$0 = webViewManager;
                        c01761.label = 3;
                        if (webViewManager.updateSafeAreaInsets(c01761) != coroutine_suspended) {
                            webViewManager2 = webViewManager;
                            webViewManager = webViewManager2;
                        }
                    }
                }
            } else {
                c01761.label = 1;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        if (i == 2) {
            webViewManager = (WebViewManager) c01761.L$0;
            ResultKt.throwOnFailure(obj);
            webViewManager.setWebViewToMaxSize(webViewManager.activity);
            if (webViewManager.messageContent.getIsFullBleed()) {
                c01761.L$0 = webViewManager;
                c01761.label = 3;
                if (webViewManager.updateSafeAreaInsets(c01761) != coroutine_suspended) {
                    webViewManager2 = webViewManager;
                }
                return coroutine_suspended;
            }
        } else {
            if (i != 3) {
                throw new IllegalStateException(ProtectedFastSSH.s("ꁃ"));
            }
            webViewManager2 = (WebViewManager) c01761.L$0;
            ResultKt.throwOnFailure(obj);
        }
        webViewManager = webViewManager2;
        OSWebView oSWebView = webViewManager.webView;
        Intrinsics.checkNotNull(oSWebView);
        oSWebView.evaluateJavascript(ProtectedFastSSH.s("ꀵ"), new WebViewManager$$ExternalSyntheticLambda0(webViewManager));
        return Unit.INSTANCE;
    }

    private static final void calculateHeightAndShowWebViewAfterNewActivity$lambda$0(WebViewManager webViewManager, String str) {
        Intrinsics.checkNotNullParameter(webViewManager, ProtectedFastSSH.s("ꁅ"));
        String str2 = str;
        if (str2 == null || StringsKt.isBlank(str2) || Intrinsics.areEqual(str, ProtectedFastSSH.s("ꁆ"))) {
            Logging.warn$default(ProtectedFastSSH.s("ꁈ"), null, 2, null);
            return;
        }
        try {
            ThreadUtilsKt.suspendifyOnIO(new WebViewManager$calculateHeightAndShowWebViewAfterNewActivity$2$1(webViewManager, webViewManager.pageRectToViewHeight(webViewManager.activity, new JSONObject(str)), null));
        } catch (JSONException e) {
            Logging.warn(ProtectedFastSSH.s("ꁇ") + webViewManager.bodySnippet(str), e);
        }
    }

    private final void enableWebViewRemoteDebugging() {
        if (Logging.atLogLevel(LogLevel.DEBUG)) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
    }

    private final int getWebViewMaxSizeX(Activity activity) {
        if (this.messageContent.getIsFullBleed()) {
            return ViewUtils.INSTANCE.getFullbleedWindowWidth(activity);
        }
        return ViewUtils.INSTANCE.getWindowWidth(activity) - (MARGIN_PX_SIZE * 2);
    }

    private final int getWebViewMaxSizeY(Activity activity) {
        return ViewUtils.INSTANCE.getWindowHeight(activity) - (this.messageContent.getIsFullBleed() ? 0 : MARGIN_PX_SIZE * 2);
    }

    private final int pageRectToViewHeight(Activity activity, JSONObject jsonObject) {
        JSONObject jSONObjectOptJSONObject = jsonObject.optJSONObject(ProtectedFastSSH.s("ꁉ"));
        int iOptInt = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optInt(ProtectedFastSSH.s("ꁊ"), -1) : -1;
        if (iOptInt < 0) {
            Logging.warn$default(ProtectedFastSSH.s("ꁋ") + bodySnippet(jsonObject.toString()), null, 2, null);
            return -1;
        }
        int iDpToPx = ViewUtils.INSTANCE.dpToPx(iOptInt);
        Logging.debug$default(ProtectedFastSSH.s("ꁌ") + iDpToPx, null, 2, null);
        int webViewMaxSizeY = getWebViewMaxSizeY(activity);
        if (iDpToPx <= webViewMaxSizeY) {
            return iDpToPx;
        }
        Logging.debug$default(ProtectedFastSSH.s("ꁍ") + webViewMaxSizeY, null, 2, null);
        return webViewMaxSizeY;
    }

    private final void setMessageView(InAppMessageView view) {
        this.messageView = view;
    }

    private final void setWebViewToMaxSize(Activity activity) {
        OSWebView oSWebView = this.webView;
        Intrinsics.checkNotNull(oSWebView);
        oSWebView.layout(0, 0, getWebViewMaxSizeX(activity), getWebViewMaxSizeY(activity));
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00e0 A[Catch: all -> 0x0065, TryCatch #0 {all -> 0x0065, blocks: (B:15:0x003a, B:57:0x0104, B:20:0x0053, B:52:0x00f1, B:54:0x00f5, B:23:0x0060, B:47:0x00dc, B:49:0x00e0, B:32:0x0090, B:34:0x0094, B:37:0x00a3, B:39:0x00b6, B:41:0x00c2, B:43:0x00c8), top: B:62:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f1 A[Catch: all -> 0x0065, PHI: r0 r10
      0x00f1: PHI (r0v7 com.onesignal.inAppMessages.internal.display.impl.WebViewManager) = 
      (r0v6 com.onesignal.inAppMessages.internal.display.impl.WebViewManager)
      (r0v6 com.onesignal.inAppMessages.internal.display.impl.WebViewManager)
      (r0v11 com.onesignal.inAppMessages.internal.display.impl.WebViewManager)
     binds: [B:48:0x00de, B:50:0x00ee, B:20:0x0053] A[DONT_GENERATE, DONT_INLINE]
      0x00f1: PHI (r10v4 kotlinx.coroutines.sync.Mutex) = (r10v3 kotlinx.coroutines.sync.Mutex), (r10v3 kotlinx.coroutines.sync.Mutex), (r10v13 kotlinx.coroutines.sync.Mutex) binds: [B:48:0x00de, B:50:0x00ee, B:20:0x0053] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0065, blocks: (B:15:0x003a, B:57:0x0104, B:20:0x0053, B:52:0x00f1, B:54:0x00f5, B:23:0x0060, B:47:0x00dc, B:49:0x00e0, B:32:0x0090, B:34:0x0094, B:37:0x00a3, B:39:0x00b6, B:41:0x00c2, B:43:0x00c8), top: B:62:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00f5 A[Catch: all -> 0x0065, TryCatch #0 {all -> 0x0065, blocks: (B:15:0x003a, B:57:0x0104, B:20:0x0053, B:52:0x00f1, B:54:0x00f5, B:23:0x0060, B:47:0x00dc, B:49:0x00e0, B:32:0x0090, B:34:0x0094, B:37:0x00a3, B:39:0x00b6, B:41:0x00c2, B:43:0x00c8), top: B:62:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0101, code lost:
    
        if (r11.checkIfShouldDismiss(r1) == r2) goto L56;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Object showMessageView(Integer num, Continuation<? super Unit> continuation) throws Throwable {
        C01811 c01811;
        WebViewManager webViewManager;
        Integer num2;
        Mutex mutex;
        WebViewManager webViewManager2;
        InAppMessageView inAppMessageView;
        Activity activity;
        InAppMessageView inAppMessageView2;
        String strS = ProtectedFastSSH.s("ꁎ");
        if (continuation instanceof C01811) {
            c01811 = (C01811) continuation;
            if ((c01811.label & Integer.MIN_VALUE) != 0) {
                c01811.label -= Integer.MIN_VALUE;
            } else {
                c01811 = new C01811(continuation);
            }
        } else {
            c01811 = new C01811(continuation);
        }
        Object obj = c01811.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c01811.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Mutex mutex2 = this.messageViewMutex;
                c01811.L$0 = this;
                c01811.L$1 = num;
                c01811.L$2 = mutex2;
                c01811.label = 1;
                if (mutex2.lock(null, c01811) != coroutine_suspended) {
                    webViewManager = this;
                    num2 = num;
                    mutex = mutex2;
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                mutex = (Mutex) c01811.L$2;
                Integer num3 = (Integer) c01811.L$1;
                webViewManager = (WebViewManager) c01811.L$0;
                ResultKt.throwOnFailure(obj);
                num2 = num3;
            } else {
                if (i == 2) {
                    mutex = (Mutex) c01811.L$1;
                    webViewManager2 = (WebViewManager) c01811.L$0;
                    ResultKt.throwOnFailure(obj);
                    inAppMessageView = webViewManager2.messageView;
                    if (inAppMessageView != null) {
                        activity = webViewManager2.activity;
                        c01811.L$0 = webViewManager2;
                        c01811.L$1 = mutex;
                        c01811.L$2 = null;
                        c01811.label = 3;
                        if (inAppMessageView.showView(activity, c01811) == coroutine_suspended) {
                            inAppMessageView2 = webViewManager2.messageView;
                            if (inAppMessageView2 != null) {
                                c01811.L$0 = mutex;
                                c01811.L$1 = null;
                                c01811.L$2 = null;
                                c01811.label = 4;
                            }
                        }
                        return coroutine_suspended;
                    }
                    inAppMessageView2 = webViewManager2.messageView;
                    if (inAppMessageView2 != null) {
                        c01811.L$0 = mutex;
                        c01811.L$1 = null;
                        c01811.L$2 = null;
                        c01811.label = 4;
                    }
                    mutex.unlock(null);
                    return Unit.INSTANCE;
                }
                if (i == 3) {
                    mutex = (Mutex) c01811.L$1;
                    webViewManager2 = (WebViewManager) c01811.L$0;
                    ResultKt.throwOnFailure(obj);
                    inAppMessageView2 = webViewManager2.messageView;
                    if (inAppMessageView2 != null) {
                        c01811.L$0 = mutex;
                        c01811.L$1 = null;
                        c01811.L$2 = null;
                        c01811.label = 4;
                    }
                    mutex.unlock(null);
                    return Unit.INSTANCE;
                }
                if (i != 4) {
                    throw new IllegalStateException(ProtectedFastSSH.s("ꁃ"));
                }
                mutex = (Mutex) c01811.L$0;
                ResultKt.throwOnFailure(obj);
            }
            Unit unit = Unit.INSTANCE;
            mutex.unlock(null);
            return Unit.INSTANCE;
            if (webViewManager.messageView == null) {
                Logging.warn$default(ProtectedFastSSH.s("ꁏ"), null, 2, null);
                Unit unit2 = Unit.INSTANCE;
                mutex.unlock(null);
                return unit2;
            }
            Logging.debug$default(strS + num2, null, 2, null);
            InAppMessageView inAppMessageView3 = webViewManager.messageView;
            if (inAppMessageView3 != null) {
                OSWebView oSWebView = webViewManager.webView;
                Intrinsics.checkNotNull(oSWebView);
                inAppMessageView3.setWebView(oSWebView);
            }
            if (num2 != null) {
                webViewManager.lastPageHeight = num2;
                InAppMessageView inAppMessageView4 = webViewManager.messageView;
                if (inAppMessageView4 != null) {
                    int iIntValue = num2.intValue();
                    c01811.L$0 = webViewManager;
                    c01811.L$1 = mutex;
                    c01811.L$2 = null;
                    c01811.label = 2;
                    if (inAppMessageView4.updateHeight(iIntValue, c01811) == coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
            }
            webViewManager2 = webViewManager;
            inAppMessageView = webViewManager2.messageView;
            if (inAppMessageView != null) {
                activity = webViewManager2.activity;
                c01811.L$0 = webViewManager2;
                c01811.L$1 = mutex;
                c01811.L$2 = null;
                c01811.label = 3;
                if (inAppMessageView.showView(activity, c01811) == coroutine_suspended) {
                    inAppMessageView2 = webViewManager2.messageView;
                    if (inAppMessageView2 != null) {
                        c01811.L$0 = mutex;
                        c01811.L$1 = null;
                        c01811.L$2 = null;
                        c01811.label = 4;
                    }
                }
                return coroutine_suspended;
            }
            inAppMessageView2 = webViewManager2.messageView;
            if (inAppMessageView2 != null) {
                c01811.L$0 = mutex;
                c01811.L$1 = null;
                c01811.L$2 = null;
                c01811.label = 4;
            }
            mutex.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            num.unlock(null);
            throw th;
        }
    }

    private final Object updateSafeAreaInsets(Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public final void backgroundDismissAndAwaitNextMessage() {
        ThreadUtilsKt.suspendifyOnDefault(new AnonymousClass1(null));
    }

    public final void createNewInAppMessageView(boolean dragToDismissDisabled) {
        this.lastPageHeight = Integer.valueOf(this.messageContent.getPageHeight());
        boolean manifestMetaBoolean = AndroidUtils.INSTANCE.getManifestMetaBoolean(this._applicationService.getAppContext(), ProtectedFastSSH.s("ꁐ"));
        OSWebView oSWebView = this.webView;
        Intrinsics.checkNotNull(oSWebView);
        setMessageView(new InAppMessageView(oSWebView, this.messageContent, dragToDismissDisabled, manifestMetaBoolean));
        InAppMessageView inAppMessageView = this.messageView;
        Intrinsics.checkNotNull(inAppMessageView);
        inAppMessageView.setMessageController(new C01771(this));
        this._applicationService.addActivityLifecycleHandler(this);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object dismissAndAwaitNextMessage(Continuation<? super Unit> continuation) throws Throwable {
        C01781 c01781;
        WebViewManager webViewManager;
        if (continuation instanceof C01781) {
            c01781 = (C01781) continuation;
            if ((c01781.label & Integer.MIN_VALUE) != 0) {
                c01781.label -= Integer.MIN_VALUE;
            } else {
                c01781 = new C01781(continuation);
            }
        } else {
            c01781 = new C01781(continuation);
        }
        Object obj = c01781.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c01781.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            InAppMessageView inAppMessageView = this.messageView;
            if (inAppMessageView == null || this.dismissFired) {
                return Unit.INSTANCE;
            }
            this.dismissFired = true;
            this._lifecycle.messageWillDismiss(this.message);
            c01781.L$0 = this;
            c01781.label = 1;
            if (inAppMessageView.dismissAndAwaitNextMessage(c01781) == coroutine_suspended) {
                return coroutine_suspended;
            }
            webViewManager = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException(ProtectedFastSSH.s("ꁃ"));
            }
            webViewManager = (WebViewManager) c01781.L$0;
            ResultKt.throwOnFailure(obj);
        }
        webViewManager.dismissFired = false;
        webViewManager.setMessageView(null);
        return Unit.INSTANCE;
    }

    @Override
    public void onActivityAvailable(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, ProtectedFastSSH.s("ꀽ"));
        String str = this.currentActivityName;
        this.activity = activity;
        this.currentActivityName = activity.getLocalClassName();
        Logging.debug$default(ProtectedFastSSH.s("ꁑ") + this.currentActivityName + ProtectedFastSSH.s("ꁒ") + str, null, 2, null);
        ThreadUtilsKt.suspendifyOnMain(new C01791(str, this, null));
    }

    @Override
    public void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, ProtectedFastSSH.s("ꀽ"));
        Logging.debug$default(StringsKt.trimIndent(ProtectedFastSSH.s("ꁓ") + this.currentActivityName + ProtectedFastSSH.s("ꁔ") + this.activity + ProtectedFastSSH.s("ꁕ") + this.messageView + ProtectedFastSSH.s("ꁖ")), null, 2, null);
        if (this.messageView == null || !Intrinsics.areEqual(activity.getLocalClassName(), this.currentActivityName)) {
            return;
        }
        InAppMessageView inAppMessageView = this.messageView;
        Intrinsics.checkNotNull(inAppMessageView);
        inAppMessageView.removeAllViews();
    }

    public final void secureSetup(WebView webView) {
        Intrinsics.checkNotNullParameter(webView, ProtectedFastSSH.s("ꁗ"));
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMixedContentMode(1);
    }

    public final void setContentSafeAreaInsets(InAppMessageContent content, Activity activity) {
        Intrinsics.checkNotNullParameter(content, ProtectedFastSSH.s("ꁘ"));
        Intrinsics.checkNotNullParameter(activity, ProtectedFastSSH.s("ꀽ"));
        String contentHtml = content.getContentHtml();
        int[] cutoutAndStatusBarInsets = ViewUtils.INSTANCE.getCutoutAndStatusBarInsets(activity);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(ProtectedFastSSH.s("ꀹ"), Arrays.copyOf(new Object[]{Integer.valueOf(cutoutAndStatusBarInsets[0]), Integer.valueOf(cutoutAndStatusBarInsets[1]), Integer.valueOf(cutoutAndStatusBarInsets[2]), Integer.valueOf(cutoutAndStatusBarInsets[3])}, 4));
        String strS = ProtectedFastSSH.s("ꁙ");
        Intrinsics.checkNotNullExpressionValue(str, strS);
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
        String str2 = String.format(ProtectedFastSSH.s("ꀱ"), Arrays.copyOf(new Object[]{str}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, strS);
        content.setContentHtml(contentHtml + str2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object setupWebView(Activity activity, String str, boolean z, Continuation<? super Unit> continuation) throws Throwable {
        C01801 c01801;
        WebViewManager webViewManager;
        if (continuation instanceof C01801) {
            c01801 = (C01801) continuation;
            if ((c01801.label & Integer.MIN_VALUE) != 0) {
                c01801.label -= Integer.MIN_VALUE;
            } else {
                c01801 = new C01801(continuation);
            }
        } else {
            c01801 = new C01801(continuation);
        }
        Object obj = c01801.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c01801.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            enableWebViewRemoteDebugging();
            OSWebView oSWebView = new OSWebView(activity);
            this.webView = oSWebView;
            Intrinsics.checkNotNull(oSWebView);
            oSWebView.setOverScrollMode(2);
            OSWebView oSWebView2 = this.webView;
            Intrinsics.checkNotNull(oSWebView2);
            oSWebView2.setVerticalScrollBarEnabled(false);
            OSWebView oSWebView3 = this.webView;
            Intrinsics.checkNotNull(oSWebView3);
            oSWebView3.setHorizontalScrollBarEnabled(false);
            OSWebView oSWebView4 = this.webView;
            Intrinsics.checkNotNull(oSWebView4);
            secureSetup(oSWebView4);
            OSWebView oSWebView5 = this.webView;
            Intrinsics.checkNotNull(oSWebView5);
            oSWebView5.addJavascriptInterface(new OSJavaScriptInterface(), ProtectedFastSSH.s("ꀴ"));
            if (z) {
                OSWebView oSWebView6 = this.webView;
                Intrinsics.checkNotNull(oSWebView6);
                oSWebView6.setSystemUiVisibility(3074);
                if (Build.VERSION.SDK_INT >= 30) {
                    OSWebView oSWebView7 = this.webView;
                    Intrinsics.checkNotNull(oSWebView7);
                    oSWebView7.setFitsSystemWindows(false);
                }
            }
            this._lifecycle.messageWillDisplay(this.message);
            IApplicationService iApplicationService = this._applicationService;
            c01801.L$0 = this;
            c01801.L$1 = activity;
            c01801.L$2 = str;
            c01801.label = 1;
            if (iApplicationService.waitUntilActivityReady(c01801) == coroutine_suspended) {
                return coroutine_suspended;
            }
            webViewManager = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException(ProtectedFastSSH.s("ꁃ"));
            }
            str = (String) c01801.L$2;
            activity = (Activity) c01801.L$1;
            webViewManager = (WebViewManager) c01801.L$0;
            ResultKt.throwOnFailure(obj);
        }
        webViewManager.setWebViewToMaxSize(activity);
        OSWebView oSWebView8 = webViewManager.webView;
        Intrinsics.checkNotNull(oSWebView8);
        oSWebView8.loadData(str, ProtectedFastSSH.s("ꁚ"), ProtectedFastSSH.s("ꁛ"));
        return Unit.INSTANCE;
    }
}
