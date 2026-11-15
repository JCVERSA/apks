package androidx.window.embedding;

import android.app.Activity;
import android.app.ActivityOptions;
import android.os.IBinder;
import androidx.window.RequiresWindowSdkExtension;
import defpackage.e74;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b`\u0018\u00002\u00020\u0001:\u0001%J\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u0015\u001a\u00020\u00052\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H'¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H'¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH'¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H'¢\u0006\u0004\b\u001f\u0010\u0018J\u001f\u0010#\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0013H'¢\u0006\u0004\b#\u0010$ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006&À\u0006\u0001"}, d2 = {"Landroidx/window/embedding/EmbeddingInterfaceCompat;", "", "", "Landroidx/window/embedding/EmbeddingRule;", "rules", "Lzfb;", "setRules", "(Ljava/util/Set;)V", "Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;", "embeddingCallback", "setEmbeddingCallback", "(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V", "Landroid/app/Activity;", "activity", "", "isActivityEmbedded", "(Landroid/app/Activity;)Z", "Lkotlin/Function1;", "Landroidx/window/embedding/SplitAttributesCalculatorParams;", "Landroidx/window/embedding/SplitAttributes;", "calculator", "setSplitAttributesCalculator", "(Le74;)V", "clearSplitAttributesCalculator", "()V", "Landroid/app/ActivityOptions;", "options", "Landroid/os/IBinder;", "token", "setLaunchingActivityStack", "(Landroid/app/ActivityOptions;Landroid/os/IBinder;)Landroid/app/ActivityOptions;", "invalidateTopVisibleSplitAttributes", "Landroidx/window/embedding/SplitInfo;", "splitInfo", "splitAttributes", "updateSplitAttributes", "(Landroidx/window/embedding/SplitInfo;Landroidx/window/embedding/SplitAttributes;)V", "EmbeddingCallbackInterface", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface EmbeddingInterfaceCompat {

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&¢\u0006\u0004\b\u0006\u0010\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;", "", "", "Landroidx/window/embedding/SplitInfo;", "splitInfo", "Lzfb;", "onSplitInfoChanged", "(Ljava/util/List;)V", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface EmbeddingCallbackInterface {
        void onSplitInfoChanged(List<SplitInfo> splitInfo);
    }

    @RequiresWindowSdkExtension(version = 2)
    void clearSplitAttributesCalculator();

    @RequiresWindowSdkExtension(version = 3)
    void invalidateTopVisibleSplitAttributes();

    boolean isActivityEmbedded(Activity activity);

    void setEmbeddingCallback(EmbeddingCallbackInterface embeddingCallback);

    @RequiresWindowSdkExtension(version = 3)
    ActivityOptions setLaunchingActivityStack(ActivityOptions options, IBinder token);

    void setRules(Set<? extends EmbeddingRule> rules);

    @RequiresWindowSdkExtension(version = 2)
    void setSplitAttributesCalculator(e74 calculator);

    @RequiresWindowSdkExtension(version = 3)
    void updateSplitAttributes(SplitInfo splitInfo, SplitAttributes splitAttributes);
}
