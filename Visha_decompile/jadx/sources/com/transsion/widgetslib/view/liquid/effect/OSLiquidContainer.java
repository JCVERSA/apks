package com.transsion.widgetslib.view.liquid.effect;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RenderEffect;
import android.graphics.RuntimeXfermode;
import android.graphics.Shader;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.RequiresApi;
import androidx.core.internal.view.SupportMenu;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.RequestConfiguration;
import com.hunantv.media.player.subtitle.MediaFormat;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.hubsdk.api.graphics.TranOutline;
import com.transsion.hubsdk.api.graphics.TranPath;
import com.transsion.hubsdk.api.view.TranUnionRenderEffectProxy;
import com.transsion.hubsdk.api.view.TranView;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.R;
import defpackage.a67;
import defpackage.abb;
import defpackage.bq5;
import defpackage.c74;
import defpackage.hb0;
import defpackage.nl5;
import defpackage.olb;
import defpackage.v57;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.zp6;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0014\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0015\n\u0002\b1\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b/\n\u0002\u0018\u0002\n\u0002\b\u0018\b\u0016\u0018\u0000 ¬\u00022\u00020\u0001:\u00017B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0003¢\u0006\u0004\b\u0016\u0010\u0017J/\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ/\u0010\u001d\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u001d\u0010\u001cJ\u001f\u0010!\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u0006H\u0003¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\fH\u0003¢\u0006\u0004\b#\u0010$J\u001b\u0010'\u001a\u0004\u0018\u00010\u001e2\b\u0010&\u001a\u0004\u0018\u00010%H\u0003¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u0001H\u0003¢\u0006\u0004\b*\u0010+J\u001f\u0010.\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0012H\u0002¢\u0006\u0004\b.\u0010/J\u001f\u00100\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0012H\u0003¢\u0006\u0004\b0\u0010\u0015J\u0019\u00102\u001a\u00020\u00062\b\b\u0001\u00101\u001a\u00020\u0006H\u0003¢\u0006\u0004\b2\u00103J\u0019\u00104\u001a\u00020\u00062\b\b\u0001\u00101\u001a\u00020\u0006H\u0003¢\u0006\u0004\b4\u00103J\u0019\u00105\u001a\u00020\u00062\b\b\u0001\u00101\u001a\u00020\u0006H\u0003¢\u0006\u0004\b5\u00103J!\u00107\u001a\u00020\u00062\b\b\u0001\u0010 \u001a\u00020\u00062\u0006\u00106\u001a\u00020\nH\u0003¢\u0006\u0004\b7\u00108J\u0019\u00109\u001a\u00020\n2\b\b\u0001\u0010 \u001a\u00020\u0006H\u0002¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0006H\u0003¢\u0006\u0004\b;\u0010\u0011J\u0017\u0010<\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0006H\u0003¢\u0006\u0004\b<\u0010\u0011J\u001f\u0010=\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0003¢\u0006\u0004\b=\u0010>J'\u0010?\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006H\u0003¢\u0006\u0004\b?\u0010@JE\u0010D\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00062\b\u0010A\u001a\u0004\u0018\u00010%2\u0006\u0010\u0019\u001a\u00020\u00062\b\u0010B\u001a\u0004\u0018\u00010%2\u0006\u0010\u001a\u001a\u00020\u00062\b\u0010C\u001a\u0004\u0018\u00010%H\u0003¢\u0006\u0004\bD\u0010EJ\u0017\u0010F\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\bF\u0010GJ\u001f\u0010J\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u00012\u0006\u0010I\u001a\u00020HH\u0003¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020\fH\u0003¢\u0006\u0004\bL\u0010$J\u000f\u0010M\u001a\u00020\fH\u0002¢\u0006\u0004\bM\u0010$J\u000f\u0010N\u001a\u00020\nH\u0002¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\fH\u0002¢\u0006\u0004\bP\u0010$J\u000f\u0010Q\u001a\u00020\fH\u0002¢\u0006\u0004\bQ\u0010$J\u0017\u0010S\u001a\u00020\f2\u0006\u0010R\u001a\u00020\u0006H\u0007¢\u0006\u0004\bS\u0010\u0011J\r\u0010T\u001a\u00020\u0006¢\u0006\u0004\bT\u0010UJ\u0017\u0010V\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0006H\u0007¢\u0006\u0004\bV\u0010\u0011J%\u0010Z\u001a\u00020\f2\u0006\u0010W\u001a\u00020\n2\u0006\u0010X\u001a\u00020\n2\u0006\u0010Y\u001a\u00020\n¢\u0006\u0004\bZ\u0010[J\u0015\u0010]\u001a\u00020\\2\u0006\u0010-\u001a\u00020\u0012¢\u0006\u0004\b]\u0010^J\r\u0010_\u001a\u00020\f¢\u0006\u0004\b_\u0010$J\r\u0010`\u001a\u00020\n¢\u0006\u0004\b`\u0010OJ\u0015\u0010a\u001a\u00020\f2\u0006\u00106\u001a\u00020\n¢\u0006\u0004\ba\u0010\u000eJM\u0010b\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00062\b\u0010A\u001a\u0004\u0018\u00010%2\b\b\u0002\u0010\u0019\u001a\u00020\u00062\n\b\u0002\u0010B\u001a\u0004\u0018\u00010%2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\n\b\u0002\u0010C\u001a\u0004\u0018\u00010%H\u0007¢\u0006\u0004\bb\u0010EJ\u0017\u0010d\u001a\u00020\f2\u0006\u0010c\u001a\u00020\nH\u0007¢\u0006\u0004\bd\u0010\u000eJ\u0017\u0010e\u001a\u00020\f2\u0006\u0010-\u001a\u00020\u0012H\u0007¢\u0006\u0004\be\u0010\u0017J!\u0010h\u001a\u00020\f2\b\b\u0001\u0010f\u001a\u00020\u00062\b\b\u0001\u0010g\u001a\u00020\u0006¢\u0006\u0004\bh\u0010>J/\u0010k\u001a\u00020\f2\u0006\u0010F\u001a\u00020\u00062\u0006\u0010L\u001a\u00020\u00062\u0006\u0010i\u001a\u00020\u00062\u0006\u0010j\u001a\u00020\u0006H\u0014¢\u0006\u0004\bk\u0010lJ7\u0010r\u001a\u00020\f2\u0006\u0010m\u001a\u00020\u00122\u0006\u0010n\u001a\u00020\u00062\u0006\u0010o\u001a\u00020\u00062\u0006\u0010p\u001a\u00020\u00062\u0006\u0010q\u001a\u00020\u0006H\u0014¢\u0006\u0004\br\u0010sJ\u000f\u0010t\u001a\u00020\fH\u0014¢\u0006\u0004\bt\u0010$J\u000f\u0010u\u001a\u00020\fH\u0014¢\u0006\u0004\bu\u0010$J\u0017\u0010x\u001a\u00020\f2\u0006\u0010w\u001a\u00020vH\u0014¢\u0006\u0004\bx\u0010yJ\r\u0010z\u001a\u00020\u0012¢\u0006\u0004\bz\u0010{J\u0015\u0010}\u001a\u00020\f2\u0006\u0010|\u001a\u00020\n¢\u0006\u0004\b}\u0010\u000eJ\u0015\u0010\u007f\u001a\u00020\f2\u0006\u0010~\u001a\u00020\u0012¢\u0006\u0004\b\u007f\u0010\u0017J$\u0010\u0082\u0001\u001a\u00020\f2\u0007\u0010\u0080\u0001\u001a\u00020\n2\t\b\u0002\u0010\u0081\u0001\u001a\u00020\u0006¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\u001a\u0010\u0084\u0001\u001a\u00020\f2\t\b\u0001\u0010\u0081\u0001\u001a\u00020\u0006¢\u0006\u0005\b\u0084\u0001\u0010\u0011J\u0017\u0010\u0085\u0001\u001a\u00020\f2\u0006\u00106\u001a\u00020\n¢\u0006\u0005\b\u0085\u0001\u0010\u000eJ4\u0010\u0089\u0001\u001a\u00020\f2\u0007\u0010\u0086\u0001\u001a\u00020\n2\u0007\u0010\u0087\u0001\u001a\u00020\n2\u0007\u0010\u0088\u0001\u001a\u00020\n2\u0007\u0010\u0081\u0001\u001a\u00020\u0006¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001J\u0019\u0010\u008b\u0001\u001a\u00020\f2\b\b\u0001\u0010R\u001a\u00020\u0006¢\u0006\u0005\b\u008b\u0001\u0010\u0011J\u0017\u0010\u008c\u0001\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u0006¢\u0006\u0005\b\u008c\u0001\u0010\u0011J\u000f\u0010\u008d\u0001\u001a\u00020\f¢\u0006\u0005\b\u008d\u0001\u0010$J$\u0010\u0090\u0001\u001a\u00020\f2\u0007\u0010\u008e\u0001\u001a\u00020%2\u0007\u0010\u008f\u0001\u001a\u00020%H\u0007¢\u0006\u0006\b\u0090\u0001\u0010\u0091\u0001J\u0019\u0010\u0093\u0001\u001a\u00020\f2\u0007\u0010\u0092\u0001\u001a\u00020%¢\u0006\u0006\b\u0093\u0001\u0010\u0094\u0001J.\u0010\u0097\u0001\u001a\u00020\f2\b\u0010)\u001a\u0004\u0018\u00010\u00012\u0010\u0010\u0096\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0095\u0001H\u0007¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001J\u0019\u0010\u009a\u0001\u001a\u00020\f2\u0007\u0010\u0099\u0001\u001a\u00020\\¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u0018\u0010\u009d\u0001\u001a\u00020\f2\u0007\u0010\u009c\u0001\u001a\u00020\n¢\u0006\u0005\b\u009d\u0001\u0010\u000eJ\u0018\u0010\u009e\u0001\u001a\u00020\f2\u0007\u0010\u009c\u0001\u001a\u00020\n¢\u0006\u0005\b\u009e\u0001\u0010\u000eJ\u0018\u0010 \u0001\u001a\u00020\f2\u0007\u0010\u009f\u0001\u001a\u00020\n¢\u0006\u0005\b \u0001\u0010\u000eJ\u000f\u0010¡\u0001\u001a\u00020\f¢\u0006\u0005\b¡\u0001\u0010$J\u0018\u0010£\u0001\u001a\u00020\f2\u0007\u0010¢\u0001\u001a\u00020\n¢\u0006\u0005\b£\u0001\u0010\u000eJ\u000f\u0010¤\u0001\u001a\u00020\f¢\u0006\u0005\b¤\u0001\u0010$J\u0018\u0010¦\u0001\u001a\u00020\f2\u0007\u0010¥\u0001\u001a\u00020\u0006¢\u0006\u0005\b¦\u0001\u0010\u0011J\u0018\u0010¨\u0001\u001a\u00020\f2\u0007\u0010§\u0001\u001a\u00020\u0006¢\u0006\u0005\b¨\u0001\u0010\u0011J!\u0010©\u0001\u001a\u00020\f2\u0007\u0010¥\u0001\u001a\u00020\u00062\u0007\u0010§\u0001\u001a\u00020\u0006¢\u0006\u0005\b©\u0001\u0010>J\u0019\u0010«\u0001\u001a\u00020\f2\u0007\u0010 \u001a\u00030ª\u0001¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u001b\u0010\u00ad\u0001\u001a\u00020\f2\u0007\u0010\u0099\u0001\u001a\u00020\\H\u0007¢\u0006\u0006\b\u00ad\u0001\u0010\u009b\u0001J\u0017\u0010®\u0001\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u0006¢\u0006\u0005\b®\u0001\u0010\u0011J\u001a\u0010°\u0001\u001a\u00020\f2\u0007\u0010¯\u0001\u001a\u00020\u0012H\u0007¢\u0006\u0005\b°\u0001\u0010\u0017J\u0018\u0010²\u0001\u001a\u00020\f2\u0007\u0010±\u0001\u001a\u00020\u0012¢\u0006\u0005\b²\u0001\u0010\u0017J\u001a\u0010´\u0001\u001a\u00020\f2\u0007\u0010³\u0001\u001a\u00020\u0012H\u0007¢\u0006\u0005\b´\u0001\u0010\u0017J\u0019\u0010µ\u0001\u001a\u00020\f2\u0006\u0010-\u001a\u00020\u0012H\u0007¢\u0006\u0005\bµ\u0001\u0010\u0017J\u001a\u0010·\u0001\u001a\u00020\f2\u0007\u0010¶\u0001\u001a\u00020\u0006H\u0007¢\u0006\u0005\b·\u0001\u0010\u0011J\u000f\u0010¸\u0001\u001a\u00020\u0012¢\u0006\u0005\b¸\u0001\u0010{J\u0019\u0010¹\u0001\u001a\u00020\f2\u0006\u0010R\u001a\u00020\u0006H\u0007¢\u0006\u0005\b¹\u0001\u0010\u0011J\u001a\u0010»\u0001\u001a\u00020\f2\u0007\u0010º\u0001\u001a\u00020\u0012H\u0007¢\u0006\u0005\b»\u0001\u0010\u0017J \u0010½\u0001\u001a\u00020\f2\u000e\u0010¼\u0001\u001a\t\u0012\u0004\u0012\u00020\u00010\u0095\u0001¢\u0006\u0006\b½\u0001\u0010¾\u0001J\u0017\u0010¿\u0001\u001a\u00020\f2\u0006\u0010~\u001a\u00020\u0012¢\u0006\u0005\b¿\u0001\u0010\u0017J\u001a\u0010Á\u0001\u001a\u00020\f2\t\b\u0002\u0010À\u0001\u001a\u00020\n¢\u0006\u0005\bÁ\u0001\u0010\u000eJ\u000f\u0010Â\u0001\u001a\u00020\u0006¢\u0006\u0005\bÂ\u0001\u0010UJ\u0011\u0010Ã\u0001\u001a\u00020\fH\u0007¢\u0006\u0005\bÃ\u0001\u0010$J\u0019\u0010Å\u0001\u001a\u00020\u00122\u0007\u0010Ä\u0001\u001a\u00020\u0012¢\u0006\u0006\bÅ\u0001\u0010Æ\u0001J\u0019\u0010Ç\u0001\u001a\u00020\u00122\u0007\u0010Ä\u0001\u001a\u00020\u0012¢\u0006\u0006\bÇ\u0001\u0010Æ\u0001R\u0016\u0010É\u0001\u001a\u00020\u001e8\u0002X\u0082D¢\u0006\u0007\n\u0005\bQ\u0010È\u0001R\u0018\u0010Ë\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bP\u0010Ê\u0001R\u0018\u0010Í\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bM\u0010Ì\u0001R\u0018\u0010Ï\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b'\u0010Î\u0001R\u0018\u0010Ð\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b*\u0010Ê\u0001R\u0018\u0010Ñ\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b9\u0010Î\u0001R\u0018\u0010Ò\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bL\u0010Ê\u0001R\u001a\u0010Ô\u0001\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0016\u0010Ó\u0001R\u0018\u0010Õ\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b#\u0010Î\u0001R\"\u0010Ø\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0095\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÖ\u0001\u0010×\u0001R/\u0010Ú\u0001\u001a\u00020\u00122\u0007\u0010Ù\u0001\u001a\u00020\u00128\u0006@FX\u0086\u000e¢\u0006\u0015\n\u0005\b\u001d\u0010Ì\u0001\u001a\u0005\bÚ\u0001\u0010{\"\u0005\bÛ\u0001\u0010\u0017R \u0010à\u0001\u001a\u00030Ü\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u001b\u0010Ý\u0001\u001a\u0006\bÞ\u0001\u0010ß\u0001R \u0010ä\u0001\u001a\u00030á\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b!\u0010Ý\u0001\u001a\u0006\bâ\u0001\u0010ã\u0001R\u001c\u0010é\u0001\u001a\u00030å\u00018\u0006¢\u0006\u000f\n\u0005\b;\u0010æ\u0001\u001a\u0006\bç\u0001\u0010è\u0001R\u0018\u0010ê\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b<\u0010Ê\u0001R\u0018\u0010ë\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bD\u0010Ì\u0001R(\u0010í\u0001\u001a\u00020\u00062\u0007\u0010Ù\u0001\u001a\u00020\u00068\u0002@BX\u0082\u000e¢\u0006\u000e\n\u0005\b=\u0010Ê\u0001\"\u0005\bì\u0001\u0010\u0011R\u0018\u0010î\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b?\u0010Ì\u0001R\u0018\u0010ï\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b2\u0010Ì\u0001R\u0018\u0010ð\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b4\u0010Ì\u0001R\u0018\u0010ñ\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b5\u0010Î\u0001R\u0018\u0010ò\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bF\u0010Ì\u0001R\u0018\u0010ó\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bN\u0010Ê\u0001R\u0018\u0010ô\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b.\u0010Ê\u0001R\u001a\u0010ö\u0001\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b0\u0010õ\u0001R\u001a\u0010÷\u0001\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bJ\u0010õ\u0001R\u0018\u0010ø\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0014\u0010Ê\u0001R\u0018\u0010Ä\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\r\u0010Ì\u0001R\u0019\u0010ú\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bù\u0001\u0010Ì\u0001R\u0019\u0010ü\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bû\u0001\u0010Î\u0001R\u0019\u0010ý\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÎ\u0001\u0010Ê\u0001R\u0019\u0010ÿ\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bþ\u0001\u0010Ê\u0001R\u0019\u0010\u0081\u0002\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0002\u0010Ì\u0001R\u0019\u0010\u0082\u0002\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010Ì\u0001R\u0019\u0010\u0084\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0002\u0010Î\u0001R\u0019\u0010\u0086\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0002\u0010Î\u0001R\u0019\u0010\u0088\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0002\u0010Î\u0001R\u0019\u0010\u008a\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0002\u0010Ê\u0001R\u0019\u0010\u008c\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0002\u0010Ê\u0001R\u0019\u0010\u008e\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0002\u0010Ê\u0001R\u001b\u0010\u0090\u0002\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0002\u0010õ\u0001R\u001b\u0010\u0092\u0002\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0002\u0010õ\u0001R\u001b\u0010\u0094\u0002\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0002\u0010õ\u0001R\u001a\u0010\u0098\u0002\u001a\u00030\u0095\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0002\u0010\u0097\u0002R \u0010\u009c\u0002\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0099\u0002\u0010Ý\u0001\u001a\u0006\b\u009a\u0002\u0010\u009b\u0002R \u0010\u009f\u0002\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009d\u0002\u0010Ý\u0001\u001a\u0006\b\u009e\u0002\u0010\u009b\u0002R \u0010¢\u0002\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b \u0002\u0010Ý\u0001\u001a\u0006\b¡\u0002\u0010\u009b\u0002R \u0010¥\u0002\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b£\u0002\u0010Ý\u0001\u001a\u0006\b¤\u0002\u0010\u009b\u0002R \u0010¨\u0002\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¦\u0002\u0010Ý\u0001\u001a\u0006\b§\u0002\u0010\u009b\u0002R \u0010«\u0002\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b©\u0002\u0010Ý\u0001\u001a\u0006\bª\u0002\u0010\u009b\u0002¨\u0006\u00ad\u0002"}, d2 = {"Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "cornerRadius", "Lzfb;", "C", "(F)V", "blendColor", "setUnionBackdrop", "(I)V", "", "blurNightMode", "B", "(IZ)V", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(Z)V", "color1", "color2", "color3", CmcdData.OBJECT_TYPE_MANIFEST, "(ZIII)V", CmcdData.STREAM_TYPE_LIVE, "", "blendShader", "color", "n", "(Ljava/lang/String;I)V", "j", "()V", "Landroid/graphics/BlendMode;", hb0.KEY_NAME_MODE, "e", "(Landroid/graphics/BlendMode;)Ljava/lang/String;", "view", "f", "(Landroid/view/View;)V", "mixLevel", "nightMode", "y", "(IZ)I", "z", "defaultColor", "t", "(I)I", "u", "v", "alpha", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(IF)I", GslbInterceptor.HEADER_KEY_GSLB, "(I)F", "o", TtmlNode.TAG_P, "r", "(II)V", "s", "(III)V", "blendMode1", "blendMode2", "blendMode3", "q", "(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V", "w", "(Z)I", "Landroid/graphics/RenderEffect;", "renderEffect", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Landroid/view/View;Landroid/graphics/RenderEffect;)V", CmcdData.STREAMING_FORMAT_HLS, "d", "x", "()F", "c", "b", MediaFormat.KEY_LEVEL, "setMixLevel", "getMixLevel", "()I", "setBackdrop", "alpha1", "alpha2", "alpha3", "setBackDropInnerColorsAlpha", "(FFF)V", "", "getBackDropDefaultAlphas", "(Z)[F", "clearBackDropInnerColors", "getBrandAlpha", "setBrandAlpha", "setCustomMix", "blurRadius", "setBlurRadius", "setNightMode", "nightColor", "lightColor", "setDialogMiddleBlendColor", "oldw", "oldh", "onSizeChanged", "(IIII)V", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onLayout", "(ZIIII)V", "onAttachedToWindow", "onDetachedFromWindow", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "isDailog", "()Z", "liquidRadius", "setRadius", "enabled", "enableShadow", "shadowElevation", "shadowColor", "setShadowElevation", "(FI)V", "setShadowColor", "setShadowAlpha", "radius", "dx", "dy", "setShadowIndex", "(FFFI)V", "applyShadowLevel", "setFillColor", "resetCustomLiquidStyle", "basicBlendMode", "maskBlendMode", "setBgBlendMode", "(Landroid/graphics/BlendMode;Landroid/graphics/BlendMode;)V", "blendMode", "setStrokeBlendMode", "(Landroid/graphics/BlendMode;)V", "Ljava/util/function/Consumer;", "listener", "setOnUnionRenderFrameAvailableListenerReflect", "(Landroid/view/View;Ljava/util/function/Consumer;)V", "floatArray", "setPositionsLT", "([F)V", "brightness", "setStrokeBrightness", "setGapBrightness", "ratio", "setGapSizeRatio", "clearGapSizeRatio", "degrees", "setGapRotationDegrees", "clearGapRotationDegrees", "width", "setActualWidth", "height", "setActualHeight", "setActualSize", "", "setGradientStrokeColor", "([I)V", "setGradientStrokePosition", "setDefaultBgColor", "showBlenderColor", "setShowBlenderColor", "showOutline", "setShowOutline", "showBlur", "setShowBlur", "setBlurNightMode", "brandColor", "setBrandColor", "isNightMode", "setLiquidLevel", "forceBCEffect", "setForceBCEffect", "consumer", "setOnUnionRenderFrameAvailableListener", "(Ljava/util/function/Consumer;)V", "enableLocalLightSource", "angleDegrees", "setLocalLightAngle", "getDefaultBgColor", "clearOnUnionRenderFrameAvailableListener", "isDialog", "forceDialogBC", "(Z)Z", "showDialogBlur", "Ljava/lang/String;", AbstractID3v1Tag.TAG, "I", "mInitialMixLevel", "Z", "mShadowEnabled", "F", "mShadowElevation", "mShadowColor", "mShadowAlpha", "mShadowLevel", "Ljava/lang/Float;", "mLocalLightAngle", "mCachedLightZ", "k", "Ljava/util/function/Consumer;", "unionRenderFrameAvailableListener", ES6Iterator.VALUE_PROPERTY, "isUseUnionBlur", "setUseUnionBlur", "Lcom/transsion/hubsdk/api/view/TranView;", "Lyi5;", "getTranView", "()Lcom/transsion/hubsdk/api/view/TranView;", "tranView", "Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;", "getUnionEffect", "()Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;", "unionEffect", "La67;", "La67;", "getMOSLiquidDrawable", "()La67;", "mOSLiquidDrawable", "mBlendColor", "mHasCustomBgColor", "setMDefaultBgColor", "mDefaultBgColor", "mShowBlendColor", "mShowOutLine", "mShowBlur", "mBlurRadius", "mBlurNightMode", "mMixLevel", "mMaskBlendColor", "Landroid/graphics/BlendMode;", "mMaskBlendMode", "mBasicBlendMode", "mBrandColor", "D", "mForceBCEffect", ExifInterface.LONGITUDE_EAST, "mBrandAlpha", "mDialogMiddleBlendColorNight", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "mDialogMiddleBlendColorLight", "H", "mHasCustomDialogMiddleBlendColor", "mHasCustomBackDropAlpha", "J", "mCustomBackDropAlpha1", "K", "mCustomBackDropAlpha2", "L", "mCustomBackDropAlpha3", "M", "mCustomMixColor1", "N", "mCustomMixColor2", "O", "mCustomMixColor3", "P", "mCustomMixBlendMode1", "Q", "mCustomMixBlendMode2", "R", "mCustomMixBlendMode3", "Lcom/transsion/hubsdk/api/graphics/TranOutline;", ExifInterface.LATITUDE_SOUTH, "Lcom/transsion/hubsdk/api/graphics/TranOutline;", "mTranOutline", "T", "getModeNight1", "()Ljava/lang/String;", "modeNight1", "U", "getModeNight2", "modeNight2", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "getModeNight3", "modeNight3", ExifInterface.LONGITUDE_WEST, "getModeLight1", "modeLight1", "a0", "getModeLight2", "modeLight2", "b0", "getModeLighten", "modeLighten", "Companion", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSLiquidContainer extends View {
    public static final int BIG = 4;
    public static final int BRAND = 5;
    public static final int CLEAR1 = 0;
    public static final int CLEAR2 = 1;
    public static final int CUSTOM = -1;
    public static final int DEFAULT_MASK_BLEND_COLOR = -2144983514;
    public static final int LIQUID_DEFAULT_RADIUS = 30;
    public static final int MIDDLE = 3;
    public static final int SMALL = 2;
    public static final int TOOLBAR = 6;
    public static final int UNION_BLUR_WINDOW_TYPE_API_LEVEL = 2;
    public static final int UNION_BLUR_WINDOW_TYPE_DIALOG = 1;

    public BlendMode mBasicBlendMode;

    public int mBrandColor;

    public boolean isDialog;

    public boolean mForceBCEffect;

    public float mBrandAlpha;

    public int mDialogMiddleBlendColorNight;

    public int mDialogMiddleBlendColorLight;

    public boolean mHasCustomDialogMiddleBlendColor;

    public boolean mHasCustomBackDropAlpha;

    public float mCustomBackDropAlpha1;

    public float mCustomBackDropAlpha2;

    public float mCustomBackDropAlpha3;

    public int mCustomMixColor1;

    public int mCustomMixColor2;

    public int mCustomMixColor3;

    public BlendMode mCustomMixBlendMode1;

    public BlendMode mCustomMixBlendMode2;

    public BlendMode mCustomMixBlendMode3;

    public TranOutline mTranOutline;

    public final yi5 modeNight1;

    public final yi5 modeNight2;

    public final yi5 modeNight3;

    public final yi5 modeLight1;

    public final yi5 modeLight2;

    public final String TAG;

    public final yi5 modeLighten;

    public int mInitialMixLevel;

    public boolean mShadowEnabled;

    public float mShadowElevation;

    public int mShadowColor;

    public float mShadowAlpha;

    public int mShadowLevel;

    public Float mLocalLightAngle;

    public float mCachedLightZ;

    public Consumer unionRenderFrameAvailableListener;

    public boolean isUseUnionBlur;

    public final yi5 tranView;

    public final yi5 unionEffect;

    public final a67 mOSLiquidDrawable;

    public int mBlendColor;

    public boolean mHasCustomBgColor;

    public int mDefaultBgColor;

    public boolean mShowBlendColor;

    public boolean mShowOutLine;

    public boolean mShowBlur;

    public float mBlurRadius;

    public boolean mBlurNightMode;

    public int mMixLevel;

    public int mMaskBlendColor;

    public BlendMode mMaskBlendMode;

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[BlendMode.values().length];
            try {
                iArr[BlendMode.COLOR_DODGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BlendMode.SRC_OVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BlendMode.LUMINOSITY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BlendMode.COLOR_BURN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[BlendMode.SOFT_LIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[BlendMode.LIGHTEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            a = iArr;
        }
    }

    public static final class c extends ViewOutlineProvider {
        public final float a;
        public final OSLiquidContainer b;

        public c(float f, OSLiquidContainer oSLiquidContainer) {
            this.a = f;
            this.b = oSLiquidContainer;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            y45.j(view, "view");
            y45.j(outline, "outline");
            if (!nl5.a.c(view.getWidth(), view.getHeight(), this.a)) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.a);
                return;
            }
            Path smoothCapsule = TranPath.getInstance().getSmoothCapsule(this.b.getLeft(), this.b.getTop(), this.b.getRight(), this.b.getBottom(), this.a);
            if (Build.VERSION.SDK_INT >= 30) {
                outline.setPath(smoothCapsule);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidContainer(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    private final String getModeLight1() {
        return (String) this.modeLight1.getValue();
    }

    private final String getModeLight2() {
        return (String) this.modeLight2.getValue();
    }

    private final String getModeLighten() {
        return (String) this.modeLighten.getValue();
    }

    private final String getModeNight1() {
        return (String) this.modeNight1.getValue();
    }

    private final String getModeNight2() {
        return (String) this.modeNight2.getValue();
    }

    private final String getModeNight3() {
        return (String) this.modeNight3.getValue();
    }

    public static final void k(OSLiquidContainer oSLiquidContainer, List list, int i, BlendMode blendMode) {
        String strE = oSLiquidContainer.e(blendMode);
        if (strE == null) {
            return;
        }
        list.add(abb.a(strE, Integer.valueOf(i)));
    }

    public static void setCustomMix$default(OSLiquidContainer oSLiquidContainer, int i, BlendMode blendMode, int i2, BlendMode blendMode2, int i3, BlendMode blendMode3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setCustomMix");
        }
        oSLiquidContainer.setCustomMix(i, blendMode, (i4 & 4) != 0 ? 0 : i2, (i4 & 8) != 0 ? null : blendMode2, (i4 & 16) != 0 ? 0 : i3, (i4 & 32) != 0 ? null : blendMode3);
    }

    public static void setLocalLightAngle$default(OSLiquidContainer oSLiquidContainer, float f, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setLocalLightAngle");
        }
        if ((i & 1) != 0) {
            f = olb.t(oSLiquidContainer.getContext(), R.dimen.os_local_light_source_default_angle);
        }
        oSLiquidContainer.setLocalLightAngle(f);
    }

    private final void setMDefaultBgColor(int i) {
        this.mDefaultBgColor = i;
        this.mOSLiquidDrawable.setDefaultBgColor(i);
        invalidate();
    }

    public static void setShadowElevation$default(OSLiquidContainer oSLiquidContainer, float f, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setShadowElevation");
        }
        if ((i2 & 2) != 0) {
            i = oSLiquidContainer.mShadowColor;
        }
        oSLiquidContainer.setShadowElevation(f, i);
    }

    @RequiresApi(31)
    private final void setUnionBackdrop(int blendColor) {
        getUnionEffect().enableLocalBlurRadius(this.mBlurRadius);
        if (olb.S && this.mShowBlendColor) {
            getUnionEffect().enableUnionBlur();
            String str = this.TAG;
            boolean z = this.mShowBlendColor;
            String resourceName = null;
            String resourceName2 = getId() != -1 ? getResources().getResourceName(getId()) : null;
            if (getParent() != null) {
                Object parent = getParent();
                y45.h(parent, "null cannot be cast to non-null type android.view.View");
                if (((View) parent).getId() != -1) {
                    Resources resources = getResources();
                    Object parent2 = getParent();
                    y45.h(parent2, "null cannot be cast to non-null type android.view.View");
                    resourceName = resources.getResourceName(((View) parent2).getId());
                }
            }
            Log.d(str, "setUnionBackdrop:mShowBlendColor:" + z + ",resourceName:" + resourceName2 + StringUtils.COMMA + resourceName);
        }
    }

    public final void A(View view, RenderEffect renderEffect) {
        try {
            View.class.getDeclaredMethod("setBackdropRenderEffectWrapper", v57.a()).invoke(view, renderEffect);
        } catch (Exception e) {
            Log.e("ddd", "reflect call setBackdropRenderEffect fail:", e);
        }
    }

    public final void B(int blendColor, boolean blurNightMode) {
        getUnionEffect().enableLocalBlurRadius(this.mBlurRadius);
        if (olb.S && this.mShowBlendColor) {
            getUnionEffect().enableCrossWindowBlur();
            bq5.c(this.TAG, "liquidLevel = " + this.mMixLevel + " mBlurRadius = " + this.mBlurRadius + " blurNightMode = " + blurNightMode);
        }
    }

    public final void C(float cornerRadius) {
        setOutlineProvider(new c(cornerRadius, this));
    }

    public final int a(int color, float alpha) {
        return Color.argb(wn8.k((int) (wn8.j(alpha, 0.0f, 1.0f) * 255.0f), 0, 255), Color.red(color), Color.green(color), Color.blue(color));
    }

    public final void applyShadowLevel(@IntRange(from = 1, to = 4) int level) {
        float[] fArrI = olb.I(getContext(), level);
        if (fArrI == null) {
            return;
        }
        this.mShadowLevel = level;
        this.mShadowElevation = fArrI[0];
        this.mShadowAlpha = fArrI[1];
        this.mShadowColor = olb.s ? SupportMenu.CATEGORY_MASK : (int) fArrI[2];
        this.mShadowEnabled = true;
        c();
    }

    public final void b() {
        Float f = this.mLocalLightAngle;
        olb.e(this, f != null ? f.floatValue() : olb.t(getContext(), R.dimen.os_local_light_source_default_angle));
    }

    public final void c() {
        d();
        if (this.mShadowLevel > 0) {
            b();
            if (this.mForceBCEffect || !olb.O) {
                olb.P0(this, true);
            }
        }
    }

    public final void clearBackDropInnerColors() {
        this.mHasCustomBackDropAlpha = false;
        if (Build.VERSION.SDK_INT >= 31) {
            setBackdrop(this.mBlendColor);
        }
    }

    public final void clearGapRotationDegrees() {
        this.mOSLiquidDrawable.a();
        invalidate();
    }

    public final void clearGapSizeRatio() {
        this.mOSLiquidDrawable.b();
        invalidate();
    }

    @RequiresApi(24)
    public final void clearOnUnionRenderFrameAvailableListener() {
        setOnUnionRenderFrameAvailableListenerReflect(this, null);
    }

    public final void d() {
        setElevation(this.mShadowEnabled ? this.mShadowElevation : 0.0f);
        int iRed = Color.red(this.mShadowColor);
        int iGreen = Color.green(this.mShadowColor);
        int iBlue = Color.blue(this.mShadowColor);
        int iK = wn8.k((int) (x() * 255), 0, 255);
        setOutlineSpotShadowColor(Color.argb(iK, iRed, iGreen, iBlue));
        setOutlineAmbientShadowColor(Color.argb(wn8.k((int) (iK * 1.5f), 0, 255), iRed, iGreen, iBlue));
    }

    public final String e(BlendMode mode) {
        switch (mode == null ? -1 : b.a[mode.ordinal()]) {
            case 1:
                return getModeLight1();
            case 2:
                return getModeNight1();
            case 3:
                return getModeNight2();
            case 4:
                return getModeNight3();
            case 5:
            case 6:
                return getModeLighten();
            default:
                return null;
        }
    }

    public final void enableLocalLightSource(boolean enabled) {
        olb.j(this, enabled);
    }

    public final void enableShadow(boolean enabled) {
        this.mShadowEnabled = enabled;
        d();
    }

    public final void f(View view) {
        try {
            View.class.getDeclaredMethod("setBackdropRenderEffectWrapper", v57.a()).invoke(view, null);
        } catch (Exception e) {
            Log.e(this.TAG, "reflect call setBackdropRenderEffect fail:", e);
        }
    }

    public final boolean forceDialogBC(boolean isDialog) {
        return isDialog && !olb.K;
    }

    public final float g(int color) {
        return Color.alpha(color) / 255.0f;
    }

    public final float[] getBackDropDefaultAlphas(boolean nightMode) {
        float[] fArr;
        float[] fArr2;
        switch (this.mMixLevel) {
            case -1:
                return new float[]{this.mCustomMixBlendMode1 != null ? g(this.mCustomMixColor1) : 0.0f, this.mCustomMixBlendMode2 != null ? g(this.mCustomMixColor2) : 0.0f, this.mCustomMixBlendMode3 != null ? g(this.mCustomMixColor3) : 0.0f};
            case 0:
                fArr = new float[]{g(getContext().getColor(R.color.os_liquid_clear1_color1)), g(getContext().getColor(R.color.os_liquid_clear1_color2)), 0.0f};
                return fArr;
            case 1:
                if (nightMode) {
                    fArr2 = new float[]{g(getContext().getColor(R.color.os_liquid_clear2_night_color1)), 0.0f, 0.0f};
                    return fArr2;
                }
                fArr = new float[]{g(getContext().getColor(R.color.os_liquid_clear2_color1)), g(getContext().getColor(R.color.os_liquid_clear2_color2)), 0.0f};
                return fArr;
            case 2:
                fArr = nightMode ? new float[]{g(getContext().getColor(R.color.os_liquid_small_night_color3)), g(getContext().getColor(R.color.os_liquid_small_night_color2)), g(getContext().getColor(R.color.os_liquid_small_night_color1))} : new float[]{g(getContext().getColor(R.color.os_liquid_small_light_color1)), g(getContext().getColor(R.color.os_liquid_small_light_color2)), 0.0f};
                return fArr;
            case 3:
                fArr = nightMode ? new float[]{g(getContext().getColor(R.color.os_liquid_midle_night_color3)), g(getContext().getColor(R.color.os_liquid_midle_night_color2)), g(getContext().getColor(R.color.os_liquid_midle_night_color1))} : new float[]{g(getContext().getColor(R.color.os_liquid_midle_light_color1)), g(getContext().getColor(R.color.os_liquid_midle_light_color2)), 0.0f};
                return fArr;
            case 4:
                fArr = nightMode ? new float[]{g(getContext().getColor(R.color.os_liquid_big_night_color3)), g(getContext().getColor(R.color.os_liquid_big_night_color2)), g(getContext().getColor(R.color.os_liquid_big_night_color1))} : new float[]{g(getContext().getColor(R.color.os_liquid_big_light_color1)), g(getContext().getColor(R.color.os_liquid_big_light_color2)), 0.0f};
                return fArr;
            case 5:
                return new float[]{wn8.j(this.mBrandAlpha, 0.0f, 1.0f), 0.0f, 0.0f};
            case 6:
                if (nightMode) {
                    fArr2 = new float[]{g(getContext().getColor(R.color.os_liquid_clear2_night_color1)), 0.0f, 0.0f};
                    return fArr2;
                }
                fArr = new float[]{g(getContext().getColor(R.color.os_liquid_clear2_color1)), g(getContext().getColor(R.color.os_liquid_clear2_color2)), 0.0f};
                return fArr;
            default:
                return new float[]{g(this.mMaskBlendColor), g(this.mBlendColor), 0.0f};
        }
    }

    public final float getMBrandAlpha() {
        return this.mBrandAlpha;
    }

    public final int getMDefaultBgColor() {
        return this.mDefaultBgColor;
    }

    public final a67 getMOSLiquidDrawable() {
        return this.mOSLiquidDrawable;
    }

    public final int getMMixLevel() {
        return this.mMixLevel;
    }

    public final TranView getTranView() {
        return (TranView) this.tranView.getValue();
    }

    public final TranUnionRenderEffectProxy getUnionEffect() {
        return (TranUnionRenderEffectProxy) this.unionEffect.getValue();
    }

    public final void h() {
        if (!showDialogBlur(this.isDialog) || TranUnionRenderEffectProxy.getApiLevel() < 2) {
            return;
        }
        getUnionEffect().setRequestWindowType(1);
        i(this.mBlurNightMode);
        Consumer<View> consumer = this.unionRenderFrameAvailableListener;
        if (consumer != null) {
            bq5.c(this.TAG, "configLiquidDialog");
            setOnUnionRenderFrameAvailableListenerReflect(this, consumer);
        }
        getUnionEffect().requestFrameSpacing(1);
    }

    public final void i(boolean blurNightMode) {
        int color;
        int color2;
        int color3;
        int i = this.mMixLevel;
        if (i == -1) {
            j();
        } else if (i == 0) {
            l(false, t(getContext().getColor(R.color.os_liquid_clear1_color1)), u(getContext().getColor(R.color.os_liquid_clear1_color2)), 0);
        } else if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    m(blurNightMode, w(blurNightMode), 0, 0);
                } else if (i == 4) {
                    if (blurNightMode) {
                        color = getContext().getColor(R.color.os_liquid_big_night_color1);
                        color3 = getContext().getColor(R.color.os_liquid_big_night_color2);
                        color2 = getContext().getColor(R.color.os_liquid_big_night_color3);
                    } else {
                        color = getContext().getColor(R.color.os_liquid_big_light_color1);
                        color2 = 0;
                        color3 = getContext().getColor(R.color.os_liquid_big_light_color2);
                    }
                    l(blurNightMode, color, color3, color2);
                } else if (i == 6) {
                    if (blurNightMode) {
                        n(getModeNight2(), t(getContext().getColor(R.color.os_liquid_clear2_night_color1)));
                    } else {
                        l(false, t(getContext().getColor(R.color.os_liquid_clear2_color1)), u(getContext().getColor(R.color.os_liquid_clear2_color2)), 0);
                    }
                }
            } else if (blurNightMode) {
                l(true, t(getContext().getColor(R.color.os_liquid_small_night_color1)), u(getContext().getColor(R.color.os_liquid_small_night_color2)), v(getContext().getColor(R.color.os_liquid_small_night_color3)));
            } else {
                l(false, t(getContext().getColor(R.color.os_liquid_small_light_color1)), u(getContext().getColor(R.color.os_liquid_small_light_color2)), 0);
            }
        } else if (blurNightMode) {
            n(getModeNight2(), t(getContext().getColor(R.color.os_liquid_clear2_night_color1)));
        } else {
            l(false, t(getContext().getColor(R.color.os_liquid_clear2_color1)), u(getContext().getColor(R.color.os_liquid_clear2_color2)), 0);
        }
        bq5.b("installBlendModeInner mMixLevel = " + this.mMixLevel);
    }

    public final boolean getIsDialog() {
        return this.isDialog;
    }

    public final boolean isNightMode() {
        boolean z = (getContext().getResources().getConfiguration().uiMode & 48) == 32;
        bq5.c(this.TAG, "nightMode = " + z);
        return z;
    }

    public final boolean getIsUseUnionBlur() {
        return this.isUseUnionBlur;
    }

    public final void j() {
        RuntimeXfermode runtimeXfermodeC;
        ArrayList arrayList = new ArrayList();
        k(this, arrayList, this.mCustomMixColor1, this.mCustomMixBlendMode1);
        k(this, arrayList, this.mCustomMixColor2, this.mCustomMixBlendMode2);
        k(this, arrayList, this.mCustomMixColor3, this.mCustomMixBlendMode3);
        if (arrayList.isEmpty()) {
            return;
        }
        try {
            int size = arrayList.size();
            if (size != 1) {
                runtimeXfermodeC = size != 2 ? zp6.a.b((String) ((Pair) arrayList.get(0)).getFirst(), ((Number) ((Pair) arrayList.get(0)).getSecond()).intValue(), (String) ((Pair) arrayList.get(1)).getFirst(), ((Number) ((Pair) arrayList.get(1)).getSecond()).intValue(), (String) ((Pair) arrayList.get(2)).getFirst(), ((Number) ((Pair) arrayList.get(2)).getSecond()).intValue()) : zp6.a.a((String) ((Pair) arrayList.get(0)).getFirst(), ((Number) ((Pair) arrayList.get(0)).getSecond()).intValue(), (String) ((Pair) arrayList.get(1)).getFirst(), ((Number) ((Pair) arrayList.get(1)).getSecond()).intValue());
            } else {
                runtimeXfermodeC = zp6.a.c((String) ((Pair) arrayList.get(0)).getFirst(), ((Number) ((Pair) arrayList.get(0)).getSecond()).intValue());
            }
            getUnionEffect().setCustomBlender(runtimeXfermodeC);
        } catch (Exception e) {
            bq5.f("setCustomBlender fail " + e.getMessage());
        } catch (NoSuchMethodError e2) {
            bq5.f("setCustomBlender NoSuchMethodError: " + e2.getMessage());
        }
    }

    public final void l(boolean blurNightMode, int color1, int color2, int color3) {
        try {
            getUnionEffect().setCustomBlender(blurNightMode ? zp6.a.b(getModeNight1(), color1, getModeNight2(), color2, getModeNight3(), color3) : zp6.a.a(getModeLight1(), color1, getModeLight2(), color2));
        } catch (Exception e) {
            bq5.f("setCustomBlender fail " + e.getMessage());
        } catch (NoSuchMethodError e2) {
            bq5.f("setCustomBlender NoSuchMethodError: " + e2.getMessage());
        }
    }

    public final void m(boolean blurNightMode, int color1, int color2, int color3) {
        try {
            getUnionEffect().setCustomBlender(blurNightMode ? zp6.a.c(getModeNight1(), color1) : zp6.a.c(getModeNight1(), color1));
        } catch (Exception e) {
            bq5.f("setCustomBlender fail " + e.getMessage());
        } catch (NoSuchMethodError e2) {
            bq5.f("setCustomBlender NoSuchMethodError: " + e2.getMessage());
        }
    }

    public final void n(String blendShader, int color) {
        try {
            getUnionEffect().setCustomBlender(zp6.a.c(blendShader, color));
        } catch (Exception e) {
            bq5.f("setCustomBlender fail " + e.getMessage());
        } catch (NoSuchMethodError e2) {
            bq5.f("setCustomBlender NoSuchMethodError: " + e2.getMessage());
        }
    }

    public final void o(int color1) {
        RenderEffect renderEffectCreateColorFilterEffect = RenderEffect.createColorFilterEffect(new BlendModeColorFilter(color1, BlendMode.SRC_OVER));
        y45.i(renderEffectCreateColorFilterEffect, "createColorFilterEffect(colorFilter1)");
        float f = this.mBlurRadius;
        RenderEffect renderEffectCreateBlurEffect = RenderEffect.createBlurEffect(f, f, Shader.TileMode.CLAMP);
        y45.i(renderEffectCreateBlurEffect, "createBlurEffect(mBlurRa…s, Shader.TileMode.CLAMP)");
        RenderEffect renderEffectCreateChainEffect = RenderEffect.createChainEffect(renderEffectCreateColorFilterEffect, renderEffectCreateBlurEffect);
        y45.i(renderEffectCreateChainEffect, "createChainEffect(renderEffect1, blurEffect)");
        bq5.c(this.TAG, "setBackDropInner: mBlurRadius = " + this.mBlurRadius);
        if (olb.S && this.mShowBlendColor) {
            A(this, renderEffectCreateChainEffect);
        } else {
            A(this, renderEffectCreateBlurEffect);
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (olb.O && (this.isUseUnionBlur || showDialogBlur(this.isDialog))) {
            if (Build.VERSION.SDK_INT >= 36) {
                h();
                if (this.isUseUnionBlur) {
                    i(this.mBlurNightMode);
                }
            }
            getTranView().setUnionRenderEffect(this, getUnionEffect());
        }
        if (!this.mShadowEnabled || this.mShadowLevel <= 0) {
            return;
        }
        c();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        olb.P0(this, false);
        olb.j(this, false);
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        this.mOSLiquidDrawable.c(canvas, getWidth(), getHeight(), this.isDialog);
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (!this.mShadowEnabled || this.mShadowLevel <= 0) {
            return;
        }
        float fG = olb.g(this);
        if (fG <= 0.5f || fG == this.mCachedLightZ) {
            return;
        }
        this.mCachedLightZ = fG;
        c();
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mOSLiquidDrawable.j(w, h, oldw, oldh);
    }

    public final void p(int color1) {
        RenderEffect renderEffectCreateColorFilterEffect = RenderEffect.createColorFilterEffect(new BlendModeColorFilter(color1, BlendMode.LUMINOSITY));
        y45.i(renderEffectCreateColorFilterEffect, "createColorFilterEffect(colorFilter1)");
        float f = this.mBlurRadius;
        RenderEffect renderEffectCreateBlurEffect = RenderEffect.createBlurEffect(f, f, Shader.TileMode.CLAMP);
        y45.i(renderEffectCreateBlurEffect, "createBlurEffect(mBlurRa…s, Shader.TileMode.CLAMP)");
        RenderEffect renderEffectCreateChainEffect = RenderEffect.createChainEffect(renderEffectCreateColorFilterEffect, renderEffectCreateBlurEffect);
        y45.i(renderEffectCreateChainEffect, "createChainEffect(renderEffect1, blurEffect)");
        bq5.c(this.TAG, "setBackDropInner: mBlurRadius = " + this.mBlurRadius);
        if (olb.S && this.mShowBlendColor) {
            A(this, renderEffectCreateChainEffect);
        } else {
            A(this, renderEffectCreateBlurEffect);
        }
    }

    public final void q(int color1, BlendMode blendMode1, int color2, BlendMode blendMode2, int color3, BlendMode blendMode3) {
        float f = this.mBlurRadius;
        RenderEffect renderEffectCreateBlurEffect = RenderEffect.createBlurEffect(f, f, Shader.TileMode.CLAMP);
        y45.i(renderEffectCreateBlurEffect, "createBlurEffect(mBlurRa…s, Shader.TileMode.CLAMP)");
        RenderEffect renderEffectCreateChainEffect = null;
        for (Pair pair : y71.n(abb.a(Integer.valueOf(color1), blendMode1), abb.a(Integer.valueOf(color2), blendMode2), abb.a(Integer.valueOf(color3), blendMode3))) {
            int iIntValue = ((Number) pair.component1()).intValue();
            BlendMode blendMode = (BlendMode) pair.component2();
            if (blendMode != null) {
                RenderEffect renderEffectCreateColorFilterEffect = RenderEffect.createColorFilterEffect(new BlendModeColorFilter(iIntValue, blendMode));
                y45.i(renderEffectCreateColorFilterEffect, "createColorFilterEffect(…ColorFilter(color, mode))");
                renderEffectCreateChainEffect = renderEffectCreateChainEffect == null ? renderEffectCreateColorFilterEffect : RenderEffect.createChainEffect(renderEffectCreateChainEffect, renderEffectCreateColorFilterEffect);
            }
        }
        RenderEffect renderEffectCreateChainEffect2 = renderEffectCreateChainEffect != null ? RenderEffect.createChainEffect(renderEffectCreateChainEffect, renderEffectCreateBlurEffect) : renderEffectCreateBlurEffect;
        y45.i(renderEffectCreateChainEffect2, "if (current != null) {\n …     blurEffect\n        }");
        bq5.c(this.TAG, "setBackDropInner: mBlurRadius = " + this.mBlurRadius);
        if (olb.S && this.mShowBlendColor) {
            A(this, renderEffectCreateChainEffect2);
        } else {
            A(this, renderEffectCreateBlurEffect);
        }
    }

    public final void r(int color1, int color2) {
        RenderEffect renderEffectCreateColorFilterEffect = RenderEffect.createColorFilterEffect(new BlendModeColorFilter(color1, BlendMode.COLOR_DODGE));
        y45.i(renderEffectCreateColorFilterEffect, "createColorFilterEffect(colorFilter1)");
        RenderEffect renderEffectCreateColorFilterEffect2 = RenderEffect.createColorFilterEffect(new BlendModeColorFilter(color2, BlendMode.SRC_OVER));
        y45.i(renderEffectCreateColorFilterEffect2, "createColorFilterEffect(colorFilter2)");
        float f = this.mBlurRadius;
        RenderEffect renderEffectCreateBlurEffect = RenderEffect.createBlurEffect(f, f, Shader.TileMode.CLAMP);
        y45.i(renderEffectCreateBlurEffect, "createBlurEffect(mBlurRa…s, Shader.TileMode.CLAMP)");
        RenderEffect renderEffectCreateChainEffect = RenderEffect.createChainEffect(renderEffectCreateColorFilterEffect2, renderEffectCreateColorFilterEffect);
        y45.i(renderEffectCreateChainEffect, "createChainEffect(renderEffect12, renderEffect1)");
        RenderEffect renderEffectCreateChainEffect2 = RenderEffect.createChainEffect(renderEffectCreateChainEffect, renderEffectCreateBlurEffect);
        y45.i(renderEffectCreateChainEffect2, "createChainEffect(chainEffect1, blurEffect)");
        bq5.c(this.TAG, "setBackDropInner: mBlurRadius = " + this.mBlurRadius);
        if (olb.S && this.mShowBlendColor) {
            A(this, renderEffectCreateChainEffect2);
        } else {
            A(this, renderEffectCreateBlurEffect);
        }
    }

    public final void resetCustomLiquidStyle() {
        this.mCustomMixColor1 = 0;
        this.mCustomMixColor2 = 0;
        this.mCustomMixColor3 = 0;
        this.mCustomMixBlendMode1 = null;
        this.mCustomMixBlendMode2 = null;
        this.mCustomMixBlendMode3 = null;
        this.mHasCustomBackDropAlpha = false;
        this.mCustomBackDropAlpha1 = 1.0f;
        this.mCustomBackDropAlpha2 = 1.0f;
        this.mCustomBackDropAlpha3 = 1.0f;
        this.mMaskBlendColor = DEFAULT_MASK_BLEND_COLOR;
        this.mHasCustomBgColor = false;
        int i = this.mInitialMixLevel;
        this.mMixLevel = i;
        setMDefaultBgColor(y(i, this.mBlurNightMode));
        if (Build.VERSION.SDK_INT >= 31) {
            setBackdrop(this.mBlendColor);
        }
        d();
    }

    public final void s(int color1, int color2, int color3) {
        RenderEffect renderEffectCreateColorFilterEffect = RenderEffect.createColorFilterEffect(new BlendModeColorFilter(color1, BlendMode.COLOR_BURN));
        y45.i(renderEffectCreateColorFilterEffect, "createColorFilterEffect(colorFilter1)");
        RenderEffect renderEffectCreateColorFilterEffect2 = RenderEffect.createColorFilterEffect(new BlendModeColorFilter(color2, BlendMode.LUMINOSITY));
        y45.i(renderEffectCreateColorFilterEffect2, "createColorFilterEffect(colorFilter2)");
        RenderEffect renderEffectCreateColorFilterEffect3 = RenderEffect.createColorFilterEffect(new BlendModeColorFilter(color3, BlendMode.SRC_OVER));
        y45.i(renderEffectCreateColorFilterEffect3, "createColorFilterEffect(colorFilter3)");
        float f = this.mBlurRadius;
        RenderEffect renderEffectCreateBlurEffect = RenderEffect.createBlurEffect(f, f, Shader.TileMode.CLAMP);
        y45.i(renderEffectCreateBlurEffect, "createBlurEffect(mBlurRa…s, Shader.TileMode.CLAMP)");
        RenderEffect renderEffectCreateChainEffect = RenderEffect.createChainEffect(renderEffectCreateColorFilterEffect, renderEffectCreateColorFilterEffect2);
        y45.i(renderEffectCreateChainEffect, "createChainEffect(renderEffect1, renderEffect12)");
        RenderEffect renderEffectCreateChainEffect2 = RenderEffect.createChainEffect(renderEffectCreateChainEffect, renderEffectCreateColorFilterEffect3);
        y45.i(renderEffectCreateChainEffect2, "createChainEffect(chainEffect1, renderEffect13)");
        RenderEffect renderEffectCreateChainEffect3 = RenderEffect.createChainEffect(renderEffectCreateChainEffect2, renderEffectCreateBlurEffect);
        y45.i(renderEffectCreateChainEffect3, "createChainEffect(chainEffect2, blurEffect)");
        bq5.c(this.TAG, "setBackDropInner: mBlurRadius = " + this.mBlurRadius);
        if (olb.S && this.mShowBlendColor) {
            A(this, renderEffectCreateChainEffect3);
        } else {
            A(this, renderEffectCreateBlurEffect);
        }
    }

    public final void setActualHeight(int height) {
        this.mOSLiquidDrawable.setActualHeight(height);
        invalidate();
    }

    public final void setActualSize(int width, int height) {
        this.mOSLiquidDrawable.l(width, height);
        invalidate();
    }

    public final void setActualWidth(int width) {
        this.mOSLiquidDrawable.setActualWidth(width);
        invalidate();
    }

    public final void setBackDropInnerColorsAlpha(float alpha1, float alpha2, float alpha3) {
        float fJ = wn8.j(alpha1, 0.0f, 1.0f);
        float fJ2 = wn8.j(alpha2, 0.0f, 1.0f);
        float fJ3 = wn8.j(alpha3, 0.0f, 1.0f);
        if (this.mCustomBackDropAlpha1 == fJ && this.mCustomBackDropAlpha2 == fJ2 && this.mCustomBackDropAlpha3 == fJ3 && this.mHasCustomBackDropAlpha) {
            return;
        }
        this.mCustomBackDropAlpha1 = fJ;
        this.mCustomBackDropAlpha2 = fJ2;
        this.mCustomBackDropAlpha3 = fJ3;
        this.mHasCustomBackDropAlpha = true;
        if (Build.VERSION.SDK_INT >= 31) {
            setBackdrop(this.mBlendColor);
        }
    }

    @RequiresApi(31)
    public final void setBackdrop(int blendColor) {
        this.mBlendColor = blendColor;
        if (olb.O && olb.X && this.mShowBlur && !this.mForceBCEffect) {
            if (this.isUseUnionBlur) {
                f(this);
                setUnionBackdrop(blendColor);
            } else if (!this.isDialog) {
                z(blendColor, this.mBlurNightMode);
            } else {
                f(this);
                B(blendColor, this.mBlurNightMode);
            }
        }
    }

    @RequiresApi(29)
    public final void setBgBlendMode(BlendMode basicBlendMode, BlendMode maskBlendMode) {
        y45.j(basicBlendMode, "basicBlendMode");
        y45.j(maskBlendMode, "maskBlendMode");
        this.mBasicBlendMode = basicBlendMode;
        this.mMaskBlendMode = maskBlendMode;
        if (Build.VERSION.SDK_INT >= 31) {
            setBackdrop(this.mBlendColor);
        }
    }

    @RequiresApi(31)
    public final void setBlurNightMode(boolean nightMode) {
        if (this.mBlurNightMode != nightMode) {
            this.mBlurNightMode = nightMode;
            setBackdrop(this.mBlendColor);
        }
    }

    @RequiresApi(31)
    public final void setBlurRadius(float blurRadius) {
        this.mBlurRadius = blurRadius;
        setBackdrop(this.mBlendColor);
    }

    public final void setBrandAlpha(float alpha) {
        if (this.mMixLevel != 5 || this.mBrandAlpha == alpha) {
            return;
        }
        this.mBrandAlpha = alpha;
        if (Build.VERSION.SDK_INT >= 31) {
            setBackdrop(this.mBlendColor);
        }
    }

    @RequiresApi(31)
    public final void setBrandColor(int brandColor) {
        if (this.mBrandColor != brandColor) {
            this.mBrandColor = brandColor;
            if (olb.O) {
                setBackdrop(this.mBlendColor);
            } else {
                if (this.mHasCustomBgColor) {
                    return;
                }
                setMDefaultBgColor(brandColor);
            }
        }
    }

    @RequiresApi(31)
    public final void setCustomMix(int color1, BlendMode blendMode1, int color2, BlendMode blendMode2, int color3, BlendMode blendMode3) {
        this.mCustomMixColor1 = color1;
        this.mCustomMixBlendMode1 = blendMode1;
        this.mCustomMixColor2 = color2;
        this.mCustomMixBlendMode2 = blendMode2;
        this.mCustomMixColor3 = color3;
        this.mCustomMixBlendMode3 = blendMode3;
        this.mMixLevel = -1;
        setBackdrop(this.mBlendColor);
    }

    public final void setDefaultBgColor(int color) {
        setMDefaultBgColor(color);
        this.mHasCustomBgColor = true;
        invalidate();
    }

    public final void setDialogMiddleBlendColor(@ColorInt int nightColor, @ColorInt int lightColor) {
        if (this.mDialogMiddleBlendColorNight != nightColor) {
            this.mDialogMiddleBlendColorNight = nightColor;
            this.mHasCustomDialogMiddleBlendColor = true;
        }
        if (this.mDialogMiddleBlendColorLight != lightColor) {
            this.mDialogMiddleBlendColorLight = lightColor;
            this.mHasCustomDialogMiddleBlendColor = true;
        }
    }

    public final void setFillColor(int color) {
        this.mMaskBlendColor = color;
        this.mMixLevel = -1;
        if (Build.VERSION.SDK_INT >= 31) {
            setBackdrop(this.mBlendColor);
        }
    }

    @RequiresApi(31)
    public final void setForceBCEffect(boolean forceBCEffect) {
        this.mForceBCEffect = forceBCEffect;
        this.mOSLiquidDrawable.setForceBCEffect(forceBCEffect);
        if (forceBCEffect) {
            f(this);
        } else {
            setBackdrop(this.mBlendColor);
        }
        invalidate();
    }

    public final void setGapBrightness(float brightness) {
        this.mOSLiquidDrawable.setGapBrightness(brightness);
        invalidate();
    }

    public final void setGapRotationDegrees(float degrees) {
        this.mOSLiquidDrawable.setGapRotationDegrees(degrees);
        invalidate();
    }

    public final void setGapSizeRatio(float ratio) {
        this.mOSLiquidDrawable.setGapSizeRatio(ratio);
        invalidate();
    }

    public final void setGradientStrokeColor(int[] color) {
        y45.j(color, "color");
        this.mOSLiquidDrawable.setGradientStrokeColor(color);
        invalidate();
    }

    public final void setGradientStrokePosition(float[] floatArray) {
        y45.j(floatArray, "floatArray");
        this.mOSLiquidDrawable.setGradientStrokePosition(floatArray);
        invalidate();
    }

    @RequiresApi(31)
    public final void setLiquidLevel(int level) {
        setMixLevel(level);
    }

    public final void setLocalLightAngle(float angleDegrees) {
        this.mLocalLightAngle = Float.valueOf(angleDegrees);
        olb.e(this, angleDegrees);
    }

    @RequiresApi(31)
    public final void setMixLevel(int level) {
        if (this.mMixLevel != level) {
            this.mMixLevel = level;
            setBackdrop(this.mBlendColor);
            if (!this.mHasCustomBgColor) {
                setMDefaultBgColor(y(this.mMixLevel, this.mBlurNightMode));
            }
            d();
        }
    }

    @RequiresApi(31)
    public final void setNightMode(boolean nightMode) {
        if (nightMode != this.mBlurNightMode) {
            this.mBlurNightMode = nightMode;
            setBackdrop(this.mBlendColor);
        }
    }

    public final void setOnUnionRenderFrameAvailableListener(Consumer<View> consumer) {
        y45.j(consumer, "consumer");
        this.unionRenderFrameAvailableListener = consumer;
    }

    @RequiresApi(24)
    public final void setOnUnionRenderFrameAvailableListenerReflect(View view, Consumer<View> listener) {
        try {
            Method method = View.class.getMethod("setOnUnionRenderFrameAvailableListenerWrapper", Consumer.class);
            y45.i(method, "viewClass.getMethod(\"set…ion.Consumer::class.java)");
            method.setAccessible(true);
            Object objInvoke = method.invoke(view, listener);
            bq5.c(this.TAG, "setOnUnionRenderFrameAvailableListenerReflect: result = " + objInvoke);
        } catch (Exception e) {
            bq5.h(this.TAG, "registerUnionRenderListener fail", e);
        }
    }

    public final void setPositionsLT(float[] floatArray) {
        y45.j(floatArray, "floatArray");
        this.mOSLiquidDrawable.setPositionsLT(floatArray);
        invalidate();
    }

    public final void setRadius(float liquidRadius) {
        this.mOSLiquidDrawable.setRadius(liquidRadius);
        C(this.mOSLiquidDrawable.getCornerRadius());
        invalidateOutline();
        invalidate();
    }

    public final void setShadowAlpha(float alpha) {
        this.mShadowAlpha = wn8.j(alpha, 0.0f, 1.0f);
        d();
    }

    public final void setShadowColor(@ColorInt int shadowColor) {
        if (olb.s) {
            shadowColor = SupportMenu.CATEGORY_MASK;
        }
        if (this.mShadowColor == shadowColor) {
            return;
        }
        this.mShadowColor = shadowColor;
        d();
    }

    public final void setShadowElevation(float shadowElevation, int shadowColor) {
        this.mShadowElevation = wn8.c(shadowElevation, 0.0f);
        this.mShadowColor = shadowColor;
        d();
    }

    public final void setShadowIndex(float radius, float dx, float dy, int shadowColor) {
        setShadowElevation(dy + (radius * 0.5f), shadowColor);
    }

    @RequiresApi(31)
    public final void setShowBlenderColor(boolean showBlenderColor) {
        if (this.mShowBlendColor != showBlenderColor) {
            this.mShowBlendColor = showBlenderColor;
            setBackdrop(this.mBlendColor);
        }
    }

    @RequiresApi(31)
    public final void setShowBlur(boolean showBlur) {
        if (this.mShowBlur != showBlur) {
            this.mShowBlur = showBlur;
            setBackdrop(this.mBlendColor);
        }
    }

    public final void setShowOutline(boolean showOutline) {
        this.mShowOutLine = showOutline;
        this.mOSLiquidDrawable.setShowOutline(showOutline);
        invalidate();
    }

    public final void setStrokeBlendMode(BlendMode blendMode) {
        y45.j(blendMode, "blendMode");
        this.mOSLiquidDrawable.setStrokeBlendMode(blendMode);
        invalidate();
    }

    public final void setStrokeBrightness(float brightness) {
        this.mOSLiquidDrawable.setStrokeBrightness(brightness);
        invalidate();
    }

    public final void setUseUnionBlur(boolean z) {
        this.isUseUnionBlur = z;
        if (Build.VERSION.SDK_INT >= 31) {
            setBackdrop(this.mBlendColor);
        }
    }

    public final boolean showDialogBlur(boolean isDialog) {
        return isDialog && olb.K;
    }

    public final int t(int defaultColor) {
        return this.mHasCustomBackDropAlpha ? a(defaultColor, this.mCustomBackDropAlpha1) : defaultColor;
    }

    public final int u(int defaultColor) {
        return this.mHasCustomBackDropAlpha ? a(defaultColor, this.mCustomBackDropAlpha2) : defaultColor;
    }

    public final int v(int defaultColor) {
        return this.mHasCustomBackDropAlpha ? a(defaultColor, this.mCustomBackDropAlpha3) : defaultColor;
    }

    public final int w(boolean blurNightMode) {
        if (blurNightMode) {
            return this.mHasCustomDialogMiddleBlendColor ? this.mDialogMiddleBlendColorNight : getContext().getColor(R.color.os_liquid_pop_night_color1);
        }
        return this.mHasCustomDialogMiddleBlendColor ? this.mDialogMiddleBlendColorLight : getContext().getColor(R.color.os_liquid_pop_light_color1);
    }

    public final float x() {
        int i = this.mMixLevel;
        float f = this.mShadowAlpha;
        if (i == 5) {
            f *= 2.0f;
        }
        return wn8.j(f, 0.0f, 1.0f);
    }

    public final int y(int mixLevel, boolean nightMode) {
        Log.d(this.TAG, "setBCBackDropInner = " + mixLevel + " blurNightMode = " + nightMode);
        switch (mixLevel) {
            case 0:
                return olb.m(getContext(), R.attr.os_liq_clear1_bc_light_attr, R.color.os_liquid_clear1_bc_color);
            case 1:
                return nightMode ? getContext().getColor(R.color.os_liquid_clear2_bc_night_color) : olb.m(getContext(), R.attr.os_liq_clear2_bc_light_attr, R.color.os_liquid_clear2_bc_light_color);
            case 2:
                return nightMode ? getContext().getColor(R.color.os_liquid_small_bc_night_color) : olb.m(getContext(), R.attr.os_liq_small_bc_light_attr, R.color.os_liquid_small_bc_light_color);
            case 3:
                return nightMode ? getContext().getColor(R.color.os_liquid_midle_bc_night_color) : olb.m(getContext(), R.attr.os_liq_middle_bc_light_attr, R.color.os_liquid_midle_bc_light_color);
            case 4:
                return nightMode ? getContext().getColor(R.color.os_liquid_big_bc_night_color) : olb.m(getContext(), R.attr.os_liq_big_bc_light_attr, R.color.os_liquid_big_bc_light_color);
            case 5:
                int iArgb = Color.argb((int) (this.mBrandAlpha * 255), Color.red(this.mBrandColor), Color.green(this.mBrandColor), Color.blue(this.mBrandColor));
                this.mBrandColor = iArgb;
                return iArgb;
            case 6:
                return nightMode ? getContext().getColor(R.color.os_liquid_small_bc_night_color) : olb.m(getContext(), R.attr.os_liq_small_bc_light_attr, R.color.os_liquid_small_bc_light_color);
            default:
                return olb.m(getContext(), R.attr.os_liq_clear1_bc_light_attr, R.color.os_liquid_clear1_bc_color);
        }
    }

    public final void z(int blendColor, boolean nightMode) {
        switch (this.mMixLevel) {
            case -1:
                q(this.mCustomMixColor1, this.mCustomMixBlendMode1, this.mCustomMixColor2, this.mCustomMixBlendMode2, this.mCustomMixColor3, this.mCustomMixBlendMode3);
                break;
            case 0:
                r(t(getContext().getColor(R.color.os_liquid_clear1_color1)), u(getContext().getColor(R.color.os_liquid_clear1_color2)));
                break;
            case 1:
                if (!nightMode) {
                    r(t(getContext().getColor(R.color.os_liquid_clear2_color1)), u(getContext().getColor(R.color.os_liquid_clear2_color2)));
                } else {
                    p(t(getContext().getColor(R.color.os_liquid_clear2_night_color1)));
                }
                break;
            case 2:
                if (!nightMode) {
                    r(t(getContext().getColor(R.color.os_liquid_small_light_color1)), u(getContext().getColor(R.color.os_liquid_small_light_color2)));
                } else {
                    s(t(getContext().getColor(R.color.os_liquid_small_night_color3)), u(getContext().getColor(R.color.os_liquid_small_night_color2)), v(getContext().getColor(R.color.os_liquid_small_night_color1)));
                }
                break;
            case 3:
                if (!nightMode) {
                    r(t(getContext().getColor(R.color.os_liquid_midle_light_color1)), u(getContext().getColor(R.color.os_liquid_midle_light_color2)));
                } else {
                    s(t(getContext().getColor(R.color.os_liquid_midle_night_color3)), u(getContext().getColor(R.color.os_liquid_midle_night_color2)), v(getContext().getColor(R.color.os_liquid_midle_night_color1)));
                }
                break;
            case 4:
                if (!nightMode) {
                    r(t(getContext().getColor(R.color.os_liquid_big_light_color1)), u(getContext().getColor(R.color.os_liquid_big_light_color2)));
                } else {
                    s(t(getContext().getColor(R.color.os_liquid_big_night_color3)), u(getContext().getColor(R.color.os_liquid_big_night_color2)), v(getContext().getColor(R.color.os_liquid_big_night_color1)));
                }
                break;
            case 5:
                o(Color.argb((int) (this.mBrandAlpha * 255), Color.red(this.mBrandColor), Color.green(this.mBrandColor), Color.blue(this.mBrandColor)));
                break;
            case 6:
                if (!nightMode) {
                    r(t(getContext().getColor(R.color.os_liquid_clear2_color1)), u(getContext().getColor(R.color.os_liquid_clear2_color2)));
                } else {
                    p(t(getContext().getColor(R.color.os_liquid_clear2_night_color1)));
                }
                break;
            default:
                r(this.mMaskBlendColor, blendColor);
                break;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSLiquidContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLiquidContainer(final Context context, AttributeSet attributeSet, int i) {
        int dimensionPixelSize;
        int color;
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.TAG = "OSLiquidContainer";
        this.mShadowColor = -16777216;
        this.mShadowAlpha = 1.0f;
        this.tranView = kotlin.b.a(new c74() {
            @Override
            public final TranView invoke() {
                return new TranView();
            }
        });
        this.unionEffect = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final TranUnionRenderEffectProxy invoke() {
                TranUnionRenderEffectProxy unionRenderEffect = this.this$0.getTranView().getUnionRenderEffect(this.this$0);
                return unionRenderEffect == null ? new TranUnionRenderEffectProxy() : unionRenderEffect;
            }
        });
        a67 a67Var = new a67(context, 90.0f);
        this.mOSLiquidDrawable = a67Var;
        this.mShowBlendColor = true;
        this.mShowOutLine = true;
        this.mShowBlur = true;
        this.mMaskBlendColor = DEFAULT_MASK_BLEND_COLOR;
        int i2 = Build.VERSION.SDK_INT;
        this.mBasicBlendMode = BlendMode.SRC_OVER;
        this.mBrandAlpha = 1.0f;
        this.mCustomBackDropAlpha1 = 1.0f;
        this.mCustomBackDropAlpha2 = 1.0f;
        this.mCustomBackDropAlpha3 = 1.0f;
        this.mTranOutline = new TranOutline();
        this.modeNight1 = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final String invoke() {
                return nl5.a(context, R.raw.blender_srcover);
            }
        });
        this.modeNight2 = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final String invoke() {
                return nl5.a(context, R.raw.blender_test_luminosity);
            }
        });
        this.modeNight3 = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final String invoke() {
                return nl5.a(context, R.raw.blender_test_color_burn);
            }
        });
        this.modeLight1 = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final String invoke() {
                return nl5.a(context, R.raw.blender_test_colordodge);
            }
        });
        this.modeLight2 = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final String invoke() {
                return nl5.a(context, R.raw.blender_srcover);
            }
        });
        this.modeLighten = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final String invoke() {
                return nl5.a(context, R.raw.blender_test_lighten);
            }
        });
        this.mBlendColor = getResources().getColor(R.color.os_liquid_container_blender_color);
        setMDefaultBgColor(olb.m(context, R.attr.os_liquid_container_bg_color_attr, R.color.os_liquid_container_bg_color));
        int[] iArr = R.styleable.OSLiquidContainer;
        y45.i(iArr, "OSLiquidContainer");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSLiquidContainer_os_liquid_radius, olb.h(context, 30));
        this.mBlendColor = typedArrayObtainStyledAttributes.getColor(R.styleable.OSLiquidContainer_os_liquid_blur_blend_color, this.mBlendColor);
        this.mShowBlendColor = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidContainer_os_liquid_show_blender_color, this.mShowBlendColor);
        this.mShowOutLine = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidContainer_os_liquid_show_outline, this.mShowOutLine);
        this.mShowBlur = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidContainer_os_liquid_show_blur, this.mShowBlur);
        int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.OSLiquidContainer_os_liquid_mixlevel, this.mMixLevel);
        this.mMixLevel = i3;
        this.mInitialMixLevel = i3;
        this.isDialog = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidContainer_os_liquid_dailog, this.isDialog);
        this.mBrandAlpha = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSLiquidContainer_os_liquid_brand_alpha, this.mBrandAlpha);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSLiquidContainer_os_liquid_shadow_elevation, -1);
        if (dimensionPixelSize3 >= 0) {
            this.mShadowElevation = dimensionPixelSize3;
            this.mShadowEnabled = true;
        }
        float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSLiquidContainer_os_liquid_shadow_alpha, -1.0f);
        if (f >= 0.0f) {
            this.mShadowAlpha = wn8.j(f, 0.0f, 1.0f);
        }
        this.mForceBCEffect = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidContainer_os_liquid_cus_force_bc, this.mForceBCEffect);
        if (forceDialogBC(this.isDialog)) {
            this.mForceBCEffect = true;
        }
        a67Var.setForceBCEffect(this.mForceBCEffect);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.os_platform_basic_color}, 0, 0);
        y45.i(typedArrayObtainStyledAttributes2, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        this.mBrandColor = typedArrayObtainStyledAttributes2.getColor(0, typedArrayObtainStyledAttributes2.getResources().getColor(R.color.os_platform_basic_color_xos));
        typedArrayObtainStyledAttributes2.recycle();
        this.mBrandColor = typedArrayObtainStyledAttributes.getColor(R.styleable.OSLiquidContainer_os_liquid_brand_color, this.mBrandColor);
        int i4 = this.mMixLevel;
        if (i4 == 2) {
            dimensionPixelSize = typedArrayObtainStyledAttributes.getResources().getDimensionPixelSize(R.dimen.os_liquid_blur_small_radius);
        } else if (i4 == 3) {
            dimensionPixelSize = typedArrayObtainStyledAttributes.getResources().getDimensionPixelSize(R.dimen.os_liquid_blur_middle_radius);
        } else if (i4 == 4) {
            dimensionPixelSize = typedArrayObtainStyledAttributes.getResources().getDimensionPixelSize(R.dimen.os_liquid_blur_big_radius);
        } else if (i4 != 5) {
            dimensionPixelSize = typedArrayObtainStyledAttributes.getResources().getDimensionPixelSize(R.dimen.os_liquid_blur_radius);
        } else {
            dimensionPixelSize = typedArrayObtainStyledAttributes.getResources().getDimensionPixelSize(R.dimen.os_liquid_blur_brand_radius);
        }
        float f2 = dimensionPixelSize;
        this.mBlurRadius = f2;
        this.mBlurRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSLiquidContainer_os_liquid_blur_radius, (int) f2);
        this.mBlurNightMode = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidContainer_os_liquid_night_mode, isNightMode());
        a67Var.setRadius(dimensionPixelSize2);
        int i5 = R.styleable.OSLiquidContainer_os_liquid_bg_color;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i5);
        this.mHasCustomBgColor = zHasValue;
        if (!zHasValue) {
            color = y(this.mMixLevel, this.mBlurNightMode);
        } else {
            color = typedArrayObtainStyledAttributes.getColor(i5, this.mDefaultBgColor);
        }
        setMDefaultBgColor(color);
        a67Var.setShowOutline(this.mShowOutLine);
        int i6 = typedArrayObtainStyledAttributes.getInt(R.styleable.OSLiquidContainer_os_liquid_shadow_level, 0);
        if (i6 > 0) {
            applyShadowLevel(i6);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.mMaskBlendMode = BlendMode.COLOR_DODGE;
        setWillNotDraw(false);
        C(a67Var.getCornerRadius());
        setClipToOutline(true);
        if (i2 >= 31) {
            setBackdrop(this.mBlendColor);
        }
    }
}
