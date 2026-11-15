package com.transsion.widgetsbottomsheet.bottomsheet;

import android.content.Context;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.StringRes;
import androidx.core.view.NestedScrollingChild;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.push.PushConstants;
import com.transsion.widgetsbottomsheet.R;
import com.transsion.widgetsbottomsheet.bottomsheet.OSPageView;
import com.transsion.widgetsbottomsheet.databinding.OsBottomSheetTitleBinding;
import com.transsion.widgetsliquid.effect.OSMaskFrameLayout;
import com.transsion.widgetsliquid.view.OSLiquidButton;
import com.transsion.widgetsliquid.view.OSLiquidTextButton;
import defpackage.c74;
import defpackage.e74;
import defpackage.olb;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u0007\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u000f\n\u0002\b\u000b*\u0002Ý\u0001\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u001a\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001d\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001e\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001f\u0010\u001cJ\u000f\u0010 \u001a\u00020\u0016H\u0002¢\u0006\u0004\b \u0010\u001cJ\u000f\u0010!\u001a\u00020\u0016H\u0002¢\u0006\u0004\b!\u0010\u001cJ\u001f\u0010#\u001a\u00020\u00162\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u0014H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0016H\u0002¢\u0006\u0004\b%\u0010\u001cJ\u000f\u0010&\u001a\u00020\u0016H\u0002¢\u0006\u0004\b&\u0010\u001cJ\u0017\u0010)\u001a\u00020\u00142\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0016H\u0002¢\u0006\u0004\b+\u0010\u001cJ\u000f\u0010,\u001a\u00020\u0016H\u0002¢\u0006\u0004\b,\u0010\u001cJ\u0019\u0010.\u001a\u00020\u00162\b\u0010-\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b.\u0010/J\u0017\u00101\u001a\u00020\u00162\u0006\u00100\u001a\u00020\u0006H\u0002¢\u0006\u0004\b1\u00102J\u0019\u00103\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0016H\u0014¢\u0006\u0004\b5\u0010\u001cJ\u000f\u00106\u001a\u00020\u0016H\u0014¢\u0006\u0004\b6\u0010\u001cJ\u0015\u00109\u001a\u00020\u00002\u0006\u00108\u001a\u000207¢\u0006\u0004\b9\u0010:J\u0015\u00109\u001a\u00020\u00002\u0006\u0010;\u001a\u00020\u0006¢\u0006\u0004\b9\u0010<J\u0015\u0010>\u001a\u00020\u00002\u0006\u0010=\u001a\u000207¢\u0006\u0004\b>\u0010:J-\u0010C\u001a\u00020\u00002\u0006\u0010?\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u00062\u0006\u0010A\u001a\u00020\u00062\u0006\u0010B\u001a\u00020\u0006¢\u0006\u0004\bC\u0010DJ\u0015\u0010F\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\u0006¢\u0006\u0004\bF\u0010<J\u0017\u0010H\u001a\u00020\u00002\b\b\u0001\u0010G\u001a\u00020\u0006¢\u0006\u0004\bH\u0010<J\u0017\u0010J\u001a\u00020\u00002\b\b\u0001\u0010I\u001a\u00020\u0006¢\u0006\u0004\bJ\u0010<J\u0017\u0010L\u001a\u00020\u00002\b\b\u0001\u0010K\u001a\u00020\u0006¢\u0006\u0004\bL\u0010<J\u0015\u0010O\u001a\u00020\u00002\u0006\u0010N\u001a\u00020M¢\u0006\u0004\bO\u0010PJ\u001d\u0010O\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u00062\u0006\u0010N\u001a\u00020M¢\u0006\u0004\bO\u0010RJ\u0015\u0010S\u001a\u00020\u00002\u0006\u0010S\u001a\u00020\u0014¢\u0006\u0004\bS\u0010TJ\u0015\u0010V\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0006¢\u0006\u0004\bV\u0010<J\u0019\u0010X\u001a\u00020\u00162\b\b\u0001\u0010K\u001a\u00020\u0006H\u0000¢\u0006\u0004\bW\u00102J\u0017\u0010[\u001a\u00020\u00162\u0006\u0010Y\u001a\u00020\u0014H\u0000¢\u0006\u0004\bZ\u0010\u0018J\u000f\u0010^\u001a\u00020\u0014H\u0000¢\u0006\u0004\b\\\u0010]J\u000f\u0010a\u001a\u00020\u0006H\u0001¢\u0006\u0004\b_\u0010`J\u000f\u0010c\u001a\u00020\u0006H\u0000¢\u0006\u0004\bb\u0010`J%\u0010h\u001a\u00020\u00162\u0014\u0010e\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0016\u0018\u00010dH\u0000¢\u0006\u0004\bf\u0010gJ\u001f\u0010l\u001a\u00020\u00002\b\b\u0001\u0010i\u001a\u00020\u00062\u0006\u0010k\u001a\u00020j¢\u0006\u0004\bl\u0010mJ\u001d\u0010l\u001a\u00020\u00002\u0006\u0010n\u001a\u0002072\u0006\u0010k\u001a\u00020j¢\u0006\u0004\bl\u0010oJ\u001f\u0010p\u001a\u00020\u00002\b\b\u0001\u0010i\u001a\u00020\u00062\u0006\u0010k\u001a\u00020j¢\u0006\u0004\bp\u0010mJ\u001d\u0010p\u001a\u00020\u00002\u0006\u0010n\u001a\u0002072\u0006\u0010k\u001a\u00020j¢\u0006\u0004\bp\u0010oJ\u001f\u0010q\u001a\u00020\u00002\b\b\u0001\u0010i\u001a\u00020\u00062\u0006\u0010k\u001a\u00020j¢\u0006\u0004\bq\u0010mJ\u001d\u0010q\u001a\u00020\u00002\u0006\u0010n\u001a\u0002072\u0006\u0010k\u001a\u00020j¢\u0006\u0004\bq\u0010oJ\u001f\u0010r\u001a\u00020\u00002\b\b\u0001\u0010i\u001a\u00020\u00062\u0006\u0010k\u001a\u00020j¢\u0006\u0004\br\u0010mJ\u001d\u0010r\u001a\u00020\u00002\u0006\u0010n\u001a\u0002072\u0006\u0010k\u001a\u00020j¢\u0006\u0004\br\u0010oJ\u0015\u0010s\u001a\u00020\u00002\u0006\u0010k\u001a\u00020j¢\u0006\u0004\bs\u0010tJ\u0015\u0010u\u001a\u00020\u00002\u0006\u0010k\u001a\u00020j¢\u0006\u0004\bu\u0010tJ\u0015\u0010w\u001a\u00020\u00002\u0006\u0010v\u001a\u00020\u0014¢\u0006\u0004\bw\u0010TJ\u0015\u0010x\u001a\u00020\u00002\u0006\u0010v\u001a\u00020\u0014¢\u0006\u0004\bx\u0010TJ\u0015\u0010y\u001a\u00020\u00002\u0006\u0010v\u001a\u00020\u0014¢\u0006\u0004\by\u0010TJ\u0015\u0010z\u001a\u00020\u00002\u0006\u0010v\u001a\u00020\u0014¢\u0006\u0004\bz\u0010TJ\u0015\u0010{\u001a\u00020\u00002\u0006\u0010v\u001a\u00020\u0014¢\u0006\u0004\b{\u0010TJ\u0015\u0010|\u001a\u00020\u00002\u0006\u0010v\u001a\u00020\u0014¢\u0006\u0004\b|\u0010TJ \u0010\u007f\u001a\u00020\u00162\u0006\u0010}\u001a\u00020\u00062\u0006\u0010~\u001a\u00020\u0006H\u0014¢\u0006\u0005\b\u007f\u0010\u0080\u0001J;\u0010\u0082\u0001\u001a\u00020\u00162\u0007\u0010\u0081\u0001\u001a\u00020\u00142\u0006\u0010?\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u00062\u0006\u0010A\u001a\u00020\u00062\u0006\u0010B\u001a\u00020\u0006H\u0014¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\u001b\u0010\u0084\u0001\u001a\u00020\u00162\b\u0010-\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0005\b\u0084\u0001\u0010/J(\u0010\u0084\u0001\u001a\u00020\u00162\b\u0010-\u001a\u0004\u0018\u00010\u000b2\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0016¢\u0006\u0006\b\u0084\u0001\u0010\u0087\u0001J\u0012\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u000b¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J\u0017\u0010\u008a\u0001\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0014¢\u0006\u0005\b\u008a\u0001\u0010TJ\u0011\u0010\u008c\u0001\u001a\u00030\u008b\u0001¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001J\u0011\u0010\u008e\u0001\u001a\u00030\u008b\u0001¢\u0006\u0006\b\u008e\u0001\u0010\u008d\u0001J\u0011\u0010\u008f\u0001\u001a\u00030\u008b\u0001¢\u0006\u0006\b\u008f\u0001\u0010\u008d\u0001J\u0011\u0010\u0090\u0001\u001a\u00030\u008b\u0001¢\u0006\u0006\b\u0090\u0001\u0010\u008d\u0001J\u0011\u0010\u0092\u0001\u001a\u00030\u0091\u0001¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J\u0011\u0010\u0094\u0001\u001a\u00030\u0091\u0001¢\u0006\u0006\b\u0094\u0001\u0010\u0093\u0001J\u0010\u0010\u0095\u0001\u001a\u00020\u000b¢\u0006\u0006\b\u0095\u0001\u0010\u0089\u0001J\u0017\u0010\u0097\u0001\u001a\t\u0012\u0004\u0012\u00020\u000b0\u0096\u0001¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001J\u0019\u0010\u0099\u0001\u001a\u00020\u00002\b\b\u0001\u0010N\u001a\u00020\u0006¢\u0006\u0005\b\u0099\u0001\u0010<R\u001b\u0010\u009c\u0001\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u001b\u0010\u009e\u0001\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009b\u0001R\u001b\u0010 \u0001\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010\u009b\u0001R\u001b\u0010¢\u0001\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010\u009b\u0001R\u001b\u0010¥\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R \u0010ª\u0001\u001a\u00030¦\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b,\u0010§\u0001\u001a\u0006\b¨\u0001\u0010©\u0001R\u0018\u0010¬\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b+\u0010«\u0001R\u001b\u0010¯\u0001\u001a\u0005\u0018\u00010\u00ad\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001e\u0010®\u0001R\u001a\u0010±\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b1\u0010°\u0001R\u0018\u0010²\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001f\u0010«\u0001R\u0019\u0010´\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010«\u0001R\u0019\u0010·\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010¶\u0001R'\u0010º\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0016\u0018\u00010d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001R\u0019\u0010¼\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b»\u0001\u0010«\u0001R\u0018\u0010½\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001d\u0010«\u0001R\u0019\u0010¿\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010«\u0001R\u0018\u0010À\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b \u0010«\u0001R\u001a\u0010Á\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0017\u0010¤\u0001R\u001e\u0010Ã\u0001\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u001a\u0010§\u0001\u001a\u0005\bÂ\u0001\u0010`R\u001f\u0010Æ\u0001\u001a\u00020\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b3\u0010§\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001R\u0017\u0010É\u0001\u001a\u00030Ç\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b#\u0010È\u0001R\u0018\u0010Ë\u0001\u001a\u00020M8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001b\u0010Ê\u0001R\u0018\u0010Ì\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\r\u0010«\u0001R\u001b\u0010Ï\u0001\u001a\u0005\u0018\u00010Í\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b.\u0010Î\u0001R\u0018\u0010Ð\u0001\u001a\u00020M8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b!\u0010Ê\u0001R\u0018\u0010Ñ\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b&\u0010¶\u0001R\u001b\u0010Ò\u0001\u001a\u0005\u0018\u00010Í\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0012\u0010Î\u0001R\u001b\u0010Ô\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0001\u0010°\u0001R\u001a\u0010Õ\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b%\u0010°\u0001R\u0018\u0010Ö\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b)\u0010¶\u0001R\u0019\u0010×\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010«\u0001R\u0017\u0010Ù\u0001\u001a\u00020\u00068\u0002X\u0082D¢\u0006\b\n\u0006\bØ\u0001\u0010«\u0001R\u0019\u0010Û\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÚ\u0001\u0010¶\u0001R\u0018\u0010Ü\u0001\u001a\u00030Ç\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b«\u0001\u0010È\u0001R\u0018\u0010à\u0001\u001a\u00030Ý\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÞ\u0001\u0010ß\u0001R\u0017\u0010â\u0001\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\b\u001a\u0006\bá\u0001\u0010\u0089\u0001R\u0017\u0010ä\u0001\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\b\u001a\u0006\bã\u0001\u0010\u0089\u0001R\u0017\u0010æ\u0001\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\b\u001a\u0006\bå\u0001\u0010\u0089\u0001¨\u0006ç\u0001"}, d2 = {"Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "Landroid/view/View;", "view", "x", "(Landroid/view/View;)I", TtmlNode.RUBY_CONTAINER, "first", "second", "B", "(Landroid/view/View;Landroid/view/View;Landroid/view/View;)I", "", "preferLeftIcon", "Lzfb;", "s", "(Z)V", "preferRightIcon", "t", "w", "()V", TtmlNode.TAG_P, CmcdData.OBJECT_TYPE_INIT_SEGMENT, "k", "r", "z", "isIncrease", "v", "(Landroid/view/View;Z)V", "D", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Landroid/widget/TextView;", "textView", ExifInterface.LONGITUDE_EAST, "(Landroid/widget/TextView;)Z", CmcdData.STREAMING_FORMAT_HLS, GslbInterceptor.HEADER_KEY_GSLB, "child", "y", "(Landroid/view/View;)V", "measuredTitleHeight", "j", "(I)V", "u", "(Landroid/view/View;)Landroid/view/View;", "onAttachedToWindow", "onDetachedFromWindow", "", "title", "setTitle", "(Ljava/lang/String;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "titleResId", "(I)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "subTitle", "setSubTitle", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "setBottomSheetTitlePadding", "(IIII)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "lengthPx", "setTitleMaskLengthPx", "lengthResId", "setTitleMaskLength", "colorResId", "setTitleMaskColorRes", "color", "setTitleMaskColor", "", PlayAudioData.TAG_SIZE, "setTitleSize", "(F)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "unit", "(IF)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "showTitle", "(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "dragSpaceTopPx", "setDragSpaceTop", "setTitleMaskColorFromPanel$widgetsbottomsheet_release", "setTitleMaskColorFromPanel", "visible", "setTitleMaskVisibleFromPanel$widgetsbottomsheet_release", "setTitleMaskVisibleFromPanel", "hasCustomTitleMaskColor$widgetsbottomsheet_release", "()Z", "hasCustomTitleMaskColor", "getTitleMaskColor$widgetsbottomsheet_release", "()I", "getTitleMaskColor", "getTitleMaskLengthPx$widgetsbottomsheet_release", "getTitleMaskLengthPx", "Lkotlin/Function1;", "listener", "setTitleMaskChangedListener$widgetsbottomsheet_release", "(Le74;)V", "setTitleMaskChangedListener", "iconStrRes", "Landroid/view/View$OnClickListener;", "onTitleClickListener", "setOnTitleLeftIconClickListener", "(ILandroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "iconStr", "(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "setOnTitleLeftButtonClickListener", "setOnTitleRightIconClickListener", "setOnTitleRightButtonClickListener", "setOnTitleCloseIconClickListener", "(Landroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "setOnTitleBackIconClickListener", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setLeftIconVisibility", "setRightIconVisibility", "setLeftButtonVisibility", "setRightButtonVisibility", "setCloseIconVisibility", "setBackIconVisibility", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "changed", "onLayout", "(ZIIII)V", "addView", "Landroid/view/ViewGroup$LayoutParams;", "params", "(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V", "getContentView", "()Landroid/view/View;", "setTitleLayoutVisible", "Lcom/transsion/widgetsliquid/view/OSLiquidButton;", "getBackImageView", "()Lcom/transsion/widgetsliquid/view/OSLiquidButton;", "getCloseImageView", "getLeftIconView", "getRightIconView", "Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;", "getLeftButtonView", "()Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;", "getRightButtonView", "getTitleView", "", "getTitleTextViews", "()Ljava/util/List;", "setButtonTextSize", "b", "Landroid/view/View$OnClickListener;", "mOnLeftIconClickListener", "c", "mOnRightIconClickListener", "d", "mOnLeftButtonClickListener", "e", "mOnRightButtonClickListener", "f", "Landroid/view/View;", "mContentView", "Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;", "Lyi5;", "getMDataBinding", "()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;", "mDataBinding", "I", "buttonNum", "Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;", "Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;", "mMaskFrame", "Ljava/lang/Integer;", "mDragSpaceTopPx", "mTitleMaskColor", CmcdData.STREAM_TYPE_LIVE, "mTitleMaskLengthPx", CmcdData.OBJECT_TYPE_MANIFEST, "Z", "mHasCustomTitleMaskColor", "n", "Le74;", "mTitleMaskChangedListener", "o", "mBaseMaskPaddingStart", "mBaseMaskPaddingTop", "q", "mBaseMaskPaddingEnd", "mBaseMaskPaddingBottom", "mCachedScrollableView", "getExtraInset", "extraInset", "getContentHolder", "()Landroid/widget/FrameLayout;", "contentHolder", "Landroid/view/View$OnLayoutChangeListener;", "Landroid/view/View$OnLayoutChangeListener;", "titleLayoutChangeListener", "F", "titleBaseTextSize", "titleResizeAttempt", "", "Ljava/lang/CharSequence;", "titleExpectedText", "subTitleBaseTextSize", "subTitleResized", "subTitleExpectedText", "C", "titleInsetStart", "titleInsetEnd", "titleLayoutRefreshScheduled", "titleLayoutRefreshIterCount", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "MAX_TITLE_LAYOUT_ITER_COUNT", "H", "containerLayoutListenerAdded", "containerLayoutChangeListener", "com/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1", "J", "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1;", "titleLayoutRefreshRunnable", "getLeftContainer", "leftContainer", "getRightContainer", "rightContainer", "getTitleContainer", "titleContainer", "widgetsbottomsheet_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSPageView extends FrameLayout {

    public boolean subTitleResized;

    public CharSequence subTitleExpectedText;

    public Integer titleInsetStart;

    public Integer titleInsetEnd;

    public boolean titleLayoutRefreshScheduled;

    public int titleLayoutRefreshIterCount;

    public final int MAX_TITLE_LAYOUT_ITER_COUNT;

    public boolean containerLayoutListenerAdded;

    public final View.OnLayoutChangeListener containerLayoutChangeListener;

    public final OSPageView$titleLayoutRefreshRunnable$1 titleLayoutRefreshRunnable;

    public View.OnClickListener mOnLeftIconClickListener;

    public View.OnClickListener mOnRightIconClickListener;

    public View.OnClickListener mOnLeftButtonClickListener;

    public View.OnClickListener mOnRightButtonClickListener;

    public View mContentView;

    public final yi5 mDataBinding;

    public int buttonNum;

    public OSMaskFrameLayout mMaskFrame;

    public Integer mDragSpaceTopPx;

    public int mTitleMaskColor;

    public int mTitleMaskLengthPx;

    public boolean mHasCustomTitleMaskColor;

    public e74 mTitleMaskChangedListener;

    public int mBaseMaskPaddingStart;

    public int mBaseMaskPaddingTop;

    public int mBaseMaskPaddingEnd;

    public int mBaseMaskPaddingBottom;

    public View mCachedScrollableView;

    public final yi5 extraInset;

    public final yi5 contentHolder;

    public final View.OnLayoutChangeListener titleLayoutChangeListener;

    public float titleBaseTextSize;

    public int titleResizeAttempt;

    public CharSequence titleExpectedText;

    public float subTitleBaseTextSize;

    public static final class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public final TextView b;
        public final CharSequence c;
        public final OSPageView d;

        public a(TextView textView, CharSequence charSequence, OSPageView oSPageView) {
            this.b = textView;
            this.c = charSequence;
            this.d = oSPageView;
        }

        @Override
        public void onGlobalLayout() {
            this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            if (y45.e(this.b.getText(), this.c) && !this.d.subTitleResized) {
                float textSize = this.b.getTextSize();
                float fF0 = olb.F0(this.b, this.d.getContext().getResources().getDimension(R.dimen.os_liquid_toolbar_subtitle_min_size), textSize, true, 1);
                if (fF0 < textSize) {
                    this.b.setTextSize(0, fF0);
                    this.d.subTitleResized = true;
                }
            }
        }
    }

    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {
        public final TextView b;
        public final CharSequence c;
        public final OSPageView d;

        public b(TextView textView, CharSequence charSequence, OSPageView oSPageView) {
            this.b = textView;
            this.c = charSequence;
            this.d = oSPageView;
        }

        @Override
        public void onGlobalLayout() {
            Layout layout;
            this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            if (TextUtils.equals(this.b.getText(), this.c) && (layout = this.b.getLayout()) != null) {
                if (this.d.E(this.b)) {
                    if (this.d.titleLayoutRefreshIterCount < this.d.MAX_TITLE_LAYOUT_ITER_COUNT) {
                        this.d.titleLayoutRefreshIterCount++;
                        if (this.b.isAttachedToWindow()) {
                            this.d.h();
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (layout.getEllipsisCount(wn8.d(layout.getLineCount() - 1, 0)) > 0 && this.d.titleResizeAttempt < 1) {
                    this.b.setTextSize(0, wn8.c(this.b.getTextSize() - olb.h(this.d.getContext(), 2), 1.0f));
                    this.d.titleResizeAttempt++;
                    this.d.h();
                }
            }
        }
    }

    public static final class c implements ViewTreeObserver.OnGlobalLayoutListener {
        public c() {
        }

        @Override
        public void onGlobalLayout() {
            OSPageView.this.getMDataBinding().getRoot().getViewTreeObserver().removeOnGlobalLayoutListener(this);
            OSPageView.this.titleLayoutRefreshScheduled = false;
            OSPageView.this.titleLayoutRefreshRunnable.run();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSPageView(Context context) {
        this(context, null, 0, 0, 14, null);
        y45.j(context, "context");
    }

    public static final void C(OSPageView oSPageView, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        y45.j(oSPageView, "this$0");
        oSPageView.requestLayout();
    }

    private final FrameLayout getContentHolder() {
        return (FrameLayout) this.contentHolder.getValue();
    }

    private final int getExtraInset() {
        return ((Number) this.extraInset.getValue()).intValue();
    }

    private final View getLeftContainer() {
        LinearLayout linearLayout = getMDataBinding().h;
        y45.i(linearLayout, "mDataBinding.leftContainer");
        return linearLayout;
    }

    public final OsBottomSheetTitleBinding getMDataBinding() {
        return (OsBottomSheetTitleBinding) this.mDataBinding.getValue();
    }

    private final View getRightContainer() {
        LinearLayout linearLayout = getMDataBinding().i;
        y45.i(linearLayout, "mDataBinding.rightContainer");
        return linearLayout;
    }

    private final View getTitleContainer() {
        LinearLayout linearLayout = getMDataBinding().j;
        y45.i(linearLayout, "mDataBinding.titleContainer");
        return linearLayout;
    }

    public static final void l(OSPageView oSPageView, View view) {
        y45.j(oSPageView, "this$0");
        View.OnClickListener onClickListener = oSPageView.mOnLeftIconClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    public static final void m(OSPageView oSPageView, View view) {
        y45.j(oSPageView, "this$0");
        View.OnClickListener onClickListener = oSPageView.mOnRightIconClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    public static final void n(OSPageView oSPageView, View view) {
        y45.j(oSPageView, "this$0");
        View.OnClickListener onClickListener = oSPageView.mOnLeftButtonClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    public static final void o(OSPageView oSPageView, View view) {
        y45.j(oSPageView, "this$0");
        View.OnClickListener onClickListener = oSPageView.mOnRightButtonClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    public static final void q(OSPageView oSPageView, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        y45.j(oSPageView, "this$0");
        oSPageView.A();
    }

    public final void A() {
        if (this.titleLayoutRefreshScheduled) {
            return;
        }
        this.titleLayoutRefreshScheduled = true;
        getMDataBinding().getRoot().getViewTreeObserver().addOnGlobalLayoutListener(new c());
    }

    public final int B(View container, View first, View second) {
        if (container.isLaidOut()) {
            return container.getPaddingStart() + container.getPaddingEnd() + x(first) + x(second);
        }
        return 0;
    }

    public final void D() {
        getMDataBinding().l.setGravity(17);
        A();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0066  */
    /* JADX WARN: Code duplicated, block: B:23:0x008c  */
    public final boolean E(TextView textView) {
        int width;
        boolean z;
        boolean z2;
        int iB;
        int iB2;
        int i;
        int i2;
        Integer num;
        OSMaskFrameLayout root = getMDataBinding().getRoot();
        y45.i(root, "mDataBinding.root");
        Layout layout = textView.getLayout();
        if (layout == null || (width = (root.getWidth() - root.getPaddingStart()) - root.getPaddingEnd()) <= 0) {
            return false;
        }
        int lineCount = layout.getLineCount();
        float fC = 0.0f;
        for (int i3 = 0; i3 < lineCount; i3++) {
            fC = wn8.c(fC, Math.abs(layout.getLineRight(i3) - layout.getLineLeft(i3)));
        }
        OSLiquidButton oSLiquidButton = getMDataBinding().f;
        y45.i(oSLiquidButton, "mDataBinding.imgLeft");
        if (oSLiquidButton.getVisibility() == 0) {
            z = true;
        } else {
            OSLiquidTextButton oSLiquidTextButton = getMDataBinding().d;
            y45.i(oSLiquidTextButton, "mDataBinding.buttonLeft");
            if (oSLiquidTextButton.getVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
        }
        OSLiquidButton oSLiquidButton2 = getMDataBinding().g;
        y45.i(oSLiquidButton2, "mDataBinding.imgRight");
        if (oSLiquidButton2.getVisibility() == 0) {
            z2 = true;
        } else {
            OSLiquidTextButton oSLiquidTextButton2 = getMDataBinding().e;
            y45.i(oSLiquidTextButton2, "mDataBinding.buttonRight");
            if (oSLiquidTextButton2.getVisibility() == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (z) {
            View leftContainer = getLeftContainer();
            OSLiquidButton oSLiquidButton3 = getMDataBinding().f;
            y45.i(oSLiquidButton3, "mDataBinding.imgLeft");
            OSLiquidTextButton oSLiquidTextButton3 = getMDataBinding().d;
            y45.i(oSLiquidTextButton3, "mDataBinding.buttonLeft");
            iB = B(leftContainer, oSLiquidButton3, oSLiquidTextButton3);
        } else {
            iB = 0;
        }
        if (z2) {
            View rightContainer = getRightContainer();
            OSLiquidTextButton oSLiquidTextButton4 = getMDataBinding().e;
            y45.i(oSLiquidTextButton4, "mDataBinding.buttonRight");
            OSLiquidButton oSLiquidButton4 = getMDataBinding().g;
            y45.i(oSLiquidButton4, "mDataBinding.imgRight");
            iB2 = B(rightContainer, oSLiquidTextButton4, oSLiquidButton4);
        } else {
            iB2 = 0;
        }
        int extraInset = getExtraInset();
        if (z && z2) {
            i = iB + extraInset;
            i2 = iB2 + extraInset;
        } else {
            if (z || z2) {
                i = z ? iB + extraInset : 0;
                i2 = z2 ? iB2 + extraInset : 0;
                int iMax = Math.max(i, i2);
                i = (iMax > 0 && fC <= wn8.d(width - (iMax * 2), 0)) ? iMax : 0;
            }
            i2 = i;
        }
        getLeftContainer().setVisibility(z ? 0 : 8);
        getRightContainer().setVisibility(z2 ? 0 : 8);
        Integer num2 = this.titleInsetStart;
        if (num2 != null && num2.intValue() == i && (num = this.titleInsetEnd) != null && num.intValue() == i2) {
            return false;
        }
        this.titleInsetStart = Integer.valueOf(i);
        this.titleInsetEnd = Integer.valueOf(i2);
        getTitleContainer().setPaddingRelative(i, getTitleContainer().getPaddingTop(), i2, getTitleContainer().getPaddingBottom());
        return true;
    }

    @Override
    public void addView(View child) {
        if (child == null || child == getContentHolder() || child == getMDataBinding().getRoot()) {
            super.addView(child);
            return;
        }
        y(child);
        ViewParent parent = child.getParent();
        if (parent != null) {
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(child);
            }
        }
        getContentHolder().addView(child);
        requestLayout();
    }

    public final void g() {
        TextView textView = getMDataBinding().k;
        y45.i(textView, "mDataBinding.tvSubtitle");
        CharSequence charSequence = this.subTitleExpectedText;
        if (charSequence == null) {
            return;
        }
        textView.getViewTreeObserver().addOnGlobalLayoutListener(new a(textView, charSequence, this));
    }

    public final OSLiquidButton getBackImageView() {
        return getLeftIconView();
    }

    public final OSLiquidButton getCloseImageView() {
        return getRightIconView();
    }

    public final View getMContentView() {
        return this.mContentView;
    }

    public final OSLiquidTextButton getLeftButtonView() {
        OSLiquidTextButton oSLiquidTextButton = getMDataBinding().d;
        y45.i(oSLiquidTextButton, "mDataBinding.buttonLeft");
        return oSLiquidTextButton;
    }

    public final OSLiquidButton getLeftIconView() {
        OSLiquidButton oSLiquidButton = getMDataBinding().f;
        y45.i(oSLiquidButton, "mDataBinding.imgLeft");
        return oSLiquidButton;
    }

    public final OSLiquidTextButton getRightButtonView() {
        OSLiquidTextButton oSLiquidTextButton = getMDataBinding().e;
        y45.i(oSLiquidTextButton, "mDataBinding.buttonRight");
        return oSLiquidTextButton;
    }

    public final OSLiquidButton getRightIconView() {
        OSLiquidButton oSLiquidButton = getMDataBinding().g;
        y45.i(oSLiquidButton, "mDataBinding.imgRight");
        return oSLiquidButton;
    }

    @ColorInt
    public final int getMTitleMaskColor() {
        return this.mTitleMaskColor;
    }

    public final int getMTitleMaskLengthPx() {
        return this.mTitleMaskLengthPx;
    }

    public final List<View> getTitleTextViews() {
        List listN = y71.n(getMDataBinding().l, getMDataBinding().k);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listN) {
            TextView textView = (TextView) obj;
            y45.i(textView, "it");
            if (textView.getVisibility() == 0) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final View getTitleView() {
        OSMaskFrameLayout root = getMDataBinding().getRoot();
        y45.i(root, "mDataBinding.root");
        return root;
    }

    public final void h() {
        CharSequence charSequence;
        TextView textView = getMDataBinding().l;
        y45.i(textView, "mDataBinding.tvTitle");
        if (textView.isAttachedToWindow() && (charSequence = this.titleExpectedText) != null) {
            textView.getViewTreeObserver().addOnGlobalLayoutListener(new b(textView, charSequence, this));
        }
    }

    public final boolean getMHasCustomTitleMaskColor() {
        return this.mHasCustomTitleMaskColor;
    }

    public final void i() {
        OSMaskFrameLayout oSMaskFrameLayout = this.mMaskFrame;
        if (oSMaskFrameLayout == null) {
            return;
        }
        Integer num = this.mDragSpaceTopPx;
        int dimensionPixelSize = this.mBaseMaskPaddingTop + ((num == null || num.intValue() != 0) ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.os_space150));
        if (oSMaskFrameLayout.getPaddingStart() == this.mBaseMaskPaddingStart && oSMaskFrameLayout.getPaddingTop() == dimensionPixelSize && oSMaskFrameLayout.getPaddingEnd() == this.mBaseMaskPaddingEnd && oSMaskFrameLayout.getPaddingBottom() == this.mBaseMaskPaddingBottom) {
            return;
        }
        oSMaskFrameLayout.setPaddingRelative(this.mBaseMaskPaddingStart, dimensionPixelSize, this.mBaseMaskPaddingEnd, this.mBaseMaskPaddingBottom);
    }

    public final void j(int measuredTitleHeight) {
        View view;
        View view2 = this.mContentView;
        if (view2 == null) {
            return;
        }
        OSMaskFrameLayout root = getMDataBinding().getRoot();
        y45.i(root, "mDataBinding.root");
        if (root.getVisibility() != 0) {
            measuredTitleHeight = 0;
        }
        View view3 = this.mCachedScrollableView;
        if ((view3 != null ? view3.getParent() : null) != null) {
            view = this.mCachedScrollableView;
        } else {
            View viewU = u(view2);
            this.mCachedScrollableView = viewU;
            view = viewU;
        }
        if ((view == null || y45.e(view, view2)) && view != null) {
            view2 = view;
        }
        if (view2 instanceof ViewGroup) {
            ((ViewGroup) view2).setClipToPadding(false);
        }
        if (view2.getPaddingTop() != measuredTitleHeight) {
            view2.setPadding(view2.getPaddingStart(), measuredTitleHeight, view2.getPaddingEnd(), view2.getPaddingBottom());
        }
    }

    public final void k() {
        OsBottomSheetTitleBinding mDataBinding = getMDataBinding();
        mDataBinding.f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                OSPageView.l(this.b, view);
            }
        });
        mDataBinding.g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                OSPageView.m(this.b, view);
            }
        });
        mDataBinding.d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                OSPageView.n(this.b, view);
            }
        });
        mDataBinding.e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                OSPageView.o(this.b, view);
            }
        });
        r();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        r();
        getMDataBinding().getRoot().addOnLayoutChangeListener(this.titleLayoutChangeListener);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        z();
        this.mCachedScrollableView = null;
        getMDataBinding().getRoot().removeCallbacks(this.titleLayoutRefreshRunnable);
        getMDataBinding().getRoot().removeOnLayoutChangeListener(this.titleLayoutChangeListener);
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        j(getMDataBinding().getRoot().getMeasuredHeight());
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public final void p() {
        OSMaskFrameLayout oSMaskFrameLayout = this.mMaskFrame;
        if (oSMaskFrameLayout == null) {
            return;
        }
        this.mBaseMaskPaddingStart = oSMaskFrameLayout.getPaddingStart();
        this.mBaseMaskPaddingTop = oSMaskFrameLayout.getPaddingTop();
        this.mBaseMaskPaddingEnd = oSMaskFrameLayout.getPaddingEnd();
        this.mBaseMaskPaddingBottom = oSMaskFrameLayout.getPaddingBottom();
    }

    public final void r() {
        if (this.containerLayoutListenerAdded) {
            return;
        }
        this.containerLayoutListenerAdded = true;
        getLeftContainer().addOnLayoutChangeListener(this.containerLayoutChangeListener);
        getRightContainer().addOnLayoutChangeListener(this.containerLayoutChangeListener);
    }

    public final void s(boolean preferLeftIcon) {
        if (preferLeftIcon) {
            OSLiquidTextButton oSLiquidTextButton = getMDataBinding().d;
            y45.i(oSLiquidTextButton, "mDataBinding.buttonLeft");
            if (oSLiquidTextButton.getVisibility() == 0) {
                getMDataBinding().d.setVisibility(8);
                this.buttonNum--;
                return;
            }
            return;
        }
        OSLiquidButton oSLiquidButton = getMDataBinding().f;
        y45.i(oSLiquidButton, "mDataBinding.imgLeft");
        if (oSLiquidButton.getVisibility() == 0) {
            getMDataBinding().f.setVisibility(8);
            this.buttonNum--;
        }
    }

    public final OSPageView setBackIconVisibility(boolean show) {
        setLeftIconVisibility(show);
        return this;
    }

    public final OSPageView setBottomSheetTitlePadding(int left, int top, int right, int bottom) {
        getMDataBinding().getRoot().setPadding(left, top, right, bottom);
        p();
        i();
        return this;
    }

    public final OSPageView setButtonTextSize(@DimenRes int size) {
        float dimensionPixelSize = getResources().getDimensionPixelSize(size);
        getMDataBinding().d.getMText().setTextSize(0, dimensionPixelSize);
        getMDataBinding().e.getMText().setTextSize(0, dimensionPixelSize);
        return this;
    }

    public final OSPageView setCloseIconVisibility(boolean show) {
        setRightIconVisibility(show);
        return this;
    }

    public final OSPageView setDragSpaceTop(int dragSpaceTopPx) {
        this.mDragSpaceTopPx = Integer.valueOf(dragSpaceTopPx);
        i();
        return this;
    }

    public final OSPageView setLeftButtonVisibility(boolean show) {
        if (show) {
            OSLiquidTextButton oSLiquidTextButton = getMDataBinding().d;
            y45.i(oSLiquidTextButton, "mDataBinding.buttonLeft");
            if (oSLiquidTextButton.getVisibility() == 0) {
                return this;
            }
            s(false);
            getMDataBinding().d.setVisibility(0);
            getLeftContainer().setVisibility(0);
            this.buttonNum++;
            OSLiquidTextButton oSLiquidTextButton2 = getMDataBinding().d;
            y45.i(oSLiquidTextButton2, "mDataBinding.buttonLeft");
            v(oSLiquidTextButton2, true);
        } else {
            OSLiquidTextButton oSLiquidTextButton3 = getMDataBinding().d;
            y45.i(oSLiquidTextButton3, "mDataBinding.buttonLeft");
            if (oSLiquidTextButton3.getVisibility() == 8) {
                return this;
            }
            getMDataBinding().d.setVisibility(8);
            this.buttonNum--;
            OSLiquidTextButton oSLiquidTextButton4 = getMDataBinding().d;
            y45.i(oSLiquidTextButton4, "mDataBinding.buttonLeft");
            v(oSLiquidTextButton4, false);
        }
        D();
        return this;
    }

    public final OSPageView setLeftIconVisibility(boolean show) {
        if (show) {
            OSLiquidButton oSLiquidButton = getMDataBinding().f;
            y45.i(oSLiquidButton, "mDataBinding.imgLeft");
            if (oSLiquidButton.getVisibility() == 0) {
                return this;
            }
            s(true);
            getMDataBinding().f.setVisibility(0);
            getLeftContainer().setVisibility(0);
            this.buttonNum++;
            OSLiquidButton oSLiquidButton2 = getMDataBinding().f;
            y45.i(oSLiquidButton2, "mDataBinding.imgLeft");
            v(oSLiquidButton2, true);
        } else {
            OSLiquidButton oSLiquidButton3 = getMDataBinding().f;
            y45.i(oSLiquidButton3, "mDataBinding.imgLeft");
            if (oSLiquidButton3.getVisibility() == 8) {
                return this;
            }
            getMDataBinding().f.setVisibility(8);
            this.buttonNum--;
            OSLiquidButton oSLiquidButton4 = getMDataBinding().f;
            y45.i(oSLiquidButton4, "mDataBinding.imgLeft");
            v(oSLiquidButton4, false);
        }
        D();
        return this;
    }

    public final OSPageView setOnTitleBackIconClickListener(View.OnClickListener onTitleClickListener) {
        y45.j(onTitleClickListener, "onTitleClickListener");
        setOnTitleLeftIconClickListener(com.transsion.widgetsThemes.R.string.os_back, onTitleClickListener);
        return this;
    }

    public final OSPageView setOnTitleCloseIconClickListener(View.OnClickListener onTitleClickListener) {
        y45.j(onTitleClickListener, "onTitleClickListener");
        setOnTitleRightIconClickListener(com.transsion.widgetsThemes.R.string.os_close, onTitleClickListener);
        return this;
    }

    public final OSPageView setOnTitleLeftButtonClickListener(@StringRes int iconStrRes, View.OnClickListener onTitleClickListener) {
        y45.j(onTitleClickListener, "onTitleClickListener");
        String string = getContext().getString(iconStrRes);
        y45.i(string, "context.getString(iconStrRes)");
        return setOnTitleLeftButtonClickListener(string, onTitleClickListener);
    }

    public final OSPageView setOnTitleLeftIconClickListener(@StringRes int iconStrRes, View.OnClickListener onTitleClickListener) {
        y45.j(onTitleClickListener, "onTitleClickListener");
        String string = getContext().getString(iconStrRes);
        y45.i(string, "context.getString(iconStrRes)");
        return setOnTitleLeftIconClickListener(string, onTitleClickListener);
    }

    public final OSPageView setOnTitleRightButtonClickListener(@StringRes int iconStrRes, View.OnClickListener onTitleClickListener) {
        y45.j(onTitleClickListener, "onTitleClickListener");
        String string = getContext().getString(iconStrRes);
        y45.i(string, "context.getString(iconStrRes)");
        return setOnTitleRightButtonClickListener(string, onTitleClickListener);
    }

    public final OSPageView setOnTitleRightIconClickListener(@StringRes int iconStrRes, View.OnClickListener onTitleClickListener) {
        y45.j(onTitleClickListener, "onTitleClickListener");
        String string = getContext().getString(iconStrRes);
        y45.i(string, "context.getString(iconStrRes)");
        return setOnTitleRightIconClickListener(string, onTitleClickListener);
    }

    public final OSPageView setRightButtonVisibility(boolean show) {
        if (show) {
            OSLiquidTextButton oSLiquidTextButton = getMDataBinding().e;
            y45.i(oSLiquidTextButton, "mDataBinding.buttonRight");
            if (oSLiquidTextButton.getVisibility() == 0) {
                return this;
            }
            t(false);
            getMDataBinding().e.setVisibility(0);
            getRightContainer().setVisibility(0);
            this.buttonNum++;
            OSLiquidTextButton oSLiquidTextButton2 = getMDataBinding().e;
            y45.i(oSLiquidTextButton2, "mDataBinding.buttonRight");
            v(oSLiquidTextButton2, true);
        } else {
            OSLiquidTextButton oSLiquidTextButton3 = getMDataBinding().e;
            y45.i(oSLiquidTextButton3, "mDataBinding.buttonRight");
            if (oSLiquidTextButton3.getVisibility() == 8) {
                return this;
            }
            getMDataBinding().e.setVisibility(8);
            this.buttonNum--;
            OSLiquidTextButton oSLiquidTextButton4 = getMDataBinding().e;
            y45.i(oSLiquidTextButton4, "mDataBinding.buttonRight");
            v(oSLiquidTextButton4, false);
        }
        D();
        return this;
    }

    public final OSPageView setRightIconVisibility(boolean show) {
        if (show) {
            OSLiquidButton oSLiquidButton = getMDataBinding().g;
            y45.i(oSLiquidButton, "mDataBinding.imgRight");
            if (oSLiquidButton.getVisibility() == 0) {
                return this;
            }
            t(true);
            getMDataBinding().g.setVisibility(0);
            getRightContainer().setVisibility(0);
            this.buttonNum++;
            OSLiquidButton oSLiquidButton2 = getMDataBinding().g;
            y45.i(oSLiquidButton2, "mDataBinding.imgRight");
            v(oSLiquidButton2, true);
        } else {
            OSLiquidButton oSLiquidButton3 = getMDataBinding().g;
            y45.i(oSLiquidButton3, "mDataBinding.imgRight");
            if (oSLiquidButton3.getVisibility() == 8) {
                return this;
            }
            getMDataBinding().g.setVisibility(8);
            this.buttonNum--;
            OSLiquidButton oSLiquidButton4 = getMDataBinding().g;
            y45.i(oSLiquidButton4, "mDataBinding.imgRight");
            v(oSLiquidButton4, false);
        }
        D();
        return this;
    }

    public final OSPageView setSubTitle(String subTitle) {
        y45.j(subTitle, "subTitle");
        getMDataBinding().k.setVisibility(subTitle.length() == 0 ? 8 : 0);
        this.subTitleResized = false;
        getMDataBinding().k.setTextSize(0, getContext().getResources().getDimension(R.dimen.os_liquid_toolbar_subtitle_size));
        getMDataBinding().k.setText(subTitle);
        this.subTitleExpectedText = getMDataBinding().k.getText();
        g();
        return this;
    }

    public final OSPageView setTitle(String title) {
        y45.j(title, "title");
        if (this.titleBaseTextSize <= 0.0f) {
            this.titleBaseTextSize = getMDataBinding().l.getTextSize();
        }
        getMDataBinding().l.setTextSize(0, this.titleBaseTextSize);
        this.titleResizeAttempt = 0;
        getMDataBinding().l.setText(olb.H0(title));
        this.titleExpectedText = getMDataBinding().l.getText();
        h();
        return this;
    }

    public final OSPageView setTitleLayoutVisible(boolean visible) {
        if (visible) {
            getMDataBinding().getRoot().setVisibility(0);
        } else {
            getMDataBinding().getRoot().setVisibility(8);
        }
        requestLayout();
        return this;
    }

    public final void setTitleMaskChangedListener$widgetsbottomsheet_release(e74 listener) {
        this.mTitleMaskChangedListener = listener;
    }

    public final OSPageView setTitleMaskColor(@ColorInt int color) {
        this.mTitleMaskColor = color;
        this.mHasCustomTitleMaskColor = true;
        OSMaskFrameLayout oSMaskFrameLayout = this.mMaskFrame;
        if (oSMaskFrameLayout != null) {
            oSMaskFrameLayout.setMaskColor(color);
        }
        e74 e74Var = this.mTitleMaskChangedListener;
        if (e74Var != null) {
            e74Var.invoke(this);
        }
        return this;
    }

    public final void setTitleMaskColorFromPanel$widgetsbottomsheet_release(@ColorInt int color) {
        this.mTitleMaskColor = color;
        this.mHasCustomTitleMaskColor = false;
        OSMaskFrameLayout oSMaskFrameLayout = this.mMaskFrame;
        if (oSMaskFrameLayout != null) {
            oSMaskFrameLayout.setMaskColor(color);
        }
        e74 e74Var = this.mTitleMaskChangedListener;
        if (e74Var != null) {
            e74Var.invoke(this);
        }
    }

    public final OSPageView setTitleMaskColorRes(@ColorRes int colorResId) {
        return setTitleMaskColor(getContext().getColor(colorResId));
    }

    public final OSPageView setTitleMaskLength(@DimenRes int lengthResId) {
        return setTitleMaskLengthPx(getResources().getDimensionPixelSize(lengthResId));
    }

    public final OSPageView setTitleMaskLengthPx(int lengthPx) {
        if (lengthPx >= 0) {
            this.mTitleMaskLengthPx = lengthPx;
            OSMaskFrameLayout oSMaskFrameLayout = this.mMaskFrame;
            if (oSMaskFrameLayout != null) {
                oSMaskFrameLayout.setMaskHeight(lengthPx);
            }
            e74 e74Var = this.mTitleMaskChangedListener;
            if (e74Var != null) {
                e74Var.invoke(this);
            }
        }
        return this;
    }

    public final void setTitleMaskVisibleFromPanel$widgetsbottomsheet_release(boolean visible) {
        OSMaskFrameLayout oSMaskFrameLayout = this.mMaskFrame;
        if (oSMaskFrameLayout != null) {
            oSMaskFrameLayout.setMaskVisibility(visible ? 0 : 8);
        }
    }

    public final OSPageView setTitleSize(float size) {
        getMDataBinding().l.setTextSize(size);
        this.titleBaseTextSize = getMDataBinding().l.getTextSize();
        return this;
    }

    public final OSPageView showTitle(boolean showTitle) {
        getMDataBinding().getRoot().setVisibility(showTitle ? 0 : 8);
        requestLayout();
        return this;
    }

    public final void t(boolean preferRightIcon) {
        if (preferRightIcon) {
            OSLiquidTextButton oSLiquidTextButton = getMDataBinding().e;
            y45.i(oSLiquidTextButton, "mDataBinding.buttonRight");
            if (oSLiquidTextButton.getVisibility() == 0) {
                getMDataBinding().e.setVisibility(8);
                this.buttonNum--;
                return;
            }
            return;
        }
        OSLiquidButton oSLiquidButton = getMDataBinding().g;
        y45.i(oSLiquidButton, "mDataBinding.imgRight");
        if (oSLiquidButton.getVisibility() == 0) {
            getMDataBinding().g.setVisibility(8);
            this.buttonNum--;
        }
    }

    public final View u(View view) {
        if ((view instanceof AbsListView) || (view instanceof ScrollView)) {
            return view;
        }
        if (view instanceof RecyclerView) {
            RecyclerView.LayoutManager layoutManager = ((RecyclerView) view).getLayoutManager();
            if (layoutManager == null || !layoutManager.canScrollVertically()) {
                return null;
            }
            return view;
        }
        if (view instanceof NestedScrollingChild) {
            if (view.canScrollVertically(-1) || view.canScrollVertically(1)) {
                return view;
            }
            return null;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                y45.i(childAt, "child");
                View viewU = u(childAt);
                if (viewU != null) {
                    return viewU;
                }
            }
        }
        return null;
    }

    public final void v(View view, boolean isIncrease) {
        if (this.buttonNum == 2) {
            if (y45.e(view, getMDataBinding().f)) {
                OSLiquidTextButton oSLiquidTextButton = getMDataBinding().e;
                y45.i(oSLiquidTextButton, "mDataBinding.buttonRight");
                if (oSLiquidTextButton.getVisibility() == 0) {
                    getMDataBinding().d.setVisibility(8);
                }
            } else if (y45.e(view, getMDataBinding().g)) {
                OSLiquidTextButton oSLiquidTextButton2 = getMDataBinding().d;
                y45.i(oSLiquidTextButton2, "mDataBinding.buttonLeft");
                if (oSLiquidTextButton2.getVisibility() == 0) {
                    getMDataBinding().e.setVisibility(8);
                }
            } else if (y45.e(view, getMDataBinding().d)) {
                OSLiquidButton oSLiquidButton = getMDataBinding().g;
                y45.i(oSLiquidButton, "mDataBinding.imgRight");
                if (oSLiquidButton.getVisibility() == 0) {
                    getMDataBinding().f.setVisibility(8);
                }
            } else if (y45.e(view, getMDataBinding().e)) {
                OSLiquidButton oSLiquidButton2 = getMDataBinding().f;
                y45.i(oSLiquidButton2, "mDataBinding.imgLeft");
                if (oSLiquidButton2.getVisibility() == 0) {
                    getMDataBinding().g.setVisibility(8);
                }
            }
        }
        if (this.buttonNum == 0) {
            if (y45.e(view, getMDataBinding().f)) {
                getMDataBinding().g.setVisibility(8);
                return;
            }
            if (y45.e(view, getMDataBinding().g)) {
                getMDataBinding().f.setVisibility(8);
            } else if (y45.e(view, getMDataBinding().d)) {
                getMDataBinding().e.setVisibility(8);
            } else if (y45.e(view, getMDataBinding().e)) {
                getMDataBinding().d.setVisibility(8);
            }
        }
    }

    public final void w() {
        removeAllViews();
        super.addView(getContentHolder(), new FrameLayout.LayoutParams(-1, -2));
        super.addView(getMDataBinding().getRoot(), new FrameLayout.LayoutParams(-1, -2));
        k();
        OSMaskFrameLayout root = getMDataBinding().getRoot();
        if (root == null) {
            root = null;
        }
        this.mMaskFrame = root;
        p();
        i();
        getMDataBinding().getRoot().addOnLayoutChangeListener(this.titleLayoutChangeListener);
    }

    public final int x(View view) {
        if (view.getVisibility() != 0) {
            return 0;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        return view.getMeasuredWidth() + (marginLayoutParams != null ? marginLayoutParams.leftMargin : 0) + (marginLayoutParams != null ? marginLayoutParams.rightMargin : 0);
    }

    public final void y(View child) {
        this.mContentView = child;
        this.mCachedScrollableView = null;
        getContentHolder().removeAllViews();
    }

    public final void z() {
        if (this.containerLayoutListenerAdded) {
            this.containerLayoutListenerAdded = false;
            getLeftContainer().removeOnLayoutChangeListener(this.containerLayoutChangeListener);
            getRightContainer().removeOnLayoutChangeListener(this.containerLayoutChangeListener);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSPageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSPageView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        y45.j(context, "context");
    }

    public final OSPageView setOnTitleLeftButtonClickListener(String iconStr, View.OnClickListener onTitleClickListener) {
        y45.j(iconStr, "iconStr");
        y45.j(onTitleClickListener, "onTitleClickListener");
        this.mOnLeftButtonClickListener = onTitleClickListener;
        s(false);
        getMDataBinding().d.setText(iconStr);
        if (getMDataBinding().d.getVisibility() != 0) {
            getMDataBinding().d.setVisibility(0);
            getLeftContainer().setVisibility(0);
            this.buttonNum++;
            OSLiquidTextButton oSLiquidTextButton = getMDataBinding().d;
            y45.i(oSLiquidTextButton, "mDataBinding.buttonLeft");
            v(oSLiquidTextButton, true);
        }
        D();
        return this;
    }

    public final OSPageView setOnTitleLeftIconClickListener(String iconStr, View.OnClickListener onTitleClickListener) {
        y45.j(iconStr, "iconStr");
        y45.j(onTitleClickListener, "onTitleClickListener");
        this.mOnLeftIconClickListener = onTitleClickListener;
        s(true);
        getMDataBinding().f.setIcon(iconStr);
        if (getMDataBinding().f.getVisibility() != 0) {
            getMDataBinding().f.setVisibility(0);
            getLeftContainer().setVisibility(0);
            this.buttonNum++;
            OSLiquidButton oSLiquidButton = getMDataBinding().f;
            y45.i(oSLiquidButton, "mDataBinding.imgLeft");
            v(oSLiquidButton, true);
        }
        D();
        return this;
    }

    public final OSPageView setOnTitleRightButtonClickListener(String iconStr, View.OnClickListener onTitleClickListener) {
        y45.j(iconStr, "iconStr");
        y45.j(onTitleClickListener, "onTitleClickListener");
        this.mOnRightButtonClickListener = onTitleClickListener;
        t(false);
        getMDataBinding().e.setText(iconStr);
        if (getMDataBinding().e.getVisibility() != 0) {
            getMDataBinding().e.setVisibility(0);
            getRightContainer().setVisibility(0);
            this.buttonNum++;
            OSLiquidTextButton oSLiquidTextButton = getMDataBinding().e;
            y45.i(oSLiquidTextButton, "mDataBinding.buttonRight");
            v(oSLiquidTextButton, true);
        }
        D();
        return this;
    }

    public final OSPageView setOnTitleRightIconClickListener(String iconStr, View.OnClickListener onTitleClickListener) {
        y45.j(iconStr, "iconStr");
        y45.j(onTitleClickListener, "onTitleClickListener");
        this.mOnRightIconClickListener = onTitleClickListener;
        t(true);
        getMDataBinding().g.setIcon(iconStr);
        if (getMDataBinding().g.getVisibility() != 0) {
            getMDataBinding().g.setVisibility(0);
            getRightContainer().setVisibility(0);
            this.buttonNum++;
            OSLiquidButton oSLiquidButton = getMDataBinding().g;
            y45.i(oSLiquidButton, "mDataBinding.imgRight");
            v(oSLiquidButton, true);
        }
        D();
        return this;
    }

    public final OSPageView setTitleSize(int unit, float size) {
        getMDataBinding().l.setTextSize(unit, size);
        this.titleBaseTextSize = getMDataBinding().l.getTextSize();
        return this;
    }

    public OSPageView(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSPageView(final Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
        this.mDataBinding = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final OsBottomSheetTitleBinding invoke() {
                OsBottomSheetTitleBinding osBottomSheetTitleBindingC = OsBottomSheetTitleBinding.c(LayoutInflater.from(context));
                y45.i(osBottomSheetTitleBindingC, "inflate(LayoutInflater.from(context))");
                return osBottomSheetTitleBindingC;
            }
        });
        this.mTitleMaskColor = context.getColor(R.color.os_bottom_sheet_title_mask_color);
        this.mTitleMaskLengthPx = context.getResources().getDimensionPixelSize(R.dimen.os_tool_bar_mask_size);
        this.extraInset = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Integer invoke() {
                return Integer.valueOf(context.getResources().getDimensionPixelSize(R.dimen.os_space250));
            }
        });
        this.contentHolder = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final FrameLayout invoke() {
                FrameLayout frameLayout = new FrameLayout(context);
                frameLayout.setClipToPadding(true);
                frameLayout.setClipChildren(true);
                frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
                return frameLayout;
            }
        });
        this.titleLayoutChangeListener = new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                OSPageView.C(this.b, view, i3, i4, i5, i6, i7, i8, i9, i10);
            }
        };
        this.MAX_TITLE_LAYOUT_ITER_COUNT = 3;
        this.containerLayoutChangeListener = new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                OSPageView.q(this.b, view, i3, i4, i5, i6, i7, i8, i9, i10);
            }
        };
        setClipToPadding(false);
        setClipChildren(false);
        OSLiquidTextButton oSLiquidTextButton = getMDataBinding().d;
        int i3 = com.transsion.widgetsThemes.R.dimen.os_liquid_button_max_width;
        oSLiquidTextButton.setMaxWidth(i3);
        getMDataBinding().e.setMaxWidth(i3);
        w();
        this.titleBaseTextSize = getMDataBinding().l.getTextSize();
        this.subTitleBaseTextSize = getMDataBinding().k.getTextSize();
        forceHasOverlappingRendering(false);
        this.titleLayoutRefreshRunnable = new OSPageView$titleLayoutRefreshRunnable$1(this);
    }

    @Override
    public void addView(View child, ViewGroup.LayoutParams params) {
        if (child != null && child != getContentHolder() && child != getMDataBinding().getRoot()) {
            y(child);
            ViewParent parent = child.getParent();
            if (parent != null) {
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(child);
                }
            }
            if (params == null) {
                getContentHolder().addView(child);
            } else {
                getContentHolder().addView(child, params);
            }
            requestLayout();
            return;
        }
        super.addView(child, params);
    }

    public final OSPageView setTitle(int titleResId) {
        if (this.titleBaseTextSize <= 0.0f) {
            this.titleBaseTextSize = getMDataBinding().l.getTextSize();
        }
        getMDataBinding().l.setTextSize(0, this.titleBaseTextSize);
        this.titleResizeAttempt = 0;
        getMDataBinding().l.setText(olb.H0(getContext().getString(titleResId)));
        this.titleExpectedText = getMDataBinding().l.getText();
        h();
        return this;
    }
}
