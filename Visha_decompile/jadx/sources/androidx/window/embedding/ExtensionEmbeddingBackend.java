package androidx.window.embedding;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArraySet;
import androidx.core.util.Consumer;
import androidx.window.RequiresWindowSdkExtension;
import androidx.window.WindowProperties;
import androidx.window.core.BuildConfig;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExtensionsUtil;
import androidx.window.core.PredicateAdapter;
import androidx.window.core.VerificationMode;
import androidx.window.embedding.ExtensionEmbeddingBackend;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.c74;
import defpackage.e74;
import defpackage.i81;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u0000 U2\u00020\u0001:\u0005VUWXYB\u001b\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0017¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0011\u001a\u00020\u00102\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0017¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\fH\u0017¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\fH\u0017¢\u0006\u0004\b\u0016\u0010\u0015J3\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0012\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001c0\u001bH\u0016¢\u0006\u0004\b\u001f\u0010 J#\u0010\"\u001a\u00020\u00102\u0012\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001c0\u001bH\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b$\u0010%J#\u0010*\u001a\u00020\u00102\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(0&H\u0017¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0010H\u0017¢\u0006\u0004\b,\u0010-J\u0019\u0010/\u001a\u0004\u0018\u00010.2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b/\u00100J\u001f\u00105\u001a\u0002012\u0006\u00102\u001a\u0002012\u0006\u00104\u001a\u000203H\u0017¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u0010H\u0017¢\u0006\u0004\b7\u0010-J\u001f\u0010:\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u001d2\u0006\u00109\u001a\u00020(H\u0017¢\u0006\u0004\b:\u0010;R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010<R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR&\u0010D\u001a\b\u0012\u0004\u0012\u00020C0B8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bD\u0010E\u0012\u0004\bH\u0010-\u001a\u0004\bF\u0010GR\u0018\u0010J\u001a\u00060IR\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u0014\u0010M\u001a\u00020L8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\u001b\u0010T\u001a\u00020O8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S¨\u0006Z"}, d2 = {"Landroidx/window/embedding/ExtensionEmbeddingBackend;", "Landroidx/window/embedding/EmbeddingBackend;", "Landroid/content/Context;", "applicationContext", "Landroidx/window/embedding/EmbeddingInterfaceCompat;", "embeddingExtension", MethodDecl.initName, "(Landroid/content/Context;Landroidx/window/embedding/EmbeddingInterfaceCompat;)V", "", "areExtensionsAvailable", "()Z", "", "Landroidx/window/embedding/EmbeddingRule;", "getRules", "()Ljava/util/Set;", "rules", "Lzfb;", "setRules", "(Ljava/util/Set;)V", "rule", "addRule", "(Landroidx/window/embedding/EmbeddingRule;)V", "removeRule", "Landroid/app/Activity;", "activity", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/core/util/Consumer;", "", "Landroidx/window/embedding/SplitInfo;", "callback", "addSplitListenerForActivity", "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V", "consumer", "removeSplitListenerForActivity", "(Landroidx/core/util/Consumer;)V", "isActivityEmbedded", "(Landroid/app/Activity;)Z", "Lkotlin/Function1;", "Landroidx/window/embedding/SplitAttributesCalculatorParams;", "Landroidx/window/embedding/SplitAttributes;", "calculator", "setSplitAttributesCalculator", "(Le74;)V", "clearSplitAttributesCalculator", "()V", "Landroidx/window/embedding/ActivityStack;", "getActivityStack", "(Landroid/app/Activity;)Landroidx/window/embedding/ActivityStack;", "Landroid/app/ActivityOptions;", "options", "Landroid/os/IBinder;", "token", "setLaunchingActivityStack", "(Landroid/app/ActivityOptions;Landroid/os/IBinder;)Landroid/app/ActivityOptions;", "invalidateTopVisibleSplitAttributes", "splitInfo", "splitAttributes", "updateSplitAttributes", "(Landroidx/window/embedding/SplitInfo;Landroidx/window/embedding/SplitAttributes;)V", "Landroid/content/Context;", "Landroidx/window/embedding/EmbeddingInterfaceCompat;", "getEmbeddingExtension", "()Landroidx/window/embedding/EmbeddingInterfaceCompat;", "setEmbeddingExtension", "(Landroidx/window/embedding/EmbeddingInterfaceCompat;)V", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;", "splitChangeCallbacks", "Ljava/util/concurrent/CopyOnWriteArrayList;", "getSplitChangeCallbacks", "()Ljava/util/concurrent/CopyOnWriteArrayList;", "getSplitChangeCallbacks$annotations", "Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;", "splitInfoEmbeddingCallback", "Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;", "Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;", "ruleTracker", "Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;", "Landroidx/window/embedding/SplitController$SplitSupportStatus;", "splitSupportStatus$delegate", "Lyi5;", "getSplitSupportStatus", "()Landroidx/window/embedding/SplitController$SplitSupportStatus;", "splitSupportStatus", "Companion", "Api31Impl", "EmbeddingCallbackImpl", "RuleTracker", "SplitListenerWrapper", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ExtensionEmbeddingBackend implements EmbeddingBackend {
    private static final String TAG = "EmbeddingBackend";
    private static volatile ExtensionEmbeddingBackend globalInstance;
    private final Context applicationContext;

    @GuardedBy("globalLock")
    @VisibleForTesting
    private EmbeddingInterfaceCompat embeddingExtension;

    @GuardedBy("globalLock")
    private final RuleTracker ruleTracker;
    private final CopyOnWriteArrayList<SplitListenerWrapper> splitChangeCallbacks;
    private final EmbeddingCallbackImpl splitInfoEmbeddingCallback;

    private final yi5 splitSupportStatus;

    public static final Companion INSTANCE = new Companion(null);
    private static final ReentrantLock globalLock = new ReentrantLock();

    @RequiresApi(31)
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/window/embedding/ExtensionEmbeddingBackend$Api31Impl;", "", "()V", "isSplitPropertyEnabled", "Landroidx/window/embedding/SplitController$SplitSupportStatus;", "context", "Landroid/content/Context;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Api31Impl {
        public static final Api31Impl INSTANCE = new Api31Impl();

        private Api31Impl() {
        }

        @DoNotInline
        public final SplitController.SplitSupportStatus isSplitPropertyEnabled(Context context) {
            y45.j(context, "context");
            try {
                PackageManager.Property property = context.getPackageManager().getProperty(WindowProperties.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED, context.getPackageName());
                y45.i(property, "try {\n                co…OT_DECLARED\n            }");
                if (property.isBoolean()) {
                    return property.getBoolean() ? SplitController.SplitSupportStatus.SPLIT_AVAILABLE : SplitController.SplitSupportStatus.SPLIT_UNAVAILABLE;
                }
                if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.LOG) {
                    Log.w(ExtensionEmbeddingBackend.TAG, "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED must have a boolean value");
                }
                return SplitController.SplitSupportStatus.SPLIT_ERROR_PROPERTY_NOT_DECLARED;
            } catch (PackageManager.NameNotFoundException unused) {
                if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.LOG) {
                    Log.w(ExtensionEmbeddingBackend.TAG, "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED must be set and enabled in AndroidManifest.xml to use splits APIs.");
                }
                return SplitController.SplitSupportStatus.SPLIT_ERROR_PROPERTY_NOT_DECLARED;
            } catch (Exception e) {
                if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.LOG) {
                    Log.e(ExtensionEmbeddingBackend.TAG, "PackageManager.getProperty is not supported", e);
                }
                return SplitController.SplitSupportStatus.SPLIT_ERROR_PROPERTY_NOT_DECLARED;
            }
        }
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\fH\u0002J\u0017\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007¢\u0006\u0002\u0010\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;", "", "()V", AbstractID3v1Tag.TAG, "", "globalInstance", "Landroidx/window/embedding/ExtensionEmbeddingBackend;", "globalLock", "Ljava/util/concurrent/locks/ReentrantLock;", "getInstance", "Landroidx/window/embedding/EmbeddingBackend;", "context", "Landroid/content/Context;", "initAndVerifyEmbeddingExtension", "Landroidx/window/embedding/EmbeddingInterfaceCompat;", "applicationContext", "isExtensionVersionSupported", "", "extensionVersion", "", "(Ljava/lang/Integer;)Z", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final EmbeddingInterfaceCompat initAndVerifyEmbeddingExtension(Context applicationContext) {
            ClassLoader classLoader;
            EmbeddingCompat embeddingCompat = null;
            try {
                if (isExtensionVersionSupported(Integer.valueOf(ExtensionsUtil.INSTANCE.getSafeVendorApiLevel()))) {
                    EmbeddingCompat.Companion companion = EmbeddingCompat.INSTANCE;
                    if (companion.isEmbeddingAvailable() && (classLoader = EmbeddingBackend.class.getClassLoader()) != null) {
                        embeddingCompat = new EmbeddingCompat(companion.embeddingComponent(), new EmbeddingAdapter(new PredicateAdapter(classLoader)), new ConsumerAdapter(classLoader), applicationContext);
                    }
                }
            } catch (Throwable th) {
                Log.d(ExtensionEmbeddingBackend.TAG, "Failed to load embedding extension: " + th);
            }
            if (embeddingCompat == null) {
                Log.d(ExtensionEmbeddingBackend.TAG, "No supported embedding extension found");
            }
            return embeddingCompat;
        }

        public final EmbeddingBackend getInstance(Context context) {
            y45.j(context, "context");
            if (ExtensionEmbeddingBackend.globalInstance == null) {
                ReentrantLock reentrantLock = ExtensionEmbeddingBackend.globalLock;
                reentrantLock.lock();
                try {
                    if (ExtensionEmbeddingBackend.globalInstance == null) {
                        Context applicationContext = context.getApplicationContext();
                        Companion companion = ExtensionEmbeddingBackend.INSTANCE;
                        y45.i(applicationContext, "applicationContext");
                        ExtensionEmbeddingBackend.globalInstance = new ExtensionEmbeddingBackend(applicationContext, companion.initAndVerifyEmbeddingExtension(applicationContext));
                    }
                    zfb zfbVar = zfb.a;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            ExtensionEmbeddingBackend extensionEmbeddingBackend = ExtensionEmbeddingBackend.globalInstance;
            y45.g(extensionEmbeddingBackend);
            return extensionEmbeddingBackend;
        }

        @VisibleForTesting
        public final boolean isExtensionVersionSupported(Integer extensionVersion) {
            return extensionVersion != null && extensionVersion.intValue() >= 1;
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016¢\u0006\u0004\b\b\u0010\tR*\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\t¨\u0006\u000f"}, d2 = {"Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;", "Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;", MethodDecl.initName, "(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V", "", "Landroidx/window/embedding/SplitInfo;", "splitInfo", "Lzfb;", "onSplitInfoChanged", "(Ljava/util/List;)V", "lastInfo", "Ljava/util/List;", "getLastInfo", "()Ljava/util/List;", "setLastInfo", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class EmbeddingCallbackImpl implements EmbeddingInterfaceCompat.EmbeddingCallbackInterface {
        private List<SplitInfo> lastInfo;

        public EmbeddingCallbackImpl() {
        }

        public final List<SplitInfo> getLastInfo() {
            return this.lastInfo;
        }

        @Override
        public void onSplitInfoChanged(List<SplitInfo> splitInfo) {
            y45.j(splitInfo, "splitInfo");
            this.lastInfo = splitInfo;
            Iterator<SplitListenerWrapper> it = ExtensionEmbeddingBackend.this.getSplitChangeCallbacks().iterator();
            while (it.hasNext()) {
                it.next().accept(splitInfo);
            }
        }

        public final void setLastInfo(List<SplitInfo> list) {
            this.lastInfo = list;
        }
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\b\u0010\tJ\r\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u0003J\u001f\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0005H\u0086\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R0\u0010\u001c\u001a\u001e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00050\u0019j\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0005`\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;", "", MethodDecl.initName, "()V", "", "Landroidx/window/embedding/EmbeddingRule;", "rules", "Lzfb;", "setRules", "(Ljava/util/Set;)V", "clearRules", "rule", "", "throwOnDuplicateTag", "addOrUpdateRule", "(Landroidx/window/embedding/EmbeddingRule;Z)V", "removeRule", "(Landroidx/window/embedding/EmbeddingRule;)V", "contains", "(Landroidx/window/embedding/EmbeddingRule;)Z", "Landroidx/collection/ArraySet;", "splitRules", "Landroidx/collection/ArraySet;", "getSplitRules", "()Landroidx/collection/ArraySet;", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "tagRuleMap", "Ljava/util/HashMap;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class RuleTracker {
        private final ArraySet<EmbeddingRule> splitRules = new ArraySet<>();
        private final HashMap<String, EmbeddingRule> tagRuleMap = new HashMap<>();

        public static void addOrUpdateRule$default(RuleTracker ruleTracker, EmbeddingRule embeddingRule, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            ruleTracker.addOrUpdateRule(embeddingRule, z);
        }

        public final void addOrUpdateRule(EmbeddingRule rule, boolean throwOnDuplicateTag) {
            y45.j(rule, "rule");
            if (this.splitRules.contains(rule)) {
                return;
            }
            String tag = rule.getTag();
            if (tag == null) {
                this.splitRules.add(rule);
                return;
            }
            if (!this.tagRuleMap.containsKey(tag)) {
                this.tagRuleMap.put(tag, rule);
                this.splitRules.add(rule);
            } else {
                if (throwOnDuplicateTag) {
                    throw new IllegalArgumentException("Duplicated tag: " + tag + ". Tag must be unique among all registered rules");
                }
                this.splitRules.remove(this.tagRuleMap.get(tag));
                this.tagRuleMap.put(tag, rule);
                this.splitRules.add(rule);
            }
        }

        public final void clearRules() {
            this.splitRules.clear();
            this.tagRuleMap.clear();
        }

        public final boolean contains(EmbeddingRule rule) {
            y45.j(rule, "rule");
            return this.splitRules.contains(rule);
        }

        public final ArraySet<EmbeddingRule> getSplitRules() {
            return this.splitRules;
        }

        public final void removeRule(EmbeddingRule rule) {
            y45.j(rule, "rule");
            if (this.splitRules.contains(rule)) {
                this.splitRules.remove(rule);
                if (rule.getTag() != null) {
                    this.tagRuleMap.remove(rule.getTag());
                }
            }
        }

        public final void setRules(Set<? extends EmbeddingRule> rules) {
            y45.j(rules, "rules");
            clearRules();
            Iterator<T> it = rules.iterator();
            while (it.hasNext()) {
                addOrUpdateRule((EmbeddingRule) it.next(), true);
            }
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u000e\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0011R#\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00068\u0006¢\u0006\f\n\u0004\b\t\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;", "", "Landroid/app/Activity;", "activity", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/core/util/Consumer;", "", "Landroidx/window/embedding/SplitInfo;", "callback", MethodDecl.initName, "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V", "splitInfoList", "Lzfb;", "accept", "(Ljava/util/List;)V", "Landroid/app/Activity;", "Ljava/util/concurrent/Executor;", "Landroidx/core/util/Consumer;", "getCallback", "()Landroidx/core/util/Consumer;", "lastValue", "Ljava/util/List;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class SplitListenerWrapper {
        private final Activity activity;
        private final Consumer<List<SplitInfo>> callback;
        private final Executor executor;
        private List<SplitInfo> lastValue;

        public SplitListenerWrapper(Activity activity, Executor executor, Consumer<List<SplitInfo>> consumer) {
            y45.j(activity, "activity");
            y45.j(executor, "executor");
            y45.j(consumer, "callback");
            this.activity = activity;
            this.executor = executor;
            this.callback = consumer;
        }

        public static final void accept$lambda$1(SplitListenerWrapper splitListenerWrapper, List list) {
            y45.j(splitListenerWrapper, "this$0");
            y45.j(list, "$splitsWithActivity");
            splitListenerWrapper.callback.accept(list);
        }

        public final void accept(List<SplitInfo> splitInfoList) {
            y45.j(splitInfoList, "splitInfoList");
            final ArrayList arrayList = new ArrayList();
            for (Object obj : splitInfoList) {
                if (((SplitInfo) obj).contains(this.activity)) {
                    arrayList.add(obj);
                }
            }
            if (y45.e(arrayList, this.lastValue)) {
                return;
            }
            this.lastValue = arrayList;
            this.executor.execute(new Runnable() {
                @Override
                public final void run() {
                    ExtensionEmbeddingBackend.SplitListenerWrapper.accept$lambda$1(this.b, arrayList);
                }
            });
        }

        public final Consumer<List<SplitInfo>> getCallback() {
            return this.callback;
        }
    }

    @VisibleForTesting
    public ExtensionEmbeddingBackend(Context context, EmbeddingInterfaceCompat embeddingInterfaceCompat) {
        y45.j(context, "applicationContext");
        this.applicationContext = context;
        this.embeddingExtension = embeddingInterfaceCompat;
        EmbeddingCallbackImpl embeddingCallbackImpl = new EmbeddingCallbackImpl();
        this.splitInfoEmbeddingCallback = embeddingCallbackImpl;
        this.splitChangeCallbacks = new CopyOnWriteArrayList<>();
        EmbeddingInterfaceCompat embeddingInterfaceCompat2 = this.embeddingExtension;
        if (embeddingInterfaceCompat2 != null) {
            embeddingInterfaceCompat2.setEmbeddingCallback(embeddingCallbackImpl);
        }
        this.ruleTracker = new RuleTracker();
        this.splitSupportStatus = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final SplitController.SplitSupportStatus invoke() {
                if (this.this$0.areExtensionsAvailable()) {
                    return Build.VERSION.SDK_INT >= 31 ? ExtensionEmbeddingBackend.Api31Impl.INSTANCE.isSplitPropertyEnabled(this.this$0.applicationContext) : SplitController.SplitSupportStatus.SPLIT_AVAILABLE;
                }
                return SplitController.SplitSupportStatus.SPLIT_UNAVAILABLE;
            }
        });
    }

    public final boolean areExtensionsAvailable() {
        return this.embeddingExtension != null;
    }

    @VisibleForTesting
    public static void getSplitChangeCallbacks$annotations() {
    }

    @Override
    @GuardedBy("globalLock")
    public void addRule(EmbeddingRule rule) {
        y45.j(rule, "rule");
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            if (!this.ruleTracker.contains(rule)) {
                RuleTracker.addOrUpdateRule$default(this.ruleTracker, rule, false, 2, null);
                EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
                if (embeddingInterfaceCompat != null) {
                    embeddingInterfaceCompat.setRules(getRules());
                }
            }
            zfb zfbVar = zfb.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    public void addSplitListenerForActivity(Activity activity, Executor executor, Consumer<List<SplitInfo>> callback) {
        y45.j(activity, "activity");
        y45.j(executor, "executor");
        y45.j(callback, "callback");
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            if (this.embeddingExtension == null) {
                Log.v(TAG, "Extension not loaded, skipping callback registration.");
                callback.accept(y71.k());
                return;
            }
            SplitListenerWrapper splitListenerWrapper = new SplitListenerWrapper(activity, executor, callback);
            this.splitChangeCallbacks.add(splitListenerWrapper);
            if (this.splitInfoEmbeddingCallback.getLastInfo() != null) {
                List<SplitInfo> lastInfo = this.splitInfoEmbeddingCallback.getLastInfo();
                y45.g(lastInfo);
                splitListenerWrapper.accept(lastInfo);
            } else {
                splitListenerWrapper.accept(y71.k());
            }
            zfb zfbVar = zfb.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    @RequiresWindowSdkExtension(version = 2)
    public void clearSplitAttributesCalculator() {
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
            if (embeddingInterfaceCompat != null) {
                embeddingInterfaceCompat.clearSplitAttributesCalculator();
                zfb zfbVar = zfb.a;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    public ActivityStack getActivityStack(Activity activity) {
        y45.j(activity, "activity");
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            List<SplitInfo> lastInfo = this.splitInfoEmbeddingCallback.getLastInfo();
            if (lastInfo == null) {
                reentrantLock.unlock();
                return null;
            }
            for (SplitInfo splitInfo : lastInfo) {
                if (splitInfo.contains(activity)) {
                    if (splitInfo.getPrimaryActivityStack().contains(activity)) {
                        ActivityStack primaryActivityStack = splitInfo.getPrimaryActivityStack();
                        reentrantLock.unlock();
                        return primaryActivityStack;
                    }
                    if (splitInfo.getSecondaryActivityStack().contains(activity)) {
                        ActivityStack secondaryActivityStack = splitInfo.getSecondaryActivityStack();
                        reentrantLock.unlock();
                        return secondaryActivityStack;
                    }
                }
            }
            reentrantLock.unlock();
            return null;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final EmbeddingInterfaceCompat getEmbeddingExtension() {
        return this.embeddingExtension;
    }

    @Override
    @GuardedBy("globalLock")
    public Set<EmbeddingRule> getRules() {
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            return i81.g1(this.ruleTracker.getSplitRules());
        } finally {
            reentrantLock.unlock();
        }
    }

    public final CopyOnWriteArrayList<SplitListenerWrapper> getSplitChangeCallbacks() {
        return this.splitChangeCallbacks;
    }

    @Override
    public SplitController.SplitSupportStatus getSplitSupportStatus() {
        return (SplitController.SplitSupportStatus) this.splitSupportStatus.getValue();
    }

    @Override
    @RequiresWindowSdkExtension(version = 3)
    public void invalidateTopVisibleSplitAttributes() {
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.invalidateTopVisibleSplitAttributes();
        }
    }

    @Override
    public boolean isActivityEmbedded(Activity activity) {
        y45.j(activity, "activity");
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            return embeddingInterfaceCompat.isActivityEmbedded(activity);
        }
        return false;
    }

    @Override
    @GuardedBy("globalLock")
    public void removeRule(EmbeddingRule rule) {
        y45.j(rule, "rule");
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            if (this.ruleTracker.contains(rule)) {
                this.ruleTracker.removeRule(rule);
                EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
                if (embeddingInterfaceCompat != null) {
                    embeddingInterfaceCompat.setRules(getRules());
                }
            }
            zfb zfbVar = zfb.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    public void removeSplitListenerForActivity(Consumer<List<SplitInfo>> consumer) {
        y45.j(consumer, "consumer");
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            for (SplitListenerWrapper splitListenerWrapper : this.splitChangeCallbacks) {
                if (y45.e(splitListenerWrapper.getCallback(), consumer)) {
                    this.splitChangeCallbacks.remove(splitListenerWrapper);
                    break;
                }
            }
            zfb zfbVar = zfb.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void setEmbeddingExtension(EmbeddingInterfaceCompat embeddingInterfaceCompat) {
        this.embeddingExtension = embeddingInterfaceCompat;
    }

    @Override
    @RequiresWindowSdkExtension(version = 3)
    public ActivityOptions setLaunchingActivityStack(ActivityOptions options, IBinder token) {
        ActivityOptions launchingActivityStack;
        y45.j(options, "options");
        y45.j(token, "token");
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        return (embeddingInterfaceCompat == null || (launchingActivityStack = embeddingInterfaceCompat.setLaunchingActivityStack(options, token)) == null) ? options : launchingActivityStack;
    }

    @Override
    @GuardedBy("globalLock")
    public void setRules(Set<? extends EmbeddingRule> rules) {
        y45.j(rules, "rules");
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            this.ruleTracker.setRules(rules);
            EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
            if (embeddingInterfaceCompat != null) {
                embeddingInterfaceCompat.setRules(getRules());
                zfb zfbVar = zfb.a;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    @RequiresWindowSdkExtension(version = 2)
    public void setSplitAttributesCalculator(e74 calculator) {
        y45.j(calculator, "calculator");
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
            if (embeddingInterfaceCompat != null) {
                embeddingInterfaceCompat.setSplitAttributesCalculator(calculator);
                zfb zfbVar = zfb.a;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    @RequiresWindowSdkExtension(version = 3)
    public void updateSplitAttributes(SplitInfo splitInfo, SplitAttributes splitAttributes) {
        y45.j(splitInfo, "splitInfo");
        y45.j(splitAttributes, "splitAttributes");
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.updateSplitAttributes(splitInfo, splitAttributes);
        }
    }
}
