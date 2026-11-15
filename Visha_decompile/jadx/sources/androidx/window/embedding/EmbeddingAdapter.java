package androidx.window.embedding;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Binder;
import android.os.IBinder;
import android.util.Pair;
import android.view.WindowMetrics;
import androidx.window.WindowSdkExtensions;
import androidx.window.core.PredicateAdapter;
import androidx.window.embedding.EmbeddingAdapter;
import androidx.window.extensions.core.util.function.Function;
import androidx.window.extensions.core.util.function.Predicate;
import androidx.window.extensions.embedding.SplitAttributesCalculatorParams;
import androidx.window.extensions.layout.WindowLayoutInfo;
import androidx.window.layout.WindowMetricsCalculator;
import androidx.window.layout.adapter.extensions.ExtensionsWindowLayoutInfoAdapter;
import defpackage.e74;
import defpackage.g93;
import defpackage.h93;
import defpackage.hi;
import defpackage.i81;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.ye9;
import defpackage.z71;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000º\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000 H2\u00020\u0001:\u0003HIJB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J+\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00192\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ#\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u000e\u001a\u00020\u001d2\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0002¢\u0006\u0004\b\u001f\u0010 J!\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0!2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060!¢\u0006\u0004\b\t\u0010#J\u0017\u0010\t\u001a\u00020&2\u0006\u0010%\u001a\u00020$H\u0000¢\u0006\u0004\b'\u0010(J-\u0010.\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020$0,2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020&0)¢\u0006\u0004\b.\u0010/J\u0017\u0010\t\u001a\u00020*2\u0006\u00100\u001a\u00020-H\u0007¢\u0006\u0004\b\t\u00101J\u0015\u00102\u001a\u00020$2\u0006\u0010%\u001a\u00020&¢\u0006\u0004\b2\u00103J\u0015\u00107\u001a\u0002062\u0006\u00105\u001a\u000204¢\u0006\u0004\b7\u00108J)\u0010\t\u001a\b\u0012\u0004\u0012\u00020<092\u0006\u0010\f\u001a\u00020\u000b2\f\u0010;\u001a\b\u0012\u0004\u0012\u00020:09¢\u0006\u0004\b\t\u0010=R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010>R\u0018\u0010@\u001a\u00060?R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010C\u001a\u00060BR\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u0014\u0010G\u001a\u0002068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bE\u0010F¨\u0006K"}, d2 = {"Landroidx/window/embedding/EmbeddingAdapter;", "", "Landroidx/window/core/PredicateAdapter;", "predicateAdapter", MethodDecl.initName, "(Landroidx/window/core/PredicateAdapter;)V", "Landroidx/window/extensions/embedding/SplitInfo;", "splitInfo", "Landroidx/window/embedding/SplitInfo;", "translate", "(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitInfo;", "Landroid/content/Context;", "context", "Landroidx/window/embedding/SplitPairRule;", "rule", "Ljava/lang/Class;", "predicateClass", "Landroidx/window/extensions/embedding/SplitPairRule;", "translateSplitPairRule", "(Landroid/content/Context;Landroidx/window/embedding/SplitPairRule;Ljava/lang/Class;)Landroidx/window/extensions/embedding/SplitPairRule;", "Landroidx/window/embedding/SplitAttributes$SplitType;", "splitType", "Landroidx/window/extensions/embedding/SplitAttributes$SplitType;", "translateSplitType", "(Landroidx/window/embedding/SplitAttributes$SplitType;)Landroidx/window/extensions/embedding/SplitAttributes$SplitType;", "Landroidx/window/embedding/SplitPlaceholderRule;", "Landroidx/window/extensions/embedding/SplitPlaceholderRule;", "translateSplitPlaceholderRule", "(Landroid/content/Context;Landroidx/window/embedding/SplitPlaceholderRule;Ljava/lang/Class;)Landroidx/window/extensions/embedding/SplitPlaceholderRule;", "Landroidx/window/embedding/ActivityRule;", "Landroidx/window/extensions/embedding/ActivityRule;", "translateActivityRule", "(Landroidx/window/embedding/ActivityRule;Ljava/lang/Class;)Landroidx/window/extensions/embedding/ActivityRule;", "", "splitInfoList", "(Ljava/util/List;)Ljava/util/List;", "Landroidx/window/extensions/embedding/SplitAttributes;", "splitAttributes", "Landroidx/window/embedding/SplitAttributes;", "translate$window_release", "(Landroidx/window/extensions/embedding/SplitAttributes;)Landroidx/window/embedding/SplitAttributes;", "Lkotlin/Function1;", "Landroidx/window/embedding/SplitAttributesCalculatorParams;", "calculator", "Landroidx/window/extensions/core/util/function/Function;", "Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;", "translateSplitAttributesCalculator", "(Le74;)Landroidx/window/extensions/core/util/function/Function;", "params", "(Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;)Landroidx/window/embedding/SplitAttributesCalculatorParams;", "translateSplitAttributes", "(Landroidx/window/embedding/SplitAttributes;)Landroidx/window/extensions/embedding/SplitAttributes;", "Landroidx/window/embedding/SplitRule$FinishBehavior;", "behavior", "", "translateFinishBehavior", "(Landroidx/window/embedding/SplitRule$FinishBehavior;)I", "", "Landroidx/window/embedding/EmbeddingRule;", "rules", "Landroidx/window/extensions/embedding/EmbeddingRule;", "(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;", "Landroidx/window/core/PredicateAdapter;", "Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;", "api1Impl", "Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;", "Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;", "api2Impl", "Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;", "getVendorApiLevel", "()I", "vendorApiLevel", "Companion", "VendorApiLevel1Impl", "VendorApiLevel2Impl", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class EmbeddingAdapter {
    private final VendorApiLevel1Impl api1Impl;
    private final VendorApiLevel2Impl api2Impl;
    private final PredicateAdapter predicateAdapter;

    public static final Companion INSTANCE = new Companion(null);
    private static final Binder INVALID_SPLIT_INFO_TOKEN = new Binder();
    private static final Binder INVALID_ACTIVITY_STACK_TOKEN = new Binder();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Landroidx/window/embedding/EmbeddingAdapter$Companion;", "", "()V", "INVALID_ACTIVITY_STACK_TOKEN", "Landroid/os/Binder;", "getINVALID_ACTIVITY_STACK_TOKEN", "()Landroid/os/Binder;", "INVALID_SPLIT_INFO_TOKEN", "getINVALID_SPLIT_INFO_TOKEN", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Binder getINVALID_ACTIVITY_STACK_TOKEN() {
            return EmbeddingAdapter.INVALID_ACTIVITY_STACK_TOKEN;
        }

        public final Binder getINVALID_SPLIT_INFO_TOKEN() {
            return EmbeddingAdapter.INVALID_SPLIT_INFO_TOKEN;
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;", "", "(Landroidx/window/embedding/EmbeddingAdapter;)V", "translateCompat", "Landroidx/window/embedding/SplitInfo;", "splitInfo", "Landroidx/window/extensions/embedding/SplitInfo;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class VendorApiLevel2Impl {
        public VendorApiLevel2Impl() {
        }

        public final SplitInfo translateCompat(androidx.window.extensions.embedding.SplitInfo splitInfo) {
            y45.j(splitInfo, "splitInfo");
            androidx.window.extensions.embedding.ActivityStack primaryActivityStack = splitInfo.getPrimaryActivityStack();
            y45.i(primaryActivityStack, "splitInfo.primaryActivityStack");
            List activities = primaryActivityStack.getActivities();
            y45.i(activities, "primaryActivityStack.activities");
            ActivityStack activityStack = new ActivityStack(activities, primaryActivityStack.isEmpty());
            androidx.window.extensions.embedding.ActivityStack secondaryActivityStack = splitInfo.getSecondaryActivityStack();
            y45.i(secondaryActivityStack, "splitInfo.secondaryActivityStack");
            List activities2 = secondaryActivityStack.getActivities();
            y45.i(activities2, "secondaryActivityStack.activities");
            ActivityStack activityStack2 = new ActivityStack(activities2, secondaryActivityStack.isEmpty());
            EmbeddingAdapter embeddingAdapter = EmbeddingAdapter.this;
            androidx.window.extensions.embedding.SplitAttributes splitAttributes = splitInfo.getSplitAttributes();
            y45.i(splitAttributes, "splitInfo.splitAttributes");
            return new SplitInfo(activityStack, activityStack2, embeddingAdapter.translate$window_release(splitAttributes), EmbeddingAdapter.INSTANCE.getINVALID_SPLIT_INFO_TOKEN());
        }
    }

    public EmbeddingAdapter(PredicateAdapter predicateAdapter) {
        y45.j(predicateAdapter, "predicateAdapter");
        this.predicateAdapter = predicateAdapter;
        this.api1Impl = new VendorApiLevel1Impl(this, predicateAdapter);
        this.api2Impl = new VendorApiLevel2Impl();
    }

    private final int getVendorApiLevel() {
        return WindowSdkExtensions.INSTANCE.getInstance().getExtensionVersion();
    }

    private final androidx.window.extensions.embedding.ActivityRule translateActivityRule(final ActivityRule rule, Class<?> predicateClass) {
        if (getVendorApiLevel() < 2) {
            return this.api1Impl.translateActivityRuleCompat(rule, predicateClass);
        }
        androidx.window.extensions.embedding.ActivityRule.Builder shouldAlwaysExpand = new androidx.window.extensions.embedding.ActivityRule.Builder(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateActivityRule$lambda$13(rule, (Activity) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateActivityRule$lambda$15(rule, (Intent) obj);
            }
        }).setShouldAlwaysExpand(rule.getAlwaysExpand());
        y45.i(shouldAlwaysExpand, "ActivityRuleBuilder(acti…Expand(rule.alwaysExpand)");
        String tag = rule.getTag();
        if (tag != null) {
            shouldAlwaysExpand.setTag(tag);
        }
        androidx.window.extensions.embedding.ActivityRule activityRuleBuild = shouldAlwaysExpand.build();
        y45.i(activityRuleBuild, "builder.build()");
        return activityRuleBuild;
    }

    public static final boolean translateActivityRule$lambda$13(ActivityRule activityRule, Activity activity) {
        y45.j(activityRule, "$rule");
        Set<ActivityFilter> filters = activityRule.getFilters();
        if ((filters instanceof Collection) && filters.isEmpty()) {
            return false;
        }
        for (ActivityFilter activityFilter : filters) {
            y45.i(activity, "activity");
            if (activityFilter.matchesActivity(activity)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean translateActivityRule$lambda$15(ActivityRule activityRule, Intent intent) {
        y45.j(activityRule, "$rule");
        Set<ActivityFilter> filters = activityRule.getFilters();
        if ((filters instanceof Collection) && filters.isEmpty()) {
            return false;
        }
        for (ActivityFilter activityFilter : filters) {
            y45.i(intent, "intent");
            if (activityFilter.matchesIntent(intent)) {
                return true;
            }
        }
        return false;
    }

    public static final androidx.window.extensions.embedding.SplitAttributes translateSplitAttributesCalculator$lambda$0(EmbeddingAdapter embeddingAdapter, e74 e74Var, androidx.window.extensions.embedding.SplitAttributesCalculatorParams splitAttributesCalculatorParams) {
        y45.j(embeddingAdapter, "this$0");
        y45.j(e74Var, "$calculator");
        y45.i(splitAttributesCalculatorParams, "oemParams");
        return embeddingAdapter.translateSplitAttributes((SplitAttributes) e74Var.invoke(embeddingAdapter.translate(splitAttributesCalculatorParams)));
    }

    private final androidx.window.extensions.embedding.SplitPairRule translateSplitPairRule(final Context context, final SplitPairRule rule, Class<?> predicateClass) {
        if (getVendorApiLevel() < 2) {
            return this.api1Impl.translateSplitPairRuleCompat(context, rule, predicateClass);
        }
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPairRule$lambda$3(rule, (Pair) obj);
            }
        };
        Predicate predicate2 = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPairRule$lambda$5(rule, (Pair) obj);
            }
        };
        Predicate predicate3 = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPairRule$lambda$6(rule, context, (WindowMetrics) obj);
            }
        };
        String tag = rule.getTag();
        androidx.window.extensions.embedding.SplitPairRule.Builder shouldClearTop = new androidx.window.extensions.embedding.SplitPairRule.Builder(predicate, predicate2, predicate3).setDefaultSplitAttributes(translateSplitAttributes(rule.getDefaultSplitAttributes())).setFinishPrimaryWithSecondary(translateFinishBehavior(rule.getFinishPrimaryWithSecondary())).setFinishSecondaryWithPrimary(translateFinishBehavior(rule.getFinishSecondaryWithPrimary())).setShouldClearTop(rule.getClearTop());
        y45.i(shouldClearTop, "SplitPairRuleBuilder(\n  …ldClearTop(rule.clearTop)");
        if (tag != null) {
            shouldClearTop.setTag(tag);
        }
        androidx.window.extensions.embedding.SplitPairRule splitPairRuleBuild = shouldClearTop.build();
        y45.i(splitPairRuleBuild, "builder.build()");
        return splitPairRuleBuild;
    }

    public static final boolean translateSplitPairRule$lambda$3(SplitPairRule splitPairRule, Pair pair) {
        y45.j(splitPairRule, "$rule");
        Set<SplitPairFilter> filters = splitPairRule.getFilters();
        if ((filters instanceof Collection) && filters.isEmpty()) {
            return false;
        }
        for (SplitPairFilter splitPairFilter : filters) {
            Object obj = pair.first;
            y45.i(obj, "activitiesPair.first");
            Object obj2 = pair.second;
            y45.i(obj2, "activitiesPair.second");
            if (splitPairFilter.matchesActivityPair((Activity) obj, (Activity) obj2)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean translateSplitPairRule$lambda$5(SplitPairRule splitPairRule, Pair pair) {
        y45.j(splitPairRule, "$rule");
        Set<SplitPairFilter> filters = splitPairRule.getFilters();
        if ((filters instanceof Collection) && filters.isEmpty()) {
            return false;
        }
        for (SplitPairFilter splitPairFilter : filters) {
            Object obj = pair.first;
            y45.i(obj, "activityIntentPair.first");
            Object obj2 = pair.second;
            y45.i(obj2, "activityIntentPair.second");
            if (splitPairFilter.matchesActivityIntentPair((Activity) obj, (Intent) obj2)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean translateSplitPairRule$lambda$6(SplitPairRule splitPairRule, Context context, WindowMetrics windowMetrics) {
        y45.j(splitPairRule, "$rule");
        y45.j(context, "$context");
        y45.i(windowMetrics, "windowMetrics");
        return splitPairRule.checkParentMetrics$window_release(context, windowMetrics);
    }

    private final androidx.window.extensions.embedding.SplitPlaceholderRule translateSplitPlaceholderRule(final Context context, final SplitPlaceholderRule rule, Class<?> predicateClass) {
        if (getVendorApiLevel() < 2) {
            return this.api1Impl.translateSplitPlaceholderRuleCompat(context, rule, predicateClass);
        }
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPlaceholderRule$lambda$8(rule, (Activity) obj);
            }
        };
        Predicate predicate2 = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPlaceholderRule$lambda$10(rule, (Intent) obj);
            }
        };
        Predicate predicate3 = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPlaceholderRule$lambda$11(rule, context, (WindowMetrics) obj);
            }
        };
        String tag = rule.getTag();
        androidx.window.extensions.embedding.SplitPlaceholderRule.Builder finishPrimaryWithPlaceholder = new androidx.window.extensions.embedding.SplitPlaceholderRule.Builder(rule.getPlaceholderIntent(), predicate, predicate2, predicate3).setSticky(rule.getIsSticky()).setDefaultSplitAttributes(translateSplitAttributes(rule.getDefaultSplitAttributes())).setFinishPrimaryWithPlaceholder(translateFinishBehavior(rule.getFinishPrimaryWithPlaceholder()));
        y45.i(finishPrimaryWithPlaceholder, "SplitPlaceholderRuleBuil…holder)\n                )");
        if (tag != null) {
            finishPrimaryWithPlaceholder.setTag(tag);
        }
        androidx.window.extensions.embedding.SplitPlaceholderRule splitPlaceholderRuleBuild = finishPrimaryWithPlaceholder.build();
        y45.i(splitPlaceholderRuleBuild, "builder.build()");
        return splitPlaceholderRuleBuild;
    }

    public static final boolean translateSplitPlaceholderRule$lambda$10(SplitPlaceholderRule splitPlaceholderRule, Intent intent) {
        y45.j(splitPlaceholderRule, "$rule");
        Set<ActivityFilter> filters = splitPlaceholderRule.getFilters();
        if ((filters instanceof Collection) && filters.isEmpty()) {
            return false;
        }
        for (ActivityFilter activityFilter : filters) {
            y45.i(intent, "intent");
            if (activityFilter.matchesIntent(intent)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean translateSplitPlaceholderRule$lambda$11(SplitPlaceholderRule splitPlaceholderRule, Context context, WindowMetrics windowMetrics) {
        y45.j(splitPlaceholderRule, "$rule");
        y45.j(context, "$context");
        y45.i(windowMetrics, "windowMetrics");
        return splitPlaceholderRule.checkParentMetrics$window_release(context, windowMetrics);
    }

    public static final boolean translateSplitPlaceholderRule$lambda$8(SplitPlaceholderRule splitPlaceholderRule, Activity activity) {
        y45.j(splitPlaceholderRule, "$rule");
        Set<ActivityFilter> filters = splitPlaceholderRule.getFilters();
        if ((filters instanceof Collection) && filters.isEmpty()) {
            return false;
        }
        for (ActivityFilter activityFilter : filters) {
            y45.i(activity, "activity");
            if (activityFilter.matchesActivity(activity)) {
                return true;
            }
        }
        return false;
    }

    private final androidx.window.extensions.embedding.SplitAttributes.SplitType translateSplitType(SplitAttributes.SplitType splitType) {
        if (getVendorApiLevel() < 2) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (y45.e(splitType, SplitAttributes.SplitType.SPLIT_TYPE_HINGE)) {
            return new androidx.window.extensions.embedding.SplitAttributes.SplitType.HingeSplitType(translateSplitType(SplitAttributes.SplitType.SPLIT_TYPE_EQUAL));
        }
        if (y45.e(splitType, SplitAttributes.SplitType.SPLIT_TYPE_EXPAND)) {
            return new androidx.window.extensions.embedding.SplitAttributes.SplitType.ExpandContainersSplitType();
        }
        float value = splitType.getValue();
        double d = value;
        if (d > 0.0d && d < 1.0d) {
            return new androidx.window.extensions.embedding.SplitAttributes.SplitType.RatioSplitType(value);
        }
        throw new IllegalArgumentException("Unsupported SplitType: " + splitType + " with value: " + splitType.getValue());
    }

    public final List<SplitInfo> translate(List<? extends androidx.window.extensions.embedding.SplitInfo> splitInfoList) {
        y45.j(splitInfoList, "splitInfoList");
        List<? extends androidx.window.extensions.embedding.SplitInfo> list = splitInfoList;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(translate((androidx.window.extensions.embedding.SplitInfo) it.next()));
        }
        return arrayList;
    }

    public final SplitAttributes translate$window_release(androidx.window.extensions.embedding.SplitAttributes splitAttributes) {
        SplitAttributes.SplitType splitTypeRatio;
        SplitAttributes.LayoutDirection layoutDirection;
        y45.j(splitAttributes, "splitAttributes");
        SplitAttributes.Builder builder = new SplitAttributes.Builder();
        androidx.window.extensions.embedding.SplitAttributes.SplitType.RatioSplitType splitType = splitAttributes.getSplitType();
        y45.i(splitType, "splitAttributes.splitType");
        if (splitType instanceof androidx.window.extensions.embedding.SplitAttributes.SplitType.HingeSplitType) {
            splitTypeRatio = SplitAttributes.SplitType.SPLIT_TYPE_HINGE;
        } else if (splitType instanceof androidx.window.extensions.embedding.SplitAttributes.SplitType.ExpandContainersSplitType) {
            splitTypeRatio = SplitAttributes.SplitType.SPLIT_TYPE_EXPAND;
        } else {
            if (!(splitType instanceof androidx.window.extensions.embedding.SplitAttributes.SplitType.RatioSplitType)) {
                throw new IllegalArgumentException("Unknown split type: " + splitType);
            }
            splitTypeRatio = SplitAttributes.SplitType.INSTANCE.ratio(splitType.getRatio());
        }
        SplitAttributes.Builder splitType2 = builder.setSplitType(splitTypeRatio);
        int layoutDirection2 = splitAttributes.getLayoutDirection();
        if (layoutDirection2 == 0) {
            layoutDirection = SplitAttributes.LayoutDirection.LEFT_TO_RIGHT;
        } else if (layoutDirection2 == 1) {
            layoutDirection = SplitAttributes.LayoutDirection.RIGHT_TO_LEFT;
        } else if (layoutDirection2 == 3) {
            layoutDirection = SplitAttributes.LayoutDirection.LOCALE;
        } else if (layoutDirection2 == 4) {
            layoutDirection = SplitAttributes.LayoutDirection.TOP_TO_BOTTOM;
        } else {
            if (layoutDirection2 != 5) {
                throw new IllegalArgumentException("Unknown layout direction: " + layoutDirection2);
            }
            layoutDirection = SplitAttributes.LayoutDirection.BOTTOM_TO_TOP;
        }
        return splitType2.setLayoutDirection(layoutDirection).build();
    }

    public final int translateFinishBehavior(SplitRule.FinishBehavior behavior) {
        y45.j(behavior, "behavior");
        if (y45.e(behavior, SplitRule.FinishBehavior.NEVER)) {
            return 0;
        }
        if (y45.e(behavior, SplitRule.FinishBehavior.ALWAYS)) {
            return 1;
        }
        if (y45.e(behavior, SplitRule.FinishBehavior.ADJACENT)) {
            return 2;
        }
        throw new IllegalArgumentException("Unknown finish behavior:" + behavior);
    }

    public final androidx.window.extensions.embedding.SplitAttributes translateSplitAttributes(SplitAttributes splitAttributes) {
        int i;
        y45.j(splitAttributes, "splitAttributes");
        if (getVendorApiLevel() < 2) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        androidx.window.extensions.embedding.SplitAttributes.Builder splitType = new androidx.window.extensions.embedding.SplitAttributes.Builder().setSplitType(translateSplitType(splitAttributes.getSplitType()));
        SplitAttributes.LayoutDirection layoutDir = splitAttributes.getLayoutDir();
        if (y45.e(layoutDir, SplitAttributes.LayoutDirection.LOCALE)) {
            i = 3;
        } else if (y45.e(layoutDir, SplitAttributes.LayoutDirection.LEFT_TO_RIGHT)) {
            i = 0;
        } else if (y45.e(layoutDir, SplitAttributes.LayoutDirection.RIGHT_TO_LEFT)) {
            i = 1;
        } else if (y45.e(layoutDir, SplitAttributes.LayoutDirection.TOP_TO_BOTTOM)) {
            i = 4;
        } else {
            if (!y45.e(layoutDir, SplitAttributes.LayoutDirection.BOTTOM_TO_TOP)) {
                throw new IllegalArgumentException("Unsupported layoutDirection:" + splitAttributes + ".layoutDirection");
            }
            i = 5;
        }
        androidx.window.extensions.embedding.SplitAttributes splitAttributesBuild = splitType.setLayoutDirection(i).build();
        y45.i(splitAttributesBuild, "Builder()\n            .s…   )\n            .build()");
        return splitAttributesBuild;
    }

    public final Function<androidx.window.extensions.embedding.SplitAttributesCalculatorParams, androidx.window.extensions.embedding.SplitAttributes> translateSplitAttributesCalculator(final e74 calculator) {
        y45.j(calculator, "calculator");
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                return EmbeddingAdapter.translateSplitAttributesCalculator$lambda$0(this.a, calculator, (SplitAttributesCalculatorParams) obj);
            }
        };
    }

    @Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0002J\u0016\u0010\u000e\u001a\u00020\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0003J\u0016\u0010\u0012\u001a\u00020\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0003J\u0016\u0010\u0013\u001a\u00020\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0010H\u0003J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001bJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u001e\u001a\u00020\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0010H\u0003J\u0018\u0010\u001f\u001a\u00020\u00012\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0003J\u001c\u0010$\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'0%2\u0006\u0010\r\u001a\u00020\bH\u0002J\"\u0010(\u001a\u00020)2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0018\u001a\u00020*2\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001bJ\"\u0010+\u001a\u00020,2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0018\u001a\u00020-2\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001bJ\u0014\u0010.\u001a\u00020/*\u00020/2\u0006\u00100\u001a\u00020\bH\u0002J\u0014\u0010.\u001a\u000201*\u0002012\u0006\u00100\u001a\u00020\bH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u00062"}, d2 = {"Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;", "", "predicateAdapter", "Landroidx/window/core/PredicateAdapter;", "(Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/PredicateAdapter;)V", "getPredicateAdapter", "()Landroidx/window/core/PredicateAdapter;", "getSplitAttributesCompat", "Landroidx/window/embedding/SplitAttributes;", "splitInfo", "Landroidx/window/extensions/embedding/SplitInfo;", "isSplitAttributesSupported", "", "attrs", "translateActivityIntentPredicates", "splitPairFilters", "", "Landroidx/window/embedding/SplitPairFilter;", "translateActivityPairPredicates", "translateActivityPredicates", "activityFilters", "Landroidx/window/embedding/ActivityFilter;", "translateActivityRuleCompat", "Landroidx/window/extensions/embedding/ActivityRule;", "rule", "Landroidx/window/embedding/ActivityRule;", "predicateClass", "Ljava/lang/Class;", "translateCompat", "Landroidx/window/embedding/SplitInfo;", "translateIntentPredicates", "translateParentMetricsPredicate", "context", "Landroid/content/Context;", "splitRule", "Landroidx/window/embedding/SplitRule;", "translateSplitAttributesCompatInternal", "Lkotlin/Pair;", "", "", "translateSplitPairRuleCompat", "Landroidx/window/extensions/embedding/SplitPairRule;", "Landroidx/window/embedding/SplitPairRule;", "translateSplitPlaceholderRuleCompat", "Landroidx/window/extensions/embedding/SplitPlaceholderRule;", "Landroidx/window/embedding/SplitPlaceholderRule;", "setDefaultSplitAttributesCompat", "Landroidx/window/extensions/embedding/SplitPairRule$Builder;", "defaultAttrs", "Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class VendorApiLevel1Impl {
        private final PredicateAdapter predicateAdapter;
        final EmbeddingAdapter this$0;

        public VendorApiLevel1Impl(EmbeddingAdapter embeddingAdapter, PredicateAdapter predicateAdapter) {
            y45.j(predicateAdapter, "predicateAdapter");
            this.this$0 = embeddingAdapter;
            this.predicateAdapter = predicateAdapter;
        }

        private final boolean isSplitAttributesSupported(SplitAttributes attrs) {
            double value = attrs.getSplitType().getValue();
            return 0.0d <= value && value <= 1.0d && attrs.getSplitType().getValue() != 1.0f && hi.P(new SplitAttributes.LayoutDirection[]{SplitAttributes.LayoutDirection.LEFT_TO_RIGHT, SplitAttributes.LayoutDirection.RIGHT_TO_LEFT, SplitAttributes.LayoutDirection.LOCALE}, attrs.getLayoutDir());
        }

        private final androidx.window.extensions.embedding.SplitPlaceholderRule.Builder setDefaultSplitAttributesCompat(androidx.window.extensions.embedding.SplitPlaceholderRule.Builder builder, SplitAttributes splitAttributes) {
            kotlin.Pair<Float, Integer> pairTranslateSplitAttributesCompatInternal = translateSplitAttributesCompatInternal(splitAttributes);
            float fFloatValue = pairTranslateSplitAttributesCompatInternal.component1().floatValue();
            int iIntValue = pairTranslateSplitAttributesCompatInternal.component2().intValue();
            builder.setSplitRatio(fFloatValue);
            builder.setLayoutDirection(iIntValue);
            return builder;
        }

        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        private final Object translateActivityIntentPredicates(final Set<SplitPairFilter> splitPairFilters) {
            return this.predicateAdapter.buildPairPredicate(xq8.b(Activity.class), xq8.b(Intent.class), new s74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public final Boolean invoke(Activity activity, Intent intent) {
                    y45.j(activity, "first");
                    y45.j(intent, "second");
                    Set<SplitPairFilter> set = splitPairFilters;
                    boolean z = false;
                    if (!(set instanceof Collection) || !set.isEmpty()) {
                        Iterator<T> it = set.iterator();
                        while (it.hasNext()) {
                            if (((SplitPairFilter) it.next()).matchesActivityIntentPair(activity, intent)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    return Boolean.valueOf(z);
                }
            });
        }

        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        private final Object translateActivityPairPredicates(final Set<SplitPairFilter> splitPairFilters) {
            return this.predicateAdapter.buildPairPredicate(xq8.b(Activity.class), xq8.b(Activity.class), new s74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public final Boolean invoke(Activity activity, Activity activity2) {
                    y45.j(activity, "first");
                    y45.j(activity2, "second");
                    Set<SplitPairFilter> set = splitPairFilters;
                    boolean z = false;
                    if (!(set instanceof Collection) || !set.isEmpty()) {
                        Iterator<T> it = set.iterator();
                        while (it.hasNext()) {
                            if (((SplitPairFilter) it.next()).matchesActivityPair(activity, activity2)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    return Boolean.valueOf(z);
                }
            });
        }

        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        private final Object translateActivityPredicates(final Set<ActivityFilter> activityFilters) {
            return this.predicateAdapter.buildPredicate(xq8.b(Activity.class), new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public final Boolean invoke(Activity activity) {
                    y45.j(activity, "activity");
                    Set<ActivityFilter> set = activityFilters;
                    boolean z = false;
                    if (!(set instanceof Collection) || !set.isEmpty()) {
                        Iterator<T> it = set.iterator();
                        while (it.hasNext()) {
                            if (((ActivityFilter) it.next()).matchesActivity(activity)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    return Boolean.valueOf(z);
                }
            });
        }

        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        private final Object translateIntentPredicates(final Set<ActivityFilter> activityFilters) {
            return this.predicateAdapter.buildPredicate(xq8.b(Intent.class), new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public final Boolean invoke(Intent intent) {
                    y45.j(intent, "intent");
                    Set<ActivityFilter> set = activityFilters;
                    boolean z = false;
                    if (!(set instanceof Collection) || !set.isEmpty()) {
                        Iterator<T> it = set.iterator();
                        while (it.hasNext()) {
                            if (((ActivityFilter) it.next()).matchesIntent(intent)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    return Boolean.valueOf(z);
                }
            });
        }

        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        private final Object translateParentMetricsPredicate(final Context context, final SplitRule splitRule) {
            return this.predicateAdapter.buildPredicate(xq8.b(g93.a()), new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    return invoke(h93.a(obj));
                }

                public final Boolean invoke(WindowMetrics windowMetrics) {
                    y45.j(windowMetrics, "windowMetrics");
                    return Boolean.valueOf(splitRule.checkParentMetrics$window_release(context, windowMetrics));
                }
            });
        }

        private final kotlin.Pair<Float, Integer> translateSplitAttributesCompatInternal(SplitAttributes attrs) {
            int i = 3;
            if (!isSplitAttributesSupported(attrs)) {
                return new kotlin.Pair<>(Float.valueOf(0.0f), 3);
            }
            Float fValueOf = Float.valueOf(attrs.getSplitType().getValue());
            SplitAttributes.LayoutDirection layoutDir = attrs.getLayoutDir();
            if (!y45.e(layoutDir, SplitAttributes.LayoutDirection.LOCALE)) {
                if (y45.e(layoutDir, SplitAttributes.LayoutDirection.LEFT_TO_RIGHT)) {
                    i = 0;
                } else {
                    if (!y45.e(layoutDir, SplitAttributes.LayoutDirection.RIGHT_TO_LEFT)) {
                        throw new IllegalStateException("Unsupported layout direction must be covered in @isSplitAttributesSupported!");
                    }
                    i = 1;
                }
            }
            return new kotlin.Pair<>(fValueOf, Integer.valueOf(i));
        }

        public final PredicateAdapter getPredicateAdapter() {
            return this.predicateAdapter;
        }

        public final SplitAttributes getSplitAttributesCompat(androidx.window.extensions.embedding.SplitInfo splitInfo) {
            y45.j(splitInfo, "splitInfo");
            return new SplitAttributes.Builder().setSplitType(SplitAttributes.SplitType.INSTANCE.buildSplitTypeFromValue$window_release(splitInfo.getSplitRatio())).setLayoutDirection(SplitAttributes.LayoutDirection.LOCALE).build();
        }

        public final androidx.window.extensions.embedding.ActivityRule translateActivityRuleCompat(ActivityRule rule, Class<?> predicateClass) {
            y45.j(rule, "rule");
            y45.j(predicateClass, "predicateClass");
            androidx.window.extensions.embedding.ActivityRule activityRuleBuild = ((androidx.window.extensions.embedding.ActivityRule.Builder) androidx.window.extensions.embedding.ActivityRule.Builder.class.getConstructor(predicateClass, predicateClass).newInstance(translateActivityPredicates(rule.getFilters()), translateIntentPredicates(rule.getFilters()))).setShouldAlwaysExpand(rule.getAlwaysExpand()).build();
            y45.i(activityRuleBuild, "ActivityRuleBuilder::cla…\n                .build()");
            return activityRuleBuild;
        }

        public final SplitInfo translateCompat(androidx.window.extensions.embedding.SplitInfo splitInfo) {
            y45.j(splitInfo, "splitInfo");
            List activities = splitInfo.getPrimaryActivityStack().getActivities();
            y45.i(activities, "splitInfo.primaryActivityStack.activities");
            ActivityStack activityStack = new ActivityStack(activities, splitInfo.getPrimaryActivityStack().isEmpty());
            List activities2 = splitInfo.getSecondaryActivityStack().getActivities();
            y45.i(activities2, "splitInfo.secondaryActivityStack.activities");
            return new SplitInfo(activityStack, new ActivityStack(activities2, splitInfo.getSecondaryActivityStack().isEmpty()), getSplitAttributesCompat(splitInfo), EmbeddingAdapter.INSTANCE.getINVALID_SPLIT_INFO_TOKEN());
        }

        public final androidx.window.extensions.embedding.SplitPairRule translateSplitPairRuleCompat(Context context, SplitPairRule rule, Class<?> predicateClass) throws IllegalAccessException, InstantiationException, InvocationTargetException {
            y45.j(context, "context");
            y45.j(rule, "rule");
            y45.j(predicateClass, "predicateClass");
            Object objNewInstance = androidx.window.extensions.embedding.SplitPairRule.Builder.class.getConstructor(predicateClass, predicateClass, predicateClass).newInstance(translateActivityPairPredicates(rule.getFilters()), translateActivityIntentPredicates(rule.getFilters()), translateParentMetricsPredicate(context, rule));
            y45.i(objNewInstance, "SplitPairRuleBuilder::cl…text, rule)\n            )");
            androidx.window.extensions.embedding.SplitPairRule splitPairRuleBuild = setDefaultSplitAttributesCompat((androidx.window.extensions.embedding.SplitPairRule.Builder) objNewInstance, rule.getDefaultSplitAttributes()).setShouldClearTop(rule.getClearTop()).setFinishPrimaryWithSecondary(this.this$0.translateFinishBehavior(rule.getFinishPrimaryWithSecondary())).setFinishSecondaryWithPrimary(this.this$0.translateFinishBehavior(rule.getFinishSecondaryWithPrimary())).build();
            y45.i(splitPairRuleBuild, "SplitPairRuleBuilder::cl…                ).build()");
            return splitPairRuleBuild;
        }

        public final androidx.window.extensions.embedding.SplitPlaceholderRule translateSplitPlaceholderRuleCompat(Context context, SplitPlaceholderRule rule, Class<?> predicateClass) {
            y45.j(context, "context");
            y45.j(rule, "rule");
            y45.j(predicateClass, "predicateClass");
            androidx.window.extensions.embedding.SplitPlaceholderRule.Builder finishPrimaryWithSecondary = ((androidx.window.extensions.embedding.SplitPlaceholderRule.Builder) androidx.window.extensions.embedding.SplitPlaceholderRule.Builder.class.getConstructor(Intent.class, predicateClass, predicateClass, predicateClass).newInstance(rule.getPlaceholderIntent(), translateActivityPredicates(rule.getFilters()), translateIntentPredicates(rule.getFilters()), translateParentMetricsPredicate(context, rule))).setSticky(rule.getIsSticky()).setFinishPrimaryWithSecondary(this.this$0.translateFinishBehavior(rule.getFinishPrimaryWithPlaceholder()));
            y45.i(finishPrimaryWithSecondary, "SplitPlaceholderRuleBuil…holder)\n                )");
            androidx.window.extensions.embedding.SplitPlaceholderRule splitPlaceholderRuleBuild = setDefaultSplitAttributesCompat(finishPrimaryWithSecondary, rule.getDefaultSplitAttributes()).build();
            y45.i(splitPlaceholderRuleBuild, "SplitPlaceholderRuleBuil…\n                .build()");
            return splitPlaceholderRuleBuild;
        }

        private final androidx.window.extensions.embedding.SplitPairRule.Builder setDefaultSplitAttributesCompat(androidx.window.extensions.embedding.SplitPairRule.Builder builder, SplitAttributes splitAttributes) {
            kotlin.Pair<Float, Integer> pairTranslateSplitAttributesCompatInternal = translateSplitAttributesCompatInternal(splitAttributes);
            float fFloatValue = pairTranslateSplitAttributesCompatInternal.component1().floatValue();
            int iIntValue = pairTranslateSplitAttributesCompatInternal.component2().intValue();
            builder.setSplitRatio(fFloatValue);
            builder.setLayoutDirection(iIntValue);
            return builder;
        }
    }

    private final SplitInfo translate(androidx.window.extensions.embedding.SplitInfo splitInfo) {
        int vendorApiLevel = getVendorApiLevel();
        if (vendorApiLevel == 1) {
            return this.api1Impl.translateCompat(splitInfo);
        }
        if (vendorApiLevel != 2) {
            androidx.window.extensions.embedding.ActivityStack primaryActivityStack = splitInfo.getPrimaryActivityStack();
            y45.i(primaryActivityStack, "splitInfo.primaryActivityStack");
            androidx.window.extensions.embedding.ActivityStack secondaryActivityStack = splitInfo.getSecondaryActivityStack();
            y45.i(secondaryActivityStack, "splitInfo.secondaryActivityStack");
            List activities = primaryActivityStack.getActivities();
            y45.i(activities, "primaryActivityStack.activities");
            ActivityStack activityStack = new ActivityStack(activities, primaryActivityStack.isEmpty());
            List activities2 = secondaryActivityStack.getActivities();
            y45.i(activities2, "secondaryActivityStack.activities");
            ActivityStack activityStack2 = new ActivityStack(activities2, secondaryActivityStack.isEmpty());
            androidx.window.extensions.embedding.SplitAttributes splitAttributes = splitInfo.getSplitAttributes();
            y45.i(splitAttributes, "splitInfo.splitAttributes");
            SplitAttributes splitAttributesTranslate$window_release = translate$window_release(splitAttributes);
            IBinder token = splitInfo.getToken();
            y45.i(token, "splitInfo.token");
            return new SplitInfo(activityStack, activityStack2, splitAttributesTranslate$window_release, token);
        }
        return this.api2Impl.translateCompat(splitInfo);
    }

    @SuppressLint({"NewApi"})
    public final SplitAttributesCalculatorParams translate(androidx.window.extensions.embedding.SplitAttributesCalculatorParams params) {
        y45.j(params, "params");
        WindowMetrics parentWindowMetrics = params.getParentWindowMetrics();
        y45.i(parentWindowMetrics, "params.parentWindowMetrics");
        Configuration parentConfiguration = params.getParentConfiguration();
        y45.i(parentConfiguration, "params.parentConfiguration");
        WindowLayoutInfo parentWindowLayoutInfo = params.getParentWindowLayoutInfo();
        y45.i(parentWindowLayoutInfo, "params.parentWindowLayoutInfo");
        androidx.window.extensions.embedding.SplitAttributes defaultSplitAttributes = params.getDefaultSplitAttributes();
        y45.i(defaultSplitAttributes, "params.defaultSplitAttributes");
        boolean zAreDefaultConstraintsSatisfied = params.areDefaultConstraintsSatisfied();
        String splitRuleTag = params.getSplitRuleTag();
        androidx.window.layout.WindowMetrics windowMetricsTranslateWindowMetrics$window_release = WindowMetricsCalculator.INSTANCE.translateWindowMetrics$window_release(parentWindowMetrics);
        return new SplitAttributesCalculatorParams(windowMetricsTranslateWindowMetrics$window_release, parentConfiguration, ExtensionsWindowLayoutInfoAdapter.INSTANCE.translate$window_release(windowMetricsTranslateWindowMetrics$window_release, parentWindowLayoutInfo), translate$window_release(defaultSplitAttributes), zAreDefaultConstraintsSatisfied, splitRuleTag);
    }

    public final Set<androidx.window.extensions.embedding.EmbeddingRule> translate(Context context, Set<? extends EmbeddingRule> rules) {
        androidx.window.extensions.embedding.SplitPairRule splitPairRuleTranslateActivityRule;
        y45.j(context, "context");
        y45.j(rules, "rules");
        Class<?> clsPredicateClassOrNull$window_release = this.predicateAdapter.predicateClassOrNull$window_release();
        if (clsPredicateClassOrNull$window_release == null) {
            return ye9.f();
        }
        Set<? extends EmbeddingRule> set = rules;
        ArrayList arrayList = new ArrayList(z71.v(set, 10));
        for (EmbeddingRule embeddingRule : set) {
            if (embeddingRule instanceof SplitPairRule) {
                splitPairRuleTranslateActivityRule = translateSplitPairRule(context, (SplitPairRule) embeddingRule, clsPredicateClassOrNull$window_release);
            } else if (embeddingRule instanceof SplitPlaceholderRule) {
                splitPairRuleTranslateActivityRule = translateSplitPlaceholderRule(context, (SplitPlaceholderRule) embeddingRule, clsPredicateClassOrNull$window_release);
            } else {
                if (!(embeddingRule instanceof ActivityRule)) {
                    throw new IllegalArgumentException("Unsupported rule type");
                }
                splitPairRuleTranslateActivityRule = translateActivityRule((ActivityRule) embeddingRule, clsPredicateClassOrNull$window_release);
            }
            arrayList.add((androidx.window.extensions.embedding.EmbeddingRule) splitPairRuleTranslateActivityRule);
        }
        return i81.g1(arrayList);
    }
}
