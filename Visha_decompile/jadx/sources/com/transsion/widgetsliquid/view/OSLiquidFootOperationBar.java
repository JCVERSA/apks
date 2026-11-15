package com.transsion.widgetsliquid.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.StringRes;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewGroupKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.livecaption.constant.ICode;
import com.transsion.push.PushConstants;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.transsion.widgetsliquid.R;
import com.transsion.widgetsliquid.effect.OSLiquidContainerRootLayout;
import com.transsion.widgetsliquid.view.OSLiquidFootOperationBar;
import defpackage.c74;
import defpackage.f43;
import defpackage.fz3;
import defpackage.gcc;
import defpackage.hi;
import defpackage.i81;
import defpackage.jv9;
import defpackage.kv9;
import defpackage.o97;
import defpackage.olb;
import defpackage.u97;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0007\n\u0002\b,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u0000 Â\u00012\u00020\u0001:\bÃ\u0001Ä\u0001Å\u0001Æ\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ)\u0010\u000f\u001a\u00020\u000e2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u000e2\b\b\u0001\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\f¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00062\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00062\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u0019\u0010\u001d\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0015\u0010%\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\u0015\u0010(\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u0016¢\u0006\u0004\b(\u0010)J\r\u0010*\u001a\u00020\u0006¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u0004\u0018\u00010,2\u0006\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b-\u0010.J\r\u0010/\u001a\u00020\u0006¢\u0006\u0004\b/\u0010+J\u001d\u00101\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0016¢\u0006\u0004\b1\u00102J'\u00103\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00062\b\b\u0001\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\f¢\u0006\u0004\b3\u00104J\u0015\u00105\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b5\u00106J\u0017\u00109\u001a\u00020\u000e2\u0006\u00108\u001a\u000207H\u0014¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u000eH\u0014¢\u0006\u0004\b;\u0010<J\u0017\u0010>\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u0016H\u0016¢\u0006\u0004\b>\u0010)J5\u0010C\u001a\u00020\u000e2\b\b\u0002\u0010?\u001a\u00020\u00162\b\b\u0002\u0010@\u001a\u00020\u00062\b\b\u0002\u0010A\u001a\u00020\u00162\b\b\u0002\u0010B\u001a\u00020\u0006¢\u0006\u0004\bC\u0010DJ3\u0010H\u001a\u00020\u000e2\b\b\u0002\u0010?\u001a\u00020\u00162\b\b\u0002\u0010E\u001a\u00020\u00162\b\b\u0002\u0010F\u001a\u00020\u00162\u0006\u0010G\u001a\u00020\u0006¢\u0006\u0004\bH\u0010IJ\r\u0010J\u001a\u00020\u0006¢\u0006\u0004\bJ\u0010+J\r\u0010K\u001a\u00020\u0016¢\u0006\u0004\bK\u0010LJ\r\u0010M\u001a\u00020\u0006¢\u0006\u0004\bM\u0010+J\u0015\u0010O\u001a\u00020\u000e2\u0006\u0010N\u001a\u00020\u0006¢\u0006\u0004\bO\u00106J\u0015\u0010Q\u001a\u00020\u000e2\u0006\u0010P\u001a\u00020\u0006¢\u0006\u0004\bQ\u00106J\u0011\u0010S\u001a\u0004\u0018\u00010RH\u0014¢\u0006\u0004\bS\u0010TJ\u0019\u0010V\u001a\u00020\u000e2\b\u0010U\u001a\u0004\u0018\u00010RH\u0014¢\u0006\u0004\bV\u0010WJ\u000f\u0010X\u001a\u00020\u0006H\u0002¢\u0006\u0004\bX\u0010+J'\u0010Z\u001a\u00020Y2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\bZ\u0010[J\u000f\u0010\\\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\\\u0010<J\u0017\u0010]\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b]\u00106J\u001f\u0010`\u001a\u00020\u000e2\u0006\u0010^\u001a\u00020,2\u0006\u0010_\u001a\u00020\u0016H\u0002¢\u0006\u0004\b`\u0010aJ\u0017\u0010c\u001a\u00020\u00162\u0006\u0010b\u001a\u00020\u0006H\u0002¢\u0006\u0004\bc\u0010dJ\u0017\u0010e\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\be\u0010fJ\u0017\u0010h\u001a\u00020g2\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\bh\u0010iJ!\u0010l\u001a\u0004\u0018\u00010Y2\u0006\u0010j\u001a\u00020g2\u0006\u0010k\u001a\u00020gH\u0002¢\u0006\u0004\bl\u0010mJ\u0017\u0010o\u001a\u00020\u000e2\u0006\u0010n\u001a\u00020YH\u0002¢\u0006\u0004\bo\u0010pJ\u0017\u0010q\u001a\u00020\u000e2\u0006\u0010n\u001a\u00020YH\u0002¢\u0006\u0004\bq\u0010pJ\u000f\u0010r\u001a\u00020gH\u0002¢\u0006\u0004\br\u0010sJ\u000f\u0010t\u001a\u00020\u000eH\u0002¢\u0006\u0004\bt\u0010<J!\u0010v\u001a\u00020\u000e2\b\b\u0002\u0010A\u001a\u00020\u00162\u0006\u0010u\u001a\u00020\u0006H\u0002¢\u0006\u0004\bv\u0010wJ'\u0010y\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020\u00062\u0006\u0010u\u001a\u00020\u00062\u0006\u0010x\u001a\u00020\u0006H\u0002¢\u0006\u0004\by\u0010zJ\u0019\u0010{\u001a\u00020\u000e2\b\b\u0002\u0010A\u001a\u00020\u0016H\u0002¢\u0006\u0004\b{\u0010)J)\u0010~\u001a\u00020\u000e2\u0006\u0010|\u001a\u00020\u00062\u0006\u0010}\u001a\u00020\u00162\b\b\u0002\u0010A\u001a\u00020\u0016H\u0002¢\u0006\u0004\b~\u0010\u007fJ>\u0010\u0084\u0001\u001a\u00020\u000e2\u0007\u0010\u0080\u0001\u001a\u00020g2\u0006\u0010}\u001a\u00020\u00162\u0007\u0010\u0081\u0001\u001a\u00020g2\u0007\u0010\u0082\u0001\u001a\u00020Y2\u0007\u0010\u0083\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u0011\u0010\u0086\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\b\u0086\u0001\u0010+J>\u0010\u0087\u0001\u001a\u00020\u000e2\u0007\u0010\u0080\u0001\u001a\u00020g2\u0006\u0010}\u001a\u00020\u00162\u0007\u0010\u0081\u0001\u001a\u00020g2\u0007\u0010\u0082\u0001\u001a\u00020Y2\u0007\u0010\u0083\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0006\b\u0087\u0001\u0010\u0085\u0001J5\u0010\u0088\u0001\u001a\u00020\u000e2\u0006\u0010}\u001a\u00020\u00162\u0007\u0010\u0081\u0001\u001a\u00020g2\u0007\u0010\u0083\u0001\u001a\u00020\u00062\u0007\u0010\u0082\u0001\u001a\u00020YH\u0002¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J5\u0010\u008c\u0001\u001a\u00020\u000e2\u0006\u0010}\u001a\u00020\u00162\u0007\u0010\u008a\u0001\u001a\u00020\u00062\u0007\u0010\u0081\u0001\u001a\u00020g2\u0007\u0010\u008b\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001J\u0019\u0010\u008e\u0001\u001a\u00020\u000e2\u0006\u0010}\u001a\u00020\u0016H\u0002¢\u0006\u0005\b\u008e\u0001\u0010)J\u0011\u0010\u008f\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\b\u008f\u0001\u0010+J\u0011\u0010\u0090\u0001\u001a\u00020gH\u0002¢\u0006\u0005\b\u0090\u0001\u0010sJ\u001b\u0010\u0092\u0001\u001a\u00020\u00062\u0007\u0010\u0091\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001R\u0017\u0010\u0096\u0001\u001a\u00030\u0094\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bl\u0010\u0095\u0001R\u001d\u0010\u0099\u0001\u001a\t\u0012\u0004\u0012\u00020,0\u0097\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\be\u0010\u0098\u0001R\u0016\u0010x\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010{R\u0018\u0010\u009a\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0092\u0001\u0010{R\u0019\u0010\u009b\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u008e\u0001R\u0018\u0010\u009c\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010{R\u0018\u0010\u009e\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009d\u0001\u0010{R\u0018\u0010¢\u0001\u001a\u00030\u009f\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001R\u0017\u0010£\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010{R\u0018\u0010¥\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¤\u0001\u0010{R\u0017\u0010¦\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010{R\u0017\u0010§\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010{R\u0017\u0010¨\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010{R\u0017\u0010u\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010{R\u001c\u0010«\u0001\u001a\u0005\u0018\u00010©\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010ª\u0001R\u0019\u0010\u00ad\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u008e\u0001R\u0017\u0010®\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010{R\u0017\u0010¯\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010{R\u0017\u0010°\u0001\u001a\u00020g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010~R\u001f\u0010±\u0001\u001a\t\u0012\u0004\u0012\u00020g0\u0097\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\\\u0010\u0098\u0001R \u0010³\u0001\u001a\t\u0012\u0004\u0012\u00020g0\u0097\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010\u0098\u0001R\u0019\u0010µ\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010\u008e\u0001R\u0018\u0010·\u0001\u001a\u00020g8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¶\u0001\u0010~R\u0018\u0010¹\u0001\u001a\u00020g8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¸\u0001\u0010~R\u0019\u0010»\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010\u008e\u0001R!\u0010Á\u0001\u001a\u00030¼\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b½\u0001\u0010¾\u0001\u001a\u0006\b¿\u0001\u0010À\u0001¨\u0006Ç\u0001"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;", "Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "iconArr", "", "titleArr", "Lzfb;", "addAllTabs", "([Ljava/lang/Integer;[Ljava/lang/String;)V", "iconRes", "title", "addTab", "(ILjava/lang/String;)V", "position", "", "animatable", "selectTab", "(ILjava/lang/Boolean;)V", "selectTabWithoutNotify", "Landroid/view/ViewGroup$LayoutParams;", "params", "setLayoutParams", "(Landroid/view/ViewGroup$LayoutParams;)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$b;", "listener", "setOnTabSelectedListener", "(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$b;)V", "enabled", "setSwipeEnabled", "(Z)V", "getSelectedPosition", "()I", "Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;", "getTabItem", "(I)Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;", "getTabCount", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setTabShowBadge", "(IZ)V", "updateTab", "(IILjava/lang/String;)V", "removeTab", "(I)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onDetachedFromWindow", "()V", "isVisible", "onVisibilityAggregated", "animated", "fromState", "isIconMode", "toSearchMode", "enterSearchMode", "(ZIZI)V", "forceState", "iconMode", "toState", "exitSearchMode", "(ZZZI)V", "getCurrentSearchMode", "isInSearchMode", "()Z", "getSelectPosition", "selectColor", "setSelectColor", "unSelectColor", "setUnSelectColor", "Landroid/os/Parcelable;", "onSaveInstanceState", "()Landroid/os/Parcelable;", ICode.CALL.CALL_KEY_STATE, "onRestoreInstanceState", "(Landroid/os/Parcelable;)V", "getTabTextHeight", "Landroid/view/View;", "K", "(ILjava/lang/String;I)Landroid/view/View;", "j0", "h0", "tabView", "isSelected", "g0", "(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;Z)V", "eventPosition", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "(I)Z", "O", "(Landroid/view/MotionEvent;)I", "", "P", "(Landroid/view/MotionEvent;)F", "x", "y", "N", "(FF)Landroid/view/View;", "hostView", "a0", "(Landroid/view/View;)V", "b0", "getSavedSelectedPosition", "()F", "i0", "mWhichSearchMode", "J", "(ZI)V", "selectedPosition", "c0", "(III)V", "I", "targetWidth", "enterSearch", "F", "(IZZ)V", ES6Iterator.VALUE_PROPERTY, "progress", "selectedChild", "diff", "e0", "(FZFLandroid/view/View;I)V", "getOutIconSize", "d0", "R", "(ZFILandroid/view/View;)V", "iconHeight", "iconModeHeight", ExifInterface.LATITUDE_SOUTH, "(ZIFI)V", "Z", "getInitHeight", "getCurrentIndicatorX", "width", "Q", "(I)I", "Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;", "Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;", "tabContainer", "", "Ljava/util/List;", "tabItems", "touchSlop", "swipeEnabled", "mSelectColor", "T", "mUnSelectColor", "Lu97;", "U", "Lu97;", "liquidPressHelper", "mSelectedBackgroundColor", ExifInterface.LONGITUDE_WEST, "mSelectedBackgroundColorA", "mSelectedBackgroundColorRGB", "mItemSpace", "mHorizontalSpace", "Ljv9;", "Ljv9;", "searchModeAnimator", "f0", "isSearchModeTransitioning", "originalWidth", "singleItemWidth", "tabTextHeight", "savedItemPositions", "k0", "savedItemPositionsP", "l0", "isDragging", "m0", "dragStartX", "n0", "initialIndicatorX", "o0", "downOnCurrentItem", "Lo97;", "p0", "Lyi5;", "getLinearInterpolator", "()Lo97;", "linearInterpolator", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "LiquidSearchBarSavedState", "b", "c", "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSLiquidFootOperationBar extends OSLiquidContainerRootLayout {

    public final OSLiquidFobItemContainer tabContainer;

    public final List tabItems;

    public int selectedPosition;

    public int touchSlop;

    public boolean swipeEnabled;

    public int mSelectColor;

    public int mUnSelectColor;

    public final u97 liquidPressHelper;

    public int mSelectedBackgroundColor;

    public int mSelectedBackgroundColorA;

    public int mSelectedBackgroundColorRGB;

    public int mItemSpace;

    public int mHorizontalSpace;

    public int mWhichSearchMode;

    public jv9 searchModeAnimator;

    public boolean isSearchModeTransitioning;

    public int originalWidth;

    public int singleItemWidth;

    public float tabTextHeight;

    public List savedItemPositions;

    public List savedItemPositionsP;

    public boolean isDragging;

    public float dragStartX;

    public float initialIndicatorX;

    public boolean downOnCurrentItem;

    public final yi5 linearInterpolator;

    public interface b {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidFootOperationBar(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void D(OSLiquidFootOperationBar oSLiquidFootOperationBar) {
        y45.j(oSLiquidFootOperationBar, "this$0");
        OSLiquidFobItemContainer oSLiquidFobItemContainer = oSLiquidFootOperationBar.tabContainer;
        Boolean bool = Boolean.FALSE;
        oSLiquidFobItemContainer.setSelectedPosition(0, bool);
        oSLiquidFootOperationBar.tabContainer.updateBackgroundPosition(oSLiquidFootOperationBar.getSavedSelectedPosition(), bool);
    }

    public static final void E(OSLiquidFootOperationBar oSLiquidFootOperationBar) {
        y45.j(oSLiquidFootOperationBar, "this$0");
        OSLiquidFobItemContainer oSLiquidFobItemContainer = oSLiquidFootOperationBar.tabContainer;
        Boolean bool = Boolean.FALSE;
        oSLiquidFobItemContainer.setSelectedPosition(0, bool);
        oSLiquidFootOperationBar.tabContainer.updateBackgroundPosition(oSLiquidFootOperationBar.getSavedSelectedPosition(), bool);
    }

    public static final void G(int i, int i2, boolean z, OSLiquidFootOperationBar oSLiquidFootOperationBar, boolean z2, View view, f43 f43Var, float f, float f2) {
        y45.j(oSLiquidFootOperationBar, "this$0");
        y45.j(view, "$selectedChild");
        int i3 = i - i2;
        float fAbs = i3 == 0 ? 1.0f : Math.abs((i - f) / i3);
        if (z) {
            oSLiquidFootOperationBar.d0(f, z2, fAbs, view, i3);
        } else {
            oSLiquidFootOperationBar.e0(f, z2, fAbs, view, i3);
        }
    }

    public static final void H(int i, int i2, boolean z, OSLiquidFootOperationBar oSLiquidFootOperationBar, f43 f43Var, boolean z2, float f, float f2) {
        y45.j(oSLiquidFootOperationBar, "this$0");
        int i3 = i - i2;
        if (!z) {
            oSLiquidFootOperationBar.setVisibility(i3 > 0 ? 8 : 0);
        }
        oSLiquidFootOperationBar.setClipChildren(false);
        oSLiquidFootOperationBar.isSearchModeTransitioning = false;
    }

    public static final void L(OSLiquidFootOperationBar oSLiquidFootOperationBar, boolean z) {
        y45.j(oSLiquidFootOperationBar, "this$0");
        oSLiquidFootOperationBar.I(z);
    }

    public static final void M(OSLiquidFootOperationBar oSLiquidFootOperationBar, boolean z) {
        y45.j(oSLiquidFootOperationBar, "this$0");
        oSLiquidFootOperationBar.I(z);
        oSLiquidFootOperationBar.tabContainer.updateBackgroundPosition(oSLiquidFootOperationBar.getSavedSelectedPosition(), Boolean.FALSE);
    }

    public static final void T(OSLiquidFootOperationBar oSLiquidFootOperationBar) {
        y45.j(oSLiquidFootOperationBar, "this$0");
        oSLiquidFootOperationBar.tabContainer.updateBackgroundPosition(oSLiquidFootOperationBar.getSavedSelectedPosition(), Boolean.FALSE);
    }

    public static final void U(OSLiquidFootOperationBar oSLiquidFootOperationBar) {
        y45.j(oSLiquidFootOperationBar, "this$0");
        oSLiquidFootOperationBar.tabContainer.updateBackgroundPosition(oSLiquidFootOperationBar.getSavedSelectedPosition(), Boolean.FALSE);
    }

    public static final void W(OSLiquidFootOperationBar oSLiquidFootOperationBar) {
        y45.j(oSLiquidFootOperationBar, "this$0");
        oSLiquidFootOperationBar.h0(oSLiquidFootOperationBar.selectedPosition);
        oSLiquidFootOperationBar.tabContainer.setSelectedPosition(oSLiquidFootOperationBar.selectedPosition, Boolean.TRUE);
        oSLiquidFootOperationBar.tabContainer.updateBackgroundPosition(oSLiquidFootOperationBar.getSavedSelectedPosition(), Boolean.FALSE);
    }

    public static final void X(OSLiquidFootOperationBar oSLiquidFootOperationBar, int i, Boolean bool) {
        y45.j(oSLiquidFootOperationBar, "this$0");
        oSLiquidFootOperationBar.tabContainer.setSelectedPosition(i, bool);
    }

    public static final void Y(OSLiquidFootOperationBar oSLiquidFootOperationBar, int i, Boolean bool) {
        y45.j(oSLiquidFootOperationBar, "this$0");
        oSLiquidFootOperationBar.tabContainer.setSelectedPosition(i, bool);
    }

    public static void enterSearchMode$default(OSLiquidFootOperationBar oSLiquidFootOperationBar, boolean z, int i, boolean z2, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: enterSearchMode");
        }
        if ((i3 & 1) != 0) {
            z = true;
        }
        if ((i3 & 2) != 0) {
            i = -1;
        }
        if ((i3 & 4) != 0) {
            z2 = false;
        }
        if ((i3 & 8) != 0) {
            i2 = -1;
        }
        oSLiquidFootOperationBar.enterSearchMode(z, i, z2, i2);
    }

    public static void exitSearchMode$default(OSLiquidFootOperationBar oSLiquidFootOperationBar, boolean z, boolean z2, boolean z3, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: exitSearchMode");
        }
        if ((i2 & 1) != 0) {
            z = true;
        }
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        if ((i2 & 4) != 0) {
            z3 = false;
        }
        oSLiquidFootOperationBar.exitSearchMode(z, z2, z3, i);
    }

    public static final void f0(OSLiquidFootOperationBar oSLiquidFootOperationBar) {
        y45.j(oSLiquidFootOperationBar, "this$0");
        oSLiquidFootOperationBar.tabContainer.updateBackgroundPosition(oSLiquidFootOperationBar.getSavedSelectedPosition(), Boolean.FALSE);
    }

    private final float getCurrentIndicatorX() {
        return this.tabContainer.getCurrentBackgroundLeft();
    }

    private final int getInitHeight() {
        return (olb.g0(getContext()) && olb.h0(getContext())) ? olb.h(getContext(), 48) : olb.h(getContext(), 60);
    }

    private final o97 getLinearInterpolator() {
        return (o97) this.linearInterpolator.getValue();
    }

    private final int getOutIconSize() {
        return (olb.g0(getContext()) && olb.h0(getContext())) ? getResources().getDimensionPixelSize(R.dimen.os_pad_search_bar_out_icon_size) : getResources().getDimensionPixelSize(R.dimen.os_liquid_fob_out_icon_size);
    }

    private final float getSavedSelectedPosition() {
        int i;
        if (this.savedItemPositions.size() <= 0 || (i = this.selectedPosition) < 0 || i >= this.savedItemPositions.size()) {
            return 0.0f;
        }
        return ((Number) this.savedItemPositions.get(this.selectedPosition)).floatValue();
    }

    private final int getTabTextHeight() {
        if (olb.g0(getContext()) && olb.h0(getContext())) {
            return 24;
        }
        return olb.s0() ? 18 : 14;
    }

    public static void selectTab$default(OSLiquidFootOperationBar oSLiquidFootOperationBar, int i, Boolean bool, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: selectTab");
        }
        if ((i2 & 2) != 0) {
            bool = Boolean.TRUE;
        }
        oSLiquidFootOperationBar.selectTab(i, bool);
    }

    public static void selectTabWithoutNotify$default(OSLiquidFootOperationBar oSLiquidFootOperationBar, int i, Boolean bool, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: selectTabWithoutNotify");
        }
        if ((i2 & 2) != 0) {
            bool = Boolean.TRUE;
        }
        oSLiquidFootOperationBar.selectTabWithoutNotify(i, bool);
    }

    public final void F(final int targetWidth, final boolean enterSearch, final boolean isIconMode) {
        jv9 jv9Var = this.searchModeAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        setVisibility(0);
        this.isSearchModeTransitioning = true;
        if (olb.g0(getContext()) && olb.h0(getContext())) {
            ((c) this.tabItems.get(this.selectedPosition)).b().setVisibility(0);
        }
        if (isIconMode) {
            TextView textViewB = ((c) this.tabItems.get(this.selectedPosition)).b();
            ViewGroup.LayoutParams layoutParams = textViewB.getLayoutParams();
            layoutParams.height = enterSearch ? 0 : olb.h(getContext(), getTabTextHeight());
            textViewB.setLayoutParams(layoutParams);
        }
        setClipChildren(true);
        final int outIconSize = this.originalWidth;
        if (targetWidth == outIconSize) {
            outIconSize = isIconMode ? getOutIconSize() : this.singleItemWidth;
        }
        jv9 jv9Var2 = new jv9(new fz3());
        jv9Var2.z(new kv9());
        jv9Var2.v().i(400.0f);
        jv9Var2.v().g(0.79f);
        jv9Var2.m(outIconSize);
        final View viewC = ((c) this.tabItems.get(this.selectedPosition)).c();
        final int i = outIconSize;
        jv9Var2.b(new f43.r() {
            @Override
            public final void a(f43 f43Var, float f, float f2) {
                OSLiquidFootOperationBar.G(i, targetWidth, isIconMode, this, enterSearch, viewC, f43Var, f, f2);
            }
        });
        jv9Var2.a(new f43.q() {
            @Override
            public final void a(f43 f43Var, boolean z, float f, float f2) {
                OSLiquidFootOperationBar.H(outIconSize, targetWidth, isIconMode, this, f43Var, z, f, f2);
            }
        });
        jv9Var2.s(targetWidth);
        this.searchModeAnimator = jv9Var2;
        if (isIconMode) {
            Z(enterSearch);
        }
    }

    public final void I(boolean isIconMode) {
        F(this.originalWidth, false, isIconMode);
    }

    public final void J(boolean isIconMode, int mWhichSearchMode) {
        float f;
        float f2;
        this.mWhichSearchMode = mWhichSearchMode;
        int measuredWidth = this.originalWidth;
        if (measuredWidth <= 0) {
            measuredWidth = getMeasuredWidth();
        }
        this.originalWidth = measuredWidth;
        this.singleItemWidth = Q(measuredWidth);
        this.savedItemPositions.clear();
        this.savedItemPositionsP.clear();
        int i = 0;
        for (Object obj : ViewGroupKt.getChildren(this.tabContainer)) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            View view = (View) obj;
            c cVar = (c) this.tabItems.get(i);
            if (olb.l0()) {
                int size = this.tabItems.size() - i;
                f = (this.singleItemWidth * (size - 1)) + (this.mItemSpace * size);
            } else {
                f = (this.singleItemWidth * i) + (this.mItemSpace * i2);
            }
            cVar.g(f);
            if (olb.l0()) {
                f2 = (this.singleItemWidth * i) + (this.mItemSpace * i2);
            } else {
                int size2 = this.tabItems.size() - i;
                f2 = (this.singleItemWidth * (size2 - 1)) + (this.mItemSpace * size2);
            }
            c cVar2 = (c) this.tabItems.get(i);
            y45.h(view, "null cannot be cast to non-null type android.view.ViewGroup");
            cVar2.f(((ViewGroup) view).getChildAt(1).getMeasuredHeight());
            this.savedItemPositions.add(Float.valueOf(((c) this.tabItems.get(i)).d()));
            this.savedItemPositionsP.add(Float.valueOf(f2));
            i = i2;
        }
        F(isIconMode ? getOutIconSize() : this.singleItemWidth, true, isIconMode);
    }

    public final View K(int iconRes, String title, int position) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(((olb.g0(linearLayout.getContext()) && olb.h0(linearLayout.getContext()) && !olb.u0(linearLayout.getContext())) || olb.c0(linearLayout.getContext())) ? 0 : 1);
        linearLayout.setGravity(17);
        linearLayout.setClickable(false);
        linearLayout.setFocusable(true);
        Context context = getContext();
        y45.i(context, "context");
        OSIconTextView oSIconTextView = new OSIconTextView(context, null, 0, 0, 14, null);
        oSIconTextView.setText(iconRes);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(olb.h(oSIconTextView.getContext(), 24), olb.h(oSIconTextView.getContext(), 24));
        layoutParams.bottomMargin = (olb.g0(oSIconTextView.getContext()) && olb.h0(oSIconTextView.getContext())) ? 0 : olb.h(oSIconTextView.getContext(), 1);
        oSIconTextView.setLayoutParams(layoutParams);
        int i = R.attr.os_icon_primary;
        oSIconTextView.setTextColor(i);
        oSIconTextView.setClickable(false);
        TextView textView = new TextView(getContext());
        textView.setText(title);
        if (olb.g0(textView.getContext()) && olb.h0(textView.getContext())) {
            textView.setTextSize(1, 12.0f);
        } else if (olb.a0()) {
            textView.setTextSize(1, 8.0f);
        } else {
            textView.setTextSize(1, 10.0f);
        }
        textView.setGravity(17);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, olb.h(textView.getContext(), getTabTextHeight())));
        textView.setTextColor(i);
        textView.setMaxLines(1);
        textView.setTextAppearance(R.style.os_regular_fontweight);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout.addView(oSIconTextView);
        linearLayout.addView(textView);
        return linearLayout;
    }

    public final View N(float x, float y) {
        if (this.tabItems.isEmpty()) {
            return null;
        }
        boolean z = getLayoutDirection() == 1;
        int i = this.mHorizontalSpace;
        if (z) {
            i = -i;
        }
        View viewC = ((c) this.tabItems.get(0)).c();
        List list = this.tabItems;
        View viewC2 = ((c) list.get(list.size() - 1)).c();
        if (!z ? x - i >= viewC.getLeft() - this.mItemSpace : x - i <= viewC.getRight() + this.mItemSpace) {
            return viewC;
        }
        if (!z ? x - i <= viewC2.getRight() + this.mItemSpace : x - i >= viewC2.getLeft() - this.mItemSpace) {
            return viewC2;
        }
        Iterator it = this.tabItems.iterator();
        while (it.hasNext()) {
            View viewC3 = ((c) it.next()).c();
            int right = (z ? viewC3.getRight() + this.mItemSpace : viewC3.getLeft() - this.mItemSpace) + i;
            int left = (z ? viewC3.getLeft() - this.mItemSpace : viewC3.getRight() + this.mItemSpace) + i;
            if (z) {
                if (x <= right && x >= left) {
                    return viewC3;
                }
            } else if (x >= right && x <= left) {
                return viewC3;
            }
        }
        return null;
    }

    public final int O(MotionEvent event) {
        View viewN = N(event.getX(), event.getY());
        if (viewN == null) {
            return -1;
        }
        int i = 0;
        for (Object obj : ViewGroupKt.getChildren(this.tabContainer)) {
            if (i < 0) {
                y71.u();
            }
            if (y45.e((View) obj, viewN)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final float P(MotionEvent event) {
        View viewN = N(event.getX(), event.getY());
        if (viewN != null) {
            return viewN.getX() - this.mItemSpace;
        }
        return 0.0f;
    }

    public final int Q(int width) {
        if (this.tabItems.isEmpty()) {
            return 0;
        }
        return (int) (((width - (this.mHorizontalSpace * 2)) - (this.mItemSpace * (this.tabItems.size() + 1))) / this.tabItems.size());
    }

    public final void R(boolean enterSearch, float progress, int diff, View selectedChild) {
        if (!enterSearch) {
            float f = 100;
            float f2 = f * 0.2f;
            float f3 = f * progress;
            if (f3 <= 20 + f2 && f3 >= f2) {
                this.tabContainer.setSelectedBackgroundColor((((int) ((this.mSelectedBackgroundColorA * (progress - 0.2f)) * 5)) << 24) | this.mSelectedBackgroundColorRGB);
            } else if (f3 <= f2) {
                this.tabContainer.setSelectedBackgroundColor(0);
            } else {
                this.tabContainer.setSelectedBackgroundColor(this.mSelectedBackgroundColor);
            }
        } else if (100 * progress <= 20.0f) {
            this.tabContainer.setSelectedBackgroundColor((((int) (this.mSelectedBackgroundColorA * (1 - (progress * 5)))) << 24) | this.mSelectedBackgroundColorRGB);
        } else {
            this.tabContainer.setSelectedBackgroundColor(0);
        }
        this.tabContainer.setIndicatorWidth(this.singleItemWidth + olb.h(getContext(), 16), selectedChild.getX() - this.mItemSpace);
    }

    public final void S(boolean enterSearch, int iconHeight, float progress, int iconModeHeight) {
        int i;
        int i2 = 0;
        for (Object obj : this.tabItems) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                y71.u();
            }
            c cVar = (c) obj;
            if (i2 == this.selectedPosition) {
                ViewGroup.LayoutParams layoutParams = cVar.c().getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                layoutParams2.weight = 0.0f;
                if (enterSearch) {
                    int i4 = this.singleItemWidth;
                    i = (int) (i4 - ((i4 - iconHeight) * progress));
                } else {
                    i = (int) (iconHeight + ((this.singleItemWidth - iconHeight) * progress));
                }
                layoutParams2.width = i;
                float f = ((iconModeHeight - iconHeight) / 2.0f) - this.mHorizontalSpace;
                float fD = cVar.d() - f;
                if (enterSearch) {
                    cVar.c().setX(cVar.d() - (fD * progress));
                } else {
                    cVar.c().setX((fD * progress) + f);
                }
                cVar.c().setAlpha(1.0f);
            } else {
                ViewGroup.LayoutParams layoutParams3 = cVar.c().getLayoutParams();
                y45.h(layoutParams3, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) layoutParams3;
                layoutParams4.width = this.singleItemWidth;
                layoutParams4.weight = 0.0f;
                if (enterSearch) {
                    cVar.c().setX(cVar.d() - ((cVar.d() - this.mItemSpace) * progress));
                } else {
                    View viewC = cVar.c();
                    float fD2 = cVar.d();
                    int i5 = this.mItemSpace;
                    viewC.setX(((fD2 - i5) * progress) + i5);
                }
            }
            i2 = i3;
        }
    }

    public final boolean V(int eventPosition) {
        return eventPosition >= 0 && eventPosition < this.tabItems.size();
    }

    public final void Z(boolean enterSearch) {
        long j = enterSearch ? 0L : 100L;
        int i = 0;
        for (Object obj : this.tabItems) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            c cVar = (c) obj;
            if (i == this.selectedPosition) {
                cVar.b().animate().alpha(enterSearch ? 0.0f : 1.0f).setDuration(100L).setInterpolator(getLinearInterpolator()).setStartDelay(j).start();
            } else {
                cVar.c().animate().alpha(enterSearch ? 0.0f : 1.0f).setDuration(100L).setInterpolator(getLinearInterpolator()).setStartDelay(j).start();
            }
            i = i2;
        }
    }

    public final void a0(View hostView) {
        if (olb.P) {
            return;
        }
        this.liquidPressHelper.h(hostView, 1.05f);
    }

    public final void addAllTabs(Integer[] iconArr, String[] titleArr) {
        y45.j(iconArr, "iconArr");
        y45.j(titleArr, "titleArr");
        if (iconArr.length != 0 && iconArr.length == titleArr.length) {
            this.tabItems.clear();
            this.tabContainer.removeAllViews();
            int length = iconArr.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                iconArr[i].intValue();
                addTab(iconArr[i2].intValue(), titleArr[i2]);
                i++;
                i2++;
            }
            if (olb.g0(getContext()) && olb.h0(getContext())) {
                j0();
                h0(0);
                this.tabContainer.post(new Runnable() {
                    @Override
                    public final void run() {
                        OSLiquidFootOperationBar.D(this.b);
                    }
                });
            }
        }
    }

    public final void addTab(@StringRes int iconRes, String title) {
        float dimension;
        y45.j(title, "title");
        View viewK = K(iconRes, title, this.tabItems.size());
        this.tabItems.add(new c(iconRes, title, viewK, 0.0f, 0.0f, 0.0f, false, false, 248, null));
        this.tabContainer.addView(viewK);
        j0();
        h0(0);
        this.tabContainer.post(new Runnable() {
            @Override
            public final void run() {
                OSLiquidFootOperationBar.E(this.b);
            }
        });
        if (olb.g0(getContext()) && olb.h0(getContext())) {
            if (this.tabItems.size() == 2) {
                dimension = getContext().getResources().getDimension(R.dimen.os_pad_liquid_fob_two_item_total_width);
            } else if (this.tabItems.size() == 3) {
                dimension = getContext().getResources().getDimension(R.dimen.os_pad_liquid_fob_three_item2_total_width);
            } else {
                dimension = this.tabItems.size() == 4 ? getContext().getResources().getDimension(R.dimen.os_pad_liquid_fob_four_item_total_width) : getContext().getResources().getDimension(R.dimen.os_pad_liquid_fob_five_item_total_width);
            }
        } else if (this.tabItems.size() == 2) {
            dimension = getContext().getResources().getDimension(R.dimen.os_liquid_fob_two_item_total_width);
        } else if (this.tabItems.size() == 3) {
            dimension = getContext().getResources().getDimension(R.dimen.os_liquid_fob_three_item2_total_width);
        } else {
            dimension = this.tabItems.size() == 4 ? getContext().getResources().getDimension(R.dimen.os_liquid_fob_four_item_total_width) : getContext().getResources().getDimension(R.dimen.os_liquid_fob_five_item_total_width);
        }
        this.originalWidth = (int) dimension;
        this.tabTextHeight = olb.h(getContext(), getTabTextHeight());
    }

    public final void b0(View hostView) {
        if (olb.P) {
            return;
        }
        this.liquidPressHelper.i(hostView);
    }

    public final void c0(int fromState, int mWhichSearchMode, int selectedPosition) {
        float f;
        float f2;
        this.mWhichSearchMode = mWhichSearchMode;
        int measuredWidth = this.originalWidth;
        if (measuredWidth <= 0) {
            measuredWidth = getMeasuredWidth();
        }
        this.originalWidth = measuredWidth;
        this.singleItemWidth = Q(measuredWidth);
        jv9 jv9Var = this.searchModeAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        setVisibility(0);
        setClipChildren(true);
        int outIconSize = getOutIconSize();
        int outIconSize2 = getOutIconSize();
        View viewC = ((c) this.tabItems.get(selectedPosition)).c();
        olb.h(getContext(), 24);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = outIconSize2;
        layoutParams.width = outIconSize;
        setLayoutParams(layoutParams);
        this.savedItemPositions.clear();
        this.savedItemPositionsP.clear();
        int i = 0;
        for (Object obj : ViewGroupKt.getChildren(this.tabContainer)) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            c cVar = (c) this.tabItems.get(i);
            if (olb.l0()) {
                int size = this.tabItems.size() - i;
                f = (this.singleItemWidth * (size - 1)) + (this.mItemSpace * size);
            } else {
                f = (this.singleItemWidth * i) + (this.mItemSpace * i2);
            }
            cVar.g(f);
            if (olb.l0()) {
                f2 = (this.singleItemWidth * i) + (this.mItemSpace * i2);
            } else {
                int size2 = this.tabItems.size() - i;
                f2 = (this.singleItemWidth * (size2 - 1)) + (this.mItemSpace * size2);
            }
            this.savedItemPositions.add(Float.valueOf(((c) this.tabItems.get(i)).d()));
            this.savedItemPositionsP.add(Float.valueOf(f2));
            i = i2;
        }
        int i3 = 0;
        for (Object obj2 : this.tabItems) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                y71.u();
            }
            c cVar2 = (c) obj2;
            if (i3 == selectedPosition) {
                ViewGroup.LayoutParams layoutParams2 = cVar2.c().getLayoutParams();
                y45.h(layoutParams2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                ((LinearLayout.LayoutParams) layoutParams2).width = this.singleItemWidth;
                if (olb.l0()) {
                    cVar2.c().setX(!this.savedItemPositionsP.isEmpty() ? ((Number) this.savedItemPositionsP.get(0)).floatValue() - ((((getTabCount() - selectedPosition) - 1) * this.mHorizontalSpace) * 2) : 0.0f);
                } else {
                    cVar2.c().setX(!this.savedItemPositions.isEmpty() ? ((Number) this.savedItemPositions.get(0)).floatValue() - ((this.mHorizontalSpace * selectedPosition) * 2) : 0.0f);
                }
                TextView textViewB = cVar2.b();
                textViewB.setAlpha(0.0f);
                ViewGroup.LayoutParams layoutParams3 = textViewB.getLayoutParams();
                layoutParams3.height = 0;
                textViewB.setLayoutParams(layoutParams3);
                cVar2.c().setAlpha(1.0f);
                g0(cVar2, true);
                if (olb.g0(getContext()) && olb.h0(getContext())) {
                    textViewB.setVisibility(8);
                }
            }
            i3 = i4;
        }
        this.tabContainer.setSelectedBackgroundColor(0);
        this.tabContainer.setIndicatorWidth(this.singleItemWidth + olb.h(getContext(), 16), viewC.getX() - this.mItemSpace);
    }

    public final void d0(float value, boolean enterSearch, float progress, View selectedChild, int diff) {
        int initHeight = getInitHeight();
        int outIconSize = getOutIconSize();
        int iH = olb.h(getContext(), 24);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = (int) (enterSearch ? initHeight - ((initHeight - outIconSize) * progress) : outIconSize + ((initHeight - outIconSize) * progress));
        layoutParams.width = (int) value;
        setLayoutParams(layoutParams);
        S(enterSearch, iH, progress, outIconSize);
        R(enterSearch, progress, diff, selectedChild);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        c cVar;
        TextView textViewB;
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(event);
        if (!this.swipeEnabled) {
            return zDispatchTouchEvent;
        }
        int action = event.getAction();
        boolean z = false;
        if (action == 0) {
            ViewParent parent = getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (this.mWhichSearchMode != 2) {
                this.dragStartX = event.getX();
                this.isDragging = false;
                int iO = O(event);
                if (V(iO) && iO == this.selectedPosition) {
                    z = true;
                }
                this.downOnCurrentItem = z;
                if (z) {
                    this.initialIndicatorX = getCurrentIndicatorX();
                } else {
                    float fP = P(event);
                    this.tabContainer.animateToFinalPosition(fP);
                    this.initialIndicatorX = fP;
                }
            }
            a0(this);
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                if (this.mWhichSearchMode == 2) {
                    return true;
                }
                float x = event.getX() - this.dragStartX;
                float fAbs = Math.abs(x);
                if (!this.isDragging && fAbs > this.touchSlop) {
                    this.isDragging = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    for (c cVar2 : this.tabItems) {
                        cVar2.a().setTextColor(this.mUnSelectColor);
                        cVar2.b().setTextColor(this.mUnSelectColor);
                    }
                }
                if (this.isDragging) {
                    this.tabContainer.animateToFinalPosition(wn8.j(this.initialIndicatorX + x, 0.0f, (this.tabContainer.getMeasuredWidth() - Q(getMeasuredWidth())) - (this.mItemSpace * 2)));
                }
                return true;
            }
            if (action != 3) {
                return true;
            }
        }
        ViewParent parent3 = getParent();
        if (parent3 != null) {
            parent3.requestDisallowInterceptTouchEvent(false);
        }
        int i = this.mWhichSearchMode;
        if (i == 2) {
            exitSearchMode(true, false, true, i);
            return true;
        }
        int iO2 = O(event);
        float fP2 = P(event);
        boolean zV = V(iO2);
        if (!isInSearchMode()) {
            if (zV && this.selectedPosition != iO2) {
                this.selectedPosition = iO2;
                h0(iO2);
            } else if (this.isDragging) {
                h0(this.selectedPosition);
            }
        }
        this.tabContainer.animateToFinalPosition(fP2);
        this.tabContainer.updFinalPosition(iO2);
        if (!this.isDragging && zV && !isInSearchMode() && !this.isSearchModeTransitioning && (cVar = (c) i81.r0(this.tabItems, iO2)) != null && (textViewB = cVar.b()) != null) {
            gcc.n(textViewB, 0.0f, 1, null);
        }
        this.isDragging = false;
        b0(this);
        return true;
    }

    public final void e0(float value, boolean enterSearch, float progress, View selectedChild, int diff) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = (int) value;
        setLayoutParams(layoutParams);
        int i = 0;
        for (Object obj : this.tabItems) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            c cVar = (c) obj;
            ViewGroup.LayoutParams layoutParams2 = cVar.c().getLayoutParams();
            y45.h(layoutParams2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams2;
            layoutParams3.width = this.singleItemWidth;
            layoutParams3.weight = 0.0f;
            if (enterSearch) {
                cVar.c().setX(cVar.d() - ((cVar.d() - this.mItemSpace) * progress));
            } else {
                View viewC = cVar.c();
                float fD = cVar.d();
                int i3 = this.mItemSpace;
                viewC.setX(((fD - i3) * progress) + i3);
            }
            i = i2;
        }
        this.tabContainer.setIndicatorWidth(this.singleItemWidth + olb.h(getContext(), 16), selectedChild.getX() - this.mItemSpace);
    }

    public final void enterSearchMode(boolean animated, int fromState, final boolean isIconMode, int toSearchMode) {
        this.mWhichSearchMode = toSearchMode;
        setVisibility(0);
        Log.i("OSLiquidFootOper", "footbar enterSearchMode fromState: " + fromState + " toWhichSearchMode: " + this.mWhichSearchMode);
        if (toSearchMode == 3) {
            int i = this.mWhichSearchMode;
            if (i == -1 || i == toSearchMode || fromState == -1) {
                return;
            }
            if (animated) {
                this.isSearchModeTransitioning = true;
            }
            post(new Runnable() {
                @Override
                public final void run() {
                    OSLiquidFootOperationBar.L(this.b, isIconMode);
                }
            });
            return;
        }
        if (toSearchMode == 4) {
            setVisibility(8);
            return;
        }
        if (toSearchMode != 5) {
            return;
        }
        if (fromState == -1) {
            c0(fromState, this.mWhichSearchMode, getSelectedPosition());
            return;
        }
        if (animated) {
            this.isSearchModeTransitioning = true;
        }
        J(isIconMode, this.mWhichSearchMode);
    }

    public final void exitSearchMode(boolean animated, boolean forceState, final boolean iconMode, int toState) {
        int i = this.mWhichSearchMode;
        int size = this.savedItemPositions.size();
        int i2 = this.selectedPosition;
        Log.i("OSLiquidFootOper", "exitSearchMode  iconMode " + iconMode + "   tostate: " + toState + " mFromSearchMode:" + i + "  tabLeft:" + ((i2 < 0 || i2 >= size) ? "n/a" : this.savedItemPositions.get(i2)));
        int i3 = this.mWhichSearchMode;
        if (i3 == -1 || i3 == toState) {
            return;
        }
        setVisibility(0);
        if (animated) {
            this.isSearchModeTransitioning = true;
            post(new Runnable() {
                @Override
                public final void run() {
                    OSLiquidFootOperationBar.M(this.b, iconMode);
                }
            });
        }
        this.mWhichSearchMode = -1;
    }

    public final void g0(c tabView, boolean isSelected) {
        OSIconTextView oSIconTextViewA = tabView.a();
        TextView textViewB = tabView.b();
        gcc.r(textViewB);
        if (isSelected) {
            textViewB.setTextColor(this.mSelectColor);
            oSIconTextViewA.setTextColor(this.mSelectColor);
            textViewB.setTextAppearance(R.style.os_semibold_font);
        } else {
            textViewB.setTextColor(this.mUnSelectColor);
            oSIconTextViewA.setTextColor(this.mUnSelectColor);
            textViewB.setTextAppearance(R.style.os_regular_fontweight);
        }
    }

    public final int getMWhichSearchMode() {
        return this.mWhichSearchMode;
    }

    public final int getSelectedPosition() {
        return this.selectedPosition;
    }

    public final int getSelectedPosition() {
        return this.selectedPosition;
    }

    public final int getTabCount() {
        return this.tabItems.size();
    }

    public final c getTabItem(int position) {
        if (position < 0 || position >= this.tabItems.size()) {
            return null;
        }
        return (c) this.tabItems.get(position);
    }

    public final void h0(int position) {
        int i = 0;
        for (Object obj : this.tabItems) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            g0((c) obj, i == position);
            i = i2;
        }
    }

    public final void i0() {
        boolean zH0 = olb.h0(getContext());
        boolean zU0 = olb.u0(getContext());
        boolean zC0 = olb.c0(getContext());
        for (c cVar : this.tabItems) {
            View viewC = cVar.c();
            y45.h(viewC, "null cannot be cast to non-null type android.widget.LinearLayout");
            LinearLayout linearLayout = (LinearLayout) viewC;
            int i = ((olb.g0(getContext()) && zH0 && !zU0) || zC0) ? 0 : 1;
            if (linearLayout.getOrientation() != i) {
                linearLayout.setOrientation(i);
            }
            OSIconTextView oSIconTextViewA = cVar.a();
            ViewGroup.LayoutParams layoutParams = oSIconTextViewA.getLayoutParams();
            y45.h(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            if (i == 0) {
                layoutParams2.setMarginEnd(olb.h(getContext(), 4));
                layoutParams2.bottomMargin = 0;
            } else {
                layoutParams2.setMarginEnd(0);
                layoutParams2.bottomMargin = olb.h(getContext(), 1);
            }
            oSIconTextViewA.setLayoutParams(layoutParams2);
            TextView textViewB = cVar.b();
            if (zH0) {
                textViewB.setTextSize(1, 12.0f);
            } else if (olb.a0()) {
                textViewB.setTextSize(1, 8.0f);
            } else {
                textViewB.setTextSize(1, 10.0f);
            }
            ViewGroup.LayoutParams layoutParams3 = textViewB.getLayoutParams();
            layoutParams3.height = olb.h(getContext(), getTabTextHeight());
            textViewB.setLayoutParams(layoutParams3);
        }
        this.tabTextHeight = olb.h(getContext(), getTabTextHeight());
    }

    public final boolean isInSearchMode() {
        int i = this.mWhichSearchMode;
        return i == 1 || i == 5;
    }

    public final void j0() {
        float size = 1.0f / this.tabItems.size();
        int i = 0;
        for (Object obj : ViewGroupKt.getChildren(this.tabContainer)) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            View view = (View) obj;
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            y45.h(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            layoutParams2.weight = size;
            layoutParams2.width = 0;
            if (this.tabContainer.getChildCount() <= 1) {
                layoutParams2.setMarginStart(this.mItemSpace);
                layoutParams2.setMarginEnd(this.mItemSpace);
            } else if (i != this.tabContainer.getChildCount() - 1) {
                layoutParams2.setMarginStart(this.mItemSpace);
                layoutParams2.setMarginEnd(0);
            } else {
                layoutParams2.setMarginEnd(this.mItemSpace);
                layoutParams2.setMarginStart(this.mItemSpace);
            }
            view.setLayoutParams(layoutParams2);
            i = i2;
        }
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        y45.j(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        if (olb.g0(getContext())) {
            i0();
            j0();
            requestLayout();
            post(new Runnable() {
                @Override
                public final void run() {
                    OSLiquidFootOperationBar.T(this.b);
                }
            });
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.liquidPressHelper.g();
        jv9 jv9Var = this.searchModeAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        this.searchModeAnimator = null;
        this.isSearchModeTransitioning = false;
        for (c cVar : this.tabItems) {
            cVar.c().animate().cancel();
            cVar.b().animate().cancel();
        }
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof LiquidSearchBarSavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        LiquidSearchBarSavedState liquidSearchBarSavedState = (LiquidSearchBarSavedState) state;
        super.onRestoreInstanceState(liquidSearchBarSavedState.getSuperState());
        this.mWhichSearchMode = liquidSearchBarSavedState.getSearchMode();
        this.originalWidth = liquidSearchBarSavedState.getOriginWidth();
        this.singleItemWidth = liquidSearchBarSavedState.getSingleItemWidth();
        if (liquidSearchBarSavedState.getItemPositions().length == 0) {
            return;
        }
        this.savedItemPositions.clear();
        this.savedItemPositionsP.clear();
        this.savedItemPositions.addAll(hi.Z0(liquidSearchBarSavedState.getItemPositions()));
        this.savedItemPositionsP.addAll(hi.Z0(liquidSearchBarSavedState.getItemPositionsP()));
        float[] itemPositions = liquidSearchBarSavedState.getItemPositions();
        int length = itemPositions.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            float f = itemPositions[i];
            int i3 = i2 + 1;
            if (i2 < this.tabItems.size()) {
                if ((liquidSearchBarSavedState.getRtl() == 1) != olb.l0()) {
                    ((c) this.tabItems.get(i2)).g(liquidSearchBarSavedState.getItemPositionsP()[i2]);
                    liquidSearchBarSavedState.getItemPositionsP()[i2] = liquidSearchBarSavedState.getItemPositions()[i2];
                    liquidSearchBarSavedState.getItemPositions()[i2] = ((c) this.tabItems.get(i2)).d();
                } else {
                    ((c) this.tabItems.get(i2)).g(liquidSearchBarSavedState.getItemPositions()[i2]);
                }
                ((c) this.tabItems.get(i2)).e(olb.l0());
                ((c) this.tabItems.get(i2)).f(liquidSearchBarSavedState.getTextHeight());
            }
            i++;
            i2 = i3;
        }
    }

    @Override
    public Parcelable onSaveInstanceState() {
        LiquidSearchBarSavedState liquidSearchBarSavedState = new LiquidSearchBarSavedState(super.onSaveInstanceState());
        liquidSearchBarSavedState.setSearchMode(this.mWhichSearchMode);
        liquidSearchBarSavedState.setSelectedPosition(this.selectedPosition);
        liquidSearchBarSavedState.setOriginWidth(this.originalWidth);
        liquidSearchBarSavedState.setSingleItemWidth(this.singleItemWidth);
        liquidSearchBarSavedState.setItemPositions(i81.Y0(this.savedItemPositions));
        liquidSearchBarSavedState.setItemPositionsP(i81.Y0(this.savedItemPositionsP));
        liquidSearchBarSavedState.setRtl(olb.l0() ? 1 : 0);
        return liquidSearchBarSavedState;
    }

    @Override
    public void onVisibilityAggregated(boolean isVisible) {
        super.onVisibilityAggregated(isVisible);
        if (isVisible) {
            this.tabContainer.post(new Runnable() {
                @Override
                public final void run() {
                    OSLiquidFootOperationBar.U(this.b);
                }
            });
        }
    }

    public final void removeTab(int position) {
        if (position < 0 || position >= this.tabItems.size() || this.tabItems.size() <= 1) {
            return;
        }
        this.tabContainer.removeView(((c) this.tabItems.get(position)).c());
        this.tabItems.remove(position);
        j0();
        int i = this.selectedPosition;
        if (position == i || i >= this.tabItems.size()) {
            this.selectedPosition = 0;
        } else {
            int i2 = this.selectedPosition;
            if (position < i2) {
                this.selectedPosition = i2 - 1;
            }
        }
        post(new Runnable() {
            @Override
            public final void run() {
                OSLiquidFootOperationBar.W(this.b);
            }
        });
    }

    public final void selectTab(final int position, final Boolean animatable) {
        if (position < 0 || position >= this.tabItems.size()) {
            return;
        }
        this.selectedPosition = position;
        h0(position);
        this.tabContainer.post(new Runnable() {
            @Override
            public final void run() {
                OSLiquidFootOperationBar.X(this.b, position, animatable);
            }
        });
    }

    public final void selectTabWithoutNotify(final int position, final Boolean animatable) {
        if (position < 0 || position >= this.tabItems.size()) {
            return;
        }
        h0(position);
        this.tabContainer.post(new Runnable() {
            @Override
            public final void run() {
                OSLiquidFootOperationBar.Y(this.b, position, animatable);
            }
        });
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams params) {
        if (params instanceof ViewGroup.MarginLayoutParams) {
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.os_space250);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) params;
            if (marginLayoutParams.getMarginStart() < dimensionPixelSize) {
                marginLayoutParams.setMarginStart(dimensionPixelSize);
            }
            if (marginLayoutParams.getMarginEnd() < dimensionPixelSize) {
                marginLayoutParams.setMarginEnd(dimensionPixelSize);
            }
        }
        super.setLayoutParams(params);
    }

    public final void setOnTabSelectedListener(b listener) {
        y45.j(listener, "listener");
        this.tabContainer.setBgAnimEndListener(listener);
    }

    public final void setSelectColor(int selectColor) {
        if (this.mSelectColor != selectColor) {
            this.mSelectColor = selectColor;
            this.tabContainer.setSelectColor(selectColor);
            h0(this.selectedPosition);
        }
    }

    public final void setSwipeEnabled(boolean enabled) {
        this.swipeEnabled = enabled;
    }

    public final void setTabShowBadge(int position, boolean show) {
        this.tabContainer.setItemShowBadge(position, show);
    }

    public final void setUnSelectColor(int unSelectColor) {
        if (this.mUnSelectColor != unSelectColor) {
            this.mUnSelectColor = unSelectColor;
            h0(this.selectedPosition);
        }
    }

    public final void updateTab(int position, @StringRes int iconRes, String title) {
        y45.j(title, "title");
        if (position < 0 || position >= this.tabItems.size()) {
            return;
        }
        View viewC = ((c) this.tabItems.get(position)).c();
        y45.h(viewC, "null cannot be cast to non-null type android.widget.LinearLayout");
        LinearLayout linearLayout = (LinearLayout) viewC;
        View childAt = linearLayout.getChildAt(0);
        y45.h(childAt, "null cannot be cast to non-null type com.transsion.widgetslib.widget.OSIconTextView");
        View childAt2 = linearLayout.getChildAt(1);
        y45.h(childAt2, "null cannot be cast to non-null type android.widget.TextView");
        ((OSIconTextView) childAt).setText(iconRes);
        ((TextView) childAt2).setText(title);
        if (position == this.selectedPosition) {
            g0((c) this.tabItems.get(position), true);
        }
        this.tabContainer.post(new Runnable() {
            @Override
            public final void run() {
                OSLiquidFootOperationBar.f0(this.b);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidFootOperationBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0014\n\u0002\b\u0012\b\u0002\u0018\u0000 -2\u00020\u0001:\u0001.B\u0013\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rR\"\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0014\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\"\u0010\u0017\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u000f\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\"\u0010\u001a\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u000f\u001a\u0004\b\u001b\u0010\u0011\"\u0004\b\u001c\u0010\u0013R\"\u0010\u001e\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001f\u001a\u0004\b%\u0010!\"\u0004\b&\u0010#R\"\u0010'\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u000f\u001a\u0004\b(\u0010\u0011\"\u0004\b)\u0010\u0013R\"\u0010*\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u000f\u001a\u0004\b+\u0010\u0011\"\u0004\b,\u0010\u0013¨\u0006/"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$LiquidSearchBarSavedState;", "Landroid/view/AbsSavedState;", "Landroid/os/Parcelable;", "superState", MethodDecl.initName, "(Landroid/os/Parcelable;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "searchMode", "I", "getSearchMode", "()I", "setSearchMode", "(I)V", "selectedPosition", "getSelectedPosition", "setSelectedPosition", "originWidth", "getOriginWidth", "setOriginWidth", "singleItemWidth", "getSingleItemWidth", "setSingleItemWidth", "", "itemPositions", "[F", "getItemPositions", "()[F", "setItemPositions", "([F)V", "itemPositionsP", "getItemPositionsP", "setItemPositionsP", "textHeight", "getTextHeight", "setTextHeight", "rtl", "getRtl", "setRtl", "CREATOR", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class LiquidSearchBarSavedState extends AbsSavedState {

        public static final Companion INSTANCE = new Companion(null);
        private float[] itemPositions;
        private float[] itemPositionsP;
        private int originWidth;
        private int rtl;
        private int searchMode;
        private int selectedPosition;
        private int singleItemWidth;
        private int textHeight;

        public static final class Companion implements Parcelable.Creator {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Override
            public LiquidSearchBarSavedState createFromParcel(Parcel parcel) {
                y45.j(parcel, "parcel");
                return new LiquidSearchBarSavedState(parcel);
            }

            @Override
            public LiquidSearchBarSavedState[] newArray(int i) {
                return new LiquidSearchBarSavedState[i];
            }

            public Companion() {
            }
        }

        public LiquidSearchBarSavedState(Parcelable parcelable) {
            super(parcelable);
            this.itemPositions = new float[0];
            this.itemPositionsP = new float[0];
        }

        public final float[] getItemPositions() {
            return this.itemPositions;
        }

        public final float[] getItemPositionsP() {
            return this.itemPositionsP;
        }

        public final int getOriginWidth() {
            return this.originWidth;
        }

        public final int getRtl() {
            return this.rtl;
        }

        public final int getSearchMode() {
            return this.searchMode;
        }

        public final int getSelectedPosition() {
            return this.selectedPosition;
        }

        public final int getSingleItemWidth() {
            return this.singleItemWidth;
        }

        public final int getTextHeight() {
            return this.textHeight;
        }

        public final void setItemPositions(float[] fArr) {
            y45.j(fArr, "<set-?>");
            this.itemPositions = fArr;
        }

        public final void setItemPositionsP(float[] fArr) {
            y45.j(fArr, "<set-?>");
            this.itemPositionsP = fArr;
        }

        public final void setOriginWidth(int i) {
            this.originWidth = i;
        }

        public final void setRtl(int i) {
            this.rtl = i;
        }

        public final void setSearchMode(int i) {
            this.searchMode = i;
        }

        public final void setSelectedPosition(int i) {
            this.selectedPosition = i;
        }

        public final void setSingleItemWidth(int i) {
            this.singleItemWidth = i;
        }

        public final void setTextHeight(int i) {
            this.textHeight = i;
        }

        @Override
        public void writeToParcel(Parcel parcel, int flags) {
            y45.j(parcel, "parcel");
            super.writeToParcel(parcel, flags);
            parcel.writeInt(this.searchMode);
            parcel.writeInt(this.selectedPosition);
            parcel.writeInt(this.originWidth);
            parcel.writeInt(this.singleItemWidth);
            parcel.writeFloatArray(this.itemPositions);
            parcel.writeFloatArray(this.itemPositionsP);
            parcel.writeInt(this.textHeight);
            parcel.writeInt(this.rtl);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LiquidSearchBarSavedState(Parcel parcel) {
            super(parcel);
            y45.j(parcel, "parcel");
            this.itemPositions = new float[0];
            this.itemPositionsP = new float[0];
            this.searchMode = parcel.readInt();
            this.selectedPosition = parcel.readInt();
            this.originWidth = parcel.readInt();
            this.singleItemWidth = parcel.readInt();
            float[] fArrCreateFloatArray = parcel.createFloatArray();
            this.itemPositions = fArrCreateFloatArray == null ? new float[0] : fArrCreateFloatArray;
            float[] fArrCreateFloatArray2 = parcel.createFloatArray();
            this.itemPositionsP = fArrCreateFloatArray2 == null ? new float[0] : fArrCreateFloatArray2;
            this.textHeight = parcel.readInt();
            this.rtl = parcel.readInt();
        }
    }

    public OSLiquidFootOperationBar(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLiquidFootOperationBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.tabItems = new ArrayList();
        this.swipeEnabled = true;
        this.liquidPressHelper = new u97();
        this.mWhichSearchMode = -1;
        this.savedItemPositions = new ArrayList();
        this.savedItemPositionsP = new ArrayList();
        int[] iArr = R.styleable.OSLiquidFootOperationBar;
        y45.i(iArr, "OSLiquidFootOperationBar");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        this.mSelectColor = typedArrayObtainStyledAttributes.getColor(R.styleable.OSLiquidFootOperationBar_os_liquid_fob_select_color, olb.z(context));
        this.mUnSelectColor = typedArrayObtainStyledAttributes.getColor(R.styleable.OSLiquidFootOperationBar_os_liquid_fob_un_select_color, olb.l(R.attr.os_liq_opt_unselect_color_attr, context.getColor(R.color.os_opt_icon_primary_color), context));
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.OSLiquidFootOperationBar_os_liquid_fob_indicator_color, olb.l(R.attr.os_opacityfill_weaker, context.getColor(R.color.os_opacityfill_weaker_hios), context));
        this.mSelectedBackgroundColor = color;
        this.mSelectedBackgroundColorA = Color.alpha(color);
        this.mSelectedBackgroundColorRGB = this.mSelectedBackgroundColor & 16777215;
        this.mItemSpace = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSLiquidFootOperationBar_os_liquid_fob_item_space, context.getResources().getDimensionPixelSize(R.dimen.os_space100));
        this.mHorizontalSpace = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSLiquidFootOperationBar_os_liquid_fob_horizontal_space, context.getResources().getDimensionPixelSize(R.dimen.os_space050));
        this.selectedPosition = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSLiquidFootOperationBar_os_liquid_fob_horizontal_default_select_position, 0);
        typedArrayObtainStyledAttributes.recycle();
        int[] iArr2 = com.transsion.widgetslib.R.styleable.OSLiquidContainer;
        y45.i(iArr2, "OSLiquidContainer");
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, 0, 0);
        y45.i(typedArrayObtainStyledAttributes2, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        if (!typedArrayObtainStyledAttributes2.hasValue(R.styleable.OSLiquidContainer_os_liquid_mixlevel) && Build.VERSION.SDK_INT >= 31) {
            setMixLevel(2);
        }
        typedArrayObtainStyledAttributes2.recycle();
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        OSLiquidFobItemContainer oSLiquidFobItemContainer = new OSLiquidFobItemContainer(context, null, 0, 6, null);
        oSLiquidFobItemContainer.setOrientation(0);
        oSLiquidFobItemContainer.setGravity(17);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.setMarginStart(this.mHorizontalSpace);
        layoutParams.setMarginEnd(this.mHorizontalSpace);
        oSLiquidFobItemContainer.setLayoutParams(layoutParams);
        oSLiquidFobItemContainer.setSelectedBackgroundColor(this.mSelectedBackgroundColor);
        oSLiquidFobItemContainer.setSelectColor(this.mSelectColor);
        this.tabContainer = oSLiquidFobItemContainer;
        addView(oSLiquidFobItemContainer);
        setElasticTypeConfig(ElasticTypeConfig.FOOT_OPERATION_BAR);
        setLightTypeConfig(LightTypeConfig.FOOT_OPERATION_BAR_AUTO);
        setScaleRatio(1.02f);
        detachPressAnim();
        setClipChildren(false);
        this.linearInterpolator = kotlin.b.a(new c74() {
            @Override
            public final o97 invoke() {
                return new o97();
            }
        });
    }

    public static final class c {
        public final int a;
        public final String b;
        public final View c;
        public float d;
        public float e;
        public float f;
        public boolean g;
        public boolean h;

        public c(int i, String str, View view, float f, float f2, float f3, boolean z, boolean z2) {
            y45.j(str, "title");
            y45.j(view, "view");
            this.a = i;
            this.b = str;
            this.c = view;
            this.d = f;
            this.e = f2;
            this.f = f3;
            this.g = z;
            this.h = z2;
        }

        public final OSIconTextView a() {
            View view = this.c;
            y45.h(view, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt = ((ViewGroup) view).getChildAt(0);
            y45.h(childAt, "null cannot be cast to non-null type com.transsion.widgetslib.widget.OSIconTextView");
            return (OSIconTextView) childAt;
        }

        public final TextView b() {
            View view = this.c;
            y45.h(view, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt = ((ViewGroup) view).getChildAt(1);
            y45.h(childAt, "null cannot be cast to non-null type android.widget.TextView");
            return (TextView) childAt;
        }

        public final View c() {
            return this.c;
        }

        public final float d() {
            return this.d;
        }

        public final void e(boolean z) {
            this.g = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.a == cVar.a && y45.e(this.b, cVar.b) && y45.e(this.c, cVar.c) && Float.compare(this.d, cVar.d) == 0 && Float.compare(this.e, cVar.e) == 0 && Float.compare(this.f, cVar.f) == 0 && this.g == cVar.g && this.h == cVar.h;
        }

        public final void f(float f) {
            this.f = f;
        }

        public final void g(float f) {
            this.d = f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v13, types: [int] */
        /* JADX WARN: Type inference failed for: r0v15, types: [int] */
        /* JADX WARN: Type inference failed for: r1v11, types: [int] */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [int] */
        /* JADX WARN: Type inference failed for: r2v2 */
        public int hashCode() {
            int iHashCode = ((((((((((Integer.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + Float.hashCode(this.d)) * 31) + Float.hashCode(this.e)) * 31) + Float.hashCode(this.f)) * 31;
            boolean z = this.g;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            int i = (iHashCode + r1) * 31;
            boolean z2 = this.h;
            return i + (z2 ? 1 : z2);
        }

        public String toString() {
            return "TabItem(iconRes=" + this.a + ", title=" + this.b + ", view=" + this.c + ", x=" + this.d + ", px=" + this.e + ", textHeight=" + this.f + ", mRtl=" + this.g + ", showBadgeView=" + this.h + ")";
        }

        public c(int i, String str, View view, float f, float f2, float f3, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, str, view, (i2 & 8) != 0 ? 0.0f : f, (i2 & 16) != 0 ? 0.0f : f2, (i2 & 32) != 0 ? 0.0f : f3, (i2 & 64) != 0 ? false : z, (i2 & 128) != 0 ? false : z2);
        }
    }
}
