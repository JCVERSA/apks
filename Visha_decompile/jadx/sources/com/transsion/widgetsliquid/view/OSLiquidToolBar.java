package com.transsion.widgetsliquid.view;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BlendMode;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.view.OSCheckBox;
import com.transsion.widgetslib.view.liquid.effect.OSLiquidContainer;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.transsion.widgetslib.widget.OSPopupWindow;
import com.transsion.widgetslib.widget.OsPressSmoothCornerDrawable;
import com.transsion.widgetsliquid.R;
import com.transsion.widgetsliquid.effect.OSLiquidContainerRootLayout;
import com.transsion.widgetsliquid.effect.OSMaskConstraintLayout;
import com.transsion.widgetsliquid.view.OSLiquidToolBar;
import defpackage.c74;
import defpackage.e74;
import defpackage.i81;
import defpackage.olb;
import defpackage.qb9;
import defpackage.u97;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0090\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 ý\u00012\u00020\u0001:\bþ\u0001ÿ\u0001À\u0001Ä\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\fJ\u000f\u0010\u0018\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001a\u0010\u0019J\u0017\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\u001fH\u0002¢\u0006\u0004\b \u0010!J\u0011\u0010#\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0004\b#\u0010$J\u0015\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001fH\u0002¢\u0006\u0004\b%\u0010!J\u000f\u0010&\u001a\u00020\nH\u0002¢\u0006\u0004\b&\u0010\u0019J\u001b\u0010'\u001a\u0004\u0018\u00010\u001b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b'\u0010(J;\u0010/\u001a\u00020.2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010)\u001a\u0004\u0018\u00010\u001b2\u0006\u0010*\u001a\u00020\u00062\u000e\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010,0+H\u0002¢\u0006\u0004\b/\u00100J\u0019\u00103\u001a\u00020\n2\b\u00102\u001a\u0004\u0018\u000101H\u0002¢\u0006\u0004\b3\u00104J\u001f\u00107\u001a\u00020\n2\u0006\u00105\u001a\u00020\u001b2\u0006\u00106\u001a\u00020\u0006H\u0002¢\u0006\u0004\b7\u00108J\u0017\u00109\u001a\u00020\n2\u0006\u00105\u001a\u00020\u001bH\u0002¢\u0006\u0004\b9\u0010:J\u0019\u0010<\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b<\u0010\u001eJ\u001f\u0010>\u001a\u00020\n2\u0006\u0010=\u001a\u00020\u001b2\u0006\u00106\u001a\u00020\u0006H\u0002¢\u0006\u0004\b>\u00108J\u0017\u0010?\u001a\u00020\n2\u0006\u0010=\u001a\u00020\u001bH\u0002¢\u0006\u0004\b?\u0010:J'\u0010A\u001a\u00020\n2\u0006\u0010=\u001a\u00020\u001b2\u0006\u0010@\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u0006H\u0002¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\nH\u0002¢\u0006\u0004\bC\u0010\u0019J\u0019\u0010F\u001a\u00020\n2\b\u0010E\u001a\u0004\u0018\u00010DH\u0002¢\u0006\u0004\bF\u0010GJ\u000f\u0010I\u001a\u00020HH\u0002¢\u0006\u0004\bI\u0010JJ/\u0010O\u001a\u00020\n2\u0006\u0010K\u001a\u00020H2\u0006\u0010L\u001a\u00020\u00062\u0006\u0010M\u001a\u00020\u00062\u0006\u0010N\u001a\u00020\u0006H\u0002¢\u0006\u0004\bO\u0010PJ7\u0010X\u001a\u00020\n2\u0006\u0010R\u001a\u00020Q2\u0006\u0010T\u001a\u00020S2\u0006\u0010U\u001a\u00020S2\u0006\u0010V\u001a\u00020\u000f2\u0006\u0010W\u001a\u00020\u0006H\u0002¢\u0006\u0004\bX\u0010YJ\u0015\u0010\\\u001a\u00020\n2\u0006\u0010[\u001a\u00020Z¢\u0006\u0004\b\\\u0010]J\u0017\u0010_\u001a\u00020\n2\u0006\u0010^\u001a\u00020\u0006H\u0007¢\u0006\u0004\b_\u0010`J\r\u0010a\u001a\u00020\n¢\u0006\u0004\ba\u0010\u0019J\r\u0010c\u001a\u00020b¢\u0006\u0004\bc\u0010dJ\u0015\u0010g\u001a\u00020\n2\u0006\u0010f\u001a\u00020e¢\u0006\u0004\bg\u0010hJ\r\u0010i\u001a\u00020\n¢\u0006\u0004\bi\u0010\u0019J\r\u0010j\u001a\u00020\n¢\u0006\u0004\bj\u0010\u0019J\u000f\u0010k\u001a\u0004\u0018\u00010b¢\u0006\u0004\bk\u0010dJ\u000f\u0010m\u001a\u0004\u0018\u00010l¢\u0006\u0004\bm\u0010nJ\u000f\u0010p\u001a\u0004\u0018\u00010o¢\u0006\u0004\bp\u0010qJ\u000f\u0010r\u001a\u0004\u0018\u00010D¢\u0006\u0004\br\u0010sJ\u0017\u0010t\u001a\u0004\u0018\u00010\u001b2\u0006\u0010@\u001a\u00020\u0006¢\u0006\u0004\bt\u0010uJ\r\u0010v\u001a\u00020\u0006¢\u0006\u0004\bv\u0010\u000eJ\u000f\u0010x\u001a\u0004\u0018\u00010w¢\u0006\u0004\bx\u0010yJ\u0015\u0010{\u001a\u00020\n2\u0006\u0010z\u001a\u00020\u0006¢\u0006\u0004\b{\u0010`J\u000f\u0010}\u001a\u0004\u0018\u00010|¢\u0006\u0004\b}\u0010~J\u001d\u0010\u0081\u0001\u001a\u00020\n2\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007fH\u0016¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u001d\u0010\u0084\u0001\u001a\u00020\n2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u007fH\u0016¢\u0006\u0006\b\u0084\u0001\u0010\u0082\u0001J%\u0010\u0086\u0001\u001a\u00020\n2\b\u0010E\u001a\u0004\u0018\u00010,2\t\b\u0001\u0010\u0085\u0001\u001a\u00020\u0006¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001J\u001a\u0010\u0086\u0001\u001a\u00020\n2\b\u0010E\u001a\u0004\u0018\u00010,¢\u0006\u0006\b\u0086\u0001\u0010\u0088\u0001J\u001b\u0010\u008a\u0001\u001a\u00020\n2\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010,¢\u0006\u0006\b\u008a\u0001\u0010\u0088\u0001J\u0018\u0010\u008c\u0001\u001a\u00020\n2\u0007\u0010\u008b\u0001\u001a\u00020\u0006¢\u0006\u0005\b\u008c\u0001\u0010`J\u001a\u0010\u008d\u0001\u001a\u00020\n2\b\u0010E\u001a\u0004\u0018\u00010,¢\u0006\u0006\b\u008d\u0001\u0010\u0088\u0001J\u000f\u0010\u008e\u0001\u001a\u00020\n¢\u0006\u0005\b\u008e\u0001\u0010\u0019J\u000f\u0010\u008f\u0001\u001a\u00020\n¢\u0006\u0005\b\u008f\u0001\u0010\u0019J%\u0010\u0091\u0001\u001a\u00020\n2\u0013\u0010\u0090\u0001\u001a\n\u0012\u0006\b\u0001\u0012\u00020,0+\"\u00020,¢\u0006\u0006\b\u0091\u0001\u0010\u0092\u0001J6\u0010\u0091\u0001\u001a\u00020\n2\u000f\u0010\u0090\u0001\u001a\n\u0012\u0006\b\u0001\u0012\u00020,0+2\u0013\b\u0002\u0010\u0093\u0001\u001a\f\u0012\u0006\b\u0001\u0012\u00020,\u0018\u00010+¢\u0006\u0006\b\u0091\u0001\u0010\u0094\u0001J\u000f\u0010\u0095\u0001\u001a\u00020\n¢\u0006\u0005\b\u0095\u0001\u0010\u0019J\u001b\u0010\u0097\u0001\u001a\u00020\n2\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0006¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001J\u001b\u0010\u0099\u0001\u001a\u00020\n2\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0006¢\u0006\u0006\b\u0099\u0001\u0010\u0098\u0001J*\u0010\u009d\u0001\u001a\u00020\n2\n\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u009a\u00012\n\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009a\u0001H\u0007¢\u0006\u0006\b\u009d\u0001\u0010\u009e\u0001J&\u0010¡\u0001\u001a\u00020\n2\u0014\u0010 \u0001\u001a\u000f\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\n0\u009f\u0001¢\u0006\u0006\b¡\u0001\u0010¢\u0001J\u001c\u0010¥\u0001\u001a\u00020\n2\n\u0010¤\u0001\u001a\u0005\u0018\u00010£\u0001¢\u0006\u0006\b¥\u0001\u0010¦\u0001J\u001c\u0010¨\u0001\u001a\u00020\n2\n\u0010 \u0001\u001a\u0005\u0018\u00010§\u0001¢\u0006\u0006\b¨\u0001\u0010©\u0001J\u001c\u0010ª\u0001\u001a\u00020\n2\n\u0010 \u0001\u001a\u0005\u0018\u00010§\u0001¢\u0006\u0006\bª\u0001\u0010©\u0001J\u0010\u0010«\u0001\u001a\u00020Q¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u0010\u0010\u00ad\u0001\u001a\u00020Q¢\u0006\u0006\b\u00ad\u0001\u0010¬\u0001J\u001b\u0010¯\u0001\u001a\u00020\n2\u0007\u0010®\u0001\u001a\u00020\u000fH\u0007¢\u0006\u0006\b¯\u0001\u0010°\u0001J\u001b\u0010±\u0001\u001a\u00020\n2\u0007\u0010®\u0001\u001a\u00020\u000fH\u0007¢\u0006\u0006\b±\u0001\u0010°\u0001J\u001b\u0010³\u0001\u001a\u00020\n2\u0007\u0010²\u0001\u001a\u00020\u000fH\u0007¢\u0006\u0006\b³\u0001\u0010°\u0001J\u0019\u0010µ\u0001\u001a\u00020\n2\u0007\u0010´\u0001\u001a\u00020\u000f¢\u0006\u0006\bµ\u0001\u0010°\u0001J\"\u0010¸\u0001\u001a\u00020\n2\u0007\u0010¶\u0001\u001a\u00020\u000f2\u0007\u0010·\u0001\u001a\u00020\u0006¢\u0006\u0006\b¸\u0001\u0010¹\u0001J\u001b\u0010»\u0001\u001a\u00020\n2\u0007\u0010º\u0001\u001a\u00020\u000fH\u0007¢\u0006\u0006\b»\u0001\u0010°\u0001J\u0011\u0010¼\u0001\u001a\u00020\nH\u0014¢\u0006\u0005\b¼\u0001\u0010\u0019J\u001c\u0010¾\u0001\u001a\u00020\n2\n\u0010 \u0001\u001a\u0005\u0018\u00010½\u0001¢\u0006\u0006\b¾\u0001\u0010¿\u0001R\u001f\u0010Ã\u0001\u001a\u00020b8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0006\bÀ\u0001\u0010Á\u0001\u001a\u0005\bÂ\u0001\u0010dR \u0010Æ\u0001\u001a\u00020Q8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÄ\u0001\u0010Á\u0001\u001a\u0006\bÅ\u0001\u0010¬\u0001R \u0010É\u0001\u001a\u00020Q8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÇ\u0001\u0010Á\u0001\u001a\u0006\bÈ\u0001\u0010¬\u0001R\u001f\u0010Ì\u0001\u001a\u00020o8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0006\bÊ\u0001\u0010Á\u0001\u001a\u0005\bË\u0001\u0010qR\u001f\u0010Ï\u0001\u001a\u00020b8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0006\bÍ\u0001\u0010Á\u0001\u001a\u0005\bÎ\u0001\u0010dR\u001e\u0010Ñ\u0001\u001a\u00020|8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\bO\u0010Á\u0001\u001a\u0005\bÐ\u0001\u0010~R\u001e\u0010Ó\u0001\u001a\u00020l8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\bA\u0010Á\u0001\u001a\u0005\bÒ\u0001\u0010nR\u001b\u0010\u0080\u0001\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010Õ\u0001R\u001b\u0010\u0083\u0001\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÖ\u0001\u0010Õ\u0001R\u001a\u0010×\u0001\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b&\u0010Õ\u0001R\u001a\u0010Ù\u0001\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bI\u0010Ø\u0001R\u001b\u0010Ü\u0001\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÚ\u0001\u0010Û\u0001R\u001a\u0010Ý\u0001\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0013\u0010Û\u0001R\u001b\u0010à\u0001\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÞ\u0001\u0010ß\u0001R\u0016\u0010L\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u00107R\u0017\u0010ã\u0001\u001a\u00030á\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b/\u0010â\u0001R\u001c\u0010ç\u0001\u001a\u0005\u0018\u00010ä\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bå\u0001\u0010æ\u0001R\u0019\u0010f\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u000b\u0010è\u0001R\u001b\u0010ë\u0001\u001a\u0005\u0018\u00010é\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0017\u0010ê\u0001R-\u0010-\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010,0ì\u0001j\u000b\u0012\u0006\u0012\u0004\u0018\u00010,`í\u00018\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u0010\u0010î\u0001R\u001a\u0010ð\u0001\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001d\u0010ï\u0001R\u0017\u0010ñ\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u00107R\u001b\u0010ô\u0001\u001a\u0005\u0018\u00010ò\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\r\u0010ó\u0001R\u0018\u0010ö\u0001\u001a\u00020Z8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0015\u0010õ\u0001R\u0018\u0010ø\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0018\u0010÷\u0001R\u0019\u0010û\u0001\u001a\u00020S8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bù\u0001\u0010ú\u0001R\u0017\u0010^\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bü\u0001\u00107¨\u0006\u0080\u0002"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;", "Landroidx/appcompat/widget/Toolbar;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lzfb;", "t", "(Landroid/util/AttributeSet;)V", "y", "()I", "", "v", "()Z", "night", "o", "(Z)Landroid/content/Context;", "z", "(Z)I", "u", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "()V", "M", "Landroid/view/View;", "child", "w", "(Landroid/view/View;)Z", "", "getRightContentChildren", "()Ljava/util/List;", "Landroid/view/ViewGroup;", "getRightIconHost", "()Landroid/view/ViewGroup;", "getRightActionViews", CmcdData.STREAM_TYPE_LIVE, "q", "(Landroid/content/Context;)Landroid/view/View;", "anchor", "selectId", "", "", "stringArray", "Lcom/transsion/widgetslib/widget/OSPopupWindow;", "r", "(Landroid/content/Context;Landroid/view/View;I[Ljava/lang/String;)Lcom/transsion/widgetslib/widget/OSPopupWindow;", "Landroid/widget/AdapterView$OnItemClickListener;", "onItemClickListener", "setOnMenuClickListener", "(Landroid/widget/AdapterView$OnItemClickListener;)V", "hostView", "iconCount", "I", "(Landroid/view/View;I)V", "K", "(Landroid/view/View;)V", "view", "x", TypedValues.AttributesType.S_TARGET, "J", "L", "index", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(Landroid/view/View;II)V", "D", "Lcom/transsion/widgetslib/widget/OSIconTextView;", "icon", "setIconTouchAnim", "(Lcom/transsion/widgetslib/widget/OSIconTextView;)V", "Lcom/transsion/widgetsliquid/view/OSLiquidToolBar$b;", CmcdData.OBJECT_TYPE_MANIFEST, "()Lcom/transsion/widgetsliquid/view/OSLiquidToolBar$b;", "targets", "iconColor", "titleColor", "subtitleColor", CmcdData.STREAMING_FORMAT_HLS, "(Lcom/transsion/widgetsliquid/view/OSLiquidToolBar$b;III)V", "Landroid/widget/TextView;", "textView", "", "minSize", "maxSize", "isDpUnit", "maxLines", ExifInterface.LONGITUDE_EAST, "(Landroid/widget/TextView;FFZI)V", "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;", "config", "setLightTypeConfig", "(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V", "mixLevel", "setMixLevel", "(I)V", "hideOriginalMenuView", "Lcom/transsion/widgetsliquid/view/OSLiquidButton;", "getPopMenuButton", "()Lcom/transsion/widgetsliquid/view/OSLiquidButton;", "Landroid/view/Menu;", "menu", "createOptionsMenuPopupWindow", "(Landroid/view/Menu;)V", "showPopupWindow", "dismissPopupWindow", "getLeftIconView", "Landroid/widget/LinearLayout;", "getTextLinearLayout", "()Landroid/widget/LinearLayout;", "Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;", "getRightContainer", "()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;", "getRightSelectedAllIcon", "()Lcom/transsion/widgetslib/widget/OSIconTextView;", "getRightIconChildAt", "(I)Landroid/view/View;", "getRightChildCount", "Lcom/transsion/widgetslib/view/OSCheckBox;", "getCheckBox", "()Lcom/transsion/widgetslib/view/OSCheckBox;", "visibility", "setMaskVisibility", "Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;", "getMaskConstraintLayout", "()Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;", "", "title", "setTitle", "(Ljava/lang/CharSequence;)V", AuthInfo.Component.CODE_SUBTITLE, "setSubtitle", "colorRes", "setLeftIcon", "(Ljava/lang/String;I)V", "(Ljava/lang/String;)V", "string", "setRightTextIcon", "color", "setRightIconColor", "setRightMainIcon", "setRightSelectedAll", "setRightCheckBox", "icons", "setRightIcons", "([Ljava/lang/String;)V", "descriptions", "([Ljava/lang/String;[Ljava/lang/String;)V", "invalidateRightIconsLayout", "fillColor", "setRightIconFillColor", "(Ljava/lang/Integer;)V", "setLeftIconFillColor", "Landroid/graphics/BlendMode;", "basicBlendMode", "maskBlendMode", "setRightIconBgBlendMode", "(Landroid/graphics/BlendMode;Landroid/graphics/BlendMode;)V", "Lkotlin/Function1;", "listener", "setOnLeftIconClickListener", "(Le74;)V", "Lcom/transsion/widgetsliquid/view/OSLiquidToolBar$c;", "onIconClickListener", "setOnRightIconClickListener", "(Lcom/transsion/widgetsliquid/view/OSLiquidToolBar$c;)V", "Landroid/view/View$OnClickListener;", "setOnRightMainIconClickListener", "(Landroid/view/View$OnClickListener;)V", "setMoreIconClickListener", "getTitleView", "()Landroid/widget/TextView;", "getSubTitleView", "nightMode", "setBlurNightMode", "(Z)V", "setNightMode", "isUseDefaultColor", "setNightModeForDarkBg", "toNight", "startBgModeTransition", "enable", "marginStart", "setLeftIconEnable", "(ZI)V", "forceBCEffect", "setForceBCEffect", "onDetachedFromWindow", "Lcom/transsion/widgetsliquid/view/OSLiquidToolBar$d;", "setOnSelectAllChangedListener", "(Lcom/transsion/widgetsliquid/view/OSLiquidToolBar$d;)V", "c", "Lyi5;", "getLeftIcon", "leftIcon", "d", "getTitleTextView", "titleTextView", "e", "getSubtitleTextView", "subtitleTextView", "f", "getMRightContainer", "mRightContainer", GslbInterceptor.HEADER_KEY_GSLB, "getMPopMenuButton", "mPopMenuButton", "getMOSMaskConstraintLayout", "mOSMaskConstraintLayout", "getMTextLinearLayout", "mTextLinearLayout", "j", "Ljava/lang/String;", "k", "leftIconRes", "Landroid/widget/TextView;", "textButton", "n", "Lcom/transsion/widgetslib/widget/OSIconTextView;", "mainIcon", "menuIcon", TtmlNode.TAG_P, "Lcom/transsion/widgetslib/view/OSCheckBox;", "checkBox", "Lu97;", "Lu97;", "liquidPressHelper", "Landroid/widget/ListView;", "s", "Landroid/widget/ListView;", "mPopupList", "Landroid/view/Menu;", "Landroid/view/MenuItem;", "Landroid/view/MenuItem;", "menuItem", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "Lcom/transsion/widgetslib/widget/OSPopupWindow;", "popupWindow", "textExceedTokenSeed", "Landroid/animation/Animator;", "Landroid/animation/Animator;", "bgModeAnimator", "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;", "mLightTypeConfig", "Z", "mDynamicBgMode", "B", "F", "ITEM_PRESS_ALPHA", "C", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSLiquidToolBar extends Toolbar {

    public boolean mDynamicBgMode;

    public float ITEM_PRESS_ALPHA;

    public int mixLevel;

    public final yi5 leftIcon;

    public final yi5 titleTextView;

    public final yi5 subtitleTextView;

    public final yi5 mRightContainer;

    public final yi5 mPopMenuButton;

    public final yi5 mOSMaskConstraintLayout;

    public final yi5 mTextLinearLayout;

    public String title;

    public String subtitle;

    public String leftIconRes;

    public TextView textButton;

    public OSIconTextView mainIcon;

    public OSIconTextView menuIcon;

    public OSCheckBox checkBox;

    public int iconColor;

    public final u97 liquidPressHelper;

    public ListView mPopupList;

    public Menu menu;

    public MenuItem menuItem;

    public ArrayList stringArray;

    public OSPopupWindow popupWindow;

    public int textExceedTokenSeed;

    public Animator bgModeAnimator;

    public LightTypeConfig mLightTypeConfig;

    public static final class b {
        public final List a;
        public final TextView b;
        public final TextView c;

        public b(List list, TextView textView, TextView textView2) {
            y45.j(list, "iconViews");
            y45.j(textView, "titleView");
            y45.j(textView2, "subtitleView");
            this.a = list;
            this.b = textView;
            this.c = textView2;
        }

        public final List a() {
            return this.a;
        }

        public final TextView b() {
            return this.c;
        }

        public final TextView c() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return y45.e(this.a, bVar.a) && y45.e(this.b, bVar.b) && y45.e(this.c, bVar.c);
        }

        public int hashCode() {
            return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
        }

        public String toString() {
            return "ForegroundTargets(iconViews=" + this.a + ", titleView=" + this.b + ", subtitleView=" + this.c + ")";
        }
    }

    public interface c {
    }

    public interface d {
    }

    public static final class e implements ViewTreeObserver.OnGlobalLayoutListener {
        public final TextView b;
        public final int c;
        public final float d;
        public final float e;
        public final boolean f;
        public final int g;

        public e(TextView textView, int i, float f, float f2, boolean z, int i2) {
            this.b = textView;
            this.c = i;
            this.d = f;
            this.e = f2;
            this.f = z;
            this.g = i2;
        }

        @Override
        public void onGlobalLayout() {
            this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            if (y45.e(this.b.getTag(R.id.os_liquid_toolbar_layout), Integer.valueOf(this.c)) && (this.b.getMeasuredWidth() - this.b.getPaddingLeft()) - this.b.getPaddingRight() > 0) {
                this.b.setTextSize(0, olb.F0(this.b, this.d, this.e, this.f, this.g));
                this.b.setEllipsize(TextUtils.TruncateAt.END);
                this.b.setMaxLines(this.g);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidToolBar(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final boolean B(OSLiquidToolBar oSLiquidToolBar, View view, MotionEvent motionEvent) {
        y45.j(oSLiquidToolBar, "this$0");
        if (!oSLiquidToolBar.x(view)) {
            return false;
        }
        Integer numValueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            y45.i(view, "v");
            oSLiquidToolBar.J(view, 1);
        } else if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 3)) {
            y45.i(view, "v");
            oSLiquidToolBar.L(view);
        }
        return false;
    }

    public static final void C(e74 e74Var, View view) {
        y45.j(e74Var, "$tmp0");
        e74Var.invoke(view);
    }

    public static final void F(OSLiquidToolBar oSLiquidToolBar, AdapterView adapterView, View view, int i, long j) {
        y45.j(oSLiquidToolBar, "this$0");
        ArrayList arrayList = oSLiquidToolBar.stringArray;
        if (arrayList == null) {
            y45.B("stringArray");
            arrayList = null;
        }
        String strValueOf = String.valueOf(arrayList.get(i));
        Menu menu = oSLiquidToolBar.menu;
        if (menu != null) {
            int size = menu.size();
            for (int i2 = 0; i2 < size; i2++) {
                Menu menu2 = oSLiquidToolBar.menu;
                y45.g(menu2);
                MenuItem item = menu2.getItem(i2);
                oSLiquidToolBar.menuItem = item;
                if ((item != null ? item.getTitle() : null) != null) {
                    MenuItem menuItem = oSLiquidToolBar.menuItem;
                    if (y45.e(strValueOf, String.valueOf(menuItem != null ? menuItem.getTitle() : null)) && (oSLiquidToolBar.getContext() instanceof Activity)) {
                        Context context = oSLiquidToolBar.getContext();
                        y45.h(context, "null cannot be cast to non-null type android.app.Activity");
                        MenuItem menuItem2 = oSLiquidToolBar.menuItem;
                        y45.g(menuItem2);
                        ((Activity) context).onMenuItemSelected(0, menuItem2);
                    }
                }
            }
        }
        oSLiquidToolBar.dismissPopupWindow();
    }

    public static final void G(int i, int i2, int i3, int i4, OSLiquidToolBar oSLiquidToolBar, b bVar, boolean z) {
        if (z) {
            i2 = i;
        }
        if (z) {
            i3 = i;
        }
        if (!z) {
            i = i4;
        }
        oSLiquidToolBar.h(bVar, i2, i3, i);
    }

    public static final void H(ArgbEvaluator argbEvaluator, int i, int i2, int i3, int i4, int i5, int i6, OSLiquidToolBar oSLiquidToolBar, b bVar, float f) {
        Object objEvaluate = argbEvaluator.evaluate(f, Integer.valueOf(i), Integer.valueOf(i2));
        y45.h(objEvaluate, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue = ((Integer) objEvaluate).intValue();
        Object objEvaluate2 = argbEvaluator.evaluate(f, Integer.valueOf(i3), Integer.valueOf(i4));
        y45.h(objEvaluate2, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue2 = ((Integer) objEvaluate2).intValue();
        Object objEvaluate3 = argbEvaluator.evaluate(f, Integer.valueOf(i5), Integer.valueOf(i6));
        y45.h(objEvaluate3, "null cannot be cast to non-null type kotlin.Int");
        oSLiquidToolBar.h(bVar, iIntValue, iIntValue2, ((Integer) objEvaluate3).intValue());
    }

    private final OSLiquidButton getLeftIcon() {
        Object value = this.leftIcon.getValue();
        y45.i(value, "<get-leftIcon>(...)");
        return (OSLiquidButton) value;
    }

    private final OSMaskConstraintLayout getMOSMaskConstraintLayout() {
        Object value = this.mOSMaskConstraintLayout.getValue();
        y45.i(value, "<get-mOSMaskConstraintLayout>(...)");
        return (OSMaskConstraintLayout) value;
    }

    private final OSLiquidButton getMPopMenuButton() {
        Object value = this.mPopMenuButton.getValue();
        y45.i(value, "<get-mPopMenuButton>(...)");
        return (OSLiquidButton) value;
    }

    private final OSLiquidContainerRootLayout getMRightContainer() {
        Object value = this.mRightContainer.getValue();
        y45.i(value, "<get-mRightContainer>(...)");
        return (OSLiquidContainerRootLayout) value;
    }

    private final LinearLayout getMTextLinearLayout() {
        Object value = this.mTextLinearLayout.getValue();
        y45.i(value, "<get-mTextLinearLayout>(...)");
        return (LinearLayout) value;
    }

    private final List<View> getRightActionViews() {
        ViewGroup rightIconHost = getRightIconHost();
        if (rightIconHost == null) {
            return getRightContentChildren();
        }
        ArrayList arrayList = new ArrayList(rightIconHost.getChildCount());
        int childCount = rightIconHost.getChildCount();
        for (int i = 0; i < childCount; i++) {
            arrayList.add(rightIconHost.getChildAt(i));
        }
        return arrayList;
    }

    private final List<View> getRightContentChildren() {
        ArrayList arrayList = new ArrayList();
        int childCount = getMRightContainer().getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getMRightContainer().getChildAt(i);
            y45.i(childAt, "child");
            if (!w(childAt)) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    private final ViewGroup getRightIconHost() {
        List<View> rightContentChildren = getRightContentChildren();
        if (rightContentChildren.size() != 1 || !(rightContentChildren.get(0) instanceof LinearLayout)) {
            return null;
        }
        View view = rightContentChildren.get(0);
        y45.h(view, "null cannot be cast to non-null type android.widget.LinearLayout");
        return (LinearLayout) view;
    }

    private final TextView getSubtitleTextView() {
        Object value = this.subtitleTextView.getValue();
        y45.i(value, "<get-subtitleTextView>(...)");
        return (TextView) value;
    }

    private final TextView getTitleTextView() {
        Object value = this.titleTextView.getValue();
        y45.i(value, "<get-titleTextView>(...)");
        return (TextView) value;
    }

    public static final void j(View view, OSLiquidToolBar oSLiquidToolBar, int i, View view2) {
        y45.j(view, "$target");
        y45.j(oSLiquidToolBar, "this$0");
        if (view.isEnabled()) {
            oSLiquidToolBar.getClass();
            if (view.getId() == R.id.os_liquid_toolbar_selected_all_icon) {
                view.setSelected(!view.isSelected());
            }
        }
    }

    public static final boolean k(OSLiquidToolBar oSLiquidToolBar, int i, View view, MotionEvent motionEvent) {
        y45.j(oSLiquidToolBar, "this$0");
        if (!oSLiquidToolBar.x(view)) {
            return false;
        }
        Integer numValueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            y45.i(view, "v");
            oSLiquidToolBar.J(view, i);
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            if (motionEvent.getX() < 0.0f || motionEvent.getY() < 0.0f || motionEvent.getX() > view.getWidth() || motionEvent.getY() > view.getHeight()) {
                y45.i(view, "v");
                oSLiquidToolBar.L(view);
            }
        } else if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 3)) {
            y45.i(view, "v");
            oSLiquidToolBar.L(view);
        }
        return false;
    }

    public static final void n(LinkedHashSet linkedHashSet, View view) {
        if (view instanceof TextView) {
            linkedHashSet.add(view);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                n(linkedHashSet, viewGroup.getChildAt(i));
            }
        }
    }

    public static final void p(OSLiquidToolBar oSLiquidToolBar, View view) {
        y45.j(oSLiquidToolBar, "this$0");
        oSLiquidToolBar.showPopupWindow();
    }

    public static final void s(OSLiquidToolBar oSLiquidToolBar) {
        y45.j(oSLiquidToolBar, "this$0");
        int childCount = oSLiquidToolBar.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = oSLiquidToolBar.getChildAt(i);
            if ((childAt instanceof ActionMenuView) || (childAt instanceof android.widget.ActionMenuView)) {
                childAt.setVisibility(8);
            }
        }
    }

    private final void setIconTouchAnim(OSIconTextView icon) {
        if (icon != null) {
            icon.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return OSLiquidToolBar.B(this.b, view, motionEvent);
                }
            });
        }
    }

    private final void setOnMenuClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        ListView listView = this.mPopupList;
        if (listView != null) {
            y45.g(listView);
            listView.setOnItemClickListener(onItemClickListener);
        }
    }

    public static void setRightIcons$default(OSLiquidToolBar oSLiquidToolBar, String[] strArr, String[] strArr2, int i, Object obj) {
        if ((i & 2) != 0) {
            strArr2 = null;
        }
        oSLiquidToolBar.setRightIcons(strArr, strArr2);
    }

    public final void A() {
        if ("back".equals(getLeftIcon().getMIconText().getText()) || getResources().getString(R.string.os_back).equals(getLeftIcon().getMIconText().getText())) {
            getLeftIcon().setContentDescription(getContext().getString(R.string.abc_action_bar_up_description));
        }
    }

    public final void D() {
        List<View> rightActionViews = getRightActionViews();
        if (rightActionViews.isEmpty()) {
            return;
        }
        int size = rightActionViews.size();
        for (int i = 0; i < size; i++) {
            i(rightActionViews.get(i), i, rightActionViews.size());
        }
    }

    public final void E(TextView textView, float minSize, float maxSize, boolean isDpUnit, int maxLines) {
        int i = this.textExceedTokenSeed + 1;
        this.textExceedTokenSeed = i;
        textView.setTag(R.id.os_liquid_toolbar_layout, Integer.valueOf(i));
        textView.setMaxLines(maxLines);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextSize(0, maxSize);
        textView.getViewTreeObserver().addOnGlobalLayoutListener(new e(textView, i, minSize, maxSize, isDpUnit, maxLines));
    }

    public final void I(View hostView, int iconCount) {
        float f;
        if (olb.P) {
            return;
        }
        u97 u97Var = this.liquidPressHelper;
        if (iconCount == 1) {
            f = 1.25f;
        } else if (iconCount != 2) {
            f = iconCount != 3 ? 1.05f : 1.1f;
        } else {
            f = 1.2f;
        }
        u97Var.h(hostView, f);
    }

    public final void J(View target, int iconCount) {
        getMRightContainer().getOsPressView().showWithFadeAnimation();
        target.setAlpha(this.ITEM_PRESS_ALPHA);
        I(getMRightContainer(), iconCount);
    }

    public final void K(View hostView) {
        if (olb.P) {
            return;
        }
        this.liquidPressHelper.i(hostView);
    }

    public final void L(View target) {
        getMRightContainer().getOsPressView().hideWithFadeAnimation();
        target.setAlpha(1.0f);
        K(getMRightContainer());
    }

    public final void M() {
        ArrayList arrayList = this.stringArray;
        ArrayList arrayList2 = null;
        if (arrayList == null) {
            y45.B("stringArray");
            arrayList = null;
        }
        if (!arrayList.isEmpty()) {
            ArrayList arrayList3 = this.stringArray;
            if (arrayList3 == null) {
                y45.B("stringArray");
                arrayList3 = null;
            }
            arrayList3.clear();
        }
        Menu menu = this.menu;
        if (menu != null) {
            int size = menu.size();
            for (int i = 0; i < size; i++) {
                Menu menu2 = this.menu;
                y45.g(menu2);
                MenuItem item = menu2.getItem(i);
                this.menuItem = item;
                if (item != null && item.isVisible()) {
                    ArrayList arrayList4 = this.stringArray;
                    if (arrayList4 == null) {
                        y45.B("stringArray");
                        arrayList4 = null;
                    }
                    Menu menu3 = this.menu;
                    y45.g(menu3);
                    arrayList4.add(String.valueOf(menu3.getItem(i).getTitle()));
                }
            }
        }
        ArrayList arrayList5 = this.stringArray;
        if (arrayList5 == null) {
            y45.B("stringArray");
        } else {
            arrayList2 = arrayList5;
        }
        if (arrayList2.isEmpty()) {
            getMPopMenuButton().setVisibility(8);
        } else {
            getMPopMenuButton().setVisibility(0);
        }
    }

    public final void createOptionsMenuPopupWindow(Menu menu) {
        y45.j(menu, "menu");
        ArrayList arrayList = null;
        if (menu.size() == 0) {
            Log.i("OSLiquidToolBar", "menu is empty");
            OSPopupWindow oSPopupWindow = this.popupWindow;
            if (oSPopupWindow != null && oSPopupWindow.isShowing()) {
                OSPopupWindow oSPopupWindow2 = this.popupWindow;
                if (oSPopupWindow2 != null) {
                    oSPopupWindow2.dismiss();
                }
                this.popupWindow = null;
            }
            getMPopMenuButton().setVisibility(8);
            return;
        }
        this.menu = menu;
        this.stringArray = new ArrayList();
        M();
        ArrayList arrayList2 = this.stringArray;
        if (arrayList2 == null) {
            y45.B("stringArray");
        } else {
            arrayList = arrayList2;
        }
        if (arrayList.isEmpty()) {
            getMPopMenuButton().setVisibility(8);
        } else {
            getMPopMenuButton().setVisibility(0);
        }
        getMPopMenuButton().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                OSLiquidToolBar.p(this.b, view);
            }
        });
        getMPopMenuButton().setContentDescription(getContext().getString(R.string.abc_action_menu_overflow_description));
    }

    public final void dismissPopupWindow() {
        M();
        OSPopupWindow oSPopupWindow = this.popupWindow;
        if (oSPopupWindow != null && oSPopupWindow.isShowing()) {
            OSPopupWindow oSPopupWindow2 = this.popupWindow;
            if (oSPopupWindow2 != null) {
                oSPopupWindow2.dismiss();
            }
            this.popupWindow = null;
        }
        this.mPopupList = null;
    }

    public final OSCheckBox getCheckBox() {
        return this.checkBox;
    }

    public final OSLiquidButton getLeftIconView() {
        return getLeftIcon();
    }

    public final OSMaskConstraintLayout getMaskConstraintLayout() {
        return getMOSMaskConstraintLayout();
    }

    public final OSLiquidButton getPopMenuButton() {
        return getMPopMenuButton();
    }

    public final int getRightChildCount() {
        return getRightActionViews().size();
    }

    public final OSLiquidContainerRootLayout getRightContainer() {
        OSLiquidContainerRootLayout mRightContainer = getMRightContainer();
        if (mRightContainer == null) {
            return null;
        }
        return mRightContainer;
    }

    public final View getRightIconChildAt(int index) {
        if (index < 0) {
            return null;
        }
        return (View) i81.r0(getRightActionViews(), index);
    }

    public final OSIconTextView getRightSelectedAllIcon() {
        return (OSIconTextView) findViewById(R.id.os_liquid_toolbar_selected_all_icon);
    }

    public final TextView getSubTitleView() {
        return getSubtitleTextView();
    }

    public final LinearLayout getTextLinearLayout() {
        return getMTextLinearLayout();
    }

    public final TextView getTitleView() {
        return getTitleTextView();
    }

    public final void h(b targets, int iconColor, int titleColor, int subtitleColor) {
        Iterator it = targets.a().iterator();
        while (it.hasNext()) {
            ((TextView) it.next()).setTextColor(iconColor);
        }
        targets.c().setTextColor(titleColor);
        targets.b().setTextColor(subtitleColor);
        this.iconColor = iconColor;
    }

    public final void hideOriginalMenuView() {
        post(new Runnable() {
            @Override
            public final void run() {
                OSLiquidToolBar.s(this.b);
            }
        });
    }

    public final void i(final View target, final int index, final int iconCount) {
        target.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                OSLiquidToolBar.j(target, this, index, view);
            }
        });
        if (olb.r0(getContext())) {
            return;
        }
        target.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return OSLiquidToolBar.k(this.b, iconCount, view, motionEvent);
            }
        });
    }

    public final void invalidateRightIconsLayout() {
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.os_tool_bar_button_padding);
        ViewGroup rightIconHost = getRightIconHost();
        if (rightIconHost == null || rightIconHost.getChildCount() <= 0) {
            return;
        }
        int childCount = rightIconHost.getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            if (rightIconHost.getChildAt(i2).getVisibility() == 0) {
                i++;
            }
        }
        Log.i("OSLiquidToolBar", "invalidateRightIconsLayout :" + rightIconHost.getChildCount() + " visiableIconCount:" + i);
        if (i > 1) {
            int i3 = dimensionPixelSize / 2;
            rightIconHost.setPadding(i3, 0, i3, 0);
        } else {
            int childCount2 = rightIconHost.getChildCount();
            for (int i4 = 0; i4 < childCount2; i4++) {
                rightIconHost.getChildAt(i4).getLayoutParams().width = getContext().getResources().getDimensionPixelSize(R.dimen.os_tool_bar_right_one_button_size);
            }
            rightIconHost.setPadding(0, 0, 0, 0);
        }
        rightIconHost.requestLayout();
    }

    public final void l() {
        int childCount = getMRightContainer().getChildCount();
        while (true) {
            childCount--;
            if (-1 >= childCount) {
                return;
            }
            View childAt = getMRightContainer().getChildAt(childCount);
            y45.i(childAt, "child");
            if (!w(childAt)) {
                getMRightContainer().removeViewAt(childCount);
            }
        }
    }

    public final b m() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        n(linkedHashSet, getLeftIcon().getMIconText());
        n(linkedHashSet, getMPopMenuButton().getMIconText());
        n(linkedHashSet, this.mainIcon);
        n(linkedHashSet, this.menuIcon);
        n(linkedHashSet, this.textButton);
        int rightChildCount = getRightChildCount();
        for (int i = 0; i < rightChildCount; i++) {
            n(linkedHashSet, getRightIconChildAt(i));
        }
        return new b(i81.b1(linkedHashSet), getTitleTextView(), getSubtitleTextView());
    }

    public final Context o(boolean night) {
        Context context = getContext();
        Configuration configuration = new Configuration(getContext().getResources().getConfiguration());
        configuration.uiMode = (configuration.uiMode & (-49)) | (night ? 32 : 16);
        Context contextCreateConfigurationContext = context.createConfigurationContext(configuration);
        y45.i(contextCreateConfigurationContext, "context.createConfigurat…O\n            }\n        )");
        return contextCreateConfigurationContext;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Animator animator = this.bgModeAnimator;
        if (animator != null) {
            animator.cancel();
        }
        this.bgModeAnimator = null;
        this.liquidPressHelper.g();
    }

    public final View q(Context context) {
        if (this.mPopupList == null) {
            View viewInflate = View.inflate(context, R.layout.os_liquid_popup_window_layout, null);
            y45.h(viewInflate, "null cannot be cast to non-null type android.widget.ListView");
            this.mPopupList = (ListView) viewInflate;
        }
        return this.mPopupList;
    }

    public final OSPopupWindow r(Context context, View anchor, int selectId, String[] stringArray) {
        dismissPopupWindow();
        q(context);
        y45.g(context);
        qb9 qb9VarB = qb9.b(context, stringArray);
        y45.i(qb9VarB, "createFromStringArray(\n …!!, stringArray\n        )");
        qb9VarB.setSelected(selectId);
        ListView listView = this.mPopupList;
        if (listView != null) {
            listView.setAdapter((ListAdapter) qb9VarB);
        }
        OSPopupWindow oSPopupWindow = new OSPopupWindow(context, null, -1, R.style.OsListPopupWindowStyle);
        oSPopupWindow.setContentView(this.mPopupList);
        int iA0 = olb.A0(context, qb9VarB);
        ColorDrawable colorDrawable = new ColorDrawable(0);
        Resources resources = getResources();
        int i = R.dimen.os_popup_menu_inset_left;
        oSPopupWindow.setBackgroundDrawable(new InsetDrawable((Drawable) colorDrawable, (int) resources.getDimension(i), 0, (int) getResources().getDimension(i), (int) getResources().getDimension(R.dimen.os_popup_menu_bg_margin_bottom)));
        oSPopupWindow.setWidth(iA0);
        oSPopupWindow.setOutsideTouchable(true);
        oSPopupWindow.setFocusable(true);
        oSPopupWindow.setLightTypeConfig(this.mLightTypeConfig);
        return oSPopupWindow;
    }

    @RequiresApi(31)
    public final void setBlurNightMode(boolean nightMode) {
        getLeftIcon().setBlurNightMode(nightMode);
        getMRightContainer().setBlurNightMode(nightMode);
        getMPopMenuButton().setBlurNightMode(nightMode);
    }

    @RequiresApi(31)
    public final void setForceBCEffect(boolean forceBCEffect) {
        getLeftIcon().setForceBCEffect(forceBCEffect);
        getMRightContainer().setForceBCEffect(forceBCEffect);
        getMPopMenuButton().setForceBCEffect(forceBCEffect);
    }

    public final void setLeftIcon(String icon, @ColorRes int colorRes) {
        if (getLeftIcon() != null) {
            OSLiquidButton leftIcon = getLeftIcon();
            y45.g(leftIcon);
            y45.g(icon);
            leftIcon.setIcon(icon);
            OSLiquidButton leftIcon2 = getLeftIcon();
            y45.g(leftIcon2);
            leftIcon2.setVisibility(0);
            getLeftIcon().setIconColor(colorRes);
            A();
        }
    }

    public final void setLeftIconEnable(boolean enable, int marginStart) {
        if (enable) {
            getLeftIcon().setVisibility(0);
        } else {
            getLeftIcon().setVisibility(8);
        }
        LinearLayout textLinearLayout = getTextLinearLayout();
        ViewGroup.LayoutParams layoutParams = textLinearLayout != null ? textLinearLayout.getLayoutParams() : null;
        y45.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams).setMarginStart(marginStart);
    }

    public final void setLeftIconFillColor(Integer fillColor) {
        if (getLeftIcon() == null || fillColor == null) {
            return;
        }
        getLeftIcon().setVisibility(0);
        getLeftIcon().setBrandColor(fillColor.intValue());
        getLeftIcon().setMixLevel(5);
    }

    public final void setLightTypeConfig(LightTypeConfig config) {
        y45.j(config, "config");
        this.mLightTypeConfig = config;
        getMRightContainer().setLightTypeConfig(config);
        getLeftIcon().setLightTypeConfig(config);
        getMPopMenuButton().setLightTypeConfig(config);
        OSPopupWindow oSPopupWindow = this.popupWindow;
        if (oSPopupWindow != null) {
            oSPopupWindow.setLightTypeConfig(config);
        }
    }

    public final void setMaskVisibility(int visibility) {
        getMOSMaskConstraintLayout().setMaskVisibility(visibility);
    }

    @RequiresApi(31)
    public final void setMixLevel(int mixLevel) {
        getLeftIcon().setMixLevel(mixLevel);
        getMRightContainer().setMixLevel(mixLevel);
        getMPopMenuButton().setMixLevel(mixLevel);
    }

    public final void setMoreIconClickListener(View.OnClickListener listener) {
        OSIconTextView oSIconTextView = this.mainIcon;
        if (oSIconTextView == null || !oSIconTextView.isEnabled()) {
            return;
        }
        OSIconTextView oSIconTextView2 = this.mainIcon;
        if (oSIconTextView2 != null) {
            oSIconTextView2.setOnClickListener(listener);
        }
        setIconTouchAnim(this.mainIcon);
    }

    @RequiresApi(31)
    public final void setNightMode(boolean nightMode) {
        getLeftIcon().setNightMode(nightMode);
        getMRightContainer().setNightMode(nightMode);
        getMPopMenuButton().setNightMode(nightMode);
    }

    @RequiresApi(31)
    public final void setNightModeForDarkBg(boolean isUseDefaultColor) {
        getLeftIcon().setNightMode(true);
        getMRightContainer().setNightMode(true);
        getMPopMenuButton().setNightMode(true);
        if (isUseDefaultColor) {
            OSLiquidButton leftIcon = getLeftIcon();
            Context context = getContext();
            int i = R.color.os_liquid_small_bc_night_color;
            leftIcon.setDefaultBgColor(context.getColor(i));
            getMRightContainer().setDefaultBgColor(getContext().getColor(i));
            getMPopMenuButton().setDefaultBgColor(getContext().getColor(i));
        } else {
            OSLiquidButton leftIcon2 = getLeftIcon();
            Context context2 = getContext();
            int i2 = R.color.os_color_white8;
            leftIcon2.setDefaultBgColor(context2.getColor(i2));
            getMRightContainer().setDefaultBgColor(getContext().getColor(i2));
            getMPopMenuButton().setDefaultBgColor(getContext().getColor(i2));
        }
        OSLiquidButton leftIcon3 = getLeftIcon();
        int i3 = R.color.os_color_white70;
        leftIcon3.setIconColor(i3);
        OSIconTextView oSIconTextView = this.mainIcon;
        if (oSIconTextView != null) {
            oSIconTextView.setTextColor(getContext().getColor(i3));
        }
        getMPopMenuButton().setIconColor(i3);
    }

    public final void setOnLeftIconClickListener(final e74 listener) {
        y45.j(listener, "listener");
        if (getLeftIcon() != null) {
            OSLiquidButton leftIcon = getLeftIcon();
            y45.g(leftIcon);
            leftIcon.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    OSLiquidToolBar.C(listener, view);
                }
            });
        }
    }

    public final void setOnRightIconClickListener(c onIconClickListener) {
        D();
    }

    public final void setOnRightMainIconClickListener(View.OnClickListener listener) {
        OSIconTextView oSIconTextView = this.mainIcon;
        if (oSIconTextView == null || !oSIconTextView.isEnabled()) {
            return;
        }
        OSIconTextView oSIconTextView2 = this.mainIcon;
        if (oSIconTextView2 != null) {
            oSIconTextView2.setOnClickListener(listener);
        }
        setIconTouchAnim(this.mainIcon);
    }

    public final void setOnSelectAllChangedListener(d listener) {
    }

    public final void setRightCheckBox() {
        getMRightContainer().setVisibility(0);
        l();
        LinearLayout linearLayout = new LinearLayout(getContext());
        Resources resources = linearLayout.getContext().getResources();
        int i = R.dimen.os_tool_bar_right_one_button_size;
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(resources.getDimensionPixelSize(i), -1));
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        OSCheckBox oSCheckBox = new OSCheckBox(getContext());
        oSCheckBox.setLayoutParams(new LinearLayout.LayoutParams(-2, oSCheckBox.getContext().getResources().getDimensionPixelSize(i)));
        oSCheckBox.setId(R.id.os_liquid_toolbar_checkbox);
        oSCheckBox.setGravity(17);
        this.checkBox = oSCheckBox;
        linearLayout.addView(oSCheckBox);
        getMRightContainer().addView(linearLayout);
    }

    @RequiresApi(29)
    public final void setRightIconBgBlendMode(BlendMode basicBlendMode, BlendMode maskBlendMode) {
        if (basicBlendMode == null || maskBlendMode == null) {
            return;
        }
        getMRightContainer().setVisibility(0);
        getMRightContainer().setBgBlendMode(basicBlendMode, maskBlendMode);
    }

    public final void setRightIconColor(int color) {
        this.iconColor = color;
        int rightChildCount = getRightChildCount();
        for (int i = 0; i < rightChildCount; i++) {
            View rightIconChildAt = getRightIconChildAt(i);
            if (rightIconChildAt instanceof OSIconTextView) {
                OSIconTextView oSIconTextView = (OSIconTextView) rightIconChildAt;
                if (oSIconTextView.getId() == R.id.os_liquid_toolbar_selected_all_icon) {
                    ColorStateList colorStateList = ContextCompat.getColorStateList(getContext(), R.color.os_liquid_toolbar_selected_all_icon_text_color);
                    if (colorStateList != null) {
                        oSIconTextView.setTextColor(colorStateList);
                    }
                } else {
                    oSIconTextView.setTextColor(this.iconColor);
                }
            }
        }
    }

    public final void setRightIconFillColor(Integer fillColor) {
        if (fillColor != null) {
            getMRightContainer().setVisibility(0);
            getMRightContainer().setBrandColor(fillColor.intValue());
            getMRightContainer().setMixLevel(5);
        }
    }

    public final void setRightIcons(String... icons) {
        y45.j(icons, "icons");
        setRightIcons(icons, null);
    }

    public final void setRightMainIcon(String icon) {
        getMRightContainer().setVisibility(0);
        l();
        Context context = getContext();
        y45.i(context, "context");
        OSIconTextView oSIconTextView = new OSIconTextView(context, null, 0, 0, 14, null);
        oSIconTextView.setLayoutParams(new LinearLayout.LayoutParams(oSIconTextView.getContext().getResources().getDimensionPixelSize(R.dimen.os_tool_bar_right_one_button_size), -1));
        oSIconTextView.setId(R.id.os_liquid_toolbar_main_icon);
        oSIconTextView.setGravity(17);
        oSIconTextView.setTextColor(this.iconColor);
        oSIconTextView.setClickable(true);
        oSIconTextView.setText(icon);
        this.mainIcon = oSIconTextView;
        getMRightContainer().addView(this.mainIcon);
        D();
    }

    public final void setRightSelectedAll() {
        getMRightContainer().setVisibility(0);
        l();
        Context context = getContext();
        y45.i(context, "context");
        OSIconTextView oSIconTextView = new OSIconTextView(context, null, 0, 0, 14, null);
        oSIconTextView.setLayoutParams(new LinearLayout.LayoutParams(oSIconTextView.getContext().getResources().getDimensionPixelSize(R.dimen.os_tool_bar_right_one_button_size), -1));
        oSIconTextView.setId(R.id.os_liquid_toolbar_selected_all_icon);
        oSIconTextView.setGravity(17);
        ColorStateList colorStateList = ContextCompat.getColorStateList(oSIconTextView.getContext(), R.color.os_liquid_toolbar_selected_all_icon_text_color);
        if (colorStateList != null) {
            oSIconTextView.setTextColor(colorStateList);
        }
        oSIconTextView.setClickable(true);
        oSIconTextView.setText("ic_Select_All");
        this.mainIcon = oSIconTextView;
        getMRightContainer().addView(this.mainIcon);
        D();
    }

    public final void setRightTextIcon(String string) {
        getMRightContainer().setVisibility(string != null ? 0 : 8);
        l();
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, textView.getContext().getResources().getDimensionPixelSize(R.dimen.os_tool_bar_right_one_button_size));
        textView.setMaxWidth(textView.getContext().getResources().getDimensionPixelSize(R.dimen.os_tool_bar_button_text_max_size));
        layoutParams.gravity = 17;
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        Resources resources = textView.getContext().getResources();
        int i = R.dimen.os_tool_bar_button_text_padding;
        textView.setPadding(resources.getDimensionPixelSize(i), 0, textView.getContext().getResources().getDimensionPixelSize(i), 0);
        textView.setLayoutParams(layoutParams);
        textView.setId(R.id.os_liquid_toolbar_text_button);
        textView.setGravity(17);
        textView.setClickable(true);
        textView.setText(string);
        textView.setTextSize(0, textView.getContext().getResources().getDimensionPixelSize(R.dimen.os_body_font_nrsp));
        textView.setTextColor(olb.z(textView.getContext()));
        this.textButton = textView;
        getMRightContainer().addView(this.textButton);
        D();
    }

    @Override
    public void setSubtitle(CharSequence subtitle) {
        if (getSubtitleTextView() != null) {
            getSubtitleTextView().setTextColor(olb.m(getContext(), R.attr.os_text_secondary, R.color.os_text_secondary_hios));
            getSubtitleTextView().setText(subtitle);
            getSubtitleTextView().setVisibility((subtitle == null || subtitle.length() == 0) ? 8 : 0);
            E(getTitleTextView(), getResources().getDimension(R.dimen.os_liquid_toolbar_title_min_size), getResources().getDimension(R.dimen.os_liquid_toolbar_title_size), true, (subtitle == null || subtitle.length() == 0) ? 2 : 1);
            E(getSubtitleTextView(), getResources().getDimension(R.dimen.os_liquid_toolbar_subtitle_min_size), getResources().getDimension(R.dimen.os_liquid_toolbar_subtitle_size), true, 1);
        }
    }

    @Override
    public void setTitle(CharSequence title) {
        if (getTitleTextView() != null) {
            getTitleTextView().setTextColor(olb.m(getContext(), R.attr.os_text_primary, R.color.os_text_primary_hios));
            getTitleTextView().setText(olb.G0(title));
            getTitleTextView().setVisibility((title == null || title.length() == 0) ? 8 : 0);
            E(getTitleTextView(), getResources().getDimension(R.dimen.os_liquid_toolbar_title_min_size), getResources().getDimension(R.dimen.os_liquid_toolbar_title_size), true, TextUtils.isEmpty(getSubtitleTextView().getText()) ? 2 : 1);
        }
    }

    public final void showPopupWindow() {
        M();
        Context context = getContext();
        OSLiquidButton mPopMenuButton = getMPopMenuButton();
        ArrayList arrayList = this.stringArray;
        ArrayList arrayList2 = null;
        if (arrayList == null) {
            y45.B("stringArray");
            arrayList = null;
        }
        OSPopupWindow oSPopupWindowR = r(context, mPopMenuButton, -1, (String[]) arrayList.toArray(new String[0]));
        this.popupWindow = oSPopupWindowR;
        if (oSPopupWindowR != null) {
            oSPopupWindowR.setClippingEnabled(false);
        }
        OSPopupWindow oSPopupWindow = this.popupWindow;
        if (oSPopupWindow != null) {
            OSLiquidButton mPopMenuButton2 = getMPopMenuButton();
            ArrayList arrayList3 = this.stringArray;
            if (arrayList3 == null) {
                y45.B("stringArray");
            } else {
                arrayList2 = arrayList3;
            }
            oSPopupWindow.Q(mPopMenuButton2, arrayList2.size(), 0, -getResources().getDimensionPixelSize(R.dimen.os_tool_bar_right_one_button_size));
        }
        setOnMenuClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                OSLiquidToolBar.F(this.b, adapterView, view, i, j);
            }
        });
    }

    public final void startBgModeTransition(boolean toNight) {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        Animator animator = this.bgModeAnimator;
        if (animator != null) {
            animator.cancel();
        }
        final b bVarM = m();
        final ArgbEvaluator argbEvaluator = new ArgbEvaluator();
        final int currentTextColor = getLeftIcon().getMIconText().getCurrentTextColor();
        final int currentTextColor2 = getTitleTextView().getCurrentTextColor();
        final int currentTextColor3 = getSubtitleTextView().getCurrentTextColor();
        final int iZ = this.mDynamicBgMode ? z(true) : getContext().getColor(R.color.os_color_white70);
        final int iZ2 = this.mDynamicBgMode ? z(false) : getContext().getColor(R.color.os_color_gray80);
        final int color = getContext().getColor(R.color.os_color_black100);
        final int color2 = getContext().getColor(R.color.os_color_gray80);
        int i = toNight ? iZ : iZ2;
        int i2 = toNight ? iZ : color;
        int i3 = toNight ? iZ : color2;
        final int i4 = i;
        final int i5 = i2;
        final int i6 = i3;
        final int i7 = i;
        final int i8 = i2;
        final int i9 = i3;
        this.bgModeAnimator = OSLiquidContainerRootLayout.INSTANCE.c(y71.n(getLeftIcon(), getMRightContainer(), getMPopMenuButton()), toNight, (4 & 4) != 0 ? 200L : 0L, (4 & 8) != 0 ? null : new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).floatValue());
                return zfb.a;
            }

            public final void invoke(float f) {
                OSLiquidToolBar.H(argbEvaluator, currentTextColor, i4, currentTextColor2, i5, currentTextColor3, i6, this, bVarM, f);
            }
        }, (4 & 16) != 0 ? null : new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            public final void invoke(boolean z) {
                OSLiquidToolBar.G(iZ, iZ2, color, color2, this, bVarM, z);
            }
        }, (4 & 32) != 0 ? null : new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            public final void invoke(boolean z) {
                OSLiquidToolBar.this.h(bVarM, i7, i8, i9);
            }
        });
    }

    public final void t(AttributeSet attrs) {
        Context context = getContext();
        y45.i(context, "context");
        int[] iArr = R.styleable.OSLiquidToolBar;
        y45.i(iArr, "OSLiquidToolBar");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, iArr, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        this.leftIconRes = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidToolBar_os_liquid_toolbar_left_icon);
        this.title = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidToolBar_os_liquid_toolbar_title);
        this.subtitle = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidToolBar_os_liquid_toolbar_subtitle);
        this.mixLevel = typedArrayObtainStyledAttributes.getInt(R.styleable.OSLiquidToolBar_os_liquid_toolbar_mix_level, 6);
        this.mDynamicBgMode = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidToolBar_os_liquid_toolbar_dynamic_bg_mode, false);
        typedArrayObtainStyledAttributes.recycle();
        this.iconColor = y();
    }

    public final void u(AttributeSet attrs) {
        removeAllViews();
        LayoutInflater.from(getContext()).inflate(R.layout.os_liquid_toolbar_layout, (ViewGroup) this, true);
        String str = this.leftIconRes;
        if (str != null) {
            getLeftIcon().getMIconText().setTextColor(this.iconColor);
            getLeftIcon().setIcon(str);
            getLeftIcon().setVisibility(0);
            A();
        }
        String str2 = this.title;
        if (str2 != null) {
            setTitle(str2);
        }
        String str3 = this.subtitle;
        if (str3 != null) {
            setSubtitle(str3);
        }
        setClipChildren(false);
        setClipToPadding(false);
        if (Build.VERSION.SDK_INT >= 31) {
            setMixLevel(this.mixLevel);
        }
        getMRightContainer().enabledPressView(true);
        if (getMRightContainer().isNightMode()) {
            getMRightContainer().getOsPressView().setFillColor(Color.parseColor("#14FFFFFF"));
        } else if (getMRightContainer().getMixLevel() == 5) {
            getMRightContainer().getOsPressView().setFillColor(Color.parseColor("#33FFFFFF"));
        } else {
            getMRightContainer().getOsPressView().setFillColor(Color.parseColor("#CCFFFFFF"));
        }
    }

    public final boolean v() {
        return (getContext().getResources().getConfiguration().uiMode & 48) == 32;
    }

    public final boolean w(View child) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        return (child instanceof OSLiquidContainer) || (child instanceof OsPressSmoothCornerDrawable) || (layoutParams != null && layoutParams.width == -1 && layoutParams.height == -1);
    }

    public final boolean x(View view) {
        return view != null && view.isEnabled() && view.isClickable();
    }

    public final int y() {
        return this.mDynamicBgMode ? z(v()) : olb.m(getContext(), R.attr.os_icon_primary, R.color.os_icon_primary_hios);
    }

    public final int z(boolean night) {
        return olb.m(o(night), R.attr.os_text_primary, R.color.os_text_primary_hios);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidToolBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public final void setRightIcons(String[] icons, String[] descriptions) {
        y45.j(icons, "icons");
        if (descriptions == null || icons.length == descriptions.length) {
            getMRightContainer().setVisibility(0);
            l();
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.os_tool_bar_right_one_button_size);
            int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.os_tool_bar_right_one_button_width);
            int dimensionPixelSize3 = getContext().getResources().getDimensionPixelSize(R.dimen.os_tool_bar_button_padding);
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            int length = icons.length;
            for (int i = 0; i < length; i++) {
                Context context = getContext();
                y45.i(context, "context");
                OSIconTextView oSIconTextView = new OSIconTextView(context, null, 0, 0, 14, null);
                oSIconTextView.setLayoutParams(new LinearLayout.LayoutParams(dimensionPixelSize2, dimensionPixelSize));
                oSIconTextView.setGravity(17);
                oSIconTextView.setTextAlignment(4);
                oSIconTextView.setIncludeFontPadding(false);
                oSIconTextView.setTextColor(this.iconColor);
                oSIconTextView.setClickable(true);
                oSIconTextView.setText(icons[i]);
                if (descriptions != null) {
                    oSIconTextView.setContentDescription(descriptions[i]);
                }
                linearLayout.addView(oSIconTextView);
            }
            if (linearLayout.getChildCount() > 1) {
                int i2 = dimensionPixelSize3 / 2;
                linearLayout.setPadding(i2, 0, i2, 0);
            } else {
                linearLayout.getLayoutParams().width = getContext().getResources().getDimensionPixelSize(R.dimen.os_tool_bar_right_one_button_size);
                linearLayout.setPadding(0, 0, 0, 0);
                linearLayout.setGravity(17);
            }
            getMRightContainer().addView(linearLayout);
            D();
        }
    }

    public OSLiquidToolBar(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLiquidToolBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.leftIcon = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSLiquidButton invoke() {
                View viewFindViewById = this.this$0.findViewById(R.id.toolbar_left_icon);
                OSLiquidToolBar oSLiquidToolBar = this.this$0;
                OSLiquidButton oSLiquidButton = (OSLiquidButton) viewFindViewById;
                oSLiquidButton.setElasticTypeConfig(ElasticTypeConfig.FOB);
                oSLiquidButton.setLightTypeConfig(oSLiquidToolBar.mLightTypeConfig);
                return oSLiquidButton;
            }
        });
        this.titleTextView = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final TextView invoke() {
                return (TextView) this.this$0.findViewById(R.id.toolbar_title);
            }
        });
        this.subtitleTextView = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final TextView invoke() {
                return (TextView) this.this$0.findViewById(R.id.toolbar_subtitle);
            }
        });
        this.mRightContainer = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSLiquidContainerRootLayout invoke() {
                View viewFindViewById = this.this$0.findViewById(R.id.toolbar_right_icon_container);
                OSLiquidToolBar oSLiquidToolBar = this.this$0;
                OSLiquidContainerRootLayout oSLiquidContainerRootLayout = (OSLiquidContainerRootLayout) viewFindViewById;
                oSLiquidContainerRootLayout.setElasticTypeConfig(ElasticTypeConfig.TOOL_BAR);
                oSLiquidContainerRootLayout.setLightTypeConfig(oSLiquidToolBar.mLightTypeConfig);
                return oSLiquidContainerRootLayout;
            }
        });
        this.mPopMenuButton = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSLiquidButton invoke() {
                View viewFindViewById = this.this$0.findViewById(R.id.toolbar_pop_menu_btn);
                OSLiquidToolBar oSLiquidToolBar = this.this$0;
                OSLiquidButton oSLiquidButton = (OSLiquidButton) viewFindViewById;
                oSLiquidButton.setElasticTypeConfig(ElasticTypeConfig.FOB);
                oSLiquidButton.setLightTypeConfig(oSLiquidToolBar.mLightTypeConfig);
                return oSLiquidButton;
            }
        });
        this.mOSMaskConstraintLayout = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSMaskConstraintLayout invoke() {
                return (OSMaskConstraintLayout) this.this$0.findViewById(R.id.os_liquid_toolbar_layout);
            }
        });
        this.mTextLinearLayout = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final LinearLayout invoke() {
                return (LinearLayout) this.this$0.findViewById(R.id.toobar_title_text);
            }
        });
        this.iconColor = olb.m(context, R.attr.os_icon_primary, R.color.os_icon_primary_hios);
        this.liquidPressHelper = new u97();
        this.mLightTypeConfig = LightTypeConfig.TOOLBAR_AUTO;
        this.ITEM_PRESS_ALPHA = 0.2f;
        this.mixLevel = 6;
        t(attributeSet);
        u(attributeSet);
    }

    public final void setLeftIcon(String icon) {
        getLeftIcon().setVisibility(0);
        getLeftIcon().setIcon(icon);
        getLeftIcon().getMIconText().setTextColor(this.iconColor);
        A();
    }
}
