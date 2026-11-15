package com.transsion.widgetslib.flipper;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.Keyframe;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.StyleRes;
import androidx.core.view.GravityCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.flipper.FlipperLayout;
import defpackage.bq5;
import defpackage.c74;
import defpackage.e74;
import defpackage.j1a;
import defpackage.olb;
import defpackage.p97;
import defpackage.ty3;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$IntRef;

@Metadata(d1 = {"\u0000Ú\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0002´\u0001\u0018\u0000 ¾\u00012\u00020\u0001:\u0002¿\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0003\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0003\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0019\u0010\u0013J\u000f\u0010\u001a\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00112\b\b\u0002\u0010\u001c\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\u001eJ?\u0010'\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u001f\"\b\b\u0001\u0010!*\u00020 2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"2\u0012\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010%0$¢\u0006\u0004\b'\u0010(J\u001d\u0010,\u001a\u00020\u00112\u0006\u0010)\u001a\u00020\u00062\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b,\u0010-J\u001b\u00100\u001a\u00020\u00112\f\u0010/\u001a\b\u0012\u0004\u0012\u00020.0\"¢\u0006\u0004\b0\u00101J\u001b\u00103\u001a\u00020\u00112\f\u00102\u001a\b\u0012\u0004\u0012\u00020\u00060\"¢\u0006\u0004\b3\u00101J\u001b\u00105\u001a\u00020\u00112\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u00060\"¢\u0006\u0004\b5\u00101J\u001b\u00108\u001a\u00020\u00112\f\u00107\u001a\b\u0012\u0004\u0012\u0002060\"¢\u0006\u0004\b8\u00101J\u001b\u00109\u001a\u00020\u00112\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u00060\"¢\u0006\u0004\b9\u00101J\u001b\u0010:\u001a\u00020\u00112\f\u00107\u001a\b\u0012\u0004\u0012\u0002060\"¢\u0006\u0004\b:\u00101J!\u0010=\u001a\u00020\u00112\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00110;¢\u0006\u0004\b=\u0010>J\r\u0010@\u001a\u00020?¢\u0006\u0004\b@\u0010AJ\u000f\u0010C\u001a\u0004\u0018\u00010B¢\u0006\u0004\bC\u0010DJ\u000f\u0010E\u001a\u0004\u0018\u00010B¢\u0006\u0004\bE\u0010DJ\u000f\u0010G\u001a\u0004\u0018\u00010F¢\u0006\u0004\bG\u0010HJ\u0017\u0010J\u001a\u00020\u00112\u0006\u0010I\u001a\u00020\u0006H\u0002¢\u0006\u0004\bJ\u0010\u001eJ\u001f\u0010M\u001a\u00020\u00112\u0006\u0010I\u001a\u00020\u00062\u0006\u0010L\u001a\u00020KH\u0002¢\u0006\u0004\bM\u0010NJ%\u0010Q\u001a\u00020\u00112\u0014\u0010P\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010O\u0012\u0004\u0012\u00020\u00110;H\u0002¢\u0006\u0004\bQ\u0010>J\u000f\u0010R\u001a\u00020\u0006H\u0002¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u00020\u0011H\u0002¢\u0006\u0004\bT\u0010\u001bJ\u000f\u0010U\u001a\u00020\u0011H\u0002¢\u0006\u0004\bU\u0010\u001bJ\u000f\u0010V\u001a\u00020\u0011H\u0002¢\u0006\u0004\bV\u0010\u001bJ\u000f\u0010W\u001a\u00020\u0011H\u0002¢\u0006\u0004\bW\u0010\u001bJ\u000f\u0010X\u001a\u00020\rH\u0002¢\u0006\u0004\bX\u0010YJ\u000f\u0010Z\u001a\u00020\u0011H\u0002¢\u0006\u0004\bZ\u0010\u001bJ\u000f\u0010[\u001a\u00020\u0011H\u0002¢\u0006\u0004\b[\u0010\u001bJ)\u0010\\\u001a\b\u0012\u0004\u0012\u00028\u00000\"\"\u0004\b\u0000\u0010\u001f2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0002¢\u0006\u0004\b\\\u0010]J\u000f\u0010^\u001a\u00020\u0011H\u0002¢\u0006\u0004\b^\u0010\u001bJ\u000f\u0010_\u001a\u00020\u0011H\u0002¢\u0006\u0004\b_\u0010\u001bJ\u000f\u0010`\u001a\u00020\u0011H\u0002¢\u0006\u0004\b`\u0010\u001bJ\u000f\u0010a\u001a\u00020\u0011H\u0002¢\u0006\u0004\ba\u0010\u001bJ\u001b\u0010c\u001a\u0004\u0018\u0001062\b\u0010b\u001a\u0004\u0018\u000106H\u0002¢\u0006\u0004\bc\u0010dJ\u0017\u0010e\u001a\u00020\u00112\u0006\u0010I\u001a\u00020\u0006H\u0002¢\u0006\u0004\be\u0010\u001eJ\u0017\u0010g\u001a\u00020\u00112\u0006\u0010f\u001a\u00020BH\u0002¢\u0006\u0004\bg\u0010hR\u0016\u0010k\u001a\u00020?8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bi\u0010jR\u0016\u0010n\u001a\u00020\u00018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bl\u0010mR\u0018\u0010r\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0018\u0010t\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010qR\u0018\u0010w\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010vR\u0018\u0010x\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010vR\u0016\u0010{\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u001e\u0010}\u001a\n\u0012\u0004\u0012\u000206\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010|R\u001e\u0010\u007f\u001a\n\u0012\u0004\u0012\u000206\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010|R\u001d\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020*0\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010|R,\u0010\u0082\u0001\u001a\u0017\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020*0\u0081\u0001\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010|R)\u0010\u0087\u0001\u001a\u0004\u0018\u00010F8\u0000@\u0000X\u0080\u000e¢\u0006\u0016\n\u0005\bT\u0010\u0083\u0001\u001a\u0005\b\u0084\u0001\u0010H\"\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001f\u0010\u008a\u0001\u001a\t\u0012\u0002\b\u0003\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bc\u0010\u0089\u0001R&\u0010\u008e\u0001\u001a\u00020\r8\u0000@\u0000X\u0080\u000e¢\u0006\u0015\n\u0005\bQ\u0010\u008b\u0001\u001a\u0005\b\u008c\u0001\u0010Y\"\u0005\b\u008d\u0001\u0010\u0013R\u0018\u0010\u0090\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008f\u0001\u0010zR\u0018\u0010\u0091\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\ba\u0010\u008b\u0001R*\u0010\u0097\u0001\u001a\u0004\u0018\u00010O8\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\b[\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001\"\u0006\b\u0095\u0001\u0010\u0096\u0001R\u0018\u0010\u0098\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b^\u0010\u008b\u0001R\u0017\u0010\u0018\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b_\u0010\u008b\u0001R\u0018\u0010\u009a\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bX\u0010\u0099\u0001R\u0018\u0010\u009b\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bU\u0010\u0099\u0001R\u0019\u0010\u009d\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u0099\u0001R\u0019\u0010 \u0001\u001a\u00030\u009e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bZ\u0010\u009f\u0001R\u0019\u0010¡\u0001\u001a\u00030\u009e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bW\u0010\u009f\u0001R\u0019\u0010£\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010\u0099\u0001R\u0018\u0010¤\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bJ\u0010\u008b\u0001R \u0010©\u0001\u001a\u00030¥\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bM\u0010¦\u0001\u001a\u0006\b§\u0001\u0010¨\u0001R \u0010\u00ad\u0001\u001a\u00030ª\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\be\u0010¦\u0001\u001a\u0006\b«\u0001\u0010¬\u0001R\u0018\u0010¯\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b®\u0001\u0010zR\u0018\u0010³\u0001\u001a\u00030°\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b±\u0001\u0010²\u0001R\u0018\u0010¶\u0001\u001a\u00030´\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0099\u0001\u0010µ\u0001R\u0019\u0010¸\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010\u0099\u0001R!\u0010½\u0001\u001a\u00030¹\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bº\u0001\u0010¦\u0001\u001a\u0006\b»\u0001\u0010¼\u0001¨\u0006À\u0001"}, d2 = {"Lcom/transsion/widgetslib/flipper/FlipperLayout;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "Landroid/view/MotionEvent;", "ev", "", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "disallowIntercept", "Lzfb;", "requestDisallowInterceptTouchEvent", "(Z)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "isVisible", "onVisibilityAggregated", "onDetachedFromWindow", "()V", "pst", "setCurrentPst", "(I)V", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "", "dataList", "Lkotlin/Function0;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "adapter", "setFlipperList", "(Ljava/util/List;Lc74;)V", "index", "", "interval", "setPageInterval", "(IJ)V", "Landroid/graphics/drawable/Drawable;", "drawableList", "setDrawableList", "(Ljava/util/List;)V", "drawableResList", "setDrawableResList", "textResList", "setPrimaryTextResList", "", "textList", "setPrimaryTextList", "setSecondaryTextResList", "setSecondaryTextList", "Lkotlin/Function1;", "listener", "onItemClick", "(Le74;)V", "Landroidx/viewpager2/widget/ViewPager2;", "getViewPager", "()Landroidx/viewpager2/widget/ViewPager2;", "Landroid/widget/TextView;", "getTvPrimary", "()Landroid/widget/TextView;", "getTvSecondary", "Landroid/view/ViewGroup;", "getLayoutDot", "()Landroid/view/ViewGroup;", "position", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "", "positionOffset", "B", "(IF)V", "Landroid/animation/ValueAnimator;", "func", "o", "getShiftWidth", "()I", CmcdData.OBJECT_TYPE_MANIFEST, "v", "k", "y", "u", "()Z", "x", "r", CmcdData.STREAM_TYPE_LIVE, "(Ljava/util/List;)Ljava/util/List;", "s", "t", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "q", "text", "n", "(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;", "C", "textView", GslbInterceptor.HEADER_KEY_GSLB, "(Landroid/widget/TextView;)V", "b", "Landroidx/viewpager2/widget/ViewPager2;", "viewPager", "c", "Landroid/widget/LinearLayout;", "textParent", "Ljava/lang/Runnable;", "d", "Ljava/lang/Runnable;", "titleUpdateRunnable", "e", "runnable", "f", "Landroid/widget/TextView;", "tvPrimary", "tvSecondary", CmcdData.STREAMING_FORMAT_HLS, "I", "currentPst", "Ljava/util/List;", "textPrimaryList", "j", "textSecondaryList", "shiftIntervalList", "Lkotlin/Pair;", "shiftIntervalCache", "Landroid/view/ViewGroup;", "getDotLayout$widgetsLib_release", "setDotLayout$widgetsLib_release", "(Landroid/view/ViewGroup;)V", "dotLayout", "Lcom/transsion/widgetslib/flipper/DefaultAdapter;", "Lcom/transsion/widgetslib/flipper/DefaultAdapter;", "defaultAdapter", "Z", "isCyclic$widgetsLib_release", "setCyclic$widgetsLib_release", "isCyclic", TtmlNode.TAG_P, "attachHeadTailItem", "isAutoPlay", "Landroid/animation/ValueAnimator;", "getAnimator$widgetsLib_release", "()Landroid/animation/ValueAnimator;", "setAnimator$widgetsLib_release", "(Landroid/animation/ValueAnimator;)V", "animator", "isAutoFlipping", "F", "topicHeight", "descHeight", "w", "maxTotalHeight", "", "Ljava/lang/String;", "longestPrimaryStr", "longestSecondaryStr", "z", "mCenterY", "textHeightDirty", "Lp97;", "Lyi5;", "getShiftInpt", "()Lp97;", "shiftInpt", "Landroid/view/animation/PathInterpolator;", "getAlphaInpt", "()Landroid/view/animation/PathInterpolator;", "alphaInpt", "D", "shiftDistance", "Lcom/transsion/widgetslib/flipper/PageAnimation;", ExifInterface.LONGITUDE_EAST, "Lcom/transsion/widgetslib/flipper/PageAnimation;", "pageTransformer", "com/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1", "Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;", "onPageChangeCallback", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "downX", "Landroid/view/View$OnTouchListener;", "H", "getOnTouchListener", "()Landroid/view/View$OnTouchListener;", "onTouchListener", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FlipperLayout extends LinearLayout {

    public boolean textHeightDirty;

    public final yi5 shiftInpt;

    public final yi5 alphaInpt;

    public int shiftDistance;

    public final PageAnimation pageTransformer;

    public final FlipperLayout$onPageChangeCallback$1 onPageChangeCallback;

    public float downX;

    public final yi5 onTouchListener;

    public ViewPager2 viewPager;

    public LinearLayout textParent;

    public Runnable titleUpdateRunnable;

    public Runnable runnable;

    public TextView tvPrimary;

    public TextView tvSecondary;

    public int currentPst;

    public List textPrimaryList;

    public List textSecondaryList;

    public List shiftIntervalList;

    public List shiftIntervalCache;

    public ViewGroup dotLayout;

    public DefaultAdapter defaultAdapter;

    public boolean isCyclic;

    public int attachHeadTailItem;

    public boolean isAutoPlay;

    public ValueAnimator animator;

    public boolean isAutoFlipping;

    public boolean isVisible;

    public float topicHeight;

    public float descHeight;

    public float maxTotalHeight;

    public String longestPrimaryStr;

    public String longestSecondaryStr;

    public float mCenterY;

    public static final class b extends AnimatorListenerAdapter {
        public final ValueAnimator c;
        public final ValueAnimator.AnimatorUpdateListener d;

        public b(ValueAnimator valueAnimator, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
            this.c = valueAnimator;
            this.d = animatorUpdateListener;
        }

        public static final void b(FlipperLayout flipperLayout, int i) {
            y45.j(flipperLayout, "this$0");
            flipperLayout.C(i);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            super.onAnimationEnd(animator);
            ViewPager2 viewPager2 = FlipperLayout.this.viewPager;
            if (viewPager2 == null) {
                y45.B("viewPager");
                viewPager2 = null;
            }
            viewPager2.endFakeDrag();
            ViewPager2 viewPager3 = FlipperLayout.this.viewPager;
            if (viewPager3 == null) {
                y45.B("viewPager");
                viewPager3 = null;
            }
            viewPager3.setUserInputEnabled(true);
            ViewPager2 viewPager4 = FlipperLayout.this.viewPager;
            if (viewPager4 == null) {
                y45.B("viewPager");
                viewPager4 = null;
            }
            ty3.f(viewPager4, FlipperLayout.this.currentPst + 1, false, 2, null);
            this.c.removeListener(this);
            this.c.removeUpdateListener(this.d);
            bq5.c("FlipperLayout", "onAnimationEnd, isVisible: " + FlipperLayout.this.isVisible);
            FlipperLayout.this.y();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            super.onAnimationStart(animator);
            FlipperLayout.this.isAutoFlipping = true;
            ViewPager2 viewPager2 = FlipperLayout.this.viewPager;
            ViewPager2 viewPager3 = null;
            if (viewPager2 == null) {
                y45.B("viewPager");
                viewPager2 = null;
            }
            viewPager2.beginFakeDrag();
            ViewPager2 viewPager4 = FlipperLayout.this.viewPager;
            if (viewPager4 == null) {
                y45.B("viewPager");
            } else {
                viewPager3 = viewPager4;
            }
            viewPager3.setUserInputEnabled(false);
            FlipperLayout flipperLayout = FlipperLayout.this;
            flipperLayout.removeCallbacks(flipperLayout.titleUpdateRunnable);
            final int i = FlipperLayout.this.currentPst + 1;
            final FlipperLayout flipperLayout2 = FlipperLayout.this;
            flipperLayout2.titleUpdateRunnable = new Runnable() {
                @Override
                public final void run() {
                    FlipperLayout.b.b(flipperLayout2, i);
                }
            };
            FlipperLayout flipperLayout3 = FlipperLayout.this;
            flipperLayout3.postDelayed(flipperLayout3.titleUpdateRunnable, 150L);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FlipperLayout(Context context) {
        this(context, null, 0, 0, 14, null);
        y45.j(context, "context");
    }

    public static final void f(FlipperLayout flipperLayout) {
        y45.j(flipperLayout, "this$0");
        ViewPager2 viewPager2 = flipperLayout.viewPager;
        if (viewPager2 == null) {
            y45.B("viewPager");
            viewPager2 = null;
        }
        flipperLayout.mCenterY = viewPager2.getMeasuredHeight() / 2.0f;
    }

    private final PathInterpolator getAlphaInpt() {
        return (PathInterpolator) this.alphaInpt.getValue();
    }

    private final View.OnTouchListener getOnTouchListener() {
        return (View.OnTouchListener) this.onTouchListener.getValue();
    }

    private final p97 getShiftInpt() {
        return (p97) this.shiftInpt.getValue();
    }

    private final int getShiftWidth() {
        return ((getWidth() - getPaddingStart()) - getPaddingEnd()) - 2;
    }

    public static final void h(FlipperLayout flipperLayout, TextView textView) {
        y45.j(flipperLayout, "this$0");
        y45.j(textView, "$textView");
        if (flipperLayout.u()) {
            if (textView.getLineCount() >= 2) {
                textView.setGravity(GravityCompat.START);
            } else {
                textView.setGravity(17);
            }
        }
    }

    public static final int j(int i, int i2, int i3, TextView textView) {
        textView.measure(i, i2);
        textView.layout(0, 0, i3, textView.getMeasuredHeight());
        Layout layout = textView.getLayout();
        return Math.max((layout != null ? layout.getHeight() : 0) + textView.getPaddingTop() + textView.getPaddingBottom(), textView.getMeasuredHeight());
    }

    public static final void p(FlipperLayout flipperLayout, e74 e74Var) {
        ValueAnimator valueAnimatorOfPropertyValuesHolder;
        y45.j(flipperLayout, "this$0");
        y45.j(e74Var, "$func");
        int shiftWidth = flipperLayout.getShiftWidth();
        flipperLayout.shiftDistance = shiftWidth;
        bq5.j("FlipperLayout", "initAnimator, width: " + flipperLayout.getWidth() + ", shiftDistance: " + flipperLayout.shiftDistance);
        if (shiftWidth > 0) {
            Keyframe keyframeOfFloat = Keyframe.ofFloat(0.0f, 1.0f);
            Keyframe keyframeOfFloat2 = Keyframe.ofFloat(0.42857143f, 0.0f);
            keyframeOfFloat2.setInterpolator(flipperLayout.getAlphaInpt());
            zfb zfbVar = zfb.a;
            valueAnimatorOfPropertyValuesHolder = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofKeyframe("pvh_alpha_page_out", keyframeOfFloat, keyframeOfFloat2, Keyframe.ofFloat(1.0f, 0.0f)), PropertyValuesHolder.ofInt("pvh_shift", 0, shiftWidth));
            valueAnimatorOfPropertyValuesHolder.setDuration(350L);
            valueAnimatorOfPropertyValuesHolder.setInterpolator(new LinearInterpolator());
        } else {
            valueAnimatorOfPropertyValuesHolder = null;
        }
        e74Var.invoke(valueAnimatorOfPropertyValuesHolder);
    }

    public static void setCurrentPst$default(FlipperLayout flipperLayout, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        flipperLayout.setCurrentPst(i);
    }

    public static final void w(FlipperLayout flipperLayout, Ref$IntRef ref$IntRef, ValueAnimator valueAnimator) {
        y45.j(flipperLayout, "this$0");
        y45.j(ref$IntRef, "$currentValue");
        y45.j(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue("pvh_alpha_page_out");
        ViewPager2 viewPager2 = null;
        Float f = animatedValue instanceof Float ? (Float) animatedValue : null;
        if (f != null) {
            flipperLayout.pageTransformer.setAlphaPageOutRatio$widgetsLib_release(f.floatValue());
        }
        Object animatedValue2 = valueAnimator.getAnimatedValue("pvh_shift");
        if ((animatedValue2 instanceof Integer ? (Integer) animatedValue2 : null) != null) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            int interpolation = (int) (flipperLayout.getShiftInpt().getInterpolation(animatedFraction) * flipperLayout.shiftDistance);
            flipperLayout.pageTransformer.setAlphaRatio$widgetsLib_release(flipperLayout.getAlphaInpt().getInterpolation(animatedFraction));
            int i = olb.l0() ? interpolation - ref$IntRef.element : ref$IntRef.element - interpolation;
            ViewPager2 viewPager3 = flipperLayout.viewPager;
            if (viewPager3 == null) {
                y45.B("viewPager");
            } else {
                viewPager2 = viewPager3;
            }
            viewPager2.fakeDragBy(i);
            ref$IntRef.element = interpolation;
        }
    }

    public static final void z(FlipperLayout flipperLayout) {
        y45.j(flipperLayout, "this$0");
        flipperLayout.m();
    }

    public final void A(int position) {
        ViewPager2 viewPager2 = this.viewPager;
        if (viewPager2 == null) {
            y45.B("viewPager");
            viewPager2 = null;
        }
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        if (adapter != null) {
            ty3.h(this.dotLayout, position, adapter.getItemCount(), this.isCyclic, this.attachHeadTailItem);
        }
    }

    public final void B(int position, float positionOffset) {
        ViewPager2 viewPager2 = this.viewPager;
        if (viewPager2 == null) {
            y45.B("viewPager");
            viewPager2 = null;
        }
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        if (adapter != null) {
            ty3.g(this.dotLayout, position, positionOffset, adapter.getItemCount(), this.isCyclic, this.attachHeadTailItem, olb.l0());
        }
    }

    public final void C(int position) {
        List list = this.textPrimaryList;
        if (list != null && position >= 0 && position < list.size()) {
            CharSequence charSequence = (CharSequence) list.get(position);
            TextView textView = this.tvPrimary;
            if (textView != null) {
                textView.setText(charSequence);
            }
            TextView textView2 = this.tvPrimary;
            if (textView2 != null) {
                textView2.setVisibility((charSequence == null || charSequence.length() == 0) ? 8 : 0);
            }
            TextView textView3 = this.tvPrimary;
            if (textView3 != null) {
                g(textView3);
            }
        }
        List list2 = this.textSecondaryList;
        if (list2 == null || position < 0 || position >= list2.size()) {
            return;
        }
        TextView textView4 = this.tvSecondary;
        if (textView4 != null) {
            textView4.setText(n((CharSequence) list2.get(position)));
        }
        TextView textView5 = this.tvSecondary;
        if (textView5 != null) {
            g(textView5);
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        y45.j(ev, "ev");
        if (ev.getAction() == 0) {
            ev.setLocation(ev.getX(), this.mCenterY);
            requestDisallowInterceptTouchEvent(false);
        } else {
            ev.setLocation(ev.getX(), ev.getY() - this.mCenterY);
        }
        ViewPager2 viewPager2 = this.viewPager;
        if (viewPager2 == null) {
            y45.B("viewPager");
            viewPager2 = null;
        }
        return viewPager2.dispatchTouchEvent(ev);
    }

    public final void g(final TextView textView) {
        textView.post(new Runnable() {
            @Override
            public final void run() {
                FlipperLayout.h(this.b, textView);
            }
        });
    }

    public final ValueAnimator getAnimator() {
        return this.animator;
    }

    public final ViewGroup getDotLayout() {
        return this.dotLayout;
    }

    public final ViewGroup getLayoutDot() {
        return this.dotLayout;
    }

    public final TextView getTvPrimary() {
        return this.tvPrimary;
    }

    public final TextView getTvSecondary() {
        return this.tvSecondary;
    }

    public final ViewPager2 getViewPager() {
        ViewPager2 viewPager2 = this.viewPager;
        if (viewPager2 != null) {
            return viewPager2;
        }
        y45.B("viewPager");
        return null;
    }

    public final void i() {
        TextView textView;
        int width;
        List list = this.textSecondaryList;
        if (list == null || (textView = this.tvSecondary) == null || (width = getWidth()) <= 0) {
            return;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(width, 1073741824);
        int i = 0;
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.maxTotalHeight = 0.0f;
        List list2 = this.textPrimaryList;
        if (list2 == null || list2.isEmpty()) {
            int size = list.size();
            while (i < size) {
                textView.setText(n((CharSequence) list.get(i)));
                float fJ = j(iMakeMeasureSpec, iMakeMeasureSpec2, width, textView);
                this.descHeight = fJ;
                if (this.maxTotalHeight < fJ) {
                    this.maxTotalHeight = fJ;
                }
                i++;
            }
        } else {
            List list3 = this.textPrimaryList;
            y45.g(list3);
            TextView textView2 = this.tvPrimary;
            int iMin = Math.min(list3.size(), list.size());
            while (i < iMin) {
                textView.setText(n((CharSequence) list.get(i)));
                float fJ2 = j(iMakeMeasureSpec, iMakeMeasureSpec2, width, textView);
                this.descHeight = fJ2;
                if (textView2 != null) {
                    textView2.setText((CharSequence) list3.get(i));
                    float fJ3 = j(iMakeMeasureSpec, iMakeMeasureSpec2, width, textView2);
                    this.topicHeight = fJ3;
                    float f = this.maxTotalHeight;
                    float f2 = this.descHeight;
                    if (f < fJ3 + f2) {
                        this.maxTotalHeight = fJ3 + f2;
                    }
                } else if (this.maxTotalHeight < fJ2) {
                    this.maxTotalHeight = fJ2;
                }
                i++;
            }
        }
        C(this.currentPst);
        LinearLayout linearLayout = this.textParent;
        if (linearLayout == null) {
            y45.B("textParent");
            linearLayout = null;
        }
        linearLayout.getLayoutParams().height = (int) this.maxTotalHeight;
    }

    public final boolean getIsCyclic() {
        return this.isCyclic;
    }

    public final void k() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            if (!valueAnimator.isRunning()) {
                valueAnimator = null;
            }
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }
        removeCallbacks(this.titleUpdateRunnable);
        this.isAutoFlipping = false;
    }

    public final List l(List dataList) {
        if (dataList.size() > 0) {
            ViewPager2 viewPager2 = this.viewPager;
            if (viewPager2 == null) {
                y45.B("viewPager");
                viewPager2 = null;
            }
            viewPager2.setOffscreenPageLimit(dataList.size());
        }
        if (this.isCyclic && dataList.size() > 0) {
            Object obj = dataList.get(0);
            if (dataList.size() > 1) {
                dataList.add(0, dataList.get(y71.m(dataList)));
                dataList.add(obj);
            }
        }
        return dataList;
    }

    public final void m() {
        if (this.animator == null) {
            o(new e74() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((ValueAnimator) obj);
                    return zfb.a;
                }

                public final void invoke(ValueAnimator valueAnimator) {
                    this.this$0.setAnimator$widgetsLib_release(valueAnimator);
                    this.this$0.v();
                }
            });
        } else {
            v();
        }
    }

    public final CharSequence n(CharSequence text) {
        if (text == null) {
            return null;
        }
        String string = text.toString();
        if (!j1a.X(string, "\n", false, 2, null)) {
            return text;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
        for (int iS0 = j1a.s0(string, "\n", 0, false, 6, null); iS0 != -1; iS0 = j1a.s0(string, "\n", iS0 - 1, false, 4, null)) {
            int i = iS0 + 1;
            spannableStringBuilder.replace(iS0, i, (CharSequence) "\n \n");
            spannableStringBuilder.setSpan(new RelativeSizeSpan(0.6f), i, iS0 + 3, 33);
            if (iS0 == 0) {
                break;
            }
        }
        return spannableStringBuilder;
    }

    public final void o(final e74 func) {
        post(new Runnable() {
            @Override
            public final void run() {
                FlipperLayout.p(this.b, func);
            }
        });
    }

    @Override
    public void onDetachedFromWindow() {
        List list;
        super.onDetachedFromWindow();
        removeCallbacks(this.titleUpdateRunnable);
        ViewPager2 viewPager2 = null;
        this.titleUpdateRunnable = null;
        DefaultAdapter defaultAdapter = this.defaultAdapter;
        if (defaultAdapter != null && (list = defaultAdapter.getList()) != null) {
            list.clear();
        }
        ViewPager2 viewPager3 = this.viewPager;
        if (viewPager3 == null) {
            y45.B("viewPager");
        } else {
            viewPager2 = viewPager3;
        }
        viewPager2.unregisterOnPageChangeCallback(this.onPageChangeCallback);
        List list2 = this.textPrimaryList;
        if (list2 != null) {
            list2.clear();
        }
        List list3 = this.textSecondaryList;
        if (list3 != null) {
            list3.clear();
        }
        this.shiftIntervalList.clear();
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            valueAnimator.removeAllUpdateListeners();
        }
    }

    public final void onItemClick(e74 listener) {
        y45.j(listener, "listener");
        DefaultAdapter defaultAdapter = this.defaultAdapter;
        if (defaultAdapter == null) {
            return;
        }
        defaultAdapter.setOnItemClick(listener);
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (!this.textHeightDirty || getWidth() <= 0) {
            return;
        }
        this.textHeightDirty = false;
        i();
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override
    public void onVisibilityAggregated(boolean isVisible) {
        super.onVisibilityAggregated(isVisible);
        this.isVisible = isVisible;
        if (isVisible) {
            y();
        } else {
            x();
            k();
        }
    }

    public final void q() {
        if (this.dotLayout == null) {
            this.dotLayout = ty3.c(this);
        }
    }

    public final void r() {
        ViewPager2 viewPager2 = this.viewPager;
        if (viewPager2 == null) {
            y45.B("viewPager");
            viewPager2 = null;
        }
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            this.shiftIntervalList.clear();
            for (int i = 0; i < itemCount; i++) {
                this.shiftIntervalList.add(i, Long.valueOf(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS));
            }
            List<Pair> list = this.shiftIntervalCache;
            if (list != null) {
                for (Pair pair : list) {
                    setPageInterval(((Number) pair.getFirst()).intValue(), ((Number) pair.getSecond()).longValue());
                }
                list.clear();
                this.shiftIntervalCache = null;
            }
        }
    }

    @Override
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        bq5.c("FlipperLayout", "requestDisallowInterceptTouchEvent: " + disallowIntercept);
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
    }

    public final void s() {
        List list;
        if (this.tvPrimary == null) {
            View viewInflate = ((ViewStub) findViewById(R.id.stubTextPrimary)).inflate();
            y45.h(viewInflate, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) viewInflate;
            ViewPager2 viewPager2 = this.viewPager;
            if (viewPager2 == null) {
                y45.B("viewPager");
                viewPager2 = null;
            }
            if (viewPager2.getAdapter() != null && (list = this.textPrimaryList) != null) {
                int size = list.size();
                int i = this.currentPst;
                if (i >= 0 && i < size) {
                    CharSequence charSequence = (CharSequence) list.get(i);
                    textView.setText(charSequence);
                    textView.setVisibility((charSequence == null || charSequence.length() == 0) ? 8 : 0);
                    g(textView);
                }
            }
            this.tvPrimary = textView;
        }
    }

    public final void setAnimator$widgetsLib_release(ValueAnimator valueAnimator) {
        this.animator = valueAnimator;
    }

    public final void setCurrentPst(int pst) {
        ViewPager2 viewPager2 = this.viewPager;
        ViewPager2 viewPager3 = null;
        if (viewPager2 == null) {
            y45.B("viewPager");
            viewPager2 = null;
        }
        if (viewPager2.getAdapter() == null) {
            this.currentPst = pst;
        } else {
            ViewPager2 viewPager4 = this.viewPager;
            if (viewPager4 == null) {
                y45.B("viewPager");
            } else {
                viewPager3 = viewPager4;
            }
            ty3.e(viewPager3, this.isCyclic ? this.attachHeadTailItem + pst : pst, false);
        }
        bq5.j("FlipperLayout", "setCurrentPst, pst: " + pst + ", currentPst: " + this.currentPst);
    }

    public final void setCyclic$widgetsLib_release(boolean z) {
        this.isCyclic = z;
    }

    public final void setDotLayout$widgetsLib_release(ViewGroup viewGroup) {
        this.dotLayout = viewGroup;
    }

    public final void setDrawableList(final List<Drawable> drawableList) {
        y45.j(drawableList, "drawableList");
        setFlipperList(drawableList, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final RecyclerView.Adapter<RecyclerView.ViewHolder> invoke() {
                DefaultAdapter defaultAdapter = new DefaultAdapter(drawableList);
                this.defaultAdapter = defaultAdapter;
                return defaultAdapter;
            }
        });
    }

    public final void setDrawableResList(final List<Integer> drawableResList) {
        y45.j(drawableResList, "drawableResList");
        setFlipperList(drawableResList, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final RecyclerView.Adapter<RecyclerView.ViewHolder> invoke() {
                DefaultAdapter defaultAdapter = new DefaultAdapter(drawableResList);
                this.defaultAdapter = defaultAdapter;
                return defaultAdapter;
            }
        });
    }

    public final <T, VH extends RecyclerView.ViewHolder> void setFlipperList(List<T> dataList, c74 adapter) {
        y45.j(dataList, "dataList");
        y45.j(adapter, "adapter");
        l(dataList);
        ViewPager2 viewPager2 = this.viewPager;
        if (viewPager2 == null) {
            y45.B("viewPager");
            viewPager2 = null;
        }
        viewPager2.setAdapter((RecyclerView.Adapter) adapter.invoke());
        this.attachHeadTailItem = (!this.isCyclic || u()) ? 0 : 1;
        q();
        setCurrentPst(this.currentPst);
        r();
    }

    public final void setPageInterval(int index, long interval) {
        ViewPager2 viewPager2 = this.viewPager;
        if (viewPager2 == null) {
            y45.B("viewPager");
            viewPager2 = null;
        }
        if (viewPager2.getAdapter() == null) {
            if (this.shiftIntervalCache == null) {
                this.shiftIntervalCache = new ArrayList();
            }
            List list = this.shiftIntervalCache;
            if (list != null) {
                list.add(new Pair(Integer.valueOf(index), Long.valueOf(interval)));
                return;
            }
            return;
        }
        if (!this.isCyclic) {
            if (index < 0 || index >= this.shiftIntervalList.size()) {
                return;
            }
            this.shiftIntervalList.set(index, Long.valueOf(interval));
            return;
        }
        int iM = this.attachHeadTailItem + index;
        if (index == 0) {
            List list2 = this.shiftIntervalList;
            list2.set(y71.m(list2), Long.valueOf(interval));
        } else if (index == y71.m(this.shiftIntervalList)) {
            this.shiftIntervalList.set(0, Long.valueOf(interval));
            iM = y71.m(this.shiftIntervalList) - this.attachHeadTailItem;
        } else if (index == y71.m(this.shiftIntervalList) - (this.attachHeadTailItem * 2)) {
            this.shiftIntervalList.set(0, Long.valueOf(interval));
        }
        if (iM < 0 || iM >= this.shiftIntervalList.size()) {
            return;
        }
        this.shiftIntervalList.set(iM, Long.valueOf(interval));
    }

    public final void setPrimaryTextList(List<CharSequence> textList) {
        y45.j(textList, "textList");
        l(textList);
        this.textPrimaryList = textList;
        s();
        if (this.tvPrimary != null) {
            C(this.currentPst);
        }
        this.textHeightDirty = true;
    }

    public final void setPrimaryTextResList(List<Integer> textResList) {
        y45.j(textResList, "textResList");
        l(textResList);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = textResList.iterator();
        while (it.hasNext()) {
            CharSequence text = getResources().getText(((Number) it.next()).intValue());
            y45.i(text, "resources.getText(element)");
            arrayList.add(text);
        }
        this.textPrimaryList = arrayList;
        s();
    }

    public final void setSecondaryTextList(List<CharSequence> textList) {
        y45.j(textList, "textList");
        l(textList);
        this.textSecondaryList = textList;
        t();
        if (this.tvSecondary != null) {
            C(this.currentPst);
        }
        this.textHeightDirty = true;
    }

    public final void setSecondaryTextResList(List<Integer> textResList) {
        y45.j(textResList, "textResList");
        l(textResList);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = textResList.iterator();
        while (it.hasNext()) {
            CharSequence text = getResources().getText(((Number) it.next()).intValue());
            y45.i(text, "resources.getText(element)");
            arrayList.add(text);
        }
        this.textSecondaryList = arrayList;
        t();
    }

    public final void t() {
        List list;
        if (this.tvSecondary == null) {
            View viewInflate = ((ViewStub) findViewById(R.id.stubTextSecondary)).inflate();
            y45.h(viewInflate, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) viewInflate;
            ViewPager2 viewPager2 = this.viewPager;
            if (viewPager2 == null) {
                y45.B("viewPager");
                viewPager2 = null;
            }
            if (viewPager2.getAdapter() != null && (list = this.textSecondaryList) != null) {
                int size = list.size();
                int i = this.currentPst;
                if (i >= 0 && i < size) {
                    textView.setText(n((CharSequence) list.get(i)));
                    g(textView);
                }
            }
            this.tvSecondary = textView;
        }
    }

    public final boolean u() {
        ViewPager2 viewPager2 = this.viewPager;
        if (viewPager2 == null) {
            y45.B("viewPager");
            viewPager2 = null;
        }
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        return (adapter != null ? adapter.getItemCount() : 0) <= 1;
    }

    public final void v() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            int shiftWidth = getShiftWidth();
            if (shiftWidth > 0 && this.shiftDistance != shiftWidth) {
                this.pageTransformer.d();
                this.shiftDistance = shiftWidth;
            }
            final Ref$IntRef ref$IntRef = new Ref$IntRef();
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    FlipperLayout.w(this.b, ref$IntRef, valueAnimator2);
                }
            };
            valueAnimator.addUpdateListener(animatorUpdateListener);
            valueAnimator.addListener(new b(valueAnimator, animatorUpdateListener));
            valueAnimator.start();
        }
    }

    public final void x() {
        removeCallbacks(this.runnable);
    }

    public final void y() {
        long jLongValue;
        if (this.isVisible && this.isAutoPlay && !u()) {
            Runnable runnable = this.runnable;
            if (runnable == null) {
                this.runnable = new Runnable() {
                    @Override
                    public final void run() {
                        FlipperLayout.z(this.b);
                    }
                };
            } else {
                removeCallbacks(runnable);
            }
            List list = this.shiftIntervalList;
            int size = list.size();
            ViewPager2 viewPager2 = this.viewPager;
            ViewPager2 viewPager3 = null;
            if (viewPager2 == null) {
                y45.B("viewPager");
                viewPager2 = null;
            }
            int currentItem = viewPager2.getCurrentItem();
            if (currentItem < 0 || currentItem >= size) {
                jLongValue = C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
            } else {
                ViewPager2 viewPager4 = this.viewPager;
                if (viewPager4 == null) {
                    y45.B("viewPager");
                    viewPager4 = null;
                }
                jLongValue = ((Number) list.get(viewPager4.getCurrentItem())).longValue();
            }
            ViewPager2 viewPager5 = this.viewPager;
            if (viewPager5 == null) {
                y45.B("viewPager");
            } else {
                viewPager3 = viewPager5;
            }
            bq5.j("FlipperLayout", "sendScrollMsg, currentItem: " + viewPager3.getCurrentItem() + ", interval: " + jLongValue);
            postDelayed(this.runnable, jLongValue);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FlipperLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FlipperLayout(Context context, AttributeSet attributeSet, @AttrRes int i) {
        this(context, attributeSet, i, 0, 8, null);
        y45.j(context, "context");
    }

    public FlipperLayout(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback, com.transsion.widgetslib.flipper.FlipperLayout$onPageChangeCallback$1] */
    public FlipperLayout(Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
        this.shiftIntervalList = new ArrayList();
        this.isCyclic = true;
        this.attachHeadTailItem = 1;
        this.isAutoPlay = true;
        this.longestPrimaryStr = "";
        this.longestSecondaryStr = "";
        this.shiftInpt = kotlin.b.a(new c74() {
            @Override
            public final p97 invoke() {
                return new p97();
            }
        });
        this.alphaInpt = kotlin.b.a(new c74() {
            @Override
            public final PathInterpolator invoke() {
                return new PathInterpolator(0.33f, 0.0f, 0.66f, 1.0f);
            }
        });
        PageAnimation pageAnimation = new PageAnimation();
        pageAnimation.b(this);
        this.pageTransformer = pageAnimation;
        ?? r5 = new ViewPager2.OnPageChangeCallback() {
            @Override
            public void onPageScrollStateChanged(int state) {
                bq5.p("FlipperLayout", "onPageScrollStateChanged, state: " + state + ", currentPst: " + this.d.currentPst);
                if (this.d.isAutoPlay) {
                    if (state == 0) {
                        this.d.y();
                    } else {
                        this.d.x();
                    }
                }
                if (this.d.getIsCyclic() && !this.d.u() && state == 0) {
                    ViewPager2 viewPager2 = this.d.viewPager;
                    ViewPager2 viewPager3 = null;
                    if (viewPager2 == null) {
                        y45.B("viewPager");
                        viewPager2 = null;
                    }
                    RecyclerView.Adapter adapter = viewPager2.getAdapter();
                    if (adapter != null) {
                        int itemCount = adapter.getItemCount();
                        FlipperLayout flipperLayout = this.d;
                        int i3 = itemCount - 1;
                        if (flipperLayout.currentPst == 0) {
                            ViewPager2 viewPager4 = flipperLayout.viewPager;
                            if (viewPager4 == null) {
                                y45.B("viewPager");
                                viewPager4 = null;
                            }
                            ty3.e(viewPager4, i3 - flipperLayout.attachHeadTailItem, false);
                            flipperLayout.A(i3 - flipperLayout.attachHeadTailItem);
                        }
                        if (flipperLayout.currentPst == i3) {
                            ViewPager2 viewPager5 = flipperLayout.viewPager;
                            if (viewPager5 == null) {
                                y45.B("viewPager");
                            } else {
                                viewPager3 = viewPager5;
                            }
                            ty3.e(viewPager3, flipperLayout.attachHeadTailItem, false);
                            flipperLayout.A(flipperLayout.attachHeadTailItem);
                        }
                    }
                }
            }

            @Override
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                this.d.B(position, positionOffset);
            }

            @Override
            public void onPageSelected(int position) {
                bq5.c("FlipperLayout", "onPageSelected, position: " + position + ", currentPst: " + this.d.currentPst);
                this.d.A(position);
                this.d.currentPst = position;
                if (this.d.isAutoFlipping) {
                    this.d.isAutoFlipping = false;
                } else {
                    this.d.C(position);
                }
            }
        };
        this.onPageChangeCallback = r5;
        setOrientation(1);
        View.inflate(context, R.layout.os_flipper_layout, this);
        View viewFindViewById = findViewById(R.id.textParentLayout);
        y45.i(viewFindViewById, "findViewById<LinearLayout>(R.id.textParentLayout)");
        this.textParent = (LinearLayout) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.flipPager);
        ViewPager2 viewPager2 = (ViewPager2) viewFindViewById2;
        viewPager2.setPageTransformer(pageAnimation);
        viewPager2.registerOnPageChangeCallback(r5);
        y45.i(viewFindViewById2, "findViewById<ViewPager2>…ChangeCallback)\n        }");
        this.viewPager = viewPager2;
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.os_flipper_layout_padding_lr);
        setPaddingRelative(dimensionPixelOffset, getPaddingTop(), dimensionPixelOffset, getResources().getDimensionPixelOffset(R.dimen.os_flipper_layout_padding_bottom));
        post(new Runnable() {
            @Override
            public final void run() {
                FlipperLayout.f(this.b);
            }
        });
        this.onTouchListener = kotlin.b.a(new FlipperLayout$onTouchListener$2(this));
    }
}
