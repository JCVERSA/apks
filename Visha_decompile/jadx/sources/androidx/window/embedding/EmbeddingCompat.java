package androidx.window.embedding;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.os.IBinder;
import android.util.Log;
import androidx.window.RequiresWindowSdkExtension;
import androidx.window.WindowSdkExtensions;
import androidx.window.core.BuildConfig;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExtensionsUtil;
import androidx.window.core.VerificationMode;
import androidx.window.embedding.EmbeddingCompat;
import androidx.window.extensions.WindowExtensions;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.extensions.embedding.ActivityEmbeddingComponent;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.e74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.zfb;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000 32\u00020\u0001:\u00013B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ#\u0010\u001f\u001a\u00020\u000f2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bH\u0017¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000fH\u0017¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u000fH\u0017¢\u0006\u0004\b#\u0010\"J\u001f\u0010'\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u001dH\u0017¢\u0006\u0004\b'\u0010(J\u001f\u0010-\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0006\u0010,\u001a\u00020+H\u0017¢\u0006\u0004\b-\u0010.R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010/R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u00100R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u00101R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u00102¨\u00064"}, d2 = {"Landroidx/window/embedding/EmbeddingCompat;", "Landroidx/window/embedding/EmbeddingInterfaceCompat;", "Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;", "embeddingExtension", "Landroidx/window/embedding/EmbeddingAdapter;", "adapter", "Landroidx/window/core/ConsumerAdapter;", "consumerAdapter", "Landroid/content/Context;", "applicationContext", MethodDecl.initName, "(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/ConsumerAdapter;Landroid/content/Context;)V", "", "Landroidx/window/embedding/EmbeddingRule;", "rules", "Lzfb;", "setRules", "(Ljava/util/Set;)V", "Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;", "embeddingCallback", "setEmbeddingCallback", "(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V", "Landroid/app/Activity;", "activity", "", "isActivityEmbedded", "(Landroid/app/Activity;)Z", "Lkotlin/Function1;", "Landroidx/window/embedding/SplitAttributesCalculatorParams;", "Landroidx/window/embedding/SplitAttributes;", "calculator", "setSplitAttributesCalculator", "(Le74;)V", "clearSplitAttributesCalculator", "()V", "invalidateTopVisibleSplitAttributes", "Landroidx/window/embedding/SplitInfo;", "splitInfo", "splitAttributes", "updateSplitAttributes", "(Landroidx/window/embedding/SplitInfo;Landroidx/window/embedding/SplitAttributes;)V", "Landroid/app/ActivityOptions;", "options", "Landroid/os/IBinder;", "token", "setLaunchingActivityStack", "(Landroid/app/ActivityOptions;Landroid/os/IBinder;)Landroid/app/ActivityOptions;", "Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;", "Landroidx/window/embedding/EmbeddingAdapter;", "Landroidx/window/core/ConsumerAdapter;", "Landroid/content/Context;", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class EmbeddingCompat implements EmbeddingInterfaceCompat {

    public static final Companion INSTANCE = new Companion(null);
    public static final boolean DEBUG = true;
    private static final String TAG = "EmbeddingCompat";
    private final EmbeddingAdapter adapter;
    private final Context applicationContext;
    private final ConsumerAdapter consumerAdapter;
    private final ActivityEmbeddingComponent embeddingExtension;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\b\u0010\t\u001a\u00020\bH\u0002J\u0006\u0010\n\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Landroidx/window/embedding/EmbeddingCompat$Companion;", "", "()V", "DEBUG", "", AbstractID3v1Tag.TAG, "", "embeddingComponent", "Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;", "emptyActivityEmbeddingProxy", "isEmbeddingAvailable", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final ActivityEmbeddingComponent emptyActivityEmbeddingProxy() {
            Object objNewProxyInstance = Proxy.newProxyInstance(EmbeddingCompat.class.getClassLoader(), new Class[]{ActivityEmbeddingComponent.class}, new InvocationHandler() {
                @Override
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    return EmbeddingCompat.Companion.emptyActivityEmbeddingProxy$lambda$2(obj, method, objArr);
                }
            });
            y45.h(objNewProxyInstance, "null cannot be cast to non-null type androidx.window.extensions.embedding.ActivityEmbeddingComponent");
            return (ActivityEmbeddingComponent) objNewProxyInstance;
        }

        public static final zfb emptyActivityEmbeddingProxy$lambda$2(Object obj, Method method, Object[] objArr) {
            return zfb.a;
        }

        public final ActivityEmbeddingComponent embeddingComponent() {
            if (!isEmbeddingAvailable()) {
                return emptyActivityEmbeddingProxy();
            }
            ClassLoader classLoader = EmbeddingCompat.class.getClassLoader();
            if (classLoader != null) {
                ConsumerAdapter consumerAdapter = new ConsumerAdapter(classLoader);
                WindowExtensions windowExtensions = WindowExtensionsProvider.getWindowExtensions();
                y45.i(windowExtensions, "getWindowExtensions()");
                ActivityEmbeddingComponent activityEmbeddingComponent = new SafeActivityEmbeddingComponentProvider(classLoader, consumerAdapter, windowExtensions).getActivityEmbeddingComponent();
                if (activityEmbeddingComponent != null) {
                    return activityEmbeddingComponent;
                }
            }
            return emptyActivityEmbeddingProxy();
        }

        public final boolean isEmbeddingAvailable() {
            try {
                ClassLoader classLoader = EmbeddingCompat.class.getClassLoader();
                if (classLoader == null) {
                    return false;
                }
                ConsumerAdapter consumerAdapter = new ConsumerAdapter(classLoader);
                WindowExtensions windowExtensions = WindowExtensionsProvider.getWindowExtensions();
                y45.i(windowExtensions, "getWindowExtensions()");
                return new SafeActivityEmbeddingComponentProvider(classLoader, consumerAdapter, windowExtensions).getActivityEmbeddingComponent() != null;
            } catch (NoClassDefFoundError unused) {
                Log.d(EmbeddingCompat.TAG, "Embedding extension version not found");
                return false;
            } catch (UnsupportedOperationException unused2) {
                Log.d(EmbeddingCompat.TAG, "Stub Extension");
                return false;
            }
        }

        private Companion() {
        }
    }

    public EmbeddingCompat(ActivityEmbeddingComponent activityEmbeddingComponent, EmbeddingAdapter embeddingAdapter, ConsumerAdapter consumerAdapter, Context context) {
        y45.j(activityEmbeddingComponent, "embeddingExtension");
        y45.j(embeddingAdapter, "adapter");
        y45.j(consumerAdapter, "consumerAdapter");
        y45.j(context, "applicationContext");
        this.embeddingExtension = activityEmbeddingComponent;
        this.adapter = embeddingAdapter;
        this.consumerAdapter = consumerAdapter;
        this.applicationContext = context;
    }

    public static final void setEmbeddingCallback$lambda$0(EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallbackInterface, EmbeddingCompat embeddingCompat, List list) {
        y45.j(embeddingCallbackInterface, "$embeddingCallback");
        y45.j(embeddingCompat, "this$0");
        EmbeddingAdapter embeddingAdapter = embeddingCompat.adapter;
        y45.i(list, "splitInfoList");
        embeddingCallbackInterface.onSplitInfoChanged(embeddingAdapter.translate((List<? extends androidx.window.extensions.embedding.SplitInfo>) list));
    }

    @Override
    @RequiresWindowSdkExtension(version = 2)
    public void clearSplitAttributesCalculator() {
        WindowSdkExtensions.INSTANCE.getInstance().requireExtensionVersion$window_release(2);
        this.embeddingExtension.clearSplitAttributesCalculator();
    }

    @Override
    @RequiresWindowSdkExtension(version = 3)
    public void invalidateTopVisibleSplitAttributes() {
        WindowSdkExtensions.INSTANCE.getInstance().requireExtensionVersion$window_release(3);
        this.embeddingExtension.invalidateTopVisibleSplitAttributes();
    }

    @Override
    public boolean isActivityEmbedded(Activity activity) {
        y45.j(activity, "activity");
        return this.embeddingExtension.isActivityEmbedded(activity);
    }

    @Override
    public void setEmbeddingCallback(final EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallback) throws IllegalAccessException, InvocationTargetException {
        y45.j(embeddingCallback, "embeddingCallback");
        if (ExtensionsUtil.INSTANCE.getSafeVendorApiLevel() < 2) {
            this.consumerAdapter.addConsumer(this.embeddingExtension, xq8.b(List.class), "setSplitInfoCallback", new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((List<?>) obj);
                    return zfb.a;
                }

                public final void invoke(List<?> list) {
                    y45.j(list, "values");
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (obj instanceof androidx.window.extensions.embedding.SplitInfo) {
                            arrayList.add(obj);
                        }
                    }
                    embeddingCallback.onSplitInfoChanged(this.adapter.translate(arrayList));
                }
            });
        } else {
            this.embeddingExtension.setSplitInfoCallback(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    EmbeddingCompat.setEmbeddingCallback$lambda$0(embeddingCallback, this, (List) obj);
                }
            });
        }
    }

    @Override
    @RequiresWindowSdkExtension(version = 3)
    public ActivityOptions setLaunchingActivityStack(ActivityOptions options, IBinder token) {
        y45.j(options, "options");
        y45.j(token, "token");
        WindowSdkExtensions.INSTANCE.getInstance().requireExtensionVersion$window_release(3);
        ActivityOptions launchingActivityStack = this.embeddingExtension.setLaunchingActivityStack(options, token);
        y45.i(launchingActivityStack, "embeddingExtension.setLa…vityStack(options, token)");
        return launchingActivityStack;
    }

    @Override
    public void setRules(Set<? extends EmbeddingRule> rules) {
        y45.j(rules, "rules");
        Iterator<? extends EmbeddingRule> it = rules.iterator();
        while (it.hasNext()) {
            if (it.next() instanceof SplitRule) {
                if (y45.e(SplitController.INSTANCE.getInstance(this.applicationContext).getSplitSupportStatus(), SplitController.SplitSupportStatus.SPLIT_AVAILABLE)) {
                    break;
                }
                if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.LOG) {
                    Log.w(TAG, "Cannot set SplitRule because ActivityEmbedding Split is not supported or PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED is not set.");
                    return;
                }
                return;
            }
        }
        this.embeddingExtension.setEmbeddingRules(this.adapter.translate(this.applicationContext, rules));
    }

    @Override
    @RequiresWindowSdkExtension(version = 2)
    public void setSplitAttributesCalculator(e74 calculator) {
        y45.j(calculator, "calculator");
        WindowSdkExtensions.INSTANCE.getInstance().requireExtensionVersion$window_release(2);
        this.embeddingExtension.setSplitAttributesCalculator(this.adapter.translateSplitAttributesCalculator(calculator));
    }

    @Override
    @RequiresWindowSdkExtension(version = 3)
    public void updateSplitAttributes(SplitInfo splitInfo, SplitAttributes splitAttributes) {
        y45.j(splitInfo, "splitInfo");
        y45.j(splitAttributes, "splitAttributes");
        WindowSdkExtensions.INSTANCE.getInstance().requireExtensionVersion$window_release(3);
        this.embeddingExtension.updateSplitAttributes(splitInfo.getToken(), this.adapter.translateSplitAttributes(splitAttributes));
    }
}
