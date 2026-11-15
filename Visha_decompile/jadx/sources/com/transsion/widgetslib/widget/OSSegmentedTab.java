package com.transsion.widgetslib.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewGroupKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.widget.OSSegmentedTab;
import defpackage.c74;
import defpackage.gcc;
import defpackage.o97;
import defpackage.olb;
import defpackage.p97;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0003\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\r\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f*\u0002BE\u0018\u0000 Å\u00012\u00020\u0001:\u0003Æ\u0001}B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u000f¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001c\u001a\u00020\f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\b\u0002\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b\u001c\u0010\u001dJ/\u0010#\u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0 2\b\b\u0002\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b#\u0010$J\u001b\u0010%\u001a\u00020\f2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0 ¢\u0006\u0004\b%\u0010&J%\u0010%\u001a\u00020\f2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0 2\b\b\u0002\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b%\u0010'J9\u0010,\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u00062\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b,\u0010-J\u001f\u00100\u001a\u00020\f2\u0006\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u0006H\u0014¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\fH\u0014¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\fH\u0002¢\u0006\u0004\b4\u00103J!\u00105\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b5\u00106J\u0017\u00107\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b7\u00108J!\u0010<\u001a\u0004\u0018\u00010;2\u0006\u00107\u001a\u0002092\u0006\u0010:\u001a\u000209H\u0002¢\u0006\u0004\b<\u0010=J\u0017\u0010?\u001a\u00020\u00062\u0006\u0010>\u001a\u000209H\u0002¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\fH\u0002¢\u0006\u0004\bA\u00103J\u000f\u0010C\u001a\u00020BH\u0002¢\u0006\u0004\bC\u0010DJ\u000f\u0010F\u001a\u00020EH\u0002¢\u0006\u0004\bF\u0010GJ\u0017\u0010:\u001a\u00020\f2\u0006\u0010H\u001a\u00020\u0006H\u0002¢\u0006\u0004\b:\u0010IJ\u0017\u0010J\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\bJ\u0010IJ'\u0010N\u001a\u00020\f2\u0006\u0010K\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010M\u001a\u00020LH\u0002¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\fH\u0002¢\u0006\u0004\bP\u00103J\u0017\u0010R\u001a\u0002092\u0006\u0010Q\u001a\u00020LH\u0002¢\u0006\u0004\bR\u0010SJ\u001f\u0010U\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u00062\u0006\u0010T\u001a\u000209H\u0002¢\u0006\u0004\bU\u0010VJ\u0017\u0010W\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u0006H\u0002¢\u0006\u0004\bW\u0010IJ\u001f\u0010Z\u001a\u00020\f2\u0006\u0010X\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020\u000fH\u0002¢\u0006\u0004\bZ\u0010[J'\u0010]\u001a\u00020\f2\u0006\u0010Q\u001a\u00020L2\u0006\u0010\\\u001a\u00020\u000f2\u0006\u0010Y\u001a\u00020\u000fH\u0002¢\u0006\u0004\b]\u0010^J'\u0010a\u001a\u00020\f2\u0006\u0010Q\u001a\u00020L2\u0006\u0010_\u001a\u00020\u00062\u0006\u0010`\u001a\u00020\u0006H\u0002¢\u0006\u0004\ba\u0010bJ\u0017\u0010c\u001a\u00020\f2\u0006\u0010Q\u001a\u00020LH\u0002¢\u0006\u0004\bc\u0010dJ\u0017\u0010e\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u0006H\u0002¢\u0006\u0004\be\u0010IJ\u001f\u0010h\u001a\u00020\f2\u0006\u0010f\u001a\u0002092\u0006\u0010g\u001a\u000209H\u0002¢\u0006\u0004\bh\u0010iJ\u0017\u0010l\u001a\u00020k2\u0006\u0010j\u001a\u000209H\u0002¢\u0006\u0004\bl\u0010mJ\u000f\u0010n\u001a\u00020\fH\u0002¢\u0006\u0004\bn\u00103J\u000f\u0010o\u001a\u00020\fH\u0002¢\u0006\u0004\bo\u00103J\u001f\u0010q\u001a\u00020\f2\u0006\u00107\u001a\u0002092\u0006\u0010p\u001a\u000209H\u0002¢\u0006\u0004\bq\u0010iJ\u0017\u0010s\u001a\u0002092\u0006\u0010r\u001a\u00020\u0006H\u0002¢\u0006\u0004\bs\u0010tJ\u000f\u0010u\u001a\u000209H\u0002¢\u0006\u0004\bu\u0010vJ\u0019\u0010x\u001a\u0004\u0018\u00010w2\u0006\u0010(\u001a\u00020\u0006H\u0002¢\u0006\u0004\bx\u0010yJ\u000f\u0010z\u001a\u00020\fH\u0002¢\u0006\u0004\bz\u00103J\u000f\u0010{\u001a\u00020\fH\u0002¢\u0006\u0004\b{\u00103J\u000f\u0010|\u001a\u00020\fH\u0002¢\u0006\u0004\b|\u00103R\u001d\u0010\u0081\u0001\u001a\u00020\u00018BX\u0082\u0084\u0002¢\u0006\r\n\u0004\b}\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001R\u001f\u0010\u0085\u0001\u001a\u00020;8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0082\u0001\u0010~\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001R \u0010\u008a\u0001\u001a\u00030\u0086\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0087\u0001\u0010~\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001b\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R\u0017\u0010\u0091\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010cR\u0017\u0010\u0092\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010{R\u0017\u0010\u0093\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010cR\u0017\u0010\u0094\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010cR\u0018\u0010\u0096\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0095\u0001\u0010cR\u0017\u0010\u0097\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010cR\u0017\u0010\u0098\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010cR\u0017\u0010\u0099\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010cR\u0017\u0010\u009a\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010cR\u0017\u0010\u009b\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010cR\u0017\u0010\u009c\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010cR\u0017\u0010\u009d\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010cR)\u0010¢\u0001\u001a\u0014\u0012\u0004\u0012\u00020!0\u009e\u0001j\t\u0012\u0004\u0012\u00020!`\u009f\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001R\u0019\u0010¥\u0001\u001a\u0005\u0018\u00010£\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bu\u0010¤\u0001R\u0019\u0010¨\u0001\u001a\u0005\u0018\u00010¦\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b?\u0010§\u0001R\u0017\u0010©\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010cR\u0018\u0010«\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bx\u0010ª\u0001R\u0018\u0010¬\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b7\u0010ª\u0001R\u0018\u0010\u00ad\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b:\u0010ª\u0001R\u001b\u0010°\u0001\u001a\u0005\u0018\u00010®\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bs\u0010¯\u0001R\u001b\u0010±\u0001\u001a\u0005\u0018\u00010®\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b5\u0010¯\u0001R\u0018\u0010µ\u0001\u001a\u00030²\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b³\u0001\u0010´\u0001R\u0018\u0010¶\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bz\u0010ª\u0001R\u001f\u0010º\u0001\u001a\u00030·\u00018BX\u0082\u0084\u0002¢\u0006\u000e\n\u0004\bA\u0010~\u001a\u0006\b¸\u0001\u0010¹\u0001R\u001f\u0010¾\u0001\u001a\u00030»\u00018BX\u0082\u0084\u0002¢\u0006\u000e\n\u0004\bn\u0010~\u001a\u0006\b¼\u0001\u0010½\u0001R\u0018\u0010¿\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b{\u0010ª\u0001R\u0017\u0010À\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010{R\u0017\u0010Á\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010cR\u0017\u0010Ä\u0001\u001a\u00020\u00068BX\u0082\u0004¢\u0006\b\u001a\u0006\bÂ\u0001\u0010Ã\u0001¨\u0006Ç\u0001"}, d2 = {"Lcom/transsion/widgetslib/widget/OSSegmentedTab;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/transsion/widgetslib/widget/OSSegmentedTab$b;", "listener", "Lzfb;", "setOnTabSelectedListener", "(Lcom/transsion/widgetslib/widget/OSSegmentedTab$b;)V", "", "enabled", "setSwipeEnabled", "(Z)V", "isSwipeEnabled", "()Z", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "Landroidx/viewpager/widget/ViewPager;", "viewPager", "selectPosition", "setupWithViewPager", "(Landroidx/viewpager/widget/ViewPager;I)V", "Landroidx/viewpager2/widget/ViewPager2;", "viewPager2", "", "", "titleArray", "setupWithViewPager2", "(Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;I)V", "addTabs", "(Ljava/util/List;)V", "(Ljava/util/List;I)V", "position", "isClick", "isAnim", "isReset", "setSelectedPosition", "(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "onDetachedFromWindow", "()V", CmcdData.STREAM_TYPE_LIVE, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "x", "(Landroid/view/MotionEvent;)I", "", "y", "Landroid/view/View;", "v", "(FF)Landroid/view/View;", "indicatorX", "u", "(F)I", "D", "com/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1", "q", "()Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;", "com/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeCallback$1", TtmlNode.TAG_P, "()Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeCallback$1;", ICode.CALL.CALL_KEY_STATE, "(I)V", "r", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Landroid/widget/TextView;", "tabView", "H", "(IILandroid/widget/TextView;)V", GslbInterceptor.HEADER_KEY_GSLB, "textView", "n", "(Landroid/widget/TextView;)F", "positionOffset", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "(IF)V", "Q", "selectedPosition", "useAnimation", "P", "(IZ)V", "isSelected", "N", "(Landroid/widget/TextView;ZZ)V", "fromColor", "toColor", "j", "(Landroid/widget/TextView;II)V", "I", "(Landroid/widget/TextView;)V", "M", "targetX", "targetWidth", CmcdData.STREAMING_FORMAT_HLS, "(FF)V", "displacementDp", "", CmcdData.OBJECT_TYPE_MANIFEST, "(F)J", ExifInterface.LONGITUDE_EAST, "J", "width", "L", "indicatorWidth", "z", "(I)F", "t", "()F", "", "w", "(I)Ljava/lang/CharSequence;", "C", "F", "o", "b", "Lyi5;", "getMCapsuleContainer", "()Landroid/widget/FrameLayout;", "mCapsuleContainer", "c", "getMIndicator", "()Landroid/view/View;", "mIndicator", "Landroid/widget/LinearLayout;", "d", "getMTabContainer", "()Landroid/widget/LinearLayout;", "mTabContainer", "e", "Landroidx/viewpager/widget/ViewPager;", "mViewPager", "f", "Landroidx/viewpager2/widget/ViewPager2;", "mViewPager2", "mSelectedPosition", "mIndicatorStartX", "mIndicatorWidth", "mAnimDuration", "k", "capsuleOutLineWidth", "mTextNormalColor", "mTextSelectedColor", "mTextSelectSize", "mTextUnSelectSize", "mSegmentTextPadding", "mBackgroundDrawableResId", "mIndicatorDrawableResId", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "s", "Ljava/util/ArrayList;", "mTitleArray", "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;", "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;", "mVpOnPageChangeListener", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "mVpOnPageChangeCallback", "mTouchSlop", "Z", "mSwipeEnabled", "mIsViewPagerScrolling", "mIsClickTriggered", "Landroid/animation/ValueAnimator;", "Landroid/animation/ValueAnimator;", "mCurrentAnimator", "mCurrentTextAnimator", "Landroid/view/View$OnTouchListener;", "B", "Landroid/view/View$OnTouchListener;", "mBlockViewPagerTouchListener", "mIsMultiTouchInProgress", "Lp97;", "getStandardInterpolator", "()Lp97;", "standardInterpolator", "Lo97;", "getLinearInterpolator", "()Lo97;", "linearInterpolator", "isDragging", "dragStartX", "downPosition", "getAdapterCount", "()I", "adapterCount", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSSegmentedTab extends FrameLayout {
    public static final int I = R.id.os_segmented_tab_font_styleRunnable;

    public ValueAnimator mCurrentTextAnimator;

    public final View.OnTouchListener mBlockViewPagerTouchListener;

    public boolean mIsMultiTouchInProgress;

    public final yi5 standardInterpolator;

    public final yi5 linearInterpolator;

    public boolean isDragging;

    public float dragStartX;

    public int downPosition;

    public final yi5 mCapsuleContainer;

    public final yi5 mIndicator;

    public final yi5 mTabContainer;

    public ViewPager mViewPager;

    public ViewPager2 mViewPager2;

    public int mSelectedPosition;

    public float mIndicatorStartX;

    public int mIndicatorWidth;

    public int mAnimDuration;

    public int capsuleOutLineWidth;

    public int mTextNormalColor;

    public int mTextSelectedColor;

    public int mTextSelectSize;

    public int mTextUnSelectSize;

    public int mSegmentTextPadding;

    public int mBackgroundDrawableResId;

    public int mIndicatorDrawableResId;

    public final ArrayList mTitleArray;

    public final ViewPager.OnPageChangeListener mVpOnPageChangeListener;

    public final ViewPager2.OnPageChangeCallback mVpOnPageChangeCallback;

    public int mTouchSlop;

    public boolean mSwipeEnabled;

    public boolean mIsViewPagerScrolling;

    public boolean mIsClickTriggered;

    public ValueAnimator mCurrentAnimator;

    public interface b {
    }

    public static final class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            OSSegmentedTab.this.E();
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            OSSegmentedTab.this.E();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSegmentedTab(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final boolean B(OSSegmentedTab oSSegmentedTab, View view, MotionEvent motionEvent) {
        y45.j(oSSegmentedTab, "this$0");
        return !oSSegmentedTab.mSwipeEnabled;
    }

    public static final void K(OSSegmentedTab oSSegmentedTab, View view) {
        y45.j(oSSegmentedTab, "this$0");
        y45.j(view, "$tab");
        if (oSSegmentedTab.getMIndicator().getWidth() != view.getMeasuredWidth()) {
            view.getLeft();
        }
    }

    public static final void O(TextView textView, int i, float f) {
        y45.j(textView, "$textView");
        textView.setTextAppearance(i);
        textView.setTextSize(0, f);
    }

    public static void addTabs$default(OSSegmentedTab oSSegmentedTab, List list, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        oSSegmentedTab.addTabs(list, i);
    }

    private final int getAdapterCount() {
        RecyclerView.Adapter adapter;
        PagerAdapter adapter2;
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null && (adapter2 = viewPager.getAdapter()) != null) {
            return adapter2.getCount();
        }
        ViewPager2 viewPager2 = this.mViewPager2;
        return (viewPager2 == null || (adapter = viewPager2.getAdapter()) == null) ? this.mTitleArray.size() : adapter.getItemCount();
    }

    private final o97 getLinearInterpolator() {
        return (o97) this.linearInterpolator.getValue();
    }

    private final FrameLayout getMCapsuleContainer() {
        Object value = this.mCapsuleContainer.getValue();
        y45.i(value, "<get-mCapsuleContainer>(...)");
        return (FrameLayout) value;
    }

    private final View getMIndicator() {
        Object value = this.mIndicator.getValue();
        y45.i(value, "<get-mIndicator>(...)");
        return (View) value;
    }

    private final LinearLayout getMTabContainer() {
        Object value = this.mTabContainer.getValue();
        y45.i(value, "<get-mTabContainer>(...)");
        return (LinearLayout) value;
    }

    private final p97 getStandardInterpolator() {
        return (p97) this.standardInterpolator.getValue();
    }

    public static final void i(OSSegmentedTab oSSegmentedTab, float f, ValueAnimator valueAnimator) {
        y45.j(oSSegmentedTab, "this$0");
        y45.j(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        oSSegmentedTab.L(((Float) animatedValue).floatValue(), f);
    }

    public static final void k(TextView textView, ValueAnimator valueAnimator) {
        y45.j(textView, "$textView");
        y45.j(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        textView.setTextColor(((Integer) animatedValue).intValue());
    }

    public static final void s(OSSegmentedTab oSSegmentedTab) {
        View childAt;
        y45.j(oSSegmentedTab, "this$0");
        oSSegmentedTab.g();
        if (oSSegmentedTab.getMTabContainer().getChildCount() == 0 || (childAt = oSSegmentedTab.getMTabContainer().getChildAt(oSSegmentedTab.mSelectedPosition)) == null) {
            return;
        }
        oSSegmentedTab.mIndicatorWidth = childAt.getMeasuredWidth();
        oSSegmentedTab.getMIndicator().getLayoutParams().width = oSSegmentedTab.mIndicatorWidth;
        oSSegmentedTab.getMIndicator().setLayoutParams(oSSegmentedTab.getMIndicator().getLayoutParams());
        setSelectedPosition$default(oSSegmentedTab, oSSegmentedTab.mSelectedPosition, null, null, Boolean.TRUE, 6, null);
    }

    public static void setSelectedPosition$default(OSSegmentedTab oSSegmentedTab, int i, Boolean bool, Boolean bool2, Boolean bool3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bool = Boolean.FALSE;
        }
        if ((i2 & 4) != 0) {
            bool2 = Boolean.FALSE;
        }
        if ((i2 & 8) != 0) {
            bool3 = Boolean.FALSE;
        }
        oSSegmentedTab.setSelectedPosition(i, bool, bool2, bool3);
    }

    public static void setupWithViewPager$default(OSSegmentedTab oSSegmentedTab, ViewPager viewPager, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        oSSegmentedTab.setupWithViewPager(viewPager, i);
    }

    public static void setupWithViewPager2$default(OSSegmentedTab oSSegmentedTab, ViewPager2 viewPager2, List list, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        oSSegmentedTab.setupWithViewPager2(viewPager2, list, i);
    }

    public final void A(Context context, AttributeSet attrs) {
        if (olb.Z(context)) {
            View.inflate(context, R.layout.os_ultra_small_capsule_tab_layout, this);
        } else {
            View.inflate(context, R.layout.os_capsule_tab_layout, this);
        }
        if (olb.g0(context)) {
            getMCapsuleContainer().getLayoutParams().width = -2;
        }
        int[] iArr = R.styleable.OSSegmentTab;
        y45.i(iArr, "OSSegmentTab");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, iArr, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        this.mBackgroundDrawableResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.OSSegmentTab_segmentTabBackground, this.mBackgroundDrawableResId);
        this.mIndicatorDrawableResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.OSSegmentTab_segmentTabIndicatorColor, this.mIndicatorDrawableResId);
        this.mTextSelectSize = typedArrayObtainStyledAttributes.getResources().getDimensionPixelSize(R.dimen.os_segment_tab_text_select_size);
        this.mTextUnSelectSize = typedArrayObtainStyledAttributes.getResources().getDimensionPixelSize(R.dimen.os_segment_tab_text_unselect_size);
        this.mTextSelectSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSSegmentTab_segmentTabSelectTextSize, this.mTextSelectSize);
        this.mTextUnSelectSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSSegmentTab_segmentTabUnSelectTextSize, this.mTextUnSelectSize);
        this.mTextSelectedColor = typedArrayObtainStyledAttributes.getColor(R.styleable.OSSegmentTab_segmentTabTextSelectedColor, olb.m(getContext(), R.attr.os_text_primary, R.color.os_text_primary_hios));
        this.mTextNormalColor = typedArrayObtainStyledAttributes.getColor(R.styleable.OSSegmentTab_segmentTabTextNormalColor, olb.m(getContext(), R.attr.os_text_tertiary, R.color.os_text_tertiary_hios));
        this.capsuleOutLineWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSSegmentTab_segmentTabPadding, (int) TypedValue.applyDimension(1, 2.0f, typedArrayObtainStyledAttributes.getResources().getDisplayMetrics()));
        this.mAnimDuration = typedArrayObtainStyledAttributes.getInteger(R.styleable.OSSegmentTab_segmentTabIndicatorAnimDuration, this.mAnimDuration);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getResources().getDimensionPixelSize(R.dimen.os_space050);
        this.mSegmentTextPadding = dimensionPixelSize;
        this.mSegmentTextPadding = typedArrayObtainStyledAttributes.getInteger(R.styleable.OSSegmentTab_segmentTabTextPadding, dimensionPixelSize);
        typedArrayObtainStyledAttributes.recycle();
        FrameLayout mCapsuleContainer = getMCapsuleContainer();
        int i = this.capsuleOutLineWidth;
        mCapsuleContainer.setPadding(i, i, i, i);
        getMCapsuleContainer().setBackgroundResource(this.mBackgroundDrawableResId);
        getMIndicator().setBackgroundResource(this.mIndicatorDrawableResId);
    }

    public final void C() {
        ValueAnimator valueAnimator = this.mCurrentAnimator;
        if (valueAnimator != null) {
            if (!valueAnimator.isRunning()) {
                valueAnimator = null;
            }
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }
        this.mCurrentAnimator = null;
        ValueAnimator valueAnimator2 = this.mCurrentTextAnimator;
        if (valueAnimator2 != null) {
            if (!valueAnimator2.isRunning()) {
                valueAnimator2 = null;
            }
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
        }
        this.mCurrentTextAnimator = null;
    }

    public final void D() {
        ViewPager2.OnPageChangeCallback onPageChangeCallback;
        ViewPager.OnPageChangeListener onPageChangeListener;
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null) {
            viewPager.setOnTouchListener(null);
        }
        ViewPager2 viewPager2 = this.mViewPager2;
        if (viewPager2 != null) {
            viewPager2.setUserInputEnabled(true);
        }
        ViewPager viewPager3 = this.mViewPager;
        if (viewPager3 != null && (onPageChangeListener = this.mVpOnPageChangeListener) != null) {
            viewPager3.removeOnPageChangeListener(onPageChangeListener);
        }
        ViewPager2 viewPager4 = this.mViewPager2;
        if (viewPager4 == null || (onPageChangeCallback = this.mVpOnPageChangeCallback) == null) {
            return;
        }
        viewPager4.unregisterOnPageChangeCallback(onPageChangeCallback);
    }

    public final void E() {
        this.mCurrentAnimator = null;
        this.mIsClickTriggered = false;
    }

    public final void F() {
        int childCount = getMTabContainer().getChildCount();
        int i = this.mSelectedPosition;
        if (i < 0 || i >= childCount) {
            return;
        }
        C();
        o();
        this.downPosition = -1;
        P(this.mSelectedPosition, false);
        M(this.mSelectedPosition);
    }

    public final void G(int position, float positionOffset) {
        View childAt;
        View childAt2;
        if (getMTabContainer().getChildCount() == 0 || (childAt = getMTabContainer().getChildAt(position)) == null) {
            return;
        }
        this.mIndicatorStartX = childAt.getLeft() + this.capsuleOutLineWidth;
        this.mIndicatorWidth = childAt.getMeasuredWidth();
        if (position >= getMTabContainer().getChildCount() - 1 || (childAt2 = getMTabContainer().getChildAt(position + 1)) == null) {
            return;
        }
        float left = childAt2.getLeft() + this.capsuleOutLineWidth;
        float measuredWidth = childAt2.getMeasuredWidth();
        float f = this.mIndicatorStartX;
        float f2 = f + ((left - f) * positionOffset);
        int i = this.mIndicatorWidth;
        L(f2, i + ((measuredWidth - i) * positionOffset));
    }

    public final void H(int i, int selectPosition, TextView tabView) {
        if (i == selectPosition) {
            tabView.setTextAppearance(R.style.os_semibold_font);
            tabView.setTextSize(0, this.mTextSelectSize);
            tabView.setTextColor(this.mTextSelectedColor);
        } else {
            tabView.setTextAppearance(R.style.os_regular_fontweight);
            tabView.setTextSize(0, this.mTextUnSelectSize);
            tabView.setTextColor(this.mTextNormalColor);
        }
    }

    public final void I(TextView textView) {
        gcc.n(textView, 0.0f, 1, null);
    }

    public final void J() {
        final View childAt;
        int i = this.mSelectedPosition;
        if (i < 0 || i >= getMTabContainer().getChildCount() || (childAt = getMTabContainer().getChildAt(this.mSelectedPosition)) == null) {
            return;
        }
        post(new Runnable() {
            @Override
            public final void run() {
                OSSegmentedTab.K(this.b, childAt);
            }
        });
    }

    public final void L(float x, float width) {
        ViewGroup.LayoutParams layoutParams = getMIndicator().getLayoutParams();
        int i = (int) width;
        layoutParams.width = i;
        getMIndicator().setLayoutParams(layoutParams);
        getMIndicator().setTranslationX(x - z(i));
        getMIndicator().invalidate();
    }

    public final void M(int position) {
        View childAt;
        if ((this.mIsViewPagerScrolling && !this.mIsClickTriggered) || this.downPosition == position || (childAt = getMTabContainer().getChildAt(position)) == null) {
            return;
        }
        float left = childAt.getLeft() + this.capsuleOutLineWidth;
        float measuredWidth = childAt.getMeasuredWidth();
        if (this.mIsClickTriggered) {
            h(left, measuredWidth);
        } else {
            L(left, measuredWidth);
        }
    }

    public final void N(final TextView textView, boolean isSelected, boolean useAnimation) {
        int i = isSelected ? this.mTextSelectedColor : this.mTextNormalColor;
        final int i2 = isSelected ? R.style.os_semibold_font : R.style.os_regular_fontweight;
        final float f = isSelected ? this.mTextSelectSize : this.mTextUnSelectSize;
        int i3 = I;
        Object tag = textView.getTag(i3);
        Runnable runnable = tag instanceof Runnable ? (Runnable) tag : null;
        if (runnable != null) {
            textView.removeCallbacks(runnable);
        }
        if (useAnimation) {
            Runnable runnable2 = new Runnable() {
                @Override
                public final void run() {
                    OSSegmentedTab.O(textView, i2, f);
                }
            };
            textView.setTag(i3, runnable2);
            textView.postDelayed(runnable2, 100L);
        } else {
            textView.setTextAppearance(i2);
            textView.setTextSize(0, f);
        }
        textView.setSingleLine(true);
        if (!isSelected) {
            gcc.r(textView);
        }
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setSelected(isSelected);
        int currentTextColor = textView.getCurrentTextColor();
        if (currentTextColor != i) {
            if (useAnimation) {
                j(textView, currentTextColor, i);
            } else {
                textView.setTextColor(i);
            }
        }
    }

    public final void P(int selectedPosition, boolean useAnimation) {
        int childCount = getMTabContainer().getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getMTabContainer().getChildAt(i);
            y45.h(childAt, "null cannot be cast to non-null type android.widget.TextView");
            N((TextView) childAt, i == selectedPosition, useAnimation);
            i++;
        }
    }

    public final void Q(int position) {
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null) {
            viewPager.setCurrentItem(position, false);
        }
        ViewPager2 viewPager2 = this.mViewPager2;
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(position, false);
        }
    }

    public final void addTabs(List<String> titleArray) {
        y45.j(titleArray, "titleArray");
        addTabs(titleArray, 0);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        if (!this.mSwipeEnabled) {
            return super.dispatchTouchEvent(event);
        }
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            this.mIsMultiTouchInProgress = false;
            this.dragStartX = event.getX();
            this.isDragging = false;
            int iX = x(event);
            this.downPosition = iX;
            View childAt = getMTabContainer().getChildAt(iX);
            if (childAt == null) {
                return true;
            }
            float left = childAt.getLeft() + this.capsuleOutLineWidth;
            if (iX >= 0 && iX != this.mSelectedPosition) {
                h(left, this.mIndicatorWidth);
            }
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (this.mIsMultiTouchInProgress) {
                    return true;
                }
                this.downPosition = -1;
                float x = event.getX() - this.dragStartX;
                float fAbs = Math.abs(x);
                if (!this.isDragging && fAbs > this.mTouchSlop) {
                    this.isDragging = true;
                }
                if (this.isDragging) {
                    L(wn8.j(t() + x, this.capsuleOutLineWidth, (getMTabContainer().getMeasuredWidth() - this.mIndicatorWidth) + this.capsuleOutLineWidth), this.mIndicatorWidth);
                    this.dragStartX = event.getX();
                }
                return true;
            }
            if (actionMasked != 3) {
                if (actionMasked != 5) {
                    if (actionMasked == 6 && this.mIsMultiTouchInProgress) {
                        F();
                    }
                    return true;
                }
                if (event.getPointerCount() > 1) {
                    this.mIsMultiTouchInProgress = true;
                    F();
                }
                return true;
            }
        }
        if (this.mIsMultiTouchInProgress) {
            this.mIsMultiTouchInProgress = false;
            F();
            this.isDragging = false;
            return true;
        }
        if (this.isDragging) {
            int iU = u(t());
            if (iU < 0 || iU == this.mSelectedPosition) {
                M(this.mSelectedPosition);
            } else {
                setSelectedPosition$default(this, iU, Boolean.TRUE, null, null, 12, null);
            }
        } else {
            int iX2 = x(event);
            if (iX2 >= 0) {
                if (iX2 != this.mSelectedPosition) {
                    setSelectedPosition$default(this, iX2, Boolean.TRUE, null, null, 12, null);
                }
                View childAt2 = getMTabContainer().getChildAt(iX2);
                TextView textView = childAt2 instanceof TextView ? (TextView) childAt2 : null;
                if (textView != null) {
                    I(textView);
                }
            }
        }
        this.isDragging = false;
        this.mIsMultiTouchInProgress = false;
        return true;
    }

    public final void g() {
        int childCount = getMTabContainer().getChildCount();
        float f = Float.MAX_VALUE;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            View childAt = getMTabContainer().getChildAt(i);
            TextView textView = childAt instanceof TextView ? (TextView) childAt : null;
            if (textView != null) {
                float fN = n(textView);
                if (fN < f) {
                    f = fN;
                }
            }
            i++;
        }
        int i2 = (int) f;
        this.mTextSelectSize = i2;
        this.mTextUnSelectSize = i2;
        int childCount2 = getMTabContainer().getChildCount();
        for (int i3 = 0; i3 < childCount2; i3++) {
            View childAt2 = getMTabContainer().getChildAt(i3);
            TextView textView2 = childAt2 instanceof TextView ? (TextView) childAt2 : null;
            if (textView2 != null) {
                textView2.setTextSize(0, f);
            }
        }
    }

    public final void h(float targetX, final float targetWidth) {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2 = this.mCurrentAnimator;
        if (valueAnimator2 != null && valueAnimator2.isRunning() && (valueAnimator = this.mCurrentAnimator) != null) {
            valueAnimator.cancel();
        }
        float fT = t();
        long jM = m(olb.D0(getContext(), Math.abs(targetX - fT)));
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fT, targetX);
        valueAnimatorOfFloat.setDuration(jM);
        valueAnimatorOfFloat.setInterpolator(getStandardInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                OSSegmentedTab.i(this.b, targetWidth, valueAnimator3);
            }
        });
        valueAnimatorOfFloat.addListener(new c());
        valueAnimatorOfFloat.start();
        this.mCurrentAnimator = valueAnimatorOfFloat;
    }

    public final boolean getMSwipeEnabled() {
        return this.mSwipeEnabled;
    }

    public final void j(final TextView textView, int fromColor, int toColor) {
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(fromColor), Integer.valueOf(toColor));
        valueAnimatorOfObject.setDuration(100L);
        valueAnimatorOfObject.setInterpolator(getLinearInterpolator());
        valueAnimatorOfObject.setStartDelay(100L);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                OSSegmentedTab.k(textView, valueAnimator);
            }
        });
        valueAnimatorOfObject.start();
        this.mCurrentTextAnimator = valueAnimatorOfObject;
    }

    public final void l() {
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null) {
            viewPager.setOnTouchListener(this.mSwipeEnabled ? null : this.mBlockViewPagerTouchListener);
        }
        ViewPager2 viewPager2 = this.mViewPager2;
        if (viewPager2 == null) {
            return;
        }
        viewPager2.setUserInputEnabled(this.mSwipeEnabled);
    }

    public final long m(float displacementDp) {
        return ((long) (((wn8.j(displacementDp, 100.0f, 800.0f) - 100.0f) / 700.0f) * 100)) + 250;
    }

    public final float n(TextView textView) {
        float f;
        float f2;
        String string = textView.getText().toString();
        if (string.length() == 0) {
            return textView.getTextSize();
        }
        int width = (textView.getWidth() - textView.getPaddingLeft()) - textView.getPaddingRight();
        if (olb.g0(getContext())) {
            width = (getResources().getDimensionPixelSize(R.dimen.os_segment_tab_text_width_tablet) - textView.getPaddingLeft()) - textView.getPaddingRight();
        }
        if (width <= 0) {
            return textView.getTextSize();
        }
        TextPaint paint = textView.getPaint();
        float textSize = textView.getTextSize();
        float fApplyDimension = TypedValue.applyDimension(1, 12.0f, getResources().getDisplayMetrics());
        float fApplyDimension2 = TypedValue.applyDimension(1, 15.0f, getResources().getDisplayMetrics());
        float fApplyDimension3 = TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics());
        paint.setTextSize(textSize);
        float f3 = width;
        if (paint.measureText(string) <= f3) {
            f = textSize;
            for (float fMin = Math.min(textSize + fApplyDimension3, fApplyDimension2); fMin <= fApplyDimension2; fMin += fApplyDimension3) {
                paint.setTextSize(fMin);
                if (paint.measureText(string) > f3) {
                    break;
                }
                f = fMin;
            }
        } else {
            float f4 = textSize;
            float f5 = fApplyDimension;
            loop1: while (true) {
                f = f5;
                while (true) {
                    if (f4 - f5 <= 1.0f) {
                        break loop1;
                    }
                    f2 = (f5 + f4) / 2;
                    paint.setTextSize(f2);
                    if (paint.measureText(string) <= f3) {
                        break;
                    }
                    f4 = f2;
                }
                f5 = f2;
            }
        }
        paint.setTextSize(f);
        if (paint.measureText(string) > f3) {
            f = fApplyDimension;
        }
        paint.setTextSize(textSize);
        return wn8.j(f, fApplyDimension, fApplyDimension2);
    }

    public final void o() {
        for (View view : ViewGroupKt.getChildren(getMTabContainer())) {
            TextView textView = view instanceof TextView ? (TextView) view : null;
            if (textView != null) {
                int i = I;
                Object tag = textView.getTag(i);
                Runnable runnable = tag instanceof Runnable ? (Runnable) tag : null;
                if (runnable != null) {
                    textView.removeCallbacks(runnable);
                    textView.setTag(i, null);
                }
            }
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        o();
        C();
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        J();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.transsion.widgetslib.widget.OSSegmentedTab$createPageChangeCallback$1] */
    public final OSSegmentedTab$createPageChangeCallback$1 p() {
        return new ViewPager2.OnPageChangeCallback() {
            @Override
            public void onPageScrollStateChanged(int state) {
                this.d.y(state);
            }

            @Override
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                if (this.d.mIsClickTriggered) {
                    return;
                }
                this.d.G(position, positionOffset);
            }

            @Override
            public void onPageSelected(int position) {
                if (this.d.mIsClickTriggered) {
                    return;
                }
                OSSegmentedTab.setSelectedPosition$default(this.d, position, null, null, null, 14, null);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.transsion.widgetslib.widget.OSSegmentedTab$createPageChangeListener$1] */
    public final OSSegmentedTab$createPageChangeListener$1 q() {
        return new ViewPager.OnPageChangeListener() {
            @Override
            public void onPageScrollStateChanged(int state) {
                this.b.y(state);
            }

            @Override
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                if (this.b.mIsClickTriggered) {
                    return;
                }
                this.b.G(position, positionOffset);
            }

            @Override
            public void onPageSelected(int position) {
                if (this.b.mIsClickTriggered) {
                    return;
                }
                OSSegmentedTab.setSelectedPosition$default(this.b, position, null, null, null, 14, null);
            }
        };
    }

    public final void r(int selectPosition) {
        o();
        getMTabContainer().removeAllViews();
        int adapterCount = getAdapterCount();
        for (int i = 0; i < adapterCount; i++) {
            TextView textView = new TextView(getContext());
            textView.setGravity(17);
            textView.setSingleLine(true);
            textView.setText(w(i));
            H(i, selectPosition, textView);
            int i2 = this.mSegmentTextPadding;
            textView.setPadding(i2, 0, i2, 0);
            textView.setMaxLines(1);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
            if (olb.g0(getContext())) {
                textView.setMaxWidth(getResources().getDimensionPixelSize(R.dimen.os_segment_tab_text_width_tablet));
                layoutParams = new LinearLayout.LayoutParams(-2, -1);
            } else {
                layoutParams.weight = 1.0f;
            }
            getMTabContainer().addView(textView, layoutParams);
        }
        if (adapterCount > 0) {
            getMTabContainer().getChildAt(adapterCount - 1).post(new Runnable() {
                @Override
                public final void run() {
                    OSSegmentedTab.s(this.b);
                }
            });
        }
    }

    public final void setOnTabSelectedListener(b listener) {
    }

    public final void setSelectedPosition(int position, Boolean isClick, Boolean isAnim, Boolean isReset) {
        if (this.mSelectedPosition != position || y45.e(isReset, Boolean.TRUE)) {
            if (position != this.downPosition) {
                C();
            }
            Boolean bool = Boolean.TRUE;
            if (y45.e(isClick, bool)) {
                this.mIsClickTriggered = true;
                Q(position);
            }
            P(position, y45.e(isAnim, bool));
            M(position);
            this.mSelectedPosition = position;
        }
    }

    public final void setSwipeEnabled(boolean enabled) {
        this.mSwipeEnabled = enabled;
        l();
    }

    public final void setupWithViewPager(ViewPager viewPager, int selectPosition) {
        D();
        this.mViewPager = viewPager;
        this.mViewPager2 = null;
        l();
        if (viewPager == null || viewPager.getAdapter() == null) {
            return;
        }
        viewPager.addOnPageChangeListener(q());
        r(selectPosition);
    }

    public final void setupWithViewPager2(ViewPager2 viewPager2, List<String> titleArray, int selectPosition) {
        y45.j(titleArray, "titleArray");
        D();
        this.mViewPager2 = viewPager2;
        this.mViewPager = null;
        l();
        if (viewPager2 == null || viewPager2.getAdapter() == null) {
            return;
        }
        viewPager2.registerOnPageChangeCallback(p());
        this.mTitleArray.clear();
        this.mTitleArray.addAll(titleArray);
        r(selectPosition);
    }

    public final float t() {
        return z(getMIndicator().getWidth()) + getMIndicator().getTranslationX();
    }

    public final int u(float indicatorX) {
        if (getMTabContainer().getChildCount() <= 0) {
            return -1;
        }
        int i = this.mSelectedPosition;
        int childCount = getMTabContainer().getChildCount();
        float f = Float.MAX_VALUE;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getMTabContainer().getChildAt(i2);
            if (childAt != null) {
                float fAbs = Math.abs((childAt.getLeft() + (childAt.getWidth() / 2.0f)) - ((this.mIndicatorWidth / 2.0f) + indicatorX));
                if (fAbs < f) {
                    i = i2;
                    f = fAbs;
                }
            }
        }
        return i;
    }

    public final View v(float x, float y) {
        if (getMTabContainer().getChildCount() <= 0) {
            return null;
        }
        boolean z = getLayoutDirection() == 1;
        int i = this.capsuleOutLineWidth;
        if (z) {
            i = -i;
        }
        View childAt = getMTabContainer().getChildAt(0);
        View childAt2 = getMTabContainer().getChildAt(getMTabContainer().getChildCount() - 1);
        if (!z ? x - i >= childAt.getLeft() : x - i <= childAt.getRight()) {
            return childAt;
        }
        if (!z ? x - i <= childAt2.getRight() : x - i >= childAt2.getLeft()) {
            return childAt2;
        }
        int childCount = getMTabContainer().getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt3 = getMTabContainer().getChildAt(i2);
            int right = z ? childAt3.getRight() : childAt3.getLeft();
            int left = z ? childAt3.getLeft() : childAt3.getRight();
            if (z) {
                if (x <= right && x >= left) {
                    return childAt3;
                }
            } else if (x >= right && x <= left) {
                return childAt3;
            }
        }
        return null;
    }

    public final CharSequence w(int position) {
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null) {
            y45.g(viewPager);
            if (viewPager.getAdapter() != null) {
                ViewPager viewPager2 = this.mViewPager;
                y45.g(viewPager2);
                PagerAdapter adapter = viewPager2.getAdapter();
                y45.g(adapter);
                return adapter.getPageTitle(position);
            }
        }
        ViewPager2 viewPager3 = this.mViewPager2;
        if (viewPager3 != null) {
            y45.g(viewPager3);
            if (viewPager3.getAdapter() != null) {
                return (CharSequence) this.mTitleArray.get(position);
            }
        }
        return position > getAdapterCount() + (-1) ? "" : (CharSequence) this.mTitleArray.get(position);
    }

    public final int x(MotionEvent event) {
        View viewV = v(event.getX(), event.getY());
        if (viewV == null) {
            return -1;
        }
        int i = 0;
        for (Object obj : ViewGroupKt.getChildren(getMTabContainer())) {
            if (i < 0) {
                y71.u();
            }
            if (y45.e((View) obj, viewV)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final void y(int state) {
        boolean z;
        if (state != 0) {
            z = true;
            if (state != 1) {
                z = this.mIsViewPagerScrolling;
            }
        } else {
            z = false;
            this.mIsClickTriggered = false;
        }
        this.mIsViewPagerScrolling = z;
    }

    public final float z(int indicatorWidth) {
        FrameLayout mCapsuleContainer = getMCapsuleContainer();
        int width = mCapsuleContainer.getWidth();
        if (width <= 0) {
            return 0.0f;
        }
        return mCapsuleContainer.getLayoutDirection() != 1 ? mCapsuleContainer.getPaddingLeft() : (width - mCapsuleContainer.getPaddingRight()) - indicatorWidth;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSegmentedTab(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public final void addTabs(List<String> titleArray, int selectPosition) {
        y45.j(titleArray, "titleArray");
        this.mSelectedPosition = selectPosition;
        this.mTitleArray.clear();
        this.mTitleArray.addAll(titleArray);
        r(selectPosition);
    }

    public OSSegmentedTab(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSSegmentedTab(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.mCapsuleContainer = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final FrameLayout invoke() {
                return (FrameLayout) this.this$0.findViewById(R.id.segment_container);
            }
        });
        this.mIndicator = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final View invoke() {
                return this.this$0.findViewById(R.id.segment_indicator);
            }
        });
        this.mTabContainer = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final LinearLayout invoke() {
                return (LinearLayout) this.this$0.findViewById(R.id.capsule_tab_container);
            }
        });
        this.mSelectedPosition = -1;
        this.mAnimDuration = 400;
        this.mBackgroundDrawableResId = R.drawable.os_segment_tab_bg;
        this.mIndicatorDrawableResId = R.drawable.os_segment_tab_indicator;
        this.mTitleArray = new ArrayList();
        this.mSwipeEnabled = true;
        this.mBlockViewPagerTouchListener = new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return OSSegmentedTab.B(this.b, view, motionEvent);
            }
        };
        this.standardInterpolator = kotlin.b.a(new c74() {
            @Override
            public final p97 invoke() {
                return new p97();
            }
        });
        this.linearInterpolator = kotlin.b.a(new c74() {
            @Override
            public final o97 invoke() {
                return new o97();
            }
        });
        this.downPosition = -1;
        A(context, attributeSet);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop() / 4;
    }
}
