package androidx.window.embedding;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import androidx.annotation.XmlRes;
import androidx.window.R;
import com.transsion.push.PushConstants;
import defpackage.j1a;
import defpackage.y45;
import defpackage.ye9;
import java.util.HashSet;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.apache.commons.io.IOUtils;

@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\"\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J+\u0010\t\u001a\u00020\b*\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u00062\u0006\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0019\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010#\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010!\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0004\b#\u0010$J)\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010'2\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010&\u001a\u00020%H\u0000¢\u0006\u0004\b(\u0010)¨\u0006+"}, d2 = {"Landroidx/window/embedding/RuleParser;", "", MethodDecl.initName, "()V", "Ljava/util/HashSet;", "Landroidx/window/embedding/EmbeddingRule;", "Lkotlin/collections/HashSet;", "rule", "Lzfb;", "addRuleWithDuplicatedTagCheck", "(Ljava/util/HashSet;Landroidx/window/embedding/EmbeddingRule;)V", "Landroid/content/Context;", "context", "Landroid/content/res/XmlResourceParser;", "parser", "Landroidx/window/embedding/SplitPairRule;", "parseSplitPairRule", "(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairRule;", "Landroidx/window/embedding/SplitPlaceholderRule;", "parseSplitPlaceholderRule", "(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPlaceholderRule;", "Landroidx/window/embedding/SplitPairFilter;", "parseSplitPairFilter", "(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairFilter;", "Landroidx/window/embedding/ActivityRule;", "parseActivityRule", "(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityRule;", "Landroidx/window/embedding/ActivityFilter;", "parseActivityFilter", "(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityFilter;", "", PushConstants.PROVIDER_FIELD_PKG, "", "clsSeq", "Landroid/content/ComponentName;", "buildClassName", "(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;", "", "staticRuleResourceId", "", "parseRules$window_release", "(Landroid/content/Context;I)Ljava/util/Set;", "parseRules", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RuleParser {
    public static final RuleParser INSTANCE = new RuleParser();

    private RuleParser() {
    }

    private final void addRuleWithDuplicatedTagCheck(HashSet<EmbeddingRule> hashSet, EmbeddingRule embeddingRule) {
        String tag = embeddingRule.getTag();
        for (EmbeddingRule embeddingRule2 : hashSet) {
            if (tag != null && y45.e(tag, embeddingRule2.getTag())) {
                throw new IllegalArgumentException("Duplicated tag: " + tag + " for " + embeddingRule + ". The tag must be unique in XML rule definition.");
            }
        }
        hashSet.add(embeddingRule);
    }

    private final ComponentName buildClassName(String pkg, CharSequence clsSeq) {
        if (clsSeq == null || clsSeq.length() == 0) {
            throw new IllegalArgumentException("Activity name must not be null");
        }
        String string = clsSeq.toString();
        if (string.charAt(0) == '.') {
            return new ComponentName(pkg, pkg + string);
        }
        int iL0 = j1a.l0(string, IOUtils.DIR_SEPARATOR_UNIX, 0, false, 6, null);
        if (iL0 > 0) {
            pkg = string.substring(0, iL0);
            y45.i(pkg, "this as java.lang.String…ing(startIndex, endIndex)");
            string = string.substring(iL0 + 1);
            y45.i(string, "this as java.lang.String).substring(startIndex)");
        }
        if (y45.e(string, "*") || j1a.l0(string, '.', 0, false, 6, null) >= 0) {
            return new ComponentName(pkg, string);
        }
        return new ComponentName(pkg, pkg + '.' + string);
    }

    private final ActivityFilter parseActivityFilter(Context context, XmlResourceParser parser) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(parser, R.styleable.ActivityFilter, 0, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.ActivityFilter_activityName);
        String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.ActivityFilter_activityAction);
        String packageName = context.getApplicationContext().getPackageName();
        y45.i(packageName, "packageName");
        return new ActivityFilter(buildClassName(packageName, string), string2);
    }

    private final ActivityRule parseActivityRule(Context context, XmlResourceParser parser) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(parser, R.styleable.ActivityRule, 0, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.ActivityRule_tag);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ActivityRule_alwaysExpand, false);
        typedArrayObtainStyledAttributes.recycle();
        ActivityRule.Builder alwaysExpand = new ActivityRule.Builder(ye9.f()).setAlwaysExpand(z);
        if (string != null) {
            alwaysExpand.setTag(string);
        }
        return alwaysExpand.build();
    }

    private final SplitPairFilter parseSplitPairFilter(Context context, XmlResourceParser parser) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(parser, R.styleable.SplitPairFilter, 0, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.SplitPairFilter_primaryActivityName);
        String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.SplitPairFilter_secondaryActivityName);
        String string3 = typedArrayObtainStyledAttributes.getString(R.styleable.SplitPairFilter_secondaryActivityAction);
        String packageName = context.getApplicationContext().getPackageName();
        y45.i(packageName, "packageName");
        return new SplitPairFilter(buildClassName(packageName, string), buildClassName(packageName, string2), string3);
    }

    private final SplitPairRule parseSplitPairRule(Context context, XmlResourceParser parser) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(parser, R.styleable.SplitPairRule, 0, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.SplitPairRule_tag);
        float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.SplitPairRule_splitRatio, 0.5f);
        int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.SplitPairRule_splitMinWidthDp, 600);
        int integer2 = typedArrayObtainStyledAttributes.getInteger(R.styleable.SplitPairRule_splitMinHeightDp, 600);
        int integer3 = typedArrayObtainStyledAttributes.getInteger(R.styleable.SplitPairRule_splitMinSmallestWidthDp, 600);
        float f2 = typedArrayObtainStyledAttributes.getFloat(R.styleable.SplitPairRule_splitMaxAspectRatioInPortrait, SplitRule.SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT.getValue());
        float f3 = typedArrayObtainStyledAttributes.getFloat(R.styleable.SplitPairRule_splitMaxAspectRatioInLandscape, SplitRule.SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT.getValue());
        int i = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPairRule_splitLayoutDirection, SplitAttributes.LayoutDirection.LOCALE.getValue());
        int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPairRule_finishPrimaryWithSecondary, SplitRule.FinishBehavior.NEVER.getValue());
        int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPairRule_finishSecondaryWithPrimary, SplitRule.FinishBehavior.ALWAYS.getValue());
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SplitPairRule_clearTop, false);
        SplitAttributes splitAttributesBuild = new SplitAttributes.Builder().setSplitType(SplitAttributes.SplitType.INSTANCE.buildSplitTypeFromValue$window_release(f)).setLayoutDirection(SplitAttributes.LayoutDirection.INSTANCE.getLayoutDirectionFromValue$window_release(i)).build();
        SplitPairRule.Builder minSmallestWidthDp = new SplitPairRule.Builder(ye9.f()).setTag(string).setMinWidthDp(integer).setMinHeightDp(integer2).setMinSmallestWidthDp(integer3);
        EmbeddingAspectRatio.Companion companion = EmbeddingAspectRatio.INSTANCE;
        SplitPairRule.Builder maxAspectRatioInLandscape = minSmallestWidthDp.setMaxAspectRatioInPortrait(companion.buildAspectRatioFromValue$window_release(f2)).setMaxAspectRatioInLandscape(companion.buildAspectRatioFromValue$window_release(f3));
        SplitRule.FinishBehavior.Companion companion2 = SplitRule.FinishBehavior.INSTANCE;
        return maxAspectRatioInLandscape.setFinishPrimaryWithSecondary(companion2.getFinishBehaviorFromValue$window_release(i2)).setFinishSecondaryWithPrimary(companion2.getFinishBehaviorFromValue$window_release(i3)).setClearTop(z).setDefaultSplitAttributes(splitAttributesBuild).build();
    }

    private final SplitPlaceholderRule parseSplitPlaceholderRule(Context context, XmlResourceParser parser) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(parser, R.styleable.SplitPlaceholderRule, 0, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.SplitPlaceholderRule_tag);
        String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.SplitPlaceholderRule_placeholderActivityName);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SplitPlaceholderRule_stickyPlaceholder, false);
        int i = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPlaceholderRule_finishPrimaryWithPlaceholder, SplitRule.FinishBehavior.ALWAYS.getValue());
        if (i == SplitRule.FinishBehavior.NEVER.getValue()) {
            throw new IllegalArgumentException("Never is not a valid configuration for Placeholder activities. Please use FINISH_ALWAYS or FINISH_ADJACENT instead or refer to the current API");
        }
        float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.SplitPlaceholderRule_splitRatio, 0.5f);
        int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.SplitPlaceholderRule_splitMinWidthDp, 600);
        int integer2 = typedArrayObtainStyledAttributes.getInteger(R.styleable.SplitPlaceholderRule_splitMinHeightDp, 600);
        int integer3 = typedArrayObtainStyledAttributes.getInteger(R.styleable.SplitPlaceholderRule_splitMinSmallestWidthDp, 600);
        float f2 = typedArrayObtainStyledAttributes.getFloat(R.styleable.SplitPlaceholderRule_splitMaxAspectRatioInPortrait, SplitRule.SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT.getValue());
        float f3 = typedArrayObtainStyledAttributes.getFloat(R.styleable.SplitPlaceholderRule_splitMaxAspectRatioInLandscape, SplitRule.SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT.getValue());
        SplitAttributes splitAttributesBuild = new SplitAttributes.Builder().setSplitType(SplitAttributes.SplitType.INSTANCE.buildSplitTypeFromValue$window_release(f)).setLayoutDirection(SplitAttributes.LayoutDirection.INSTANCE.getLayoutDirectionFromValue$window_release(typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPlaceholderRule_splitLayoutDirection, SplitAttributes.LayoutDirection.LOCALE.getValue()))).build();
        String packageName = context.getApplicationContext().getPackageName();
        RuleParser ruleParser = INSTANCE;
        y45.i(packageName, "packageName");
        ComponentName componentNameBuildClassName = ruleParser.buildClassName(packageName, string2);
        Set setF = ye9.f();
        Intent component = new Intent().setComponent(componentNameBuildClassName);
        y45.i(component, "Intent().setComponent(pl…eholderActivityClassName)");
        SplitPlaceholderRule.Builder minSmallestWidthDp = new SplitPlaceholderRule.Builder(setF, component).setTag(string).setMinWidthDp(integer).setMinHeightDp(integer2).setMinSmallestWidthDp(integer3);
        EmbeddingAspectRatio.Companion companion = EmbeddingAspectRatio.INSTANCE;
        return minSmallestWidthDp.setMaxAspectRatioInPortrait(companion.buildAspectRatioFromValue$window_release(f2)).setMaxAspectRatioInLandscape(companion.buildAspectRatioFromValue$window_release(f3)).setSticky(z).setFinishPrimaryWithPlaceholder(SplitRule.FinishBehavior.INSTANCE.getFinishBehaviorFromValue$window_release(i)).setDefaultSplitAttributes(splitAttributesBuild).build();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final Set<EmbeddingRule> parseRules$window_release(Context context, @XmlRes int staticRuleResourceId) {
        SplitPlaceholderRule splitPlaceholderRulePlus$window_release;
        ActivityRule activityRulePlus$window_release;
        SplitPairRule splitPairRule;
        y45.j(context, "context");
        try {
            XmlResourceParser xml = context.getResources().getXml(staticRuleResourceId);
            y45.i(xml, "resources.getXml(staticRuleResourceId)");
            HashSet<EmbeddingRule> hashSet = new HashSet<>();
            int depth = xml.getDepth();
            int next = xml.next();
            ActivityRule activityRule = null;
            SplitPairRule splitPairRule2 = null;
            SplitPlaceholderRule splitPlaceholderRule = null;
            while (next != 1 && (next != 3 || xml.getDepth() > depth)) {
                if (xml.getEventType() != 2 || y45.e("split-config", xml.getName())) {
                    next = xml.next();
                } else {
                    String name = xml.getName();
                    if (name != null) {
                        switch (name.hashCode()) {
                            case 511422343:
                                if (name.equals("ActivityFilter")) {
                                    if (activityRule == null && splitPlaceholderRule == null) {
                                        throw new IllegalArgumentException("Found orphaned ActivityFilter");
                                    }
                                    ActivityFilter activityFilter = parseActivityFilter(context, xml);
                                    if (activityRule != null) {
                                        hashSet.remove(activityRule);
                                        activityRulePlus$window_release = activityRule.plus$window_release(activityFilter);
                                        addRuleWithDuplicatedTagCheck(hashSet, activityRulePlus$window_release);
                                        activityRule = activityRulePlus$window_release;
                                    } else if (splitPlaceholderRule != null) {
                                        hashSet.remove(splitPlaceholderRule);
                                        splitPlaceholderRulePlus$window_release = splitPlaceholderRule.plus$window_release(activityFilter);
                                        addRuleWithDuplicatedTagCheck(hashSet, splitPlaceholderRulePlus$window_release);
                                        splitPlaceholderRule = splitPlaceholderRulePlus$window_release;
                                    }
                                }
                                break;
                            case 520447504:
                                if (name.equals("SplitPairRule")) {
                                    splitPairRule = parseSplitPairRule(context, xml);
                                    addRuleWithDuplicatedTagCheck(hashSet, splitPairRule);
                                    activityRule = null;
                                    splitPlaceholderRule = null;
                                    splitPairRule2 = splitPairRule;
                                }
                                break;
                            case 1579230604:
                                if (name.equals("SplitPairFilter")) {
                                    if (splitPairRule2 == null) {
                                        throw new IllegalArgumentException("Found orphaned SplitPairFilter outside of SplitPairRule");
                                    }
                                    SplitPairFilter splitPairFilter = parseSplitPairFilter(context, xml);
                                    hashSet.remove(splitPairRule2);
                                    splitPairRule = splitPairRule2.plus$window_release(splitPairFilter);
                                    addRuleWithDuplicatedTagCheck(hashSet, splitPairRule);
                                    splitPairRule2 = splitPairRule;
                                }
                                break;
                            case 1793077963:
                                if (name.equals("ActivityRule")) {
                                    activityRulePlus$window_release = parseActivityRule(context, xml);
                                    addRuleWithDuplicatedTagCheck(hashSet, activityRulePlus$window_release);
                                    splitPairRule2 = null;
                                    splitPlaceholderRule = null;
                                    activityRule = activityRulePlus$window_release;
                                }
                                break;
                            case 2050988213:
                                if (name.equals("SplitPlaceholderRule")) {
                                    splitPlaceholderRulePlus$window_release = parseSplitPlaceholderRule(context, xml);
                                    addRuleWithDuplicatedTagCheck(hashSet, splitPlaceholderRulePlus$window_release);
                                    activityRule = null;
                                    splitPairRule2 = null;
                                    splitPlaceholderRule = splitPlaceholderRulePlus$window_release;
                                }
                                break;
                        }
                    }
                    next = xml.next();
                }
            }
            return hashSet;
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }
}
