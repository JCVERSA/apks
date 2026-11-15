package com.transsion.widgetslib.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.effectengine.bounceeffect.IOverScrollDecor;
import com.transsion.effectengine.bounceeffect.IOverScrollListener;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.effectengine.bounceeffect.adapters.MiscViewOverScrollDecorAdapter;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.damping.OSScrollbarLayout;
import com.transsion.widgetslib.view.liquid.effect.OSLiquidContainerRootLayoutInner;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetslib.widget.OSPopupWindow;
import defpackage.abb;
import defpackage.olb;
import defpackage.qb9;
import defpackage.wn8;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000Ò\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 22\u00020\u0001:\b¢\u0001¥\u0001Õ\u0001Ö\u0001B\u001d\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B%\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\nB-\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\fJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0003¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0012j\b\u0012\u0004\u0012\u00020\u0013`\u00142\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J+\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012j\n\u0012\u0004\u0012\u00020\u0013\u0018\u0001`\u00142\u0006\u0010\u000e\u001a\u00020\rH\u0003¢\u0006\u0004\b\u0017\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ+\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00130\u001e2\u0006\u0010\u0018\u001a\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00130\u001cH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u000fH\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u000fH\u0002¢\u0006\u0004\b'\u0010&J\u001f\u0010*\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020!2\u0006\u0010)\u001a\u00020(H\u0002¢\u0006\u0004\b*\u0010+J\u001f\u0010,\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020!2\u0006\u0010)\u001a\u00020(H\u0002¢\u0006\u0004\b,\u0010+J\u0017\u0010-\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020(H\u0002¢\u0006\u0004\b-\u0010.J%\u00100\u001a\u0004\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010!2\b\b\u0002\u0010/\u001a\u00020\bH\u0002¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b2\u00103J\u000f\u00105\u001a\u000204H\u0002¢\u0006\u0004\b5\u00106J9\u0010;\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00107\u001a\u00020\b2\u0006\u00108\u001a\u00020\b2\u0006\u00109\u001a\u0002042\b\b\u0002\u0010:\u001a\u000204H\u0002¢\u0006\u0004\b;\u0010<J)\u0010@\u001a\u00020\u000f2\b\u0010=\u001a\u0004\u0018\u00010!2\u0006\u0010>\u001a\u00020\b2\u0006\u0010?\u001a\u00020\bH\u0002¢\u0006\u0004\b@\u0010AJ;\u0010F\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0E2\u0006\u0010=\u001a\u00020!2\u0006\u0010C\u001a\u00020B2\u0006\u0010D\u001a\u00020\b2\u0006\u00108\u001a\u00020\bH\u0002¢\u0006\u0004\bF\u0010GJ\u0017\u0010I\u001a\u00020H2\u0006\u0010=\u001a\u00020!H\u0002¢\u0006\u0004\bI\u0010JJ\u001f\u0010M\u001a\u00020\b2\u0006\u0010K\u001a\u00020!2\u0006\u0010L\u001a\u00020\bH\u0002¢\u0006\u0004\bM\u0010NJ\u0017\u0010O\u001a\u00020\b2\u0006\u0010K\u001a\u00020!H\u0002¢\u0006\u0004\bO\u0010PJ\u001f\u0010R\u001a\u00020\b2\u0006\u0010\"\u001a\u00020!2\u0006\u0010Q\u001a\u00020\bH\u0002¢\u0006\u0004\bR\u0010NJ\u001f\u0010T\u001a\u00020\b2\u0006\u0010K\u001a\u00020!2\u0006\u0010S\u001a\u00020\bH\u0002¢\u0006\u0004\bT\u0010NJ\u001f\u0010W\u001a\u00020\b2\u0006\u0010U\u001a\u00020\b2\u0006\u0010V\u001a\u00020!H\u0002¢\u0006\u0004\bW\u0010XJ\u0011\u0010Y\u001a\u0004\u0018\u000104H\u0002¢\u0006\u0004\bY\u0010ZJ\u001f\u0010\\\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010[\u001a\u000204H\u0002¢\u0006\u0004\b\\\u0010]J\u000f\u0010^\u001a\u00020\u000fH\u0002¢\u0006\u0004\b^\u0010&J\u0017\u0010_\u001a\u00020\b2\u0006\u0010[\u001a\u000204H\u0002¢\u0006\u0004\b_\u0010`J\u000f\u0010a\u001a\u00020\u000fH\u0002¢\u0006\u0004\ba\u0010&J\u001d\u0010c\u001a\u00020\u000f2\f\u0010b\u001a\b\u0012\u0004\u0012\u00020\u00130\u001eH\u0002¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u000204H\u0002¢\u0006\u0004\be\u00106J\u0015\u0010h\u001a\u00020\u000f2\u0006\u0010g\u001a\u00020f¢\u0006\u0004\bh\u0010iJ%\u0010k\u001a\u00020\u000f2\u0016\u0010j\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0012j\b\u0012\u0004\u0012\u00020\u0013`\u0014¢\u0006\u0004\bk\u0010lJ%\u0010n\u001a\u00020\u000f2\u0016\u0010m\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0012j\b\u0012\u0004\u0012\u00020\u0013`\u0014¢\u0006\u0004\bn\u0010lJ\u0017\u0010o\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\bo\u0010pJ\u0015\u0010q\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001e¢\u0006\u0004\bq\u0010rJ\u001d\u0010s\u001a\u00020\u000f2\u000e\u0010b\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001e¢\u0006\u0004\bs\u0010dJ\u000f\u0010t\u001a\u0004\u0018\u00010!¢\u0006\u0004\bt\u0010uJ\u0017\u0010v\u001a\u00020\u000f2\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\bv\u0010$J\u000f\u0010x\u001a\u0004\u0018\u00010w¢\u0006\u0004\bx\u0010yJ\u001d\u0010|\u001a\u00020\u000f2\u0006\u0010z\u001a\u0002042\u0006\u0010{\u001a\u000204¢\u0006\u0004\b|\u0010}J\r\u0010~\u001a\u00020\u000f¢\u0006\u0004\b~\u0010&J\u001a\u0010\u0080\u0001\u001a\u00020\u000f2\u0006\u0010\u007f\u001a\u00020\bH\u0016¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u001b\u0010\u0083\u0001\u001a\u00020\u000f2\u0007\u0010\u0082\u0001\u001a\u00020\bH\u0016¢\u0006\u0006\b\u0083\u0001\u0010\u0081\u0001J\u0011\u0010\u0084\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u0084\u0001\u0010&J\u000f\u0010\u0085\u0001\u001a\u00020\u000f¢\u0006\u0005\b\u0085\u0001\u0010&J\u001b\u0010\u0086\u0001\u001a\u00020\u000f2\b\u0010=\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0005\b\u0086\u0001\u0010$J-\u0010\u0086\u0001\u001a\u00020\u000f2\b\u0010=\u001a\u0004\u0018\u00010!2\u0007\u0010\u0087\u0001\u001a\u00020\b2\u0007\u0010\u0088\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0086\u0001\u0010AJ7\u0010\u0086\u0001\u001a\u00020\u000f2\b\u0010=\u001a\u0004\u0018\u00010!2\u0007\u0010\u0087\u0001\u001a\u00020\b2\u0007\u0010\u0088\u0001\u001a\u00020\b2\u0007\u0010\u0089\u0001\u001a\u00020\bH\u0016¢\u0006\u0006\b\u0086\u0001\u0010\u008a\u0001J6\u0010\u008c\u0001\u001a\u00020\u000f2\t\u0010\u008b\u0001\u001a\u0004\u0018\u00010!2\u0007\u0010\u0089\u0001\u001a\u00020\b2\u0006\u00102\u001a\u00020\b2\u0006\u0010T\u001a\u00020\bH\u0016¢\u0006\u0006\b\u008c\u0001\u0010\u008a\u0001J\u001e\u0010\u008f\u0001\u001a\u00020\u000f2\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0016¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u001c\u0010\u0092\u0001\u001a\u00020\u000f2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0005\b\u0092\u0001\u0010$J\u0019\u0010\u0093\u0001\u001a\u00020\u000f2\b\u0010=\u001a\u0004\u0018\u00010!¢\u0006\u0005\b\u0093\u0001\u0010$J \u0010\u0094\u0001\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020!2\u0006\u0010L\u001a\u00020\b¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001J2\u0010\u0096\u0001\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020!2\u0006\u0010L\u001a\u00020\b2\u0007\u0010\u0087\u0001\u001a\u00020\b2\u0007\u0010\u0088\u0001\u001a\u00020\b¢\u0006\u0006\b\u0096\u0001\u0010\u008a\u0001J \u0010\u0097\u0001\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020!2\u0006\u0010L\u001a\u00020\b¢\u0006\u0006\b\u0097\u0001\u0010\u0095\u0001J2\u0010\u0098\u0001\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020!2\u0006\u0010L\u001a\u00020\b2\u0007\u0010\u0087\u0001\u001a\u00020\b2\u0007\u0010\u0088\u0001\u001a\u00020\b¢\u0006\u0006\b\u0098\u0001\u0010\u008a\u0001J\u0019\u0010\u009a\u0001\u001a\u00020\u000f2\u0007\u0010\u0099\u0001\u001a\u000204¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u001b\u0010\u009d\u0001\u001a\u00020\u000f2\u0007\u0010\u009c\u0001\u001a\u000204H\u0007¢\u0006\u0006\b\u009d\u0001\u0010\u009b\u0001J\u001c\u0010 \u0001\u001a\u00020\u000f2\b\u0010\u009f\u0001\u001a\u00030\u009e\u0001H\u0007¢\u0006\u0006\b \u0001\u0010¡\u0001R\u001b\u0010¤\u0001\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u0019\u0010§\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u001b\u0010©\u0001\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010£\u0001R\u001b\u0010¬\u0001\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010«\u0001R \u0010®\u0001\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bF\u0010\u00ad\u0001R\u001a\u0010°\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bc\u0010¯\u0001R\u0018\u0010±\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\ba\u0010¦\u0001R\u0018\u0010²\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b-\u0010¦\u0001R\u0019\u0010µ\u0001\u001a\u00030³\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b^\u0010´\u0001R\u0018\u0010¶\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b#\u0010¦\u0001R\u001b\u0010¹\u0001\u001a\u0005\u0018\u00010·\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\be\u0010¸\u0001R\u0018\u0010º\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001f\u0010¦\u0001R\u001a\u0010¼\u0001\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bO\u0010»\u0001R\u0017\u0010½\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010_R\u0019\u0010¿\u0001\u001a\u00030\u009e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b%\u0010¾\u0001R\u0018\u0010À\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bI\u0010¦\u0001R!\u0010Ä\u0001\u001a\r Â\u0001*\u0005\u0018\u00010Á\u00010Á\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b;\u0010Ã\u0001R\u0018\u0010Æ\u0001\u001a\u00020f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001a\u0010Å\u0001R\u0018\u0010Ç\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\\\u0010¦\u0001R\u001b\u0010Ê\u0001\u001a\u0005\u0018\u00010È\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b*\u0010É\u0001R\u001b\u0010Í\u0001\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bË\u0001\u0010Ì\u0001R\u001b\u0010Ð\u0001\u001a\u0005\u0018\u00010Î\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b0\u0010Ï\u0001R\u001c\u0010Ô\u0001\u001a\u0005\u0018\u00010Ñ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010Ó\u0001¨\u0006×\u0001"}, d2 = {"Lcom/transsion/widgetslib/widget/OSPopupWindow;", "Landroid/widget/PopupWindow;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "Landroid/view/Menu;", "menu", "Lzfb;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Landroid/content/Context;Landroid/view/Menu;)V", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "D", "(Landroid/view/Menu;)Ljava/util/ArrayList;", "C", "ctx", "Landroid/widget/ListView;", "r", "(Landroid/content/Context;)Landroid/widget/ListView;", "", "items", "Lqb9;", CmcdData.STREAM_TYPE_LIVE, "(Landroid/content/Context;Ljava/util/List;)Lqb9;", "Landroid/view/View;", "view", "j", "(Landroid/view/View;)V", "o", "()V", "M", "Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;", TtmlNode.RUBY_CONTAINER, "t", "(Landroid/view/View;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V", "K", CmcdData.STREAMING_FORMAT_HLS, "(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V", "depth", "v", "(Landroid/view/View;I)Landroid/view/View;", "x", "(Landroid/content/Context;)I", "", ExifInterface.LATITUDE_SOUTH, "()Z", "windowHeight", "showY", "isPopupUp", "exactHeight", "q", "(Landroid/content/Context;IIZZ)I", "anchor", "contentWidth", "contentHeight", "F", "(Landroid/view/View;II)V", "", "pos", "showX", "Lkotlin/Pair;", "e", "(Landroid/view/View;[III)Lkotlin/Pair;", "Lcom/transsion/widgetslib/widget/OSPopupWindow$a;", TtmlNode.TAG_P, "(Landroid/view/View;)Lcom/transsion/widgetslib/widget/OSPopupWindow$a;", ICode.CALL.CALL_KEY_CONTENT, "itemCount", "n", "(Landroid/view/View;I)I", CmcdData.OBJECT_TYPE_MANIFEST, "(Landroid/view/View;)I", "maxWidth", "B", "measuredWidth", "y", "parentWidth", "item", "z", "(ILandroid/view/View;)I", "H", "()Ljava/lang/Boolean;", "night", "s", "(Landroid/content/Context;Z)Landroid/content/Context;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "I", "(Z)I", GslbInterceptor.HEADER_KEY_GSLB, "adapter", "f", "(Lqb9;)V", "k", "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;", "config", "setLightTypeConfig", "(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V", "data", "setData", "(Ljava/util/ArrayList;)V", "icons", "setIcons", "setMenu", "(Landroid/view/Menu;)V", "getAdpater", "()Lqb9;", "setAdapter", "getList", "()Landroid/view/View;", "setList", "Landroid/widget/FrameLayout;", "getContainer", "()Landroid/widget/FrameLayout;", "nowIsUp", "nowIsRight", "J", "(ZZ)V", "R", "width", "setWidth", "(I)V", "height", "setHeight", "dismiss", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "showAsDropDown", "xoff", "yoff", "gravity", "(Landroid/view/View;III)V", "parent", "showAtLocation", "Landroid/graphics/drawable/Drawable;", "background", "setBackgroundDrawable", "(Landroid/graphics/drawable/Drawable;)V", "mContentView", "setContentView", ExifInterface.LONGITUDE_EAST, "N", "(Landroid/view/View;I)V", "O", "P", "Q", "disable", "setDisableAnimation", "(Z)V", "blackMode", "setBlackMode", "Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;", "nightMode", "setNightMode", "(Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Landroid/view/View;", "mAnchor", "b", "Z", "isUp", "c", "mView", "d", "Landroid/widget/FrameLayout;", "mContainer", "Lqb9;", "mAdpater", "Landroid/content/Context;", "mContext", "isCustomDirection", "isDirectionWorked", "Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;", "Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;", "horizontalAlign", "mDisableAnimation", "Landroid/view/View$OnAttachStateChangeListener;", "Landroid/view/View$OnAttachStateChangeListener;", "mAttachListener", "isWindowCenter", "Ljava/lang/Integer;", "mPreCalculatedWindowHeight", "mRequestedHeight", "Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;", "mNightMode", "mDefaultAdapter", "", "kotlin.jvm.PlatformType", "Ljava/lang/String;", AbstractID3v1Tag.TAG, "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;", "mLightTypeConfig", "mOverScrollSetup", "Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;", "Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;", "mOverScrollDecor", "u", "Ljava/lang/Boolean;", "mOverScrollDampingEnabled", "Landroid/view/View$OnLayoutChangeListener;", "Landroid/view/View$OnLayoutChangeListener;", "mDampingToggleLayoutListener", "Ljava/lang/Runnable;", "w", "Ljava/lang/Runnable;", "mDampingToggleRunnable", "HorizontalAlign", "NightMode", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSPopupWindow extends PopupWindow {

    public static final Companion INSTANCE = new Companion(null);

    public View mAnchor;

    public boolean isUp;

    public View mView;

    public FrameLayout mContainer;

    public qb9 mAdpater;

    public Context mContext;

    public boolean isCustomDirection;

    public boolean isDirectionWorked;

    public HorizontalAlign horizontalAlign;

    public boolean mDisableAnimation;

    public View.OnAttachStateChangeListener mAttachListener;

    public boolean isWindowCenter;

    public Integer mPreCalculatedWindowHeight;

    public int mRequestedHeight;

    public NightMode mNightMode;

    public boolean mDefaultAdapter;

    public final String TAG;

    public LightTypeConfig mLightTypeConfig;

    public boolean mOverScrollSetup;

    public IOverScrollDecor mOverScrollDecor;

    public Boolean mOverScrollDampingEnabled;

    public View.OnLayoutChangeListener mDampingToggleLayoutListener;

    public Runnable mDampingToggleRunnable;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;", "", "(Ljava/lang/String;I)V", "START", "END", "CENTER", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum HorizontalAlign {
        START,
        END,
        CENTER
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;", "", "(Ljava/lang/String;I)V", "AUTO", "LIGHT", "DARK", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum NightMode {
        AUTO,
        LIGHT,
        DARK
    }

    public static final class a {
        public final float a;
        public final float b;
        public final float c;
        public final float d;
        public final int[] e;

        public a(float f, float f2, float f3, float f4, int[] iArr) {
            y45.j(iArr, "pos");
            this.a = f;
            this.b = f2;
            this.c = f3;
            this.d = f4;
            this.e = iArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Float.compare(this.a, aVar.a) == 0 && Float.compare(this.b, aVar.b) == 0 && Float.compare(this.c, aVar.c) == 0 && Float.compare(this.d, aVar.d) == 0 && y45.e(this.e, aVar.e);
        }

        public final float getHeight() {
            return this.d;
        }

        public final int[] getPos() {
            return this.e;
        }

        public final float getWidth() {
            return this.c;
        }

        public final float getX() {
            return this.a;
        }

        public final float getY() {
            return this.b;
        }

        public int hashCode() {
            return (((((((Float.hashCode(this.a) * 31) + Float.hashCode(this.b)) * 31) + Float.hashCode(this.c)) * 31) + Float.hashCode(this.d)) * 31) + Arrays.hashCode(this.e);
        }

        public String toString() {
            return "AnchorBounds(x=" + this.a + ", y=" + this.b + ", width=" + this.c + ", height=" + this.d + ", pos=" + Arrays.toString(this.e) + ")";
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int b(int i, int i2) {
            return i2 > 0 ? i2 : i;
        }

        public final View c(View view, LightTypeConfig lightTypeConfig) {
            ViewGroup viewGroup;
            if (view == null) {
                return null;
            }
            View viewInflate = LayoutInflater.from(view.getContext()).inflate(R.layout.os_liquid_popup_window_container, (ViewGroup) null);
            if (!(viewInflate instanceof ViewGroup)) {
                return view;
            }
            ViewGroup viewGroup2 = (ViewGroup) viewInflate;
            View viewFindViewById = viewGroup2.findViewById(R.id.liquid_popview);
            OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner = (OSLiquidContainerRootLayoutInner) viewGroup2.findViewById(R.id.liquid_container);
            oSLiquidContainerRootLayoutInner.setElasticTypeConfig(ElasticTypeConfig.POPUP_WINDOW);
            oSLiquidContainerRootLayoutInner.setLightTypeConfig(lightTypeConfig);
            oSLiquidContainerRootLayoutInner.setOnUnionRenderFrameAvailableListener();
            if (viewFindViewById instanceof ViewGroup) {
                ViewParent parent = view.getParent();
                viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(view);
                }
                ViewGroup viewGroup3 = (ViewGroup) viewFindViewById;
                viewGroup3.removeAllViews();
                viewGroup3.addView(view, new ViewGroup.LayoutParams(-1, -2));
                if (viewFindViewById instanceof OSScrollbarLayout) {
                    ((OSScrollbarLayout) viewFindViewById).setOverScrollView(view);
                }
            } else if (viewFindViewById != null) {
                ViewParent parent2 = viewFindViewById.getParent();
                viewGroup = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
                int iIndexOfChild = viewGroup != null ? viewGroup.indexOfChild(viewFindViewById) : -1;
                ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                if (viewGroup != null) {
                    viewGroup.removeView(viewFindViewById);
                }
                view.setLayoutParams(layoutParams);
                if (iIndexOfChild < 0) {
                    viewGroup2.addView(view);
                } else if (viewGroup != null) {
                    viewGroup.addView(view, iIndexOfChild);
                }
            } else {
                viewGroup2.addView(view, new ViewGroup.LayoutParams(-1, -2));
            }
            oSLiquidContainerRootLayoutInner.forceHasOverlappingRendering(false);
            return viewInflate;
        }

        public Companion() {
        }
    }

    public class c {
        public static final int[] a;

        static {
            int[] iArr = new int[NightMode.values().length];
            try {
                iArr[NightMode.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NightMode.LIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NightMode.DARK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final class d extends MiscViewOverScrollDecorAdapter {
        public final View b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(View view) {
            super(view);
            this.b = view;
        }

        @Override
        public boolean isInAbsoluteEnd() {
            return !this.b.canScrollVertically(1);
        }

        @Override
        public boolean isInAbsoluteStart() {
            return !this.b.canScrollVertically(-1);
        }
    }

    public static final class e implements View.OnLayoutChangeListener {
        public final View b;
        public final Runnable c;

        public e(View view, Runnable runnable) {
            this.b = view;
            this.c = runnable;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            y45.j(view, "v");
            if (view.getWidth() <= 0 || view.getHeight() <= 0) {
                return;
            }
            this.b.removeCallbacks(this.c);
            this.b.post(this.c);
        }
    }

    public static final class f implements View.OnAttachStateChangeListener {
        public final View c;
        public final FrameLayout d;

        public f(View view, FrameLayout frameLayout) {
            this.c = view;
            this.d = frameLayout;
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            y45.j(view, "v");
            view.removeOnAttachStateChangeListener(this);
            OSPopupWindow.this.mAttachListener = null;
            OSPopupWindow.this.t(this.c, (OSScrollbarLayout) this.d);
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            y45.j(view, "v");
        }
    }

    public OSPopupWindow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.horizontalAlign = HorizontalAlign.START;
        this.mRequestedHeight = getHeight();
        this.mNightMode = NightMode.AUTO;
        this.TAG = INSTANCE.getClass().getSimpleName();
        this.mLightTypeConfig = LightTypeConfig.POPUP_WINDOW_AUTO;
        this.mContext = context;
    }

    public static final void L(OSPopupWindow oSPopupWindow, OSScrollbarLayout oSScrollbarLayout) {
        y45.j(oSPopupWindow, "this$0");
        y45.j(oSScrollbarLayout, "$container");
        oSPopupWindow.h(oSScrollbarLayout);
    }

    public static final void u(OSScrollbarLayout oSScrollbarLayout, float f2) {
        y45.j(oSScrollbarLayout, "$container");
        oSScrollbarLayout.onOverScrollUpdated(f2);
    }

    public static View w(OSPopupWindow oSPopupWindow, View view, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: findSingleScrollableContent");
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return oSPopupWindow.v(view, i);
    }

    public final void A(Context context, Menu menu) {
        ArrayList arrayListD = D(menu);
        ArrayList arrayListC = C(menu);
        ListView listViewR = r(context);
        this.mView = listViewR;
        qb9 qb9VarL = l(context, arrayListD);
        if (arrayListC != null) {
            qb9VarL.setLeftTextIcon(arrayListC);
        }
        this.mAdpater = qb9VarL;
        listViewR.setAdapter((ListAdapter) qb9VarL);
        j(listViewR);
    }

    public final int B(View view, int maxWidth) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        if (maxWidth <= 0) {
            view.measure(0, iMakeMeasureSpec);
            return view.getMeasuredHeight();
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(maxWidth, Integer.MIN_VALUE), iMakeMeasureSpec);
        view.measure(View.MeasureSpec.makeMeasureSpec(wn8.k(view.getMeasuredWidth(), 1, maxWidth), 1073741824), iMakeMeasureSpec);
        return view.getMeasuredHeight();
    }

    public final ArrayList C(Menu menu) {
        int size = menu.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            if (menu.getItem(i).getContentDescription() == null) {
                arrayList.add("");
            } else {
                CharSequence contentDescription = menu.getItem(i).getContentDescription();
                arrayList.add(contentDescription != null ? contentDescription : "");
            }
        }
        return arrayList;
    }

    public final ArrayList D(Menu menu) {
        int size = menu.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            CharSequence title = menu.getItem(i).getTitle();
            if (title == null) {
                title = "";
            }
            arrayList.add(title);
        }
        return arrayList;
    }

    public final void E(View anchor) {
        View contentView;
        RecyclerView.Adapter adapter;
        int iN;
        Resources resources;
        if (this.isCustomDirection || (contentView = getContentView()) == null || anchor == null) {
            return;
        }
        Context context = this.mContext;
        if (context != null && (resources = context.getResources()) != null) {
            resources.getDimensionPixelSize(R.dimen.os_popup_menu_inset_left);
        }
        this.mAnchor = anchor;
        contentView.measure(0, 0);
        View view = this.mView;
        int itemCount = 1;
        if (view instanceof ListView) {
            ListAdapter adapter2 = ((ListView) view).getAdapter();
            if (adapter2 != null) {
                itemCount = adapter2.getCount();
            }
        } else if ((view instanceof RecyclerView) && (adapter = ((RecyclerView) view).getAdapter()) != null) {
            itemCount = adapter.getItemCount();
        }
        getHeight();
        View view2 = this.mView;
        if ((view2 instanceof ListView) || (view2 instanceof RecyclerView)) {
            View viewFindViewById = contentView.findViewById(R.id.liquid_popview);
            y45.i(viewFindViewById, "content.findViewById(R.id.liquid_popview)");
            iN = n(viewFindViewById, itemCount);
        } else {
            iN = m(contentView);
        }
        this.mPreCalculatedWindowHeight = Integer.valueOf(iN);
        F(anchor, contentView.getMeasuredWidth(), iN);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0084  */
    public final void F(View anchor, int contentWidth, int contentHeight) {
        View contentView;
        HorizontalAlign horizontalAlign;
        Resources resources;
        if (this.isCustomDirection || this.isDirectionWorked || (contentView = getContentView()) == null || anchor == null) {
            return;
        }
        Context context = this.mContext;
        int dimensionPixelSize = (context == null || (resources = context.getResources()) == null) ? 0 : resources.getDimensionPixelSize(R.dimen.os_popup_menu_inset_left);
        this.mAnchor = anchor;
        int iH = olb.H(contentView.getContext());
        int iD = olb.D(contentView.getContext());
        int width = getWidth() > 0 ? getWidth() : contentWidth + (dimensionPixelSize * 2);
        int[] iArr = new int[2];
        View view = this.mAnchor;
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        int height = iArr[1] + contentHeight + anchor.getHeight();
        Context context2 = contentView.getContext();
        y45.i(context2, "content.context");
        this.isUp = height > iD - x(context2);
        int i = iArr[0];
        if (i + width > iH) {
            View view2 = this.mAnchor;
            y45.g(view2);
            if ((i + view2.getWidth()) - width > 0) {
                horizontalAlign = HorizontalAlign.END;
            } else {
                horizontalAlign = HorizontalAlign.START;
            }
        } else {
            horizontalAlign = HorizontalAlign.START;
        }
        this.horizontalAlign = horizontalAlign;
        if (olb.l0()) {
            HorizontalAlign horizontalAlign2 = this.horizontalAlign;
            HorizontalAlign horizontalAlign3 = HorizontalAlign.END;
            if (horizontalAlign2 == horizontalAlign3) {
                horizontalAlign3 = HorizontalAlign.START;
            }
            this.horizontalAlign = horizontalAlign3;
        }
        this.isDirectionWorked = true;
        R();
    }

    public final void G() {
        o();
        View view = this.mView;
        if (view instanceof ListView) {
            y45.h(view, "null cannot be cast to non-null type android.widget.ListView");
            ((ListView) view).setSelector(new ColorDrawable(0));
            View view2 = this.mView;
            y45.h(view2, "null cannot be cast to non-null type android.widget.ListView");
            ((ListView) view2).setChoiceMode(0);
        }
        View contentView = getContentView();
        ViewParent parent = contentView != null ? contentView.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
        }
        FrameLayout frameLayout = this.mContainer;
        if (frameLayout != null) {
            frameLayout.setClipChildren(true);
            frameLayout.setClipToPadding(true);
        }
        M();
    }

    public final Boolean H() {
        int i = c.a[this.mNightMode.ordinal()];
        if (i == 1) {
            return null;
        }
        if (i == 2) {
            return Boolean.FALSE;
        }
        if (i == 3) {
            return Boolean.TRUE;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final int I(boolean night) {
        Context context = this.mContext;
        if (context == null) {
            return 0;
        }
        Context contextS = s(context, night);
        return night ? contextS.getColor(R.color.os_liquid_midle_bc_night_color) : olb.m(contextS, R.attr.os_liq_middle_bc_light_attr, R.color.os_liquid_midle_bc_light_color);
    }

    public final void J(boolean nowIsUp, boolean nowIsRight) {
        this.isUp = nowIsUp;
        this.horizontalAlign = nowIsRight ? HorizontalAlign.END : HorizontalAlign.START;
        this.isCustomDirection = true;
        this.isWindowCenter = false;
        R();
    }

    public final void K(View view, final OSScrollbarLayout container) {
        if (this.mDampingToggleLayoutListener != null) {
            return;
        }
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                OSPopupWindow.L(this.b, container);
            }
        };
        this.mDampingToggleRunnable = runnable;
        e eVar = new e(view, runnable);
        view.addOnLayoutChangeListener(eVar);
        this.mDampingToggleLayoutListener = eVar;
        if (view.getWidth() <= 0 || view.getHeight() <= 0) {
            return;
        }
        view.post(runnable);
    }

    public final void M() {
        View view;
        FrameLayout frameLayout;
        if (this.mOverScrollSetup || olb.E || (view = this.mView) == null || (frameLayout = this.mContainer) == null || !(frameLayout instanceof OSScrollbarLayout)) {
            return;
        }
        if (view.isAttachedToWindow()) {
            t(view, (OSScrollbarLayout) frameLayout);
            return;
        }
        f fVar = new f(view, frameLayout);
        this.mAttachListener = fVar;
        view.addOnAttachStateChangeListener(fVar);
    }

    public final void N(View anchor, int itemCount) {
        y45.j(anchor, "anchor");
        O(anchor, itemCount, 0, 0);
    }

    public final void O(View anchor, int itemCount, int xoff, int yoff) {
        Resources resources;
        y45.j(anchor, "anchor");
        E(anchor);
        this.horizontalAlign = HorizontalAlign.END;
        R();
        View contentView = getContentView();
        if (contentView == null) {
            return;
        }
        this.mAnchor = anchor;
        a aVarP = p(anchor);
        Context context = this.mContext;
        int dimensionPixelSize = (context == null || (resources = context.getResources()) == null) ? 0 : resources.getDimensionPixelSize(R.dimen.os_popup_menu_bg_margin_bottom);
        View viewFindViewById = contentView.findViewById(R.id.liquid_popview);
        y45.i(viewFindViewById, "content.findViewById(R.id.liquid_popview)");
        int iN = n(viewFindViewById, itemCount);
        this.mPreCalculatedWindowHeight = Integer.valueOf(iN);
        int y = (int) ((aVarP.getY() - iN) + aVarP.getHeight() + dimensionPixelSize);
        int dimensionPixelSize2 = contentView.getResources().getDimensionPixelSize(R.dimen.os_popup_menu_inset_left);
        Pair pairE = e(anchor, aVarP.getPos(), (anchor.getLayoutDirection() == 1 ? Float.valueOf(aVarP.getX() - dimensionPixelSize2) : Integer.valueOf((int) (((aVarP.getX() + aVarP.getWidth()) - getWidth()) + dimensionPixelSize2))).intValue(), y + yoff);
        int iIntValue = ((Number) pairE.getFirst()).intValue();
        int iIntValue2 = ((Number) pairE.getSecond()).intValue();
        Context context2 = contentView.getContext();
        y45.i(context2, "content.context");
        int iQ = q(context2, iN, iIntValue2, true, S());
        this.isDirectionWorked = true;
        showAtLocation(anchor, 0, iIntValue, iQ);
    }

    public final void P(View anchor, int itemCount) {
        y45.j(anchor, "anchor");
        Q(anchor, itemCount, 0, 0);
    }

    public final void Q(View anchor, int itemCount, int xoff, int yoff) {
        y45.j(anchor, "anchor");
        E(anchor);
        this.horizontalAlign = HorizontalAlign.END;
        R();
        View contentView = getContentView();
        if (contentView == null) {
            return;
        }
        this.mAnchor = anchor;
        a aVarP = p(anchor);
        contentView.measure(0, 0);
        int iH = (olb.g0(this.mContext) && olb.u0(this.mContext)) ? olb.H(this.mContext) : olb.E(contentView.getContext());
        int width = getWidth() > 0 ? getWidth() : contentView.getMeasuredWidth();
        int dimensionPixelSize = contentView.getResources().getDimensionPixelSize(R.dimen.os_popup_menu_inset_left);
        View viewFindViewById = contentView.findViewById(R.id.liquid_popview);
        y45.i(viewFindViewById, "content.findViewById(R.id.liquid_popview)");
        int iN = n(viewFindViewById, itemCount);
        this.mPreCalculatedWindowHeight = Integer.valueOf(iN);
        Pair pairE = e(anchor, aVarP.getPos(), ((int) wn8.j(anchor.getLayoutDirection() == 1 ? (aVarP.getX() - dimensionPixelSize) - contentView.getResources().getDimensionPixelSize(R.dimen.os_space100) : ((aVarP.getX() + aVarP.getWidth()) - width) + dimensionPixelSize + contentView.getResources().getDimensionPixelSize(R.dimen.os_space100), 0.0f, wn8.d(iH - width, 0))) + xoff, this.isUp ? (((int) aVarP.getY()) - iN) + yoff : (int) (aVarP.getY() + aVarP.getHeight() + yoff));
        int iIntValue = ((Number) pairE.getFirst()).intValue();
        int iIntValue2 = ((Number) pairE.getSecond()).intValue();
        Context context = contentView.getContext();
        y45.i(context, "content.context");
        int iQ = q(context, iN, iIntValue2, this.isUp, S());
        this.isDirectionWorked = true;
        showAtLocation(anchor, 0, iIntValue, iQ);
    }

    public final void R() {
        int i;
        if (this.isWindowCenter) {
            i = k() ? R.style.popup_anim_center_scale_center_without_alpha : R.style.popup_anim_center_scale_center;
        } else {
            boolean z = this.isUp;
            if (z && this.horizontalAlign == HorizontalAlign.END) {
                i = k() ? R.style.popup_anim_foot_option_without_alpha : R.style.popup_anim_foot_option;
            } else if (z && this.horizontalAlign == HorizontalAlign.CENTER) {
                i = k() ? R.style.popup_anim_foot_option_center_without_alpha : R.style.popup_anim_foot_option_center;
            } else if (z) {
                i = k() ? R.style.popup_anim_foot_option_normal_no_alpha : R.style.popup_anim_foot_option_normal;
            } else {
                HorizontalAlign horizontalAlign = this.horizontalAlign;
                if (horizontalAlign == HorizontalAlign.END) {
                    i = k() ? R.style.popup_anim_without_alpha : R.style.popup_anim;
                } else if (horizontalAlign == HorizontalAlign.CENTER) {
                    i = k() ? R.style.popup_anim_center_without_alpha : R.style.popup_anim_center;
                } else {
                    i = k() ? R.style.popup_anim_normal_without_alpha : R.style.popup_anim_normal;
                }
            }
        }
        setAnimationStyle(i);
    }

    public final boolean S() {
        View view = this.mView;
        return (view instanceof ListView) || (view instanceof RecyclerView) || this.mRequestedHeight != -2;
    }

    @Override
    public void dismiss() {
        o();
        super.dismiss();
    }

    public final Pair e(View anchor, int[] pos, int showX, int showY) {
        if (!olb.Q(anchor.getContext()) && !olb.Y(anchor.getContext())) {
            return abb.a(Integer.valueOf(showX), Integer.valueOf(showY));
        }
        int[] iArr = new int[2];
        anchor.getLocationInWindow(iArr);
        return abb.a(Integer.valueOf(showX - (pos[0] - iArr[0])), Integer.valueOf(showY - (pos[1] - iArr[1])));
    }

    public final void f(qb9 adapter) {
        NightMode nightMode = this.mNightMode;
        if (nightMode == NightMode.AUTO) {
            adapter.a();
            adapter.notifyDataSetChanged();
            return;
        }
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        Context contextS = s(context, nightMode == NightMode.DARK);
        int color = contextS.getColor(R.color.os_text_primary_color);
        int color2 = contextS.getColor(R.color.os_text_secondary_color);
        adapter.setTextViewColor(Integer.valueOf(color));
        adapter.setSubTextColor(Integer.valueOf(color2));
        adapter.setLeftTextIconColor(Integer.valueOf(color));
        adapter.setRightTextIconColor(Integer.valueOf(color));
        adapter.setPressColor(Integer.valueOf(olb.m(contextS, R.attr.os_opacityfill_weaker, R.color.os_opacityfill_weaker_hios)));
        adapter.notifyDataSetChanged();
    }

    public final void g() {
        if (this.mDefaultAdapter) {
            qb9 qb9Var = this.mAdpater;
            if (qb9Var == null) {
                View view = this.mView;
                ListView listView = view instanceof ListView ? (ListView) view : null;
                ListAdapter adapter = listView != null ? listView.getAdapter() : null;
                qb9Var = adapter instanceof qb9 ? (qb9) adapter : null;
            }
            if (qb9Var != null) {
                f(qb9Var);
            }
        }
    }

    public final qb9 getMAdpater() {
        return this.mAdpater;
    }

    public final FrameLayout getMContainer() {
        return this.mContainer;
    }

    public final View getMView() {
        return this.mView;
    }

    public final void h(OSScrollbarLayout container) {
        IOverScrollDecor iOverScrollDecor = this.mOverScrollDecor;
        if (iOverScrollDecor == null) {
            return;
        }
        container.refreshHasScrollBarSync();
        boolean zHasScrollBar = container.hasScrollBar();
        if (y45.e(Boolean.valueOf(zHasScrollBar), this.mOverScrollDampingEnabled)) {
            return;
        }
        if (zHasScrollBar) {
            iOverScrollDecor.enable();
        } else {
            iOverScrollDecor.disable();
        }
        this.mOverScrollDampingEnabled = Boolean.valueOf(zHasScrollBar);
    }

    public final void i() {
        Boolean boolH = H();
        if (boolH != null) {
            boolean zBooleanValue = boolH.booleanValue();
            View contentView = getContentView();
            OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner = contentView instanceof OSLiquidContainerRootLayoutInner ? (OSLiquidContainerRootLayoutInner) contentView : null;
            if (oSLiquidContainerRootLayoutInner == null) {
                return;
            }
            oSLiquidContainerRootLayoutInner.setNightMode(zBooleanValue);
            oSLiquidContainerRootLayoutInner.setDefaultBgColor(I(zBooleanValue));
        }
    }

    public final void j(View view) {
        super.setContentView(INSTANCE.c(view, this.mLightTypeConfig));
        View contentView = getContentView();
        FrameLayout frameLayout = contentView != null ? (FrameLayout) contentView.findViewById(R.id.liquid_popview) : null;
        if (frameLayout == null) {
            frameLayout = null;
        }
        this.mContainer = frameLayout;
        this.mPreCalculatedWindowHeight = null;
        i();
    }

    public final boolean k() {
        return olb.O && olb.X && olb.K;
    }

    public final qb9 l(Context ctx, List items) {
        this.mDefaultAdapter = true;
        qb9 qb9Var = new qb9(ctx, items);
        f(qb9Var);
        return qb9Var;
    }

    public final int m(View content) {
        Resources resources;
        View viewFindViewById;
        View view = this.mView;
        if (view == null) {
            view = content;
        }
        int id = content.getId();
        int i = R.id.liquid_popview;
        if (id != i && (content instanceof ViewGroup) && (viewFindViewById = content.findViewById(i)) != null) {
            content = viewFindViewById;
        }
        Rect rect = new Rect();
        Drawable background = getBackground();
        if (background != null) {
            background.getPadding(rect);
        }
        int dimensionPixelSize = 0;
        int iB = B(view, Math.max(0, (y(content, content.getMeasuredWidth()) - rect.left) - rect.right));
        int paddingTop = content.getPaddingTop() + content.getPaddingBottom();
        int i2 = rect.top + rect.bottom;
        if (i2 > 0) {
            return paddingTop + iB + i2;
        }
        Context context = this.mContext;
        if (context != null && (resources = context.getResources()) != null) {
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.os_popup_menu_bg_margin_bottom);
        }
        return paddingTop + iB + (dimensionPixelSize * 2);
    }

    public final int n(View content, int itemCount) {
        RecyclerView recyclerView;
        RecyclerView.Adapter adapter;
        Resources resources;
        ListView listView;
        ListAdapter adapter2;
        View view = this.mView;
        if (view == null) {
            view = null;
        }
        Rect rect = new Rect();
        Drawable background = getBackground();
        if (background != null) {
            background.getPadding(rect);
        }
        if ((view instanceof ListView) && (adapter2 = (listView = (ListView) view).getAdapter()) != null) {
            Context context = this.mContext;
            y45.g(context);
            int paddingTop = content.getPaddingTop() + content.getPaddingBottom() + listView.getPaddingTop() + listView.getPaddingBottom() + (context.getResources().getDimensionPixelSize(R.dimen.os_popup_menu_bg_margin_bottom) * 2);
            int iMax = Math.max(0, (y(content, content.getMeasuredWidth()) - rect.left) - rect.right);
            ViewGroup viewGroup = (ViewGroup) view;
            View view2 = adapter2.getView(0, null, viewGroup);
            y45.i(view2, "sample");
            int iZ = z(iMax, view2);
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, Integer.MIN_VALUE);
            int count = adapter2.getCount();
            for (int i = 0; i < count; i++) {
                View view3 = adapter2.getView(i, null, viewGroup);
                TextView textView = (TextView) view3.findViewById(android.R.id.text1);
                if (textView != null) {
                    textView.setMaxWidth(iZ);
                }
                TextView textView2 = (TextView) view3.findViewById(R.id.os_list_popup_sub_text);
                if (textView2 != null) {
                    textView2.setMaxWidth(iZ);
                }
                view3.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, 0));
                paddingTop += view3.getMeasuredHeight();
            }
            return paddingTop;
        }
        if (!(view instanceof RecyclerView) || (adapter = (recyclerView = (RecyclerView) view).getAdapter()) == null) {
            if (view != null) {
                return m(content);
            }
            int paddingTop2 = content.getPaddingTop() + content.getPaddingBottom();
            Context context2 = this.mContext;
            y45.g(context2);
            return paddingTop2 + (context2.getResources().getDimensionPixelSize(R.dimen.os_popup_menu_bg_margin_bottom) * 2);
        }
        Context context3 = this.mContext;
        int paddingTop3 = content.getPaddingTop() + content.getPaddingBottom() + recyclerView.getPaddingTop() + recyclerView.getPaddingBottom() + (((context3 == null || (resources = context3.getResources()) == null) ? 0 : resources.getDimensionPixelSize(R.dimen.os_popup_menu_bg_margin_bottom)) * 2);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (y(content, recyclerView.getWidth()) - rect.left) - rect.right), Integer.MIN_VALUE);
        FrameLayout frameLayout = new FrameLayout(recyclerView.getContext());
        int itemCount2 = adapter.getItemCount();
        for (int i2 = 0; i2 < itemCount2; i2++) {
            RecyclerView.ViewHolder viewHolderOnCreateViewHolder = adapter.onCreateViewHolder(frameLayout, adapter.getItemViewType(i2));
            y45.i(viewHolderOnCreateViewHolder, "adapter.onCreateViewHolder(parent, vt)");
            adapter.onBindViewHolder(viewHolderOnCreateViewHolder, i2);
            View view4 = viewHolderOnCreateViewHolder.itemView;
            y45.i(view4, "vh.itemView");
            view4.measure(iMakeMeasureSpec2, View.MeasureSpec.makeMeasureSpec(0, 0));
            paddingTop3 += view4.getMeasuredHeight();
        }
        return paddingTop3;
    }

    public final void o() {
        View view;
        View view2;
        View view3;
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.mAttachListener;
        if (onAttachStateChangeListener != null && (view3 = this.mView) != null) {
            view3.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        }
        this.mAttachListener = null;
        Runnable runnable = this.mDampingToggleRunnable;
        if (runnable != null && (view2 = this.mView) != null) {
            view2.removeCallbacks(runnable);
        }
        View.OnLayoutChangeListener onLayoutChangeListener = this.mDampingToggleLayoutListener;
        if (onLayoutChangeListener != null && (view = this.mView) != null) {
            view.removeOnLayoutChangeListener(onLayoutChangeListener);
        }
        this.mDampingToggleLayoutListener = null;
        this.mDampingToggleRunnable = null;
        this.mOverScrollDecor = null;
        this.mOverScrollDampingEnabled = null;
        this.mOverScrollSetup = false;
    }

    public final a p(View anchor) {
        int[] iArr = new int[2];
        anchor.getLocationOnScreen(iArr);
        RectF rectF = new RectF(0.0f, 0.0f, anchor.getWidth(), anchor.getHeight());
        anchor.getMatrix().mapRect(rectF);
        return new a(rectF.left + iArr[0], rectF.top + iArr[1], rectF.width(), rectF.height(), iArr);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0024  */
    public final int q(Context context, int windowHeight, int showY, boolean isPopupUp, boolean exactHeight) {
        int i;
        int iL = olb.L(context);
        int iX = x(context);
        int iD = olb.D(context);
        View contentView = getContentView();
        if (contentView != null) {
            ViewGroup.LayoutParams layoutParams = contentView.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            if (marginLayoutParams != null) {
                i = marginLayoutParams.bottomMargin;
            } else {
                i = 0;
            }
        } else {
            i = 0;
        }
        int i2 = (iD - iX) - i;
        if (!isPopupUp) {
            int iG = wn8.g(windowHeight, wn8.d(i2 - showY, 0));
            if (iG < windowHeight) {
                super.setHeight(iG);
            } else if (exactHeight) {
                super.setHeight(windowHeight);
            } else {
                super.setHeight(-2);
            }
            return wn8.g(showY, i2 - iG);
        }
        int i3 = showY + windowHeight;
        int iG2 = wn8.g(windowHeight, wn8.d(i3 - iL, 0));
        if (iG2 < windowHeight) {
            super.setHeight(iG2);
        } else if (exactHeight) {
            super.setHeight(windowHeight);
        } else {
            super.setHeight(-2);
        }
        return i3 - iG2;
    }

    public final ListView r(Context ctx) {
        ListView listView = new ListView(ctx);
        listView.setDivider(null);
        listView.setSelector(new ColorDrawable(0));
        listView.setChoiceMode(0);
        return listView;
    }

    public final Context s(Context context, boolean night) {
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.uiMode = (night ? 32 : 16) | (configuration.uiMode & (-49));
        Context contextCreateConfigurationContext = context.createConfigurationContext(configuration);
        y45.i(contextCreateConfigurationContext, "context.createConfigurat…O\n            }\n        )");
        return contextCreateConfigurationContext;
    }

    public final void setAdapter(qb9 adapter) {
        this.mAdpater = adapter;
        this.mDefaultAdapter = false;
    }

    @Override
    public void setBackgroundDrawable(Drawable background) {
        super.setBackgroundDrawable(background);
    }

    @RequiresApi(31)
    public final void setBlackMode(boolean blackMode) {
        setNightMode(blackMode ? NightMode.DARK : NightMode.LIGHT);
    }

    @Override
    public void setContentView(View mContentView) {
        this.mView = w(this, mContentView, 0, 2, null);
        super.setContentView(INSTANCE.c(mContentView, this.mLightTypeConfig));
        View contentView = getContentView();
        FrameLayout frameLayout = contentView != null ? (FrameLayout) contentView.findViewById(R.id.liquid_popview) : null;
        if (frameLayout == null) {
            frameLayout = null;
        }
        this.mContainer = frameLayout;
        this.mPreCalculatedWindowHeight = null;
        i();
    }

    public final void setData(ArrayList<CharSequence> data) {
        y45.j(data, "data");
        Context context = this.mContext;
        y45.g(context);
        qb9 qb9VarL = l(context, data);
        Context context2 = this.mContext;
        y45.g(context2);
        ListView listViewR = r(context2);
        this.mView = listViewR;
        this.mAdpater = qb9VarL;
        listViewR.setAdapter((ListAdapter) qb9VarL);
        j(listViewR);
    }

    public final void setDisableAnimation(boolean disable) {
        this.mDisableAnimation = disable;
    }

    @Override
    public void setHeight(int height) {
        this.mRequestedHeight = height;
        super.setHeight(height);
    }

    public final void setIcons(ArrayList<CharSequence> icons) {
        y45.j(icons, "icons");
        qb9 qb9Var = this.mAdpater;
        if (qb9Var == null) {
            return;
        }
        y45.g(qb9Var);
        qb9Var.setLeftTextIcon(icons);
    }

    public final void setLightTypeConfig(LightTypeConfig config) {
        OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner;
        y45.j(config, "config");
        this.mLightTypeConfig = config;
        View contentView = getContentView();
        if (contentView == null || (oSLiquidContainerRootLayoutInner = (OSLiquidContainerRootLayoutInner) contentView.findViewById(R.id.liquid_container)) == null) {
            return;
        }
        oSLiquidContainerRootLayoutInner.setLightTypeConfig(config);
    }

    public final void setList(View view) {
        this.mView = view;
        setContentView(view);
    }

    @RequiresApi(26)
    public final void setMenu(Menu menu) {
        y45.j(menu, "menu");
        Context context = this.mContext;
        y45.g(context);
        A(context, menu);
    }

    @RequiresApi(31)
    public final void setNightMode(NightMode nightMode) {
        y45.j(nightMode, "nightMode");
        this.mNightMode = nightMode;
        i();
        g();
    }

    @Override
    public void setWidth(int width) {
        Context context = this.mContext;
        y45.g(context);
        Resources resources = context.getResources();
        y45.i(resources, "context.resources");
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        int iApplyDimension = olb.g0(context) ? (int) TypedValue.applyDimension(1, 310.0f, displayMetrics) : (int) ((olb.Z(context) ? olb.t(context, R.dimen.os_ultra_small_popup_window_width_max_weight) : olb.t(context, R.dimen.os_popup_window_width_max_weight)) * displayMetrics.widthPixels);
        int iApplyDimension2 = (int) TypedValue.applyDimension(1, 144.0f, displayMetrics);
        if (width > iApplyDimension) {
            width = iApplyDimension;
        } else if (width < iApplyDimension2) {
            width = iApplyDimension2;
        }
        super.setWidth(width);
    }

    @Override
    public void showAsDropDown(View anchor) {
        this.mAnchor = anchor;
        E(anchor);
        if (!this.isCustomDirection) {
            this.isUp = false;
            R();
        }
        super.showAsDropDown(anchor);
        G();
        this.isDirectionWorked = false;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0054  */
    @Override
    public void showAtLocation(View parent, int gravity, int x, int y) {
        RecyclerView.Adapter adapter;
        int itemCount;
        int iN;
        int iB;
        int i;
        this.mAnchor = parent;
        boolean z = this.isDirectionWorked;
        if (!z) {
            E(parent);
        }
        Context context = parent != null ? parent.getContext() : null;
        if (context != null && !z) {
            Integer num = this.mPreCalculatedWindowHeight;
            if (num != null) {
                iB = INSTANCE.b(this.mRequestedHeight, num.intValue());
            } else {
                View contentView = getContentView();
                if (contentView != null && contentView.getMeasuredWidth() == 0 && contentView.getMeasuredHeight() == 0) {
                    contentView.measure(0, 0);
                }
                View view = this.mView;
                if (view instanceof ListView) {
                    ListAdapter adapter2 = ((ListView) view).getAdapter();
                    if (adapter2 != null) {
                        itemCount = adapter2.getCount();
                    } else {
                        itemCount = 1;
                    }
                } else if (!(view instanceof RecyclerView) || (adapter = ((RecyclerView) view).getAdapter()) == null) {
                    itemCount = 1;
                } else {
                    itemCount = adapter.getItemCount();
                }
                if (contentView != null) {
                    y45.i(contentView, ICode.CALL.CALL_KEY_CONTENT);
                    View view2 = this.mView;
                    if ((view2 instanceof ListView) || (view2 instanceof RecyclerView)) {
                        View viewFindViewById = contentView.findViewById(R.id.liquid_popview);
                        y45.i(viewFindViewById, "it.findViewById(R.id.liquid_popview)");
                        iN = n(viewFindViewById, itemCount);
                    } else {
                        iN = m(contentView);
                    }
                } else {
                    iN = 0;
                }
                iB = INSTANCE.b(this.mRequestedHeight, iN);
            }
            int i2 = iB;
            if (parent != null) {
                int[] iArr = new int[2];
                parent.getLocationOnScreen(iArr);
                i = iArr[1];
            } else {
                i = 0;
            }
            y = q(context, i2, y, (gravity & 112) != 48 && y > olb.L(context) && y < i, S());
        }
        super.showAtLocation(parent, gravity, x, y);
        G();
        this.isDirectionWorked = false;
        this.isWindowCenter = false;
        this.mPreCalculatedWindowHeight = null;
    }

    public final void t(View view, final OSScrollbarLayout container) {
        IOverScrollDecor upMiscViewOverScroll;
        if (this.mOverScrollSetup) {
            return;
        }
        view.setOverScrollMode(0);
        if (view instanceof RecyclerView) {
            upMiscViewOverScroll = OverScrollDecorHelper.setUpOverScroll((RecyclerView) view, 0, false);
        } else {
            upMiscViewOverScroll = view instanceof ListView ? OverScrollDecorHelper.setUpMiscViewOverScroll(view, 0, new d(view)) : null;
        }
        if (upMiscViewOverScroll != null) {
            upMiscViewOverScroll.setVibrateEnable(false);
        }
        if (upMiscViewOverScroll != null) {
            upMiscViewOverScroll.setOverScrollListener(new IOverScrollListener() {
                @Override
                public final void onOverScrollUpdated(float f2) {
                    OSPopupWindow.u(container, f2);
                }
            });
        }
        this.mOverScrollDecor = upMiscViewOverScroll;
        this.mOverScrollSetup = true;
        K(view, container);
    }

    public final View v(View view, int depth) {
        if (!(view instanceof ListView) && !(view instanceof RecyclerView) && depth < 3 && (view instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() == 1) {
                return v(viewGroup.getChildAt(0), depth + 1);
            }
        }
        return view;
    }

    public final int x(Context context) {
        int iX = olb.x(context.getResources());
        return iX > 0 ? iX : context.getResources().getDimensionPixelSize(R.dimen.gesture_nav_bar_height);
    }

    public final int y(View content, int measuredWidth) {
        ViewGroup.LayoutParams layoutParams = content.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        int marginStart = marginLayoutParams != null ? marginLayoutParams.getMarginStart() + marginLayoutParams.getMarginEnd() : 0;
        if (getWidth() > 0) {
            measuredWidth = getWidth() - marginStart;
        }
        return Math.max(0, (measuredWidth - content.getPaddingLeft()) - content.getPaddingRight());
    }

    public final int z(int parentWidth, View item) {
        int marginEnd;
        int marginStart;
        int dimensionPixelSize = item.getResources().getDimensionPixelSize(R.dimen.os_popup_menu_size);
        View viewFindViewById = item.findViewById(R.id.os_list_popup_left_text_icon);
        if (viewFindViewById == null || viewFindViewById.getVisibility() != 0) {
            marginEnd = 0;
        } else {
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            marginEnd = (marginLayoutParams != null ? marginLayoutParams.getMarginEnd() : 0) + dimensionPixelSize;
        }
        View viewFindViewById2 = item.findViewById(R.id.os_list_popup_right_text_icon);
        if (viewFindViewById2 == null || viewFindViewById2.getVisibility() != 0) {
            marginStart = 0;
        } else {
            ViewGroup.LayoutParams layoutParams2 = viewFindViewById2.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            marginStart = dimensionPixelSize + (marginLayoutParams2 != null ? marginLayoutParams2.getMarginStart() : 0);
        }
        int paddingLeft = ((parentWidth - (item.getPaddingLeft() + item.getPaddingRight())) - marginEnd) - marginStart;
        if (paddingLeft > 0) {
            return paddingLeft;
        }
        return 0;
    }

    public OSPopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.horizontalAlign = HorizontalAlign.START;
        this.mRequestedHeight = getHeight();
        this.mNightMode = NightMode.AUTO;
        this.TAG = INSTANCE.getClass().getSimpleName();
        this.mLightTypeConfig = LightTypeConfig.POPUP_WINDOW_AUTO;
        this.mContext = context;
    }

    @Override
    public void showAsDropDown(View anchor, int xoff, int yoff) {
        this.mAnchor = anchor;
        E(anchor);
        if (!this.isCustomDirection) {
            this.isUp = false;
            R();
        }
        super.showAsDropDown(anchor, xoff, yoff);
        G();
        this.isDirectionWorked = false;
    }

    public OSPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.horizontalAlign = HorizontalAlign.START;
        this.mRequestedHeight = getHeight();
        this.mNightMode = NightMode.AUTO;
        this.TAG = INSTANCE.getClass().getSimpleName();
        this.mLightTypeConfig = LightTypeConfig.POPUP_WINDOW_AUTO;
        this.mContext = context;
    }

    @Override
    public void showAsDropDown(View anchor, int xoff, int yoff, int gravity) {
        this.mAnchor = anchor;
        E(anchor);
        if (!this.isCustomDirection) {
            this.isUp = false;
            R();
        }
        super.showAsDropDown(anchor, xoff, yoff, gravity);
        G();
        this.isDirectionWorked = false;
    }
}
