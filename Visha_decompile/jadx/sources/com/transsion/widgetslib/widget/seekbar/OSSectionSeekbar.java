package com.transsion.widgetslib.widget.seekbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.widget.seekbar.OSSectionSeekbar;
import defpackage.a67;
import defpackage.bq5;
import defpackage.f43;
import defpackage.fz3;
import defpackage.jv9;
import defpackage.kv9;
import defpackage.olb;
import defpackage.s74;
import defpackage.vob;
import defpackage.wn8;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.math.BigDecimal;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\bv\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0016\u0018\u0000 \u0092\u00022\u00020\u0001:\u0004\u0093\u0002wzB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J/\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\u00020\f2\u0006\u0010\"\u001a\u00020\u001b¢\u0006\u0004\b#\u0010$J\u0015\u0010&\u001a\u00020\f2\u0006\u0010%\u001a\u00020\u0006¢\u0006\u0004\b&\u0010'J\u0015\u0010)\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u0006¢\u0006\u0004\b)\u0010'J\u0015\u0010+\u001a\u00020\f2\u0006\u0010*\u001a\u00020\u0006¢\u0006\u0004\b+\u0010'J\u0015\u0010,\u001a\u00020\f2\u0006\u0010*\u001a\u00020\u0006¢\u0006\u0004\b,\u0010'J\u0017\u0010.\u001a\u00020\f2\u0006\u0010-\u001a\u00020\u0006H\u0007¢\u0006\u0004\b.\u0010'J3\u00103\u001a\u00020\f2$\u00102\u001a \u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020100\u0012\n\u0012\b\u0012\u0004\u0012\u000201000/¢\u0006\u0004\b3\u00104J\u000f\u00106\u001a\u000205H\u0014¢\u0006\u0004\b6\u00107J\u0017\u00109\u001a\u00020\f2\u0006\u00108\u001a\u000205H\u0014¢\u0006\u0004\b9\u0010:J\u000f\u0010<\u001a\u00020;H\u0016¢\u0006\u0004\b<\u0010=J\u0015\u0010?\u001a\u00020\f2\u0006\u0010>\u001a\u00020;¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\fH\u0014¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\fH\u0014¢\u0006\u0004\bC\u0010BJ\u0015\u0010E\u001a\u00020\f2\u0006\u0010D\u001a\u00020\u001b¢\u0006\u0004\bE\u0010$J\u000f\u0010F\u001a\u00020\fH\u0002¢\u0006\u0004\bF\u0010BJ\u000f\u0010G\u001a\u00020\fH\u0002¢\u0006\u0004\bG\u0010BJ\u000f\u0010H\u001a\u00020\u001eH\u0002¢\u0006\u0004\bH\u0010IJ\u0017\u0010K\u001a\u00020\u00062\u0006\u0010J\u001a\u00020\u0006H\u0002¢\u0006\u0004\bK\u0010LJ\u0017\u0010N\u001a\u00020\f2\u0006\u0010M\u001a\u00020\u001eH\u0002¢\u0006\u0004\bN\u0010!J\u0017\u0010P\u001a\u00020\f2\u0006\u0010O\u001a\u00020\u001eH\u0002¢\u0006\u0004\bP\u0010!J'\u0010S\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010Q\u001a\u00020\u001e2\u0006\u0010R\u001a\u00020\u001eH\u0002¢\u0006\u0004\bS\u0010TJ\u0017\u0010U\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\bU\u0010\u0012J\u0017\u0010V\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\bV\u0010\u0012J\u000f\u0010W\u001a\u00020\u0006H\u0002¢\u0006\u0004\bW\u0010XJ\u0017\u0010Z\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020\u0006H\u0002¢\u0006\u0004\bZ\u0010LJ\u000f\u0010[\u001a\u00020\u0006H\u0002¢\u0006\u0004\b[\u0010XJ\u000f\u0010\\\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\\\u0010XJ\u000f\u0010]\u001a\u00020\u0006H\u0002¢\u0006\u0004\b]\u0010XJ\u0017\u0010^\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b^\u0010_J\u0017\u0010`\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b`\u0010_J\u0017\u0010a\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\ba\u0010_J\u000f\u0010b\u001a\u00020\fH\u0002¢\u0006\u0004\bb\u0010BJ\u0017\u0010d\u001a\u00020\f2\u0006\u0010c\u001a\u00020\u001eH\u0002¢\u0006\u0004\bd\u0010!J\u0017\u0010e\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\be\u0010_J\u0017\u0010g\u001a\u00020\u001e2\u0006\u0010f\u001a\u00020\u001eH\u0002¢\u0006\u0004\bg\u0010hJ\u0017\u0010j\u001a\u0002012\u0006\u0010i\u001a\u00020\u001eH\u0002¢\u0006\u0004\bj\u0010kJ\u0017\u0010l\u001a\u00020\u001e2\u0006\u0010i\u001a\u00020\u001eH\u0002¢\u0006\u0004\bl\u0010hJ'\u0010o\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010m\u001a\u00020\u001e2\u0006\u0010n\u001a\u00020\u001eH\u0002¢\u0006\u0004\bo\u0010pJ\u0019\u0010r\u001a\u00020\u001e2\b\b\u0002\u0010q\u001a\u00020\u001eH\u0002¢\u0006\u0004\br\u0010hJ\u0019\u0010\u0014\u001a\u00020\u00062\b\b\u0002\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b\u0014\u0010sJ\u000f\u0010t\u001a\u00020\u0006H\u0002¢\u0006\u0004\bt\u0010XJ\u000f\u0010u\u001a\u00020\fH\u0002¢\u0006\u0004\bu\u0010BJ\u000f\u0010v\u001a\u00020\fH\u0002¢\u0006\u0004\bv\u0010BR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010xR\u001c\u0010|\u001a\n y*\u0004\u0018\u000101018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bz\u0010{R%\u0010\u0080\u0001\u001a\u00020\u001e2\u0006\u0010}\u001a\u00020\u001e8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b~\u0010N\u001a\u0004\b\u007f\u0010IR'\u0010\u0083\u0001\u001a\u00020\u001e2\u0006\u0010}\u001a\u00020\u001e8\u0006@BX\u0086\u000e¢\u0006\u000e\n\u0005\b\u0081\u0001\u0010N\u001a\u0005\b\u0082\u0001\u0010IR'\u0010\u0086\u0001\u001a\u00020\u001e2\u0006\u0010}\u001a\u00020\u001e8\u0006@BX\u0086\u000e¢\u0006\u000e\n\u0005\b\u0084\u0001\u0010N\u001a\u0005\b\u0085\u0001\u0010IR&\u0010\u008a\u0001\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\bg\u0010\u0087\u0001\u001a\u0005\b\u0088\u0001\u0010X\"\u0005\b\u0089\u0001\u0010'R\u0018\u0010\u008c\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0014\u0010\u008b\u0001R\u0019\u0010\u008e\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u0087\u0001R\u0018\u0010\u008f\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bH\u0010\u0087\u0001R\u0018\u0010\u0090\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\br\u0010\u0087\u0001R\u0019\u0010\u0092\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0087\u0001R\u0018\u0010\u0093\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bb\u0010\u0087\u0001R\u0018\u0010\u0094\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bV\u0010\u0087\u0001R\u0018\u0010\u0095\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bS\u0010\u0087\u0001R\u0018\u0010\u0096\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bU\u0010\u0087\u0001R\u0018\u0010\u0097\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bj\u0010\u0087\u0001R\u0018\u0010\u0098\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bl\u0010\u0087\u0001R\u0018\u0010\u0099\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bZ\u0010\u0087\u0001R\u0018\u0010\u009a\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bK\u0010\u0087\u0001R\u0018\u0010\u009b\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bF\u0010\u0087\u0001R\u0018\u0010\u009c\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bG\u0010\u0087\u0001R\u0018\u0010\u009d\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0013\u0010\u0087\u0001R\u0019\u0010\u009f\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u0087\u0001R\u0018\u0010 \u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\ba\u0010\u0087\u0001R\u0018\u0010¡\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\be\u0010\u0087\u0001R\u0018\u0010¢\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b^\u0010\u008b\u0001R\u0017\u0010£\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010NR\u0017\u0010¤\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010NR\u0018\u0010¥\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bo\u0010\u0087\u0001R\u0017\u0010¦\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010NR\u0017\u0010§\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010NR\u0018\u0010©\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¨\u0001\u0010NR\u0017\u0010ª\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010NR\u0019\u0010«\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u008b\u0001R\u0016\u0010¬\u0001\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bd\u0010\u0087\u0001R\u001f\u0010¯\u0001\u001a\b\u0012\u0004\u0012\u000201008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010®\u0001R\u0018\u0010±\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b°\u0001\u0010NR+\u0010¸\u0001\u001a\u0005\u0018\u00010²\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bt\u0010³\u0001\u001a\u0006\b´\u0001\u0010µ\u0001\"\u0006\b¶\u0001\u0010·\u0001R\u0018\u0010º\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¹\u0001\u0010NR\u0018\u0010¼\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b»\u0001\u0010NR\u0018\u0010À\u0001\u001a\u00030½\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¾\u0001\u0010¿\u0001R\u0018\u0010Â\u0001\u001a\u00030½\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÁ\u0001\u0010¿\u0001R\u0018\u0010Æ\u0001\u001a\u00030Ã\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÄ\u0001\u0010Å\u0001R\u0018\u0010È\u0001\u001a\u00030Ã\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÇ\u0001\u0010Å\u0001R\u001b\u0010Ë\u0001\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÉ\u0001\u0010Ê\u0001R\u0019\u0010Í\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0001\u0010\u0087\u0001R\u0019\u0010Ï\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÎ\u0001\u0010\u0087\u0001R\u0019\u0010Ñ\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0001\u0010\u0087\u0001R\u0019\u0010Ó\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010\u0087\u0001R\u0019\u0010Õ\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010\u008b\u0001R\u0019\u0010×\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÖ\u0001\u0010\u008b\u0001R\u001c\u0010Û\u0001\u001a\u0005\u0018\u00010Ø\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0001\u0010Ú\u0001R\u001c\u0010ß\u0001\u001a\u0005\u0018\u00010Ü\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÝ\u0001\u0010Þ\u0001R\u0018\u0010á\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bà\u0001\u0010NR\u0018\u0010ã\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bâ\u0001\u0010NR\u0018\u0010å\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bä\u0001\u0010NR\u0018\u0010ç\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bæ\u0001\u0010NR\u0018\u0010é\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bè\u0001\u0010NR\u0018\u0010ë\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bê\u0001\u0010NR\u0018\u0010í\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bì\u0001\u0010NR\u0019\u0010ï\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bî\u0001\u0010\u008b\u0001R\u0018\u0010ó\u0001\u001a\u00030ð\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bñ\u0001\u0010ò\u0001R\u0019\u0010õ\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bô\u0001\u0010\u008b\u0001R(\u0010ú\u0001\u001a\u00020\u001b8\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0006\bö\u0001\u0010\u008b\u0001\u001a\u0006\b÷\u0001\u0010ø\u0001\"\u0005\bù\u0001\u0010$R\u001c\u0010þ\u0001\u001a\u0005\u0018\u00010û\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bü\u0001\u0010ý\u0001R\u0019\u0010\u0080\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÿ\u0001\u0010\u0087\u0001R\u0019\u0010\u0082\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0002\u0010\u0087\u0001R\u0019\u0010\u0084\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0002\u0010\u0087\u0001R\u0018\u0010\u0088\u0002\u001a\u00030\u0085\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0086\u0002\u0010\u0087\u0002R\u0018\u0010\u008a\u0002\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0089\u0002\u0010NR\u001c\u0010\u008c\u0002\u001a\u0005\u0018\u00010Ø\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0002\u0010Ú\u0001R\u001c\u0010\u008e\u0002\u001a\u0005\u0018\u00010Ü\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0002\u0010Þ\u0001R\u0018\u0010\u0090\u0002\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008f\u0002\u0010NR\u0012\u0010\u001f\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b\u0091\u0002\u0010X¨\u0006\u0094\u0002"}, d2 = {"Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;", "Landroid/view/View;", "Landroid/content/Context;", "mContext", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "widthMeasureSpec", "heightMeasureSpec", "Lzfb;", "onMeasure", "(II)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "", "progress", "setProgress", "(F)V", "force", "setForceHios", "(Z)V", "trackColor", "setTrackColor", "(I)V", "secondTrackColor", "setSecondTrackColor", "thumbColor", "setThumbOutColor", "setThumbInsideColor", "thumbInsideUnAbleColorHios", "setThumbInsideUnAbleColorHios", "Lkotlin/Function2;", "Landroid/util/SparseArray;", "", "onCustomize", "setCustomSectionTextArray", "(Ls74;)V", "Landroid/os/Parcelable;", "onSaveInstanceState", "()Landroid/os/Parcelable;", ICode.CALL.CALL_KEY_STATE, "onRestoreInstanceState", "(Landroid/os/Parcelable;)V", "Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;", "getConfigBuilder", "()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;", "builder", "config", "(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;)V", "onDetachedFromWindow", "()V", "onAttachedToWindow", "vibrateAble", "setVibrateAble", "u", "v", "j", "()F", "height", "t", "(I)I", "toAlpha", "F", "toScale", "H", "centerX", "centerY", "o", "(Landroid/graphics/Canvas;FF)V", TtmlNode.TAG_P, "n", "getDotColor", "()I", "thumbInsideColor", "s", "getThumbInsideColor", "getThumbOutColor", "getSecondTrackColor", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Landroid/view/MotionEvent;)V", "B", "y", CmcdData.OBJECT_TYPE_MANIFEST, "toCenterX", "J", "z", "touchedX", GslbInterceptor.HEADER_KEY_GSLB, "(F)F", ES6Iterator.VALUE_PROPERTY, "q", "(F)Ljava/lang/String;", "r", "leftBase", "rightBase", "D", "(FFF)F", "positionX", "k", "(F)I", "M", ExifInterface.LONGITUDE_EAST, "C", "b", "Landroid/content/Context;", "kotlin.jvm.PlatformType", "c", "Ljava/lang/String;", AbstractID3v1Tag.TAG, "<set-?>", "d", "getMin", "min", "e", "getMax", "max", "f", "getProgressFloat", "progressFloat", "I", "getMFinalProgress", "setMFinalProgress", "mFinalProgress", "Z", "isFloatType", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "mTrackSize", "mSecondTrackSize", "mSectionTextSize", CmcdData.STREAM_TYPE_LIVE, "mSectionCount", "mThumbInWidth", "mThumbOutWidth", "mTextTopMargin", "mTextBottomMargin", "mDotsSize", "mTrackColor", "mSecondTrackColor", "mThumbOutColor", "mThumbInsideColor", "mDotsColor", "mDotsSelectedColor", "x", "mSectionTextColor", "mSectionTextInterval", "mProcessMarginTopBottow", "mDisplayCharacters", "mDelta", "mSectionValue", "mCurrentSection", "mThumbCenterX", "mThumbCenterY", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "mTrackLength", "mSectionOffset", "isThumbOnDragging", "mTextSpace", "K", "Landroid/util/SparseArray;", "mSectionTextArray", "L", "mPreThumbCenterX", "Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;", "Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;", "getOnProgressChangedListener", "()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;", "setOnProgressChangedListener", "(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;)V", "onProgressChangedListener", "N", "mLeft", "O", "mRight", "Landroid/graphics/Paint;", "P", "Landroid/graphics/Paint;", "mPaint", "Q", "mCirclePaint", "Landroid/graphics/Rect;", "R", "Landroid/graphics/Rect;", "mRectText", ExifInterface.LATITUDE_SOUTH, "mRectHeightText", "T", "Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;", "mOSSectionSeekBarBuilder", "U", "mSecondTrackColorDisable", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "mThumbOutColorDisable", ExifInterface.LONGITUDE_WEST, "mThumbInsideColorDisable", "a0", "mDotsSelectedColorDisable", "b0", "isTouchOnThumb", "c0", "isCenterXAnimation", "Landroid/animation/ValueAnimator;", "d0", "Landroid/animation/ValueAnimator;", "mThumbIntervalAnimator", "Ljv9;", "e0", "Ljv9;", "mThumbIntervalSpringAnimation", "f0", "mCurrentSourceTrackWidth", "g0", "mCurrentScaleFactor", "h0", "mFromScaleFactor", "i0", "mTrackWidthMax", "j0", "mCurrentPointerPosition", "k0", "mLastPointerPosition", "l0", "mTouchDownPosition", "m0", "isTouchMove", "Ljava/lang/Runnable;", "n0", "Ljava/lang/Runnable;", "mVibrateRunnable", "o0", "mVibrateAble", "p0", "isForceHios$widgetsLib_release", "()Z", "setForceHios$widgetsLib_release", "isForceHios", "La67;", "q0", "La67;", "mLiquidDrawable", "r0", "mLiquidWidth", "s0", "mLiquidHeight", "t0", "mLiquidRadius", "Landroid/graphics/drawable/GradientDrawable;", "u0", "Landroid/graphics/drawable/GradientDrawable;", "mWhiteBackDrawable", "v0", "mCurrentAlpha", "w0", "mAlphaAnimator", "x0", "mSpringAnimation", "y0", "mThumbHalfWidth", "getProgress", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSSectionSeekbar extends View {

    public boolean mDisplayCharacters;

    public float mDelta;

    public float mSectionValue;

    public int mCurrentSection;

    public float mThumbCenterX;

    public float mThumbCenterY;

    public float mTrackLength;

    public float mSectionOffset;

    public boolean isThumbOnDragging;

    public final int mTextSpace;

    public SparseArray mSectionTextArray;

    public float mPreThumbCenterX;

    public c onProgressChangedListener;

    public float mLeft;

    public float mRight;

    public final Paint mPaint;

    public final Paint mCirclePaint;

    public final Rect mRectText;

    public final Rect mRectHeightText;

    public b mOSSectionSeekBarBuilder;

    public int mSecondTrackColorDisable;

    public int mThumbOutColorDisable;

    public int mThumbInsideColorDisable;

    public int mDotsSelectedColorDisable;

    public final Context mContext;

    public boolean isTouchOnThumb;

    public final String TAG;

    public boolean isCenterXAnimation;

    public float min;

    public ValueAnimator mThumbIntervalAnimator;

    public float max;

    public jv9 mThumbIntervalSpringAnimation;

    public float progressFloat;

    public float mCurrentSourceTrackWidth;

    public int mFinalProgress;

    public float mCurrentScaleFactor;

    public boolean isFloatType;

    public float mFromScaleFactor;

    public int mTrackSize;

    public float mTrackWidthMax;

    public int mSecondTrackSize;

    public float mCurrentPointerPosition;

    public int mSectionTextSize;

    public float mLastPointerPosition;

    public int mSectionCount;

    public float mTouchDownPosition;

    public int mThumbInWidth;

    public boolean isTouchMove;

    public int mThumbOutWidth;

    public final Runnable mVibrateRunnable;

    public int mTextTopMargin;

    public boolean mVibrateAble;

    public int mTextBottomMargin;

    public boolean isForceHios;

    public int mDotsSize;

    public a67 mLiquidDrawable;

    public int mTrackColor;

    public int mLiquidWidth;

    public int mSecondTrackColor;

    public int mLiquidHeight;

    public int mThumbOutColor;

    public int mLiquidRadius;

    public int mThumbInsideColor;

    public final GradientDrawable mWhiteBackDrawable;

    public int mDotsColor;

    public float mCurrentAlpha;

    public int mDotsSelectedColor;

    public ValueAnimator mAlphaAnimator;

    public int mSectionTextColor;

    public jv9 mSpringAnimation;

    public int mSectionTextInterval;

    public float mThumbHalfWidth;

    public int mProcessMarginTopBottow;

    public static final Companion INSTANCE = new Companion(null);
    public static final int z0 = 250;
    public static final int A0 = 200;
    public static final int B0 = 250;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(int i) {
            return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
        }

        public final int b(int i) {
            return (int) TypedValue.applyDimension(2, i, Resources.getSystem().getDisplayMetrics());
        }

        public Companion() {
        }
    }

    public static final class b {
        public int A;
        public int B;
        public WeakReference C;
        public float a;
        public float b;
        public float c;
        public boolean d;
        public boolean e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public int z;

        public b(OSSectionSeekbar oSSectionSeekbar) {
            if (oSSectionSeekbar != null) {
                this.C = new WeakReference(oSSectionSeekbar);
                boolean isForceHios = oSSectionSeekbar.getIsForceHios();
                this.a = 0.0f;
                this.b = 100.0f;
                this.c = 0.0f;
                if (isForceHios) {
                    this.t = ContextCompat.getColor(oSSectionSeekbar.mContext, R.color.os_color_white100);
                    this.f = oSSectionSeekbar.mContext.getResources().getDimensionPixelSize(R.dimen.os_dimen_seekbar_track_width_hios);
                    this.g = oSSectionSeekbar.mContext.getResources().getDimensionPixelSize(R.dimen.os_dimen_seekbar_second_track_width_hios);
                    this.o = oSSectionSeekbar.mContext.getResources().getDimensionPixelSize(R.dimen.os_seekbar_section_dot_size_hios);
                    this.j = 0;
                    this.m = oSSectionSeekbar.mContext.getResources().getDimensionPixelSize(R.dimen.os_dimen_seekbar_thumb_in_width_hios);
                    this.n = oSSectionSeekbar.mContext.getResources().getDimensionPixelSize(R.dimen.os_dimen_seekbar_thumb_out_width_hios);
                    this.i = oSSectionSeekbar.mContext.getResources().getDimensionPixelSize(R.dimen.os_dimen_seekbar_t_track_width_hios);
                    this.l = OSSectionSeekbar.INSTANCE.a(4);
                    this.v = olb.m(oSSectionSeekbar.mContext, R.attr.os_opacityfill_weak, R.color.os_opacityfill_weak_hios);
                    Resources resources = oSSectionSeekbar.mContext.getResources();
                    int i = R.color.os_color_white30;
                    this.w = resources.getColor(i, oSSectionSeekbar.mContext.getTheme());
                    int iM = olb.m(oSSectionSeekbar.mContext, R.attr.os_brand_disabled, R.color.os_brand_disabled_hios);
                    this.y = iM;
                    this.z = iM;
                    this.A = ContextCompat.getColor(oSSectionSeekbar.mContext, R.color.os_comp_color_switch_hios);
                    this.B = oSSectionSeekbar.mContext.getResources().getColor(i, oSSectionSeekbar.mContext.getTheme());
                } else {
                    this.t = olb.m(oSSectionSeekbar.mContext, R.attr.os_seekbar_section_thumb_in_color, R.color.os_color_white100);
                    int i2 = R.attr.os_seekbar_section_track_width;
                    Companion companion = OSSectionSeekbar.INSTANCE;
                    this.f = olb.n(i2, companion.a(3), oSSectionSeekbar.mContext);
                    this.g = olb.n(R.attr.os_seekbar_section_second_track_width, companion.a(3), oSSectionSeekbar.mContext);
                    this.o = olb.n(R.attr.os_seekbar_section_dot_size, companion.a(6), oSSectionSeekbar.mContext);
                    this.j = olb.n(R.attr.os_seekbar_section_text_top_margin, companion.a(11), oSSectionSeekbar.mContext);
                    this.m = olb.n(R.attr.os_seekbar_section_thumb_in_width, companion.a(8), oSSectionSeekbar.mContext);
                    this.n = olb.n(R.attr.os_seekbar_section_thumb_out_width, companion.a(14), oSSectionSeekbar.mContext);
                    this.i = olb.n(R.attr.os_seekbar_section_t_track_width, companion.a(22), oSSectionSeekbar.mContext);
                    this.v = olb.m(oSSectionSeekbar.mContext, R.attr.os_opacityfill_weak, R.color.os_opacityfill_weak_hios);
                    boolean z = olb.c;
                    this.w = z ? oSSectionSeekbar.mContext.getResources().getColor(R.color.os_color_white30, oSSectionSeekbar.mContext.getTheme()) : oSSectionSeekbar.M();
                    int iM2 = olb.m(oSSectionSeekbar.mContext, R.attr.os_brand_disabled, R.color.os_brand_disabled_hios);
                    this.y = iM2;
                    this.z = iM2;
                    this.A = olb.m(oSSectionSeekbar.mContext, R.attr.os_seekbar_section_thumb_in_disable_color, R.color.os_comp_color_switch_hios);
                    this.B = z ? oSSectionSeekbar.mContext.getResources().getColor(R.color.os_color_white30, oSSectionSeekbar.mContext.getTheme()) : oSSectionSeekbar.M();
                }
                this.q = olb.m(oSSectionSeekbar.mContext, R.attr.os_opacityfill_weaker, R.color.os_opacityfill_weaker_hios);
                Context context = oSSectionSeekbar.mContext;
                int i3 = R.attr.os_platform_basic_color;
                int i4 = R.color.os_platform_basic_color_hios;
                this.r = olb.m(context, i3, i4);
                this.s = olb.m(oSSectionSeekbar.mContext, i3, i4);
                this.u = olb.m(oSSectionSeekbar.mContext, R.attr.os_text_info, R.color.os_text_info_hios);
                Companion companion2 = OSSectionSeekbar.INSTANCE;
                this.h = companion2.b(12);
                this.k = companion2.a(10);
                this.l = companion2.a(4);
                this.p = 5;
                this.d = false;
                this.e = true;
            }
        }

        public final void a() {
            OSSectionSeekbar oSSectionSeekbar;
            WeakReference weakReference = this.C;
            if (weakReference == null || (oSSectionSeekbar = (OSSectionSeekbar) weakReference.get()) == null) {
                return;
            }
            oSSectionSeekbar.config(this);
        }

        public final b b(boolean z) {
            this.e = z;
            return this;
        }

        public final b c(int i) {
            this.v = i;
            return this;
        }

        public final b d(int i) {
            this.p = i;
            return this;
        }

        public final b e(int i) {
            this.t = i;
            return this;
        }

        public final boolean getDisplayCharacters() {
            return this.e;
        }

        public final int getDotsColor() {
            return this.v;
        }

        public final int getDotsSelectedColor() {
            return this.w;
        }

        public final int getDotsSelectedColorDisable() {
            return this.B;
        }

        public final int getDotsSize() {
            return this.o;
        }

        public final boolean getFloatType() {
            return this.d;
        }

        public final float getMax() {
            return this.b;
        }

        public final float getMin() {
            return this.a;
        }

        public final int getProcessMarginTopBottow() {
            return this.l;
        }

        public final float getProgress() {
            return this.c;
        }

        public final int getSecondTrackColor() {
            return this.r;
        }

        public final int getSecondTrackColorDisable() {
            return this.y;
        }

        public final int getSecondTrackSize() {
            return this.g;
        }

        public final int getSectionCount() {
            return this.p;
        }

        public final int getSectionTextColor() {
            return this.u;
        }

        public final int getSectionTextInterval() {
            return this.x;
        }

        public final int getSectionTextSize() {
            return this.h;
        }

        public final int getTextBottomMargin() {
            return this.k;
        }

        public final int getTextTopMargin() {
            return this.j;
        }

        public final int getThumbInWidth() {
            return this.m;
        }

        public final int getThumbInsideColor() {
            return this.t;
        }

        public final int getThumbInsideColorDisable() {
            return this.A;
        }

        public final int getThumbOutColor() {
            return this.s;
        }

        public final int getThumbOutColorDisable() {
            return this.z;
        }

        public final int getThumbOutWidth() {
            return this.n;
        }

        public final int getTrackColor() {
            return this.q;
        }

        public final int getTrackSize() {
            return this.f;
        }

        public final int getTrackSizeMax() {
            return this.i;
        }

        public final void setDisplayCharacters(boolean z) {
            this.e = z;
        }

        public final void setDotsColor(int i) {
            this.v = i;
        }

        public final void setDotsSelectedColor(int i) {
            this.w = i;
        }

        public final void setDotsSelectedColorDisable(int i) {
            this.B = i;
        }

        public final void setDotsSize(int i) {
            this.o = i;
        }

        public final void setFloatType(boolean z) {
            this.d = z;
        }

        public final void setMax(float f) {
            this.b = f;
        }

        public final void setMin(float f) {
            this.a = f;
        }

        public final void setProcessMarginTopBottow(int i) {
            this.l = i;
        }

        public final void setProgress(float f) {
            this.c = f;
        }

        public final void setSecondTrackColor(int i) {
            this.r = i;
        }

        public final void setSecondTrackColorDisable(int i) {
            this.y = i;
        }

        public final void setSecondTrackSize(int i) {
            this.g = i;
        }

        public final void setSectionCount(int i) {
            this.p = i;
        }

        public final void setSectionTextColor(int i) {
            this.u = i;
        }

        public final void setSectionTextInterval(int i) {
            this.x = i;
        }

        public final void setSectionTextSize(int i) {
            this.h = i;
        }

        public final void setTextBottomMargin(int i) {
            this.k = i;
        }

        public final void setTextTopMargin(int i) {
            this.j = i;
        }

        public final void setThumbInWidth(int i) {
            this.m = i;
        }

        public final void setThumbInsideColor(int i) {
            this.t = i;
        }

        public final void setThumbInsideColorDisable(int i) {
            this.A = i;
        }

        public final void setThumbOutColor(int i) {
            this.s = i;
        }

        public final void setThumbOutColorDisable(int i) {
            this.z = i;
        }

        public final void setThumbOutWidth(int i) {
            this.n = i;
        }

        public final void setTrackColor(int i) {
            this.q = i;
        }

        public final void setTrackSize(int i) {
            this.f = i;
        }

        public final void setTrackSizeMax(int i) {
            this.i = i;
        }
    }

    public interface c {
        void a(OSSectionSeekbar oSSectionSeekbar);

        void b(OSSectionSeekbar oSSectionSeekbar, int i, float f, boolean z);

        void c(OSSectionSeekbar oSSectionSeekbar);

        void d(OSSectionSeekbar oSSectionSeekbar, int i, float f, boolean z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSectionSeekbar(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "mContext");
    }

    public static final void G(OSSectionSeekbar oSSectionSeekbar, ValueAnimator valueAnimator) {
        y45.j(oSSectionSeekbar, "this$0");
        y45.j(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        oSSectionSeekbar.mCurrentAlpha = ((Float) animatedValue).floatValue();
        oSSectionSeekbar.invalidate();
    }

    public static final void I(OSSectionSeekbar oSSectionSeekbar, f43 f43Var, float f, float f2) {
        y45.j(oSSectionSeekbar, "this$0");
        oSSectionSeekbar.mCurrentScaleFactor = f;
        oSSectionSeekbar.invalidate();
    }

    public static final void K(OSSectionSeekbar oSSectionSeekbar, f43 f43Var, float f, float f2) {
        y45.j(oSSectionSeekbar, "this$0");
        oSSectionSeekbar.mThumbCenterX = f;
        oSSectionSeekbar.progressFloat = l(oSSectionSeekbar, 0.0f, 1, null);
        c cVar = oSSectionSeekbar.onProgressChangedListener;
        if (cVar != null) {
            cVar.b(oSSectionSeekbar, oSSectionSeekbar.getProgress(), oSSectionSeekbar.progressFloat, true);
        }
        oSSectionSeekbar.invalidate();
    }

    public static final void L(OSSectionSeekbar oSSectionSeekbar, f43 f43Var, boolean z, float f, float f2) {
        y45.j(oSSectionSeekbar, "this$0");
        oSSectionSeekbar.isCenterXAnimation = false;
    }

    private final int getDotColor() {
        return isEnabled() ? this.mDotsSelectedColor : this.mDotsSelectedColorDisable;
    }

    private final int getSecondTrackColor() {
        return isEnabled() ? this.mSecondTrackColor : this.mSecondTrackColorDisable;
    }

    private final int getThumbInsideColor() {
        return isEnabled() ? this.mThumbInsideColor : this.mThumbInsideColorDisable;
    }

    private final int getThumbOutColor() {
        return isEnabled() ? this.mThumbOutColor : this.mThumbOutColorDisable;
    }

    public static int i(OSSectionSeekbar oSSectionSeekbar, float f, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: calculateCurrentSection");
        }
        if ((i & 1) != 0) {
            f = oSSectionSeekbar.progressFloat;
        }
        return oSSectionSeekbar.h(f);
    }

    public static float l(OSSectionSeekbar oSSectionSeekbar, float f, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: calculateProgress");
        }
        if ((i & 1) != 0) {
            f = oSSectionSeekbar.mThumbCenterX;
        }
        return oSSectionSeekbar.k(f);
    }

    public static final void w(OSSectionSeekbar oSSectionSeekbar) {
        y45.j(oSSectionSeekbar, "this$0");
        vob.c(oSSectionSeekbar.mContext);
    }

    public static final void x(OSSectionSeekbar oSSectionSeekbar) {
        y45.j(oSSectionSeekbar, "this$0");
        oSSectionSeekbar.requestLayout();
    }

    public final void A(MotionEvent event) {
        if (((float) Math.abs(event.getX() - this.mTouchDownPosition)) > OSSeekbar.INSTANCE.a(1)) {
            this.mCurrentPointerPosition = event.getX();
            float fG = g(event.getX());
            int iH = h(k(event.getX()));
            if (iH != this.mCurrentSection) {
                if (!this.isTouchMove && !this.isTouchOnThumb) {
                    H(0.0f);
                    F(1.0f);
                }
                float fK = k(fG);
                this.progressFloat = fK;
                this.mCurrentSection = iH;
                m();
                J(fG);
                c cVar = this.onProgressChangedListener;
                if (cVar != null) {
                    cVar.d(this, Math.round(fK), fK, true);
                }
                C();
            } else if (!this.isTouchMove && !this.isTouchOnThumb) {
                H(0.0f);
                F(1.0f);
            }
            this.mLastPointerPosition = this.mCurrentPointerPosition;
            this.isTouchMove = true;
        }
    }

    public final void B(MotionEvent event) {
        float fG = g(event.getX());
        if (fG == this.mPreThumbCenterX) {
            return;
        }
        this.mPreThumbCenterX = fG;
        this.mThumbCenterX = fG;
        this.progressFloat = l(this, 0.0f, 1, null);
        this.mCurrentSection = i(this, 0.0f, 1, null);
        invalidate();
        c cVar = this.onProgressChangedListener;
        if (cVar != null) {
            cVar.d(this, getProgress(), this.progressFloat, true);
        }
        c cVar2 = this.onProgressChangedListener;
        if (cVar2 != null) {
            cVar2.b(this, getProgress(), this.progressFloat, true);
        }
        C();
    }

    public final void C() {
        if (!this.mVibrateAble) {
            bq5.o("vibrate Able is false");
        } else {
            if (!olb.Z || getHandler() == null || !olb.J || getHandler().hasCallbacks(this.mVibrateRunnable)) {
                return;
            }
            getHandler().postDelayed(this.mVibrateRunnable, 50L);
        }
    }

    public final float D(float progress, float leftBase, float rightBase) {
        if (Math.abs(this.mDelta) < 1.0E-4f) {
            return olb.l0() ? rightBase : leftBase;
        }
        return olb.l0() ? rightBase - ((this.mTrackLength / this.mDelta) * (progress - this.min)) : ((this.mTrackLength / this.mDelta) * (progress - this.min)) + leftBase;
    }

    public final void E() {
        Handler handler = getHandler();
        if (handler.hasCallbacks(this.mVibrateRunnable)) {
            handler.removeCallbacks(this.mVibrateRunnable);
        }
    }

    public final void F(float toAlpha) {
        ValueAnimator valueAnimator = this.mAlphaAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mCurrentAlpha, toAlpha);
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                OSSectionSeekbar.G(this.b, valueAnimator2);
            }
        });
        valueAnimatorOfFloat.start();
        this.mAlphaAnimator = valueAnimatorOfFloat;
    }

    public final void H(float toScale) {
        kv9 kv9VarV;
        if (this.mSpringAnimation == null) {
            jv9 jv9Var = new jv9(new fz3(this.mCurrentScaleFactor));
            this.mSpringAnimation = jv9Var;
            jv9Var.z(new kv9());
            jv9 jv9Var2 = this.mSpringAnimation;
            if (jv9Var2 != null) {
                jv9Var2.k(0.01f);
            }
            jv9 jv9Var3 = this.mSpringAnimation;
            if (jv9Var3 != null) {
            }
        }
        jv9 jv9Var4 = this.mSpringAnimation;
        if (jv9Var4 != null) {
            jv9Var4.c();
        }
        jv9 jv9Var5 = this.mSpringAnimation;
        if (jv9Var5 != null) {
        }
        jv9 jv9Var6 = this.mSpringAnimation;
        if (jv9Var6 != null && (kv9VarV = jv9Var6.v()) != null) {
            kv9VarV.i(400.0f);
            kv9VarV.g(0.79f);
            kv9VarV.h(toScale);
        }
        jv9 jv9Var7 = this.mSpringAnimation;
        if (jv9Var7 != null) {
            jv9Var7.p();
        }
    }

    public final void J(float toCenterX) {
        kv9 kv9VarV;
        if (this.mThumbIntervalSpringAnimation == null) {
            jv9 jv9Var = new jv9(new fz3(this.mThumbCenterX));
            this.mThumbIntervalSpringAnimation = jv9Var;
            jv9Var.z(new kv9());
            jv9 jv9Var2 = this.mThumbIntervalSpringAnimation;
            if (jv9Var2 != null) {
                jv9Var2.k(0.01f);
            }
            jv9 jv9Var3 = this.mThumbIntervalSpringAnimation;
            if (jv9Var3 != null) {
            }
            jv9 jv9Var4 = this.mThumbIntervalSpringAnimation;
            if (jv9Var4 != null) {
            }
        }
        jv9 jv9Var5 = this.mThumbIntervalSpringAnimation;
        if (jv9Var5 != null) {
            jv9Var5.c();
        }
        this.isCenterXAnimation = true;
        jv9 jv9Var6 = this.mThumbIntervalSpringAnimation;
        if (jv9Var6 != null) {
        }
        jv9 jv9Var7 = this.mThumbIntervalSpringAnimation;
        if (jv9Var7 != null && (kv9VarV = jv9Var7.v()) != null) {
            kv9VarV.i(400.0f);
            kv9VarV.g(0.79f);
            kv9VarV.h(toCenterX);
        }
        jv9 jv9Var8 = this.mThumbIntervalSpringAnimation;
        if (jv9Var8 != null) {
            jv9Var8.p();
        }
    }

    public final int M() {
        TypedValue typedValue = new TypedValue();
        return this.mContext.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true) ? ContextCompat.getColor(this.mContext, typedValue.resourceId) : ContextCompat.getColor(this.mContext, R.color.os_platform_basic_color_hios);
    }

    public final void config(b builder) {
        y45.j(builder, "builder");
        this.min = builder.getMin();
        this.max = builder.getMax();
        this.progressFloat = builder.getProgress();
        this.isFloatType = builder.getFloatType();
        this.mTrackSize = builder.getTrackSize();
        this.mCurrentSourceTrackWidth = builder.getTrackSize();
        this.mTrackWidthMax = builder.getTrackSizeMax();
        this.mSecondTrackSize = builder.getSecondTrackSize();
        this.mThumbInWidth = builder.getThumbInWidth();
        this.mThumbOutWidth = builder.getThumbOutWidth();
        this.mDotsSize = builder.getDotsSize();
        this.mTextTopMargin = builder.getTextTopMargin();
        this.mTextBottomMargin = builder.getTextBottomMargin();
        this.mProcessMarginTopBottow = builder.getProcessMarginTopBottow();
        this.mTrackColor = builder.getTrackColor();
        this.mSecondTrackColor = builder.getSecondTrackColor();
        this.mThumbOutColor = builder.getThumbOutColor();
        this.mThumbInsideColor = builder.getThumbInsideColor();
        this.mDotsColor = builder.getDotsColor();
        this.mDotsSelectedColor = builder.getDotsSelectedColor();
        this.mSectionCount = builder.getSectionCount();
        this.mSectionTextSize = builder.getSectionTextSize();
        this.mSectionTextColor = builder.getSectionTextColor();
        this.mSectionTextInterval = builder.getSectionTextInterval();
        this.mDisplayCharacters = builder.getDisplayCharacters();
        u();
        c cVar = this.onProgressChangedListener;
        if (cVar != null) {
            cVar.d(this, getProgress(), this.progressFloat, false);
        }
        c cVar2 = this.onProgressChangedListener;
        if (cVar2 != null) {
            cVar2.b(this, getProgress(), this.progressFloat, false);
        }
        this.mOSSectionSeekBarBuilder = null;
        this.mSecondTrackColorDisable = builder.getSecondTrackColorDisable();
        this.mThumbOutColorDisable = builder.getThumbOutColorDisable();
        this.mThumbInsideColorDisable = builder.getThumbInsideColorDisable();
        this.mDotsSelectedColorDisable = builder.getDotsSelectedColorDisable();
        requestLayout();
    }

    public final float g(float touchedX) {
        float f = this.mLeft;
        if (touchedX <= f) {
            return f;
        }
        float f2 = this.mRight;
        if (touchedX >= f2) {
            return f2;
        }
        float f3 = 0.0f;
        int i = 0;
        while (i <= this.mSectionCount) {
            float f4 = this.mSectionOffset;
            f3 = (i * f4) + this.mLeft;
            if (f3 <= touchedX && touchedX - f3 <= f4) {
                break;
            }
            i++;
        }
        float f5 = touchedX - f3;
        float f6 = this.mSectionOffset;
        return f5 <= f6 / 2.0f ? f3 : ((i + 1) * f6) + this.mLeft;
    }

    public b getConfigBuilder() {
        if (this.mOSSectionSeekBarBuilder == null) {
            this.mOSSectionSeekBarBuilder = new b(this);
        }
        b bVar = this.mOSSectionSeekBarBuilder;
        y45.g(bVar);
        return bVar;
    }

    public final int getMFinalProgress() {
        return this.mFinalProgress;
    }

    public final float getMax() {
        return this.max;
    }

    public final float getMin() {
        return this.min;
    }

    public final c getOnProgressChangedListener() {
        return this.onProgressChangedListener;
    }

    public final int getProgress() {
        return Math.round(this.progressFloat);
    }

    public final float getProgressFloat() {
        return this.progressFloat;
    }

    public final int h(float progress) {
        return Math.round(((progress - this.min) / this.mDelta) * this.mSectionCount);
    }

    public final boolean getIsForceHios() {
        return this.isForceHios;
    }

    public final float j() {
        if (this.mSectionTextArray.size() == 0) {
            return 0.0f;
        }
        Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
        float fMax = fontMetrics.bottom - fontMetrics.top;
        int size = this.mSectionTextArray.size();
        for (int i = 0; i < size; i++) {
            String str = (String) this.mSectionTextArray.get(i);
            this.mPaint.getTextBounds(str, 0, str.length(), this.mRectHeightText);
            fMax = Math.max(fMax, this.mRectHeightText.height());
        }
        return fMax;
    }

    public final float k(float positionX) {
        return olb.l0() ? (((this.mRight - positionX) * this.mDelta) / this.mTrackLength) + this.min : (((positionX - this.mLeft) * this.mDelta) / this.mTrackLength) + this.min;
    }

    public final void m() {
        ValueAnimator valueAnimator = this.mThumbIntervalAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        jv9 jv9Var = this.mThumbIntervalSpringAnimation;
        if (jv9Var != null) {
            jv9Var.c();
        }
        this.isCenterXAnimation = false;
    }

    public final void n(Canvas canvas) {
        float f = this.mThumbCenterY;
        this.mPaint.setColor(this.mSectionTextColor);
        this.mPaint.setTextSize(this.mSectionTextSize);
        float f2 = this.mLeft;
        float f3 = this.mRight;
        float paddingTop = (getPaddingTop() + this.mTextTopMargin) - this.mPaint.getFontMetrics().top;
        if (!this.isThumbOnDragging && !this.isCenterXAnimation) {
            this.mThumbCenterX = D(this.progressFloat, this.mLeft, this.mRight);
        }
        this.mPaint.setColor(this.mTrackColor);
        this.mPaint.setStrokeWidth(this.mCurrentSourceTrackWidth);
        Paint paint = this.mPaint;
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        canvas.drawLine(f2, f, f3, f, this.mPaint);
        this.mPaint.setColor(getSecondTrackColor());
        this.mPaint.setStrokeWidth(this.mCurrentSourceTrackWidth);
        this.mPaint.setStrokeCap(cap);
        if (olb.l0()) {
            canvas.drawLine(this.mThumbCenterX, f, f3, f, this.mPaint);
        } else {
            canvas.drawLine(f2, f, this.mThumbCenterX, f, this.mPaint);
        }
        int i = this.mSectionCount;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                float f4 = olb.l0() ? this.mRight - (i2 * this.mSectionOffset) : this.mLeft + (i2 * this.mSectionOffset);
                if (!olb.l0() ? f4 >= this.mThumbCenterX + (this.mThumbOutWidth / 2) : f4 <= this.mThumbCenterX - (this.mThumbOutWidth / 2)) {
                    this.mPaint.setColor(getDotColor());
                } else {
                    this.mPaint.setColor(this.mDotsColor);
                }
                canvas.drawCircle(f4, f, this.mDotsSize * 0.5f, this.mPaint);
                this.mPaint.setColor(this.mSectionTextColor);
                int i3 = olb.l0() ? this.mSectionCount - i2 : i2;
                String str = (String) this.mSectionTextArray.get(i3, null);
                if (str != null && this.mDisplayCharacters) {
                    if (i3 == 0) {
                        this.mPaint.setTextAlign(Paint.Align.LEFT);
                        canvas.drawText(str, this.mLeft - (this.mCurrentSourceTrackWidth * 0.5f), paddingTop, this.mPaint);
                        this.mPaint.setTextAlign(Paint.Align.CENTER);
                    } else if (i3 == this.mSectionCount) {
                        this.mPaint.setTextAlign(Paint.Align.RIGHT);
                        canvas.drawText(str, this.mRight + (this.mCurrentSourceTrackWidth * 0.5f), paddingTop, this.mPaint);
                        this.mPaint.setTextAlign(Paint.Align.CENTER);
                    } else {
                        canvas.drawText(str, f4, paddingTop, this.mPaint);
                    }
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        if (this.isTouchOnThumb || this.isThumbOnDragging || this.isCenterXAnimation) {
            o(canvas, this.mThumbCenterX, f);
        }
        this.mCirclePaint.setColor(getThumbOutColor());
        this.mCirclePaint.setAlpha(wn8.k((int) ((1.0f - this.mCurrentAlpha) * 255), 0, 255));
        float f5 = this.mLiquidWidth;
        float f6 = this.mLiquidHeight;
        float f7 = this.mThumbOutWidth;
        float f8 = this.mCurrentScaleFactor;
        float f9 = 1.0f - f8;
        float f10 = ((f5 - f7) * f9) + f7;
        float f11 = f7 + ((f6 - f7) * f9);
        if (f8 > 0.0f) {
            float f12 = this.mThumbCenterX;
            float f13 = 2;
            float f14 = f10 / f13;
            float f15 = f11 / f13;
            canvas.drawOval(f12 - f14, f - f15, f12 + f14, f + f15, this.mCirclePaint);
        }
        this.mCirclePaint.setStyle(Paint.Style.FILL);
        this.mCirclePaint.setColor(s(getThumbInsideColor()));
        int i4 = this.mThumbInWidth;
        float f16 = i4 + ((f5 - i4) * f9);
        float f17 = i4 + ((f6 - i4) * f9);
        float f18 = this.mThumbCenterX;
        float f19 = 2;
        float f20 = f16 / f19;
        float f21 = f17 / f19;
        canvas.drawOval(f18 - f20, f - f21, f18 + f20, f + f21, this.mCirclePaint);
    }

    public final void o(Canvas canvas, float centerX, float centerY) {
        a67 a67Var;
        float f = this.mLiquidWidth;
        float f2 = this.mLiquidHeight;
        float f3 = 2;
        float f4 = this.mThumbHalfWidth * f3;
        float f5 = 1.0f - this.mCurrentScaleFactor;
        float f6 = ((f - f4) * f5) + f4;
        float f7 = ((f2 - f4) * f5) + f4;
        if (this.mLiquidDrawable == null) {
            a67 a67Var2 = new a67(this.mContext, this.mLiquidRadius);
            this.mLiquidDrawable = a67Var2;
            a67Var2.setStrokeWidth(olb.h(this.mContext, 1));
            a67 a67Var3 = this.mLiquidDrawable;
            if (a67Var3 != null) {
                a67Var3.h(true);
            }
        }
        getResources().getColor(R.color.os_liquid_thumb_color);
        this.mWhiteBackDrawable.setColor(-1);
        float f8 = f4 / 2.0f;
        float f9 = f8 + ((this.mLiquidRadius - f8) * f5);
        float f10 = olb.e0(getContext()) ? 0.2f : 0.5f;
        int iK = wn8.k((int) (this.mCurrentAlpha * 255), 0, 255);
        if (iK == 0) {
            return;
        }
        this.mWhiteBackDrawable.setCornerRadius(f9);
        float f11 = iK;
        this.mWhiteBackDrawable.setAlpha(wn8.k((int) (f10 * f11), 0, 255));
        this.mWhiteBackDrawable.setBounds(0, 0, (int) f6, (int) f7);
        canvas.save();
        canvas.translate(centerX - (f6 / f3), centerY - (f7 / f3));
        this.mWhiteBackDrawable.draw(canvas);
        a67 a67Var4 = this.mLiquidDrawable;
        if (a67Var4 != null) {
            a67Var4.setAlpha(iK);
        }
        if (f11 > 249.90001f) {
            a67 a67Var5 = this.mLiquidDrawable;
            if (a67Var5 != null) {
                a67Var5.setShowOutline(true);
            }
        } else {
            a67 a67Var6 = this.mLiquidDrawable;
            if (a67Var6 != null) {
                a67Var6.setShowOutline(false);
            }
        }
        if (Build.VERSION.SDK_INT >= 30 && (a67Var = this.mLiquidDrawable) != null) {
            a67Var.c(canvas, f6, f7, false);
        }
        canvas.restore();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mCurrentScaleFactor = 1.0f;
        this.mCurrentAlpha = 0.0f;
        this.isCenterXAnimation = false;
        this.isThumbOnDragging = false;
        this.mThumbCenterX = D(this.progressFloat, this.mLeft, this.mRight);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.mThumbIntervalAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.mAlphaAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        jv9 jv9Var = this.mSpringAnimation;
        if (jv9Var != null) {
            jv9Var.c();
        }
        jv9 jv9Var2 = this.mThumbIntervalSpringAnimation;
        if (jv9Var2 != null) {
            jv9Var2.c();
        }
        this.mThumbIntervalAnimator = null;
        this.mAlphaAnimator = null;
        this.mSpringAnimation = null;
        this.mThumbIntervalSpringAnimation = null;
        E();
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        if (olb.c || this.isForceHios) {
            n(canvas);
        } else {
            p(canvas);
        }
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int paddingTop = getPaddingTop() + this.mThumbOutWidth + getPaddingBottom();
        float fJ = j();
        if (this.mDisplayCharacters) {
            paddingTop += this.mProcessMarginTopBottow + this.mTextTopMargin + ((int) fJ) + this.mTextBottomMargin;
        }
        setMeasuredDimension(View.resolveSize(INSTANCE.a(180), widthMeasureSpec), t(paddingTop));
        this.mThumbCenterY = this.mDisplayCharacters ? getPaddingTop() + this.mTextTopMargin + fJ + this.mTextBottomMargin + (this.mThumbOutWidth * 0.5f) : getMeasuredHeight() * 0.5f;
        int i = this.mThumbOutWidth / 2;
        this.mThumbHalfWidth = i;
        this.mLeft = getPaddingLeft() + i;
        this.mRight = (getMeasuredWidth() - getPaddingRight()) - i;
        this.mPaint.setTextSize(this.mSectionTextSize);
        Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
        this.mRectText.set(0, (int) fontMetrics.top, 0, (int) fontMetrics.bottom);
        float f = this.mRight - this.mLeft;
        this.mTrackLength = f;
        this.mSectionOffset = (f * 1.0f) / this.mSectionCount;
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        if (!(state instanceof Bundle)) {
            super.onRestoreInstanceState(state);
            return;
        }
        Bundle bundle = (Bundle) state;
        this.progressFloat = bundle.getFloat("progress");
        this.mCurrentSection = i(this, 0.0f, 1, null);
        super.onRestoreInstanceState(bundle.getParcelable("save_instance"));
        setProgress(this.progressFloat);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("save_instance", super.onSaveInstanceState());
        bundle.putFloat("progress", this.progressFloat);
        return bundle;
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        post(new Runnable() {
            @Override
            public final void run() {
                OSSectionSeekbar.x(this.b);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0032  */
    /* JADX WARN: Code duplicated, block: B:31:0x006a  */
    /* JADX WARN: Code duplicated, block: B:33:0x008e  */
    /* JADX WARN: Code duplicated, block: B:35:0x0097  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b3  */
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        int iH;
        c cVar;
        c cVar2;
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            performClick();
            getParent().requestDisallowInterceptTouchEvent(true);
            boolean zIsEnabled = isEnabled();
            this.isThumbOnDragging = zIsEnabled;
            this.isTouchMove = false;
            if (zIsEnabled) {
                if (olb.c || this.isForceHios) {
                    y(event);
                } else {
                    z(event);
                }
            }
        } else if (actionMasked == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
            this.isThumbOnDragging = false;
            if (!olb.c || this.isForceHios) {
                iH = h(k(event.getX()));
                float fG = g(event.getX());
                float fK = k(fG);
                this.progressFloat = fK;
                this.mFinalProgress = Math.round(fK);
                if (this.mCurrentSection != iH) {
                    this.mCurrentSection = iH;
                    C();
                    cVar = this.onProgressChangedListener;
                    if (cVar != null) {
                        cVar.d(this, getProgress(), this.progressFloat, true);
                    }
                }
                H(1.0f);
                F(0.0f);
                m();
                J(fG);
            } else {
                this.mFinalProgress = Math.round(this.progressFloat);
                c cVar3 = this.onProgressChangedListener;
                if (cVar3 != null) {
                    cVar3.d(this, getProgress(), this.progressFloat, true);
                }
                c cVar4 = this.onProgressChangedListener;
                if (cVar4 != null) {
                    cVar4.b(this, getProgress(), this.progressFloat, true);
                }
                C();
            }
            cVar2 = this.onProgressChangedListener;
            if (cVar2 != null) {
                cVar2.a(this);
            }
        } else if (actionMasked == 2) {
            boolean zIsEnabled2 = isEnabled();
            this.isThumbOnDragging = zIsEnabled2;
            if (zIsEnabled2) {
                if (olb.c || this.isForceHios) {
                    A(event);
                } else {
                    B(event);
                }
            }
        } else if (actionMasked == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
            this.isThumbOnDragging = false;
            if (olb.c) {
                iH = h(k(event.getX()));
                float fG2 = g(event.getX());
                float fK2 = k(fG2);
                this.progressFloat = fK2;
                this.mFinalProgress = Math.round(fK2);
                if (this.mCurrentSection != iH) {
                    this.mCurrentSection = iH;
                    C();
                    cVar = this.onProgressChangedListener;
                    if (cVar != null) {
                        cVar.d(this, getProgress(), this.progressFloat, true);
                    }
                }
                H(1.0f);
                F(0.0f);
                m();
                J(fG2);
            } else {
                iH = h(k(event.getX()));
                float fG3 = g(event.getX());
                float fK3 = k(fG3);
                this.progressFloat = fK3;
                this.mFinalProgress = Math.round(fK3);
                if (this.mCurrentSection != iH) {
                    this.mCurrentSection = iH;
                    C();
                    cVar = this.onProgressChangedListener;
                    if (cVar != null) {
                        cVar.d(this, getProgress(), this.progressFloat, true);
                    }
                }
                H(1.0f);
                F(0.0f);
                m();
                J(fG3);
            }
            cVar2 = this.onProgressChangedListener;
            if (cVar2 != null) {
                cVar2.a(this);
            }
        }
        return this.isThumbOnDragging || super.onTouchEvent(event);
    }

    public final void p(Canvas canvas) {
        float f = this.mThumbCenterY;
        this.mPaint.setColor(this.mSectionTextColor);
        this.mPaint.setTextSize(this.mSectionTextSize);
        float f2 = this.mLeft;
        float f3 = this.mRight;
        float paddingTop = (getPaddingTop() + this.mTextTopMargin) - this.mRectText.top;
        if (!this.isThumbOnDragging) {
            this.mThumbCenterX = D(this.progressFloat, f2, f3);
        }
        this.mPaint.setColor(getSecondTrackColor());
        this.mPaint.setStrokeWidth(this.mSecondTrackSize);
        if (olb.l0()) {
            canvas.drawLine(this.mThumbCenterX, f, f3, f, this.mPaint);
        } else {
            canvas.drawLine(f2, f, this.mThumbCenterX, f, this.mPaint);
        }
        this.mPaint.setColor(this.mTrackColor);
        this.mPaint.setStrokeWidth(this.mTrackSize);
        if (olb.l0()) {
            canvas.drawLine(f2, f, this.mThumbCenterX, f, this.mPaint);
        } else {
            canvas.drawLine(this.mThumbCenterX, f, f3, f, this.mPaint);
        }
        int i = this.mSectionCount;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                float f4 = olb.l0() ? f3 - (i2 * this.mSectionOffset) : (i2 * this.mSectionOffset) + f2;
                if (i2 > this.mCurrentSection) {
                    this.mPaint.setColor(this.mDotsColor);
                } else {
                    this.mPaint.setColor(getDotColor());
                }
                canvas.drawCircle(f4, f, this.mDotsSize * 0.5f, this.mPaint);
                this.mPaint.setColor(this.mSectionTextColor);
                int i3 = olb.l0() ? this.mSectionCount - i2 : i2;
                String str = (String) this.mSectionTextArray.get(i3, null);
                if (str != null && this.mDisplayCharacters) {
                    if (i3 == 0) {
                        this.mPaint.setTextAlign(Paint.Align.LEFT);
                        canvas.drawText(str, f2 - (this.mTrackSize * 0.5f), paddingTop, this.mPaint);
                        this.mPaint.setTextAlign(Paint.Align.CENTER);
                    } else if (i3 == this.mSectionCount) {
                        this.mPaint.setTextAlign(Paint.Align.RIGHT);
                        canvas.drawText(str, (this.mTrackSize * 0.5f) + f3, paddingTop, this.mPaint);
                        this.mPaint.setTextAlign(Paint.Align.CENTER);
                    } else {
                        canvas.drawText(str, f4, paddingTop, this.mPaint);
                    }
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        this.mCirclePaint.setColor(getThumbOutColor());
        this.mCirclePaint.setStyle(Paint.Style.STROKE);
        int i4 = this.mThumbOutWidth;
        int i5 = this.mThumbInWidth;
        float f5 = (i4 - i5) * 0.5f;
        float f6 = i5 >> 1;
        this.mCirclePaint.setStrokeWidth(f5);
        canvas.drawCircle(this.mThumbCenterX, f, (0.5f * f5) + f6, this.mCirclePaint);
        this.mCirclePaint.setStyle(Paint.Style.FILL);
        this.mCirclePaint.setColor(getThumbInsideColor());
        canvas.drawCircle(this.mThumbCenterX, f, f6, this.mCirclePaint);
    }

    public final String q(float value) {
        return String.valueOf(r(value));
    }

    public final float r(float value) {
        return BigDecimal.valueOf(value).setScale(1, 4).floatValue();
    }

    public final int s(int thumbInsideColor) {
        return (wn8.k((int) ((thumbInsideColor >>> 24) * (1.0f - this.mCurrentAlpha)), 0, 255) << 24) | (thumbInsideColor & 16777215);
    }

    public final void setCustomSectionTextArray(s74 onCustomize) {
        y45.j(onCustomize, "onCustomize");
        this.mSectionTextArray = (SparseArray) onCustomize.invoke(Integer.valueOf(this.mSectionCount), this.mSectionTextArray);
        int i = this.mSectionCount;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                if (this.mSectionTextArray.get(i2) == null) {
                    this.mSectionTextArray.put(i2, "");
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        requestLayout();
        invalidate();
    }

    public final void setForceHios(boolean force) {
        this.isForceHios = force;
        postInvalidate();
    }

    public final void setForceHios$widgetsLib_release(boolean z) {
        this.isForceHios = z;
    }

    public final void setMFinalProgress(int i) {
        this.mFinalProgress = i;
    }

    public final void setOnProgressChangedListener(c cVar) {
        this.onProgressChangedListener = cVar;
    }

    public final void setProgress(float progress) {
        this.progressFloat = (Math.round((progress / this.mDelta) * this.mSectionCount) * this.mDelta) / this.mSectionCount;
        this.mCurrentSection = i(this, 0.0f, 1, null);
        c cVar = this.onProgressChangedListener;
        if (cVar != null) {
            cVar.d(this, getProgress(), this.progressFloat, false);
        }
        c cVar2 = this.onProgressChangedListener;
        if (cVar2 != null) {
            cVar2.b(this, getProgress(), this.progressFloat, false);
        }
        postInvalidate();
    }

    public final void setSecondTrackColor(int secondTrackColor) {
        if (this.mSecondTrackColor != secondTrackColor) {
            this.mSecondTrackColor = secondTrackColor;
            invalidate();
        }
    }

    public final void setThumbInsideColor(int thumbColor) {
        if (this.mThumbInsideColor != thumbColor) {
            this.mThumbInsideColor = thumbColor;
            invalidate();
        }
    }

    public final void setThumbInsideUnAbleColorHios(int thumbInsideUnAbleColorHios) {
    }

    public final void setThumbOutColor(int thumbColor) {
        if (this.mThumbOutColor != thumbColor) {
            this.mThumbOutColor = thumbColor;
            invalidate();
        }
    }

    public final void setTrackColor(int trackColor) {
        if (this.mTrackColor != trackColor) {
            this.mTrackColor = trackColor;
            invalidate();
        }
    }

    public final void setVibrateAble(boolean vibrateAble) {
        this.mVibrateAble = vibrateAble;
    }

    public final int t(int height) {
        return (int) Math.max(height, (olb.c || this.isForceHios) ? olb.h(this.mContext, 30) : olb.h(this.mContext, 20));
    }

    public final void u() {
        if (this.min == this.max) {
            this.min = 0.0f;
            this.max = 100.0f;
        }
        float f = this.min;
        float f2 = this.max;
        if (f > f2) {
            this.max = f;
            this.min = f2;
        }
        float f3 = this.progressFloat;
        float f4 = this.min;
        if (f3 < f4) {
            this.progressFloat = f4;
        }
        float f5 = this.progressFloat;
        float f6 = this.max;
        if (f5 > f6) {
            this.progressFloat = f6;
        }
        int i = this.mSecondTrackSize;
        int i2 = this.mTrackSize;
        if (i < i2) {
            this.mSecondTrackSize = i2 + INSTANCE.a(2);
        }
        int i3 = this.mThumbInWidth;
        int i4 = this.mSecondTrackSize;
        if (i3 <= i4) {
            this.mThumbInWidth = i4 + INSTANCE.a(4);
        }
        int i5 = this.mThumbOutWidth;
        int i6 = this.mThumbInWidth;
        if (i5 < i6) {
            this.mThumbOutWidth = i6 + INSTANCE.a(6);
        }
        if (this.mSectionCount <= 0) {
            this.mSectionCount = 10;
        }
        float f7 = this.max - this.min;
        this.mDelta = f7;
        float f8 = f7 / this.mSectionCount;
        this.mSectionValue = f8;
        if (f8 < 1.0f) {
            this.isFloatType = true;
        }
        if (this.mSectionTextInterval < 1) {
            this.mSectionTextInterval = 1;
        }
        v();
        setProgress(this.progressFloat);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0037  */
    /* JADX WARN: Code duplicated, block: B:22:0x003c  */
    public final void v() {
        int i;
        String strValueOf;
        int i2 = 0;
        boolean z = this.mSectionTextInterval > 1 && this.mSectionCount % 2 == 0;
        if (!this.mDisplayCharacters || this.mSectionTextArray.size() != 0 || (i = this.mSectionCount) < 0) {
            return;
        }
        while (true) {
            float f = this.min;
            float f2 = this.mSectionValue;
            float f3 = i2;
            float f4 = (f2 * f3) + f;
            if (!z) {
                SparseArray sparseArray = this.mSectionTextArray;
                if (this.isFloatType) {
                    strValueOf = q(f4);
                } else {
                    strValueOf = String.valueOf((int) f4);
                }
                sparseArray.put(i2, strValueOf);
            } else if (i2 % this.mSectionTextInterval == 0) {
                f4 = f + (f2 * f3);
                SparseArray sparseArray2 = this.mSectionTextArray;
                if (this.isFloatType) {
                    strValueOf = q(f4);
                } else {
                    strValueOf = String.valueOf((int) f4);
                }
                sparseArray2.put(i2, strValueOf);
            }
            if (i2 == i) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final void y(MotionEvent event) {
        float x = event.getX();
        this.mLastPointerPosition = x;
        this.mTouchDownPosition = x;
        this.isTouchOnThumb = Math.abs((double) (event.getX() - this.mThumbCenterX)) <= ((double) (((float) this.mThumbOutWidth) / ((float) 2)));
        m();
        if (this.isTouchOnThumb) {
            H(0.0f);
            F(1.0f);
        }
        this.progressFloat = l(this, 0.0f, 1, null);
        this.mCurrentSection = i(this, 0.0f, 1, null);
        c cVar = this.onProgressChangedListener;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    public final void z(MotionEvent event) {
        float fG = g(event.getX());
        this.mPreThumbCenterX = fG;
        this.mThumbCenterX = fG;
        this.progressFloat = l(this, 0.0f, 1, null);
        this.mCurrentSection = i(this, 0.0f, 1, null);
        invalidate();
        c cVar = this.onProgressChangedListener;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSectionSeekbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "mContext");
    }

    public OSSectionSeekbar(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSSectionSeekbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "mContext");
        this.mContext = context;
        this.TAG = OSSectionSeekbar.class.getSimpleName();
        this.mSectionTextArray = new SparseArray();
        this.mCurrentScaleFactor = 1.0f;
        this.mFromScaleFactor = 1.0f;
        this.mVibrateRunnable = new Runnable() {
            @Override
            public final void run() {
                OSSectionSeekbar.w(this.b);
            }
        };
        this.mVibrateAble = true;
        this.isForceHios = true;
        this.mLiquidWidth = getResources().getDimensionPixelSize(R.dimen.os_thumb_width);
        this.mLiquidHeight = getResources().getDimensionPixelSize(R.dimen.os_thumb_height);
        this.mLiquidRadius = getResources().getDimensionPixelSize(R.dimen.os_liquid_radius);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-1);
        this.mWhiteBackDrawable = gradientDrawable;
        getConfigBuilder().a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSSectionSeekbar, i, 0);
        y45.i(typedArrayObtainStyledAttributes, "mContext.obtainStyledAtt…Seekbar, defStyleAttr, 0)");
        this.min = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSSectionSeekbar_osSectionSeekbarMin, 0.0f);
        this.max = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSSectionSeekbar_osSectionSeekbarMax, 100.0f);
        this.progressFloat = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSSectionSeekbar_osSectionSeekbarProgress, this.min);
        this.mCurrentSection = i(this, 0.0f, 1, null);
        this.mSectionCount = typedArrayObtainStyledAttributes.getInteger(R.styleable.OSSectionSeekbar_osSectionSeekbarSectionCount, 5);
        this.mDisplayCharacters = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSSectionSeekbar_osSectionSeekbarDisplayCharacters, true);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSSectionSeekbar_android_enabled, isEnabled()));
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint.Align align = Paint.Align.CENTER;
        paint.setTextAlign(align);
        Paint paint2 = new Paint();
        this.mCirclePaint = paint2;
        paint2.setAntiAlias(true);
        paint2.setStrokeCap(cap);
        paint2.setTextAlign(align);
        this.mRectText = new Rect();
        this.mRectHeightText = new Rect();
        this.mTextSpace = INSTANCE.a(2);
        u();
    }
}
