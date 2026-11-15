package com.yandex.div.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.GravityCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewGroupKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.internal.widget.DivLayoutParams;
import com.yandex.div.internal.widget.DivViewGroup;
import defpackage.ae5;
import defpackage.af5;
import defpackage.c81;
import defpackage.go8;
import defpackage.odc;
import defpackage.pdc;
import defpackage.s15;
import defpackage.s86;
import defpackage.wn8;
import defpackage.xi;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.comparisons.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b>\n\u0002\u0010\u0007\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0013\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ-\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ7\u0010$\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0014¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020&H\u0014¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b)\u0010\u0018J\u0017\u0010*\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b*\u0010\u0018J\u001f\u0010+\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b+\u0010,J!\u0010-\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b-\u0010.J9\u0010/\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b/\u00100J\u0017\u00102\u001a\u00020\u00122\u0006\u00101\u001a\u00020\u0007H\u0002¢\u0006\u0004\b2\u00103J\u0017\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u0007H\u0002¢\u0006\u0004\b5\u00106J\u001f\u00107\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\b7\u0010\u001eJ'\u0010:\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\b:\u0010;J\u001f\u0010<\u001a\u00020\u00122\u0006\u00109\u001a\u0002082\u0006\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\b<\u0010=J7\u0010@\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020\u0012H\u0002¢\u0006\u0004\b@\u0010AJ/\u0010B\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010?\u001a\u00020\u0012H\u0002¢\u0006\u0004\bB\u0010CJ/\u0010D\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010?\u001a\u00020\u0012H\u0002¢\u0006\u0004\bD\u0010CJ\u001f\u0010E\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\bE\u0010\u001eJ\u001f\u0010F\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\bF\u0010GJ/\u0010K\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\u00072\u0006\u0010I\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u0007H\u0002¢\u0006\u0004\bK\u0010\u0011J\u001f\u0010N\u001a\u00020\u00122\u0006\u0010L\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u0007H\u0002¢\u0006\u0004\bN\u0010OJ'\u0010P\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0002¢\u0006\u0004\bP\u0010QJ/\u0010T\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010R\u001a\u00020\u00072\u0006\u0010S\u001a\u00020\u0007H\u0002¢\u0006\u0004\bT\u0010UJ/\u0010V\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0002¢\u0006\u0004\bV\u0010\u0011J\u001f\u0010W\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u0007H\u0002¢\u0006\u0004\bW\u0010XJ\u001f\u0010Y\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\bY\u0010\u001eJ'\u0010Z\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\bZ\u0010;J\u001f\u0010[\u001a\u00020\u00122\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b[\u0010=J\u001f\u0010!\u001a\u00020\u00122\u0006\u0010\\\u001a\u00020\u00072\u0006\u0010]\u001a\u00020\u0007H\u0002¢\u0006\u0004\b!\u0010OJ'\u0010^\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\b^\u0010;J'\u0010_\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\b_\u0010;J\u001f\u0010#\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b#\u0010GJ\u0017\u0010\"\u001a\u00020\u00072\u0006\u0010`\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u00106J'\u0010b\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\bb\u0010QJ'\u0010c\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0002¢\u0006\u0004\bc\u0010QJ'\u0010d\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0002¢\u0006\u0004\bd\u0010QJ'\u0010f\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010e\u001a\u00020\u0012H\u0002¢\u0006\u0004\bf\u0010gJ\u001f\u0010h\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\bh\u0010GJ'\u0010j\u001a\u00020\u00072\u0006\u00109\u001a\u0002082\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010i\u001a\u00020\u0007H\u0002¢\u0006\u0004\bj\u0010kJ\u001f\u0010m\u001a\u00020\u000f2\u0006\u0010`\u001a\u00020\u00072\u0006\u0010l\u001a\u00020\u0007H\u0002¢\u0006\u0004\bm\u0010\u001eJ\u001f\u0010p\u001a\u00020\u00072\u0006\u0010n\u001a\u00020\u00072\u0006\u0010o\u001a\u00020\u0007H\u0002¢\u0006\u0004\bp\u0010XJ\u0017\u0010q\u001a\u00020\u000f2\u0006\u00109\u001a\u000208H\u0002¢\u0006\u0004\bq\u0010rJ/\u0010s\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\bs\u0010\u0011J/\u0010t\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\bt\u0010\u0011J7\u0010u\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010i\u001a\u00020\u00072\u0006\u0010S\u001a\u00020\u0007H\u0002¢\u0006\u0004\bu\u0010vJ\u001f\u0010z\u001a\u00020w2\u0006\u0010x\u001a\u00020w2\u0006\u0010y\u001a\u00020\u0007H\u0002¢\u0006\u0004\bz\u0010{R\u0016\u0010|\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010@R\u0016\u0010}\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010@R7\u0010\u0085\u0001\u001a\u00020\u00072\u0006\u0010~\u001a\u00020\u00078F@FX\u0086\u008e\u0002¢\u0006\u001d\n\u0004\b*\u0010\u007f\u0012\u0006\b\u0083\u0001\u0010\u0084\u0001\u001a\u0005\b\u0080\u0001\u0010\u001a\"\u0006\b\u0081\u0001\u0010\u0082\u0001R\u0017\u0010\u0086\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010@R\u0017\u0010\u0087\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010@R\u0017\u0010\u0088\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010@R\u0017\u0010\u0089\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010@R0\u0010\u008e\u0001\u001a\u00020w2\u0006\u0010~\u001a\u00020w8V@VX\u0096\u008e\u0002¢\u0006\u0016\n\u0004\b5\u0010\u007f\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001\"\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0018\u0010\u0090\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008f\u0001\u0010@R\u0017\u0010\u0091\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010@R\u0017\u0010\u0092\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010@R\u0017\u0010\u0093\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010@R\u0018\u0010\u0095\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0094\u0001\u0010@R\u0017\u0010\u0096\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010@R\u001c\u0010\u009a\u0001\u001a\u00070\u0097\u0001R\u00020\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R\u0017\u0010\u009b\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010@R\u0017\u0010\u009c\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010@R7\u0010¤\u0001\u001a\u0005\u0018\u00010\u009d\u00012\n\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u009d\u00018\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b!\u0010\u009f\u0001\u001a\u0006\b \u0001\u0010¡\u0001\"\u0006\b¢\u0001\u0010£\u0001R7\u0010¨\u0001\u001a\u00020\u00072\u0006\u0010~\u001a\u00020\u00078F@FX\u0087\u008e\u0002¢\u0006\u001d\n\u0004\b<\u0010\u007f\u0012\u0006\b§\u0001\u0010\u0084\u0001\u001a\u0005\b¥\u0001\u0010\u001a\"\u0006\b¦\u0001\u0010\u0082\u0001R\u001d\u0010«\u0001\u001a\t\u0012\u0004\u0012\u0002080©\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b[\u0010ª\u0001R\u001e\u0010¯\u0001\u001a\t\u0012\u0004\u0012\u0002080¬\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u00ad\u0001\u0010®\u0001R\u0017\u0010°\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010@R\u001d\u0010±\u0001\u001a\t\u0012\u0004\u0012\u0002080¬\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bs\u0010®\u0001R\u0017\u0010²\u0001\u001a\u00020w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010FR\u0016\u0010´\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b³\u0001\u0010\u001aR\u0016\u0010¶\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bµ\u0001\u0010\u001aR\u001b\u0010¸\u0001\u001a\u00020\u0007*\u0002088BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0094\u0001\u0010·\u0001R\u001a\u0010R\u001a\u00020\u0007*\u0002088BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0098\u0001\u0010·\u0001R\u0016\u0010º\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b¹\u0001\u0010\u001aR\u0016\u0010»\u0001\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u00ad\u0001\u0010\u0014R\u001b\u0010½\u0001\u001a\u00020w*\u00020&8BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u008f\u0001\u0010¼\u0001R\u001a\u0010¾\u0001\u001a\u00020w*\u00020&8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b \u0010¼\u0001¨\u0006¿\u0001"}, d2 = {"Lcom/yandex/div/core/widget/LinearContainerLayout;", "Lcom/yandex/div/internal/widget/DivViewGroup;", "Lcom/yandex/div/core/widget/AspectView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "Lzfb;", "setDividerMargins", "(IIII)V", "", "shouldDelayChildPressedState", "()Z", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "getBaseline", "()I", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "changed", CmcdData.STREAM_TYPE_LIVE, "t", "r", "b", "onLayout", "(ZIIII)V", "Lcom/yandex/div/internal/widget/DivLayoutParams;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "()Lcom/yandex/div/internal/widget/DivLayoutParams;", "f", "e", GslbInterceptor.HEADER_KEY_GSLB, "(Landroid/graphics/Canvas;I)V", CmcdData.STREAMING_FORMAT_HLS, "(Landroid/graphics/Canvas;I)Lzfb;", "d", "(Landroid/graphics/Canvas;IIII)Lzfb;", "childIndex", "s", "(I)Z", "index", "j", "(I)I", "H", "Landroid/view/View;", "child", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Landroid/view/View;II)V", "u", "(Landroid/view/View;I)Z", "considerWidth", "considerHeight", "I", "(Landroid/view/View;IIZZ)V", "B", "(Landroid/view/View;IIZ)V", ExifInterface.LONGITUDE_EAST, "c", "F", "(Landroid/view/View;I)V", "heightSize", "heightSpec", "initialMaxWidth", "N", "delta", "spec", "J", "(II)Z", "O", "(III)V", "maxWidth", "height", "L", "(Landroid/view/View;III)V", "R", "n", "(II)I", "D", "z", "v", TypedValues.Custom.S_DIMENSION, "parentMeasureSpec", "C", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "measureSpec", "widthSize", "M", "P", ExifInterface.LATITUDE_SOUTH, "measureChild", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Landroid/view/View;IZ)V", "Q", "width", "K", "(Landroid/view/View;II)I", "childSize", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "current", "additional", TtmlNode.TAG_P, "U", "(Landroid/view/View;)V", "y", "x", "T", "(Landroid/view/View;IIII)V", "", "weight", PlayAudioData.TAG_SIZE, CmcdData.OBJECT_TYPE_MANIFEST, "(FI)F", "maxBaselineAscent", "maxBaselineDescent", "<set-?>", "Lgo8;", "getOrientation", "setOrientation", "(I)V", "getOrientation$annotations", "()V", "orientation", "totalLength", "totalConstrainedLength", "totalMatchParentLength", "childMeasuredState", "getAspectRatio", "()F", "setAspectRatio", "(F)V", "aspectRatio", "k", "dividerWidth", "dividerHeight", "dividerMarginTop", "dividerMarginBottom", "o", "dividerMarginLeft", "dividerMarginRight", "Lcom/yandex/div/internal/widget/DivViewGroup$b;", "q", "Lcom/yandex/div/internal/widget/DivViewGroup$b;", "offsetsHolder", "firstVisibleChildIndex", "lastVisibleChildIndex", "Landroid/graphics/drawable/Drawable;", ES6Iterator.VALUE_PROPERTY, "Landroid/graphics/drawable/Drawable;", "getDividerDrawable", "()Landroid/graphics/drawable/Drawable;", "setDividerDrawable", "(Landroid/graphics/drawable/Drawable;)V", "dividerDrawable", "getShowDividers", "setShowDividers", "getShowDividers$annotations", "showDividers", "", "Ljava/util/List;", "constrainedChildren", "", "w", "Ljava/util/Set;", "skippedMatchParentChildren", "maxCrossSize", "crossMatchParentChildren", "totalWeight", "getDividerHeightWithMargins", "dividerHeightWithMargins", "getDividerWidthWithMargins", "dividerWidthWithMargins", "(Landroid/view/View;)I", "maxHeight", "getVisibleChildCount", "visibleChildCount", "isVertical", "(Lcom/yandex/div/internal/widget/DivLayoutParams;)F", "fixedHorizontalWeight", "fixedVerticalWeight", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class LinearContainerLayout extends DivViewGroup implements AspectView {
    public static final af5[] A = {xq8.f(new MutablePropertyReference1Impl(LinearContainerLayout.class, "orientation", "getOrientation()I", 0)), xq8.f(new MutablePropertyReference1Impl(LinearContainerLayout.class, "aspectRatio", "getAspectRatio()F", 0)), xq8.f(new MutablePropertyReference1Impl(LinearContainerLayout.class, "showDividers", "getShowDividers()I", 0))};

    public int maxBaselineAscent;

    public int maxBaselineDescent;

    public final go8 orientation;

    public int totalLength;

    public int totalConstrainedLength;

    public int totalMatchParentLength;

    public int childMeasuredState;

    public final go8 aspectRatio;

    public int dividerWidth;

    public int dividerHeight;

    public int dividerMarginTop;

    public int dividerMarginBottom;

    public int dividerMarginLeft;

    public int dividerMarginRight;

    public final DivViewGroup.b offsetsHolder;

    public int firstVisibleChildIndex;

    public int lastVisibleChildIndex;

    public Drawable dividerDrawable;

    public final go8 showDividers;

    public final List constrainedChildren;

    public final Set skippedMatchParentChildren;

    public int maxCrossSize;

    public final Set crossMatchParentChildren;

    public float totalWeight;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LinearContainerLayout(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    private final void D(int widthMeasureSpec, int heightMeasureSpec) {
        this.maxBaselineAscent = -1;
        this.maxBaselineDescent = -1;
        boolean zE = odc.e(widthMeasureSpec);
        if (getAspectRatio() != 0.0f) {
            heightMeasureSpec = zE ? odc.h(s86.c(View.MeasureSpec.getSize(widthMeasureSpec) / getAspectRatio())) : odc.h(0);
        }
        int size = View.MeasureSpec.getSize(heightMeasureSpec);
        boolean zE2 = odc.e(heightMeasureSpec);
        int iD = wn8.d(zE2 ? size : Math.max(getSuggestedMinimumHeight(), getVerticalPaddings$div_release()), 0);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                if (s(i)) {
                    this.totalLength += getDividerWidthWithMargins();
                }
                float f = this.totalWeight;
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                this.totalWeight = f + k((DivLayoutParams) layoutParams);
                z(childAt, widthMeasureSpec, heightMeasureSpec);
            }
        }
        int childCount2 = getChildCount();
        for (int i2 = 0; i2 < childCount2; i2++) {
            View childAt2 = getChildAt(i2);
            if (childAt2.getVisibility() != 8) {
                y45.i(childAt2, "child");
                b(childAt2, widthMeasureSpec);
            }
        }
        if (this.totalLength > 0 && s(getChildCount())) {
            this.totalLength += getDividerWidthWithMargins();
        }
        this.totalLength += getHorizontalPaddings$div_release();
        int iR = r(widthMeasureSpec) & 16777215;
        if (!zE && getAspectRatio() != 0.0f) {
            size = s86.c(iR / getAspectRatio());
            heightMeasureSpec = odc.h(size);
        }
        M(widthMeasureSpec, iR, heightMeasureSpec);
        if (!zE2 && getAspectRatio() == 0.0f) {
            int childCount3 = getChildCount();
            for (int i3 = 0; i3 < childCount3; i3++) {
                View childAt3 = getChildAt(i3);
                if (childAt3.getVisibility() != 8) {
                    y45.i(childAt3, "child");
                    a(childAt3, heightMeasureSpec, this.maxCrossSize == 0);
                }
            }
            this.maxCrossSize = Math.max(iD, this.maxCrossSize + getVerticalPaddings$div_release());
            int i4 = this.maxBaselineAscent;
            if (i4 != -1) {
                V(heightMeasureSpec, i4 + this.maxBaselineDescent);
            }
            size = View.resolveSize(this.maxCrossSize, heightMeasureSpec);
        }
        int childCount4 = getChildCount();
        for (int i5 = 0; i5 < childCount4; i5++) {
            View childAt4 = getChildAt(i5);
            if (childAt4.getVisibility() != 8) {
                y45.i(childAt4, "child");
                Q(childAt4, odc.h(size));
            }
        }
        setMeasuredDimension(r(widthMeasureSpec), View.resolveSizeAndState(size, heightMeasureSpec, this.childMeasuredState << 16));
    }

    private final void H(int widthMeasureSpec, int heightMeasureSpec) {
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        boolean z = View.MeasureSpec.getMode(widthMeasureSpec) == 1073741824;
        if (getAspectRatio() != 0.0f) {
            heightMeasureSpec = z ? odc.h(s86.c(size / getAspectRatio())) : odc.h(0);
        }
        if (!z) {
            size = Math.max(getSuggestedMinimumWidth(), getHorizontalPaddings$div_release());
        }
        int iD = wn8.d(size, 0);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                if (s(i)) {
                    this.totalLength += getDividerHeightWithMargins();
                }
                float f = this.totalWeight;
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                this.totalWeight = f + l((DivLayoutParams) layoutParams);
                A(childAt, widthMeasureSpec, heightMeasureSpec);
            }
        }
        c(widthMeasureSpec, heightMeasureSpec);
        Iterator it = this.crossMatchParentChildren.iterator();
        while (it.hasNext()) {
            F((View) it.next(), heightMeasureSpec);
        }
        if (this.totalLength > 0 && s(getChildCount())) {
            this.totalLength += getDividerHeightWithMargins();
        }
        this.totalLength += getVerticalPaddings$div_release();
        this.maxCrossSize = Math.max(iD, this.maxCrossSize + getHorizontalPaddings$div_release());
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (getAspectRatio() != 0.0f && !z) {
            size2 = s86.c((View.resolveSizeAndState(this.maxCrossSize, widthMeasureSpec, this.childMeasuredState) & 16777215) / getAspectRatio());
            heightMeasureSpec = odc.h(size2);
            N(widthMeasureSpec, size2, heightMeasureSpec, iD);
        } else if (getAspectRatio() != 0.0f || odc.e(heightMeasureSpec)) {
            N(widthMeasureSpec, size2, heightMeasureSpec, iD);
        } else {
            N(widthMeasureSpec, Math.max(this.totalLength, getSuggestedMinimumHeight()), heightMeasureSpec, iD);
            size2 = Math.max(this.totalLength, getSuggestedMinimumHeight());
        }
        setMeasuredDimension(View.resolveSizeAndState(this.maxCrossSize, widthMeasureSpec, this.childMeasuredState), View.resolveSizeAndState(size2, heightMeasureSpec, this.childMeasuredState << 16));
    }

    private final void e(Canvas canvas) {
        int paddingLeft;
        int iA;
        int width;
        int iA2;
        int i;
        int i2;
        boolean zF = pdc.f(this);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                if (s(i3)) {
                    int iJ = j(i3);
                    if (zF) {
                        int right = childAt.getRight();
                        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                        i2 = right + ((ViewGroup.MarginLayoutParams) ((DivLayoutParams) layoutParams)).rightMargin + this.dividerMarginLeft + iJ;
                    } else {
                        int left = childAt.getLeft();
                        ViewGroup.LayoutParams layoutParams2 = childAt.getLayoutParams();
                        y45.h(layoutParams2, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                        i2 = (((left - ((ViewGroup.MarginLayoutParams) ((DivLayoutParams) layoutParams2)).leftMargin) - this.dividerWidth) - this.dividerMarginRight) - iJ;
                    }
                    h(canvas, i2);
                }
            }
        }
        if (s(getChildCount())) {
            View childAt2 = getChildAt(getChildCount() - 1);
            if (childAt2 != null || !zF) {
                if (childAt2 == null) {
                    width = ((getWidth() - getPaddingRight()) - this.dividerWidth) - this.dividerMarginRight;
                    iA2 = this.offsetsHolder.a();
                } else if (zF) {
                    int left2 = childAt2.getLeft();
                    ViewGroup.LayoutParams layoutParams3 = childAt2.getLayoutParams();
                    y45.h(layoutParams3, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                    width = ((left2 - ((ViewGroup.MarginLayoutParams) ((DivLayoutParams) layoutParams3)).leftMargin) - this.dividerWidth) - this.dividerMarginRight;
                    iA2 = this.offsetsHolder.a();
                } else {
                    int right2 = childAt2.getRight();
                    ViewGroup.LayoutParams layoutParams4 = childAt2.getLayoutParams();
                    y45.h(layoutParams4, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                    paddingLeft = right2 + ((ViewGroup.MarginLayoutParams) ((DivLayoutParams) layoutParams4)).rightMargin + this.dividerMarginLeft;
                    iA = this.offsetsHolder.a();
                }
                i = width - iA2;
                h(canvas, i);
            }
            paddingLeft = getPaddingLeft() + this.dividerMarginLeft;
            iA = this.offsetsHolder.a();
            i = paddingLeft + iA;
            h(canvas, i);
        }
    }

    private final void f(Canvas canvas) {
        int height;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                if (s(i)) {
                    int top = childAt.getTop();
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                    g(canvas, (((top - ((ViewGroup.MarginLayoutParams) ((DivLayoutParams) layoutParams)).topMargin) - this.dividerHeight) - this.dividerMarginBottom) - j(i));
                }
            }
        }
        if (s(getChildCount())) {
            View childAt2 = getChildAt(getChildCount() - 1);
            if (childAt2 != null) {
                int bottom = childAt2.getBottom();
                ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
                y45.h(layoutParams2, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                height = bottom + ((ViewGroup.MarginLayoutParams) ((DivLayoutParams) layoutParams2)).bottomMargin + this.dividerMarginTop + this.offsetsHolder.a();
            } else {
                height = (((getHeight() - getPaddingBottom()) - this.dividerHeight) - this.dividerMarginBottom) - this.offsetsHolder.a();
            }
            g(canvas, height);
        }
    }

    private final void g(Canvas canvas, int top) {
        d(canvas, getPaddingLeft() + this.dividerMarginLeft, top, (getWidth() - getPaddingRight()) - this.dividerMarginRight, top + this.dividerHeight);
    }

    private final int getDividerHeightWithMargins() {
        return this.dividerHeight + this.dividerMarginTop + this.dividerMarginBottom;
    }

    private final int getDividerWidthWithMargins() {
        return this.dividerWidth + this.dividerMarginRight + this.dividerMarginLeft;
    }

    public static void getOrientation$annotations() {
    }

    public static void getShowDividers$annotations() {
    }

    private final int getVisibleChildCount() {
        Iterator it = ViewGroupKt.getChildren(this).iterator();
        int i = 0;
        while (it.hasNext()) {
            if (!(((View) it.next()).getVisibility() == 8) && (i = i + 1) < 0) {
                y71.t();
            }
        }
        return i;
    }

    private final boolean s(int childIndex) {
        if (childIndex != this.firstVisibleChildIndex) {
            if (childIndex <= this.lastVisibleChildIndex) {
                if ((getShowDividers() & 2) == 0) {
                    return false;
                }
                for (int i = childIndex - 1; -1 < i; i--) {
                    View childAt = getChildAt(childIndex);
                    y45.i(childAt, "getChildAt(childIndex)");
                    if (childAt.getVisibility() != 8) {
                        return true;
                    }
                }
                return false;
            }
            if ((getShowDividers() & 4) == 0) {
                return false;
            }
        } else if ((getShowDividers() & 1) == 0) {
            return false;
        }
        return true;
    }

    private final void x(int left, int top, int right, int bottom) {
        int i;
        int i2;
        int baseline;
        int verticalPaddings$div_release = (bottom - top) - getVerticalPaddings$div_release();
        int layoutDirection = getLayoutDirection();
        float f = (right - left) - this.totalLength;
        float paddingLeft = getPaddingLeft();
        this.offsetsHolder.d(f, GravityCompat.getAbsoluteGravity(getHorizontalGravity$div_release(), layoutDirection), getVisibleChildCount());
        float fB = paddingLeft + this.offsetsHolder.b();
        s15 s15VarC = pdc.c(this, 0, getChildCount());
        int iB = s15VarC.b();
        int iC = s15VarC.c();
        int iF = s15VarC.f();
        if ((iF <= 0 || iB > iC) && (iF >= 0 || iC > iB)) {
            return;
        }
        while (true) {
            View childAt = getChildAt(iB);
            if (childAt != null && childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                int iF2 = DivViewGroup.INSTANCE.f(divLayoutParams.getGravity());
                if (iF2 < 0) {
                    iF2 = getVerticalGravity$div_release();
                }
                int paddingTop = getPaddingTop();
                if (iF2 == 16) {
                    i = (((verticalPaddings$div_release - measuredHeight) + ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin) / 2;
                } else if (iF2 != 48) {
                    if (iF2 != 80) {
                        i = 0;
                    } else {
                        i2 = verticalPaddings$div_release - measuredHeight;
                        baseline = ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin;
                        i = i2 - baseline;
                    }
                } else if (!divLayoutParams.getIsBaselineAligned() || ((ViewGroup.MarginLayoutParams) divLayoutParams).height == -1 || childAt.getBaseline() == -1) {
                    i = ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin;
                } else {
                    i2 = this.maxBaselineAscent;
                    baseline = childAt.getBaseline();
                    i = i2 - baseline;
                }
                int i3 = paddingTop + i;
                if (s(pdc.f(this) ? iB + 1 : iB)) {
                    fB += getDividerWidthWithMargins();
                }
                float f2 = fB + ((ViewGroup.MarginLayoutParams) divLayoutParams).leftMargin;
                T(childAt, s86.c(f2), i3, measuredWidth, measuredHeight);
                fB = f2 + measuredWidth + ((ViewGroup.MarginLayoutParams) divLayoutParams).rightMargin + this.offsetsHolder.c();
            }
            if (iB == iC) {
                return;
            } else {
                iB += iF;
            }
        }
    }

    private final void y(int left, int top, int right, int bottom) {
        int horizontalPaddings$div_release = (right - left) - getHorizontalPaddings$div_release();
        float f = (bottom - top) - this.totalLength;
        float paddingTop = getPaddingTop();
        this.offsetsHolder.d(f, getVerticalGravity$div_release(), getVisibleChildCount());
        float fB = paddingTop + this.offsetsHolder.b();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                int iE = DivViewGroup.INSTANCE.e(divLayoutParams.getGravity());
                if (iE < 0) {
                    iE = getHorizontalGravity$div_release();
                }
                int layoutDirection = getLayoutDirection();
                int paddingLeft = getPaddingLeft();
                int absoluteGravity = GravityCompat.getAbsoluteGravity(iE, layoutDirection);
                int i2 = absoluteGravity != 1 ? (absoluteGravity == 3 || absoluteGravity != 5) ? ((ViewGroup.MarginLayoutParams) divLayoutParams).leftMargin : (horizontalPaddings$div_release - measuredWidth) - ((ViewGroup.MarginLayoutParams) divLayoutParams).rightMargin : (((horizontalPaddings$div_release - measuredWidth) + ((ViewGroup.MarginLayoutParams) divLayoutParams).leftMargin) - ((ViewGroup.MarginLayoutParams) divLayoutParams).rightMargin) / 2;
                int i3 = paddingLeft + i2;
                if (s(i)) {
                    fB += getDividerHeightWithMargins();
                }
                float f2 = fB + ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin;
                T(childAt, i3, s86.c(f2), measuredWidth, measuredHeight);
                fB = f2 + measuredHeight + ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin + this.offsetsHolder.c();
            }
        }
    }

    public final void A(View child, int widthMeasureSpec, int heightMeasureSpec) {
        boolean z;
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        boolean zE = odc.e(widthMeasureSpec);
        boolean zU = u(child, heightMeasureSpec);
        if (zE) {
            z = zU;
        } else {
            z = ((ViewGroup.MarginLayoutParams) divLayoutParams).width != -1;
        }
        if (z) {
            I(child, widthMeasureSpec, heightMeasureSpec, true, true);
            return;
        }
        if (!zE) {
            this.crossMatchParentChildren.add(child);
        }
        if (zU) {
            return;
        }
        this.skippedMatchParentChildren.add(child);
        int i = this.totalLength;
        ViewGroup.LayoutParams layoutParams2 = child.getLayoutParams();
        y45.h(layoutParams2, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        this.totalLength = p(i, ((DivLayoutParams) layoutParams2).h());
    }

    public final void B(View child, int widthMeasureSpec, int heightMeasureSpec, boolean considerHeight) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        int maxHeight = divLayoutParams.getMaxHeight();
        ((ViewGroup.MarginLayoutParams) divLayoutParams).height = -2;
        divLayoutParams.o(Integer.MAX_VALUE);
        measureChildWithMargins(child, widthMeasureSpec, 0, heightMeasureSpec, 0);
        ((ViewGroup.MarginLayoutParams) divLayoutParams).height = -3;
        divLayoutParams.o(maxHeight);
        if (considerHeight) {
            this.totalConstrainedLength = p(this.totalConstrainedLength, child.getMeasuredHeight() + divLayoutParams.h());
            if (this.constrainedChildren.contains(child)) {
                return;
            }
            this.constrainedChildren.add(child);
        }
    }

    public final void C(View child, int widthMeasureSpec, int heightMeasureSpec) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        int maxWidth = divLayoutParams.getMaxWidth();
        ((ViewGroup.MarginLayoutParams) divLayoutParams).width = -2;
        divLayoutParams.p(Integer.MAX_VALUE);
        measureChildWithMargins(child, widthMeasureSpec, 0, heightMeasureSpec, 0);
        ((ViewGroup.MarginLayoutParams) divLayoutParams).width = -3;
        divLayoutParams.p(maxWidth);
        this.totalConstrainedLength = p(this.totalConstrainedLength, child.getMeasuredWidth() + divLayoutParams.c());
        this.constrainedChildren.add(child);
    }

    public final void E(View child, int widthMeasureSpec, int heightMeasureSpec, boolean considerHeight) {
        if (odc.e(heightMeasureSpec)) {
            measureChildWithMargins(child, widthMeasureSpec, 0, odc.h(0), 0);
            return;
        }
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        ((ViewGroup.MarginLayoutParams) divLayoutParams).height = -2;
        measureChildWithMargins(child, widthMeasureSpec, 0, heightMeasureSpec, 0);
        ((ViewGroup.MarginLayoutParams) divLayoutParams).height = -1;
        if (considerHeight) {
            this.totalMatchParentLength = p(this.totalMatchParentLength, child.getMeasuredHeight());
        }
    }

    public final void F(View child, int heightMeasureSpec) {
        if (u(child, heightMeasureSpec)) {
            I(child, odc.h(this.maxCrossSize + getHorizontalPaddings$div_release()), heightMeasureSpec, false, true);
            this.skippedMatchParentChildren.remove(child);
        }
    }

    public final void G(View child, int widthMeasureSpec, int heightMeasureSpec) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        ((ViewGroup.MarginLayoutParams) divLayoutParams).width = -2;
        measureChildWithMargins(child, widthMeasureSpec, 0, heightMeasureSpec, 0);
        ((ViewGroup.MarginLayoutParams) divLayoutParams).width = -1;
        this.totalMatchParentLength = p(this.totalMatchParentLength, child.getMeasuredWidth() + divLayoutParams.c());
    }

    public final void I(View child, int widthMeasureSpec, int heightMeasureSpec, boolean considerWidth, boolean considerHeight) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        int i = ((ViewGroup.MarginLayoutParams) divLayoutParams).height;
        if (i == -3) {
            B(child, widthMeasureSpec, heightMeasureSpec, considerHeight);
        } else if (i != -1) {
            measureChildWithMargins(child, widthMeasureSpec, 0, heightMeasureSpec, 0);
        } else {
            E(child, widthMeasureSpec, heightMeasureSpec, considerHeight);
        }
        this.childMeasuredState = View.combineMeasuredStates(this.childMeasuredState, child.getMeasuredState());
        if (considerWidth) {
            V(widthMeasureSpec, child.getMeasuredWidth() + divLayoutParams.c());
        }
        if (considerHeight) {
            this.totalLength = p(this.totalLength, child.getMeasuredHeight() + divLayoutParams.h());
        }
    }

    public final boolean J(int delta, int spec) {
        if (!this.skippedMatchParentChildren.isEmpty()) {
            return true;
        }
        if (!odc.f(spec)) {
            if (delta < 0) {
                if (this.totalConstrainedLength > 0 || this.totalWeight > 0.0f) {
                    return true;
                }
            } else if (odc.e(spec) && delta > 0 && this.totalWeight > 0.0f) {
                return true;
            }
        }
        return false;
    }

    public final int K(View child, int heightMeasureSpec, int width) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        child.measure(odc.h(width), DivViewGroup.INSTANCE.a(heightMeasureSpec, divLayoutParams.h() + getVerticalPaddings$div_release(), ((ViewGroup.MarginLayoutParams) divLayoutParams).height, child.getMinimumHeight(), divLayoutParams.getMaxHeight()));
        return View.combineMeasuredStates(this.childMeasuredState, child.getMeasuredState() & (-16777216));
    }

    public final void L(View child, int widthMeasureSpec, int maxWidth, int height) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        int i = ((ViewGroup.MarginLayoutParams) divLayoutParams).width;
        if (i == -1) {
            if (maxWidth == 0) {
                ((ViewGroup.MarginLayoutParams) divLayoutParams).width = -3;
            } else {
                widthMeasureSpec = odc.h(maxWidth);
            }
        }
        int iA = DivViewGroup.INSTANCE.a(widthMeasureSpec, getHorizontalPaddings$div_release() + divLayoutParams.c(), ((ViewGroup.MarginLayoutParams) divLayoutParams).width, child.getMinimumWidth(), divLayoutParams.getMaxWidth());
        ((ViewGroup.MarginLayoutParams) divLayoutParams).width = i;
        child.measure(iA, odc.h(height));
        this.childMeasuredState = View.combineMeasuredStates(this.childMeasuredState, child.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
    }

    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    public final void M(int widthMeasureSpec, int widthSize, int heightMeasureSpec) {
        int i = widthSize - this.totalLength;
        List list = this.constrainedChildren;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (q((View) it.next()) != Integer.MAX_VALUE) {
                }
            }
            if (!J(i, widthMeasureSpec)) {
                return;
            }
        } else if (!J(i, widthMeasureSpec)) {
            return;
        }
        this.totalLength = 0;
        P(widthMeasureSpec, heightMeasureSpec, i);
        S(widthMeasureSpec, heightMeasureSpec, i);
        this.totalLength += getHorizontalPaddings$div_release();
    }

    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    public final void N(int widthMeasureSpec, int heightSize, int heightSpec, int initialMaxWidth) {
        int i = heightSize - this.totalLength;
        List list = this.constrainedChildren;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (o((View) it.next()) != Integer.MAX_VALUE) {
                }
            }
            if (!J(i, heightSpec)) {
                return;
            }
        } else if (!J(i, heightSpec)) {
            return;
        }
        this.totalLength = 0;
        O(widthMeasureSpec, heightSpec, i);
        R(widthMeasureSpec, heightSpec, initialMaxWidth, i);
        this.totalLength += getVerticalPaddings$div_release();
    }

    public final void O(int widthMeasureSpec, int heightMeasureSpec, int delta) {
        int iN = n(delta, heightMeasureSpec);
        if (iN >= 0) {
            for (View view : this.constrainedChildren) {
                if (o(view) != Integer.MAX_VALUE) {
                    L(view, widthMeasureSpec, this.maxCrossSize, Math.min(view.getMeasuredHeight(), o(view)));
                }
            }
            return;
        }
        List list = this.constrainedChildren;
        if (list.size() > 1) {
            c81.B(list, new Comparator() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final int compare(T t, T t2) {
                    View view2 = (View) t2;
                    View view3 = (View) t;
                    return a.d(Float.valueOf(view2.getMinimumHeight() / view2.getMeasuredHeight()), Float.valueOf(view3.getMinimumHeight() / view3.getMeasuredHeight()));
                }
            });
        }
        for (View view2 : this.constrainedChildren) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
            DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
            int measuredHeight = view2.getMeasuredHeight();
            int iH = divLayoutParams.h() + measuredHeight;
            L(view2, widthMeasureSpec, this.maxCrossSize, wn8.g(wn8.d(s86.c((iH / this.totalConstrainedLength) * iN) + measuredHeight, view2.getMinimumHeight()), divLayoutParams.getMaxHeight()));
            this.childMeasuredState = View.combineMeasuredStates(this.childMeasuredState, view2.getMeasuredState() & 16777216);
            this.totalConstrainedLength -= iH;
            iN -= view2.getMeasuredHeight() - measuredHeight;
        }
    }

    public final void P(int widthMeasureSpec, int heightMeasureSpec, int delta) {
        int iN = n(delta, widthMeasureSpec);
        if (iN >= 0) {
            for (View view : this.constrainedChildren) {
                if (q(view) != Integer.MAX_VALUE) {
                    K(view, heightMeasureSpec, Math.min(view.getMeasuredWidth(), q(view)));
                }
            }
            return;
        }
        List list = this.constrainedChildren;
        if (list.size() > 1) {
            c81.B(list, new Comparator() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final int compare(T t, T t2) {
                    View view2 = (View) t2;
                    View view3 = (View) t;
                    return a.d(Float.valueOf(view2.getMinimumWidth() / view2.getMeasuredWidth()), Float.valueOf(view3.getMinimumWidth() / view3.getMeasuredWidth()));
                }
            });
        }
        for (View view2 : this.constrainedChildren) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
            DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
            int measuredWidth = view2.getMeasuredWidth();
            int iC = divLayoutParams.c() + measuredWidth;
            K(view2, heightMeasureSpec, wn8.g(wn8.d(s86.c((iC / this.totalConstrainedLength) * iN) + measuredWidth, view2.getMinimumWidth()), divLayoutParams.getMaxWidth()));
            this.childMeasuredState = View.combineMeasuredStates(this.childMeasuredState, view2.getMeasuredState() & 16777216);
            this.totalConstrainedLength -= iC;
            iN -= view2.getMeasuredWidth() - measuredWidth;
        }
    }

    public final void Q(View child, int heightMeasureSpec) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        int i = ((ViewGroup.MarginLayoutParams) ((DivLayoutParams) layoutParams)).height;
        if (i == -1 || i == -3) {
            K(child, heightMeasureSpec, child.getMeasuredWidth());
        }
    }

    public final void R(int widthMeasureSpec, int heightMeasureSpec, int initialMaxWidth, int delta) {
        int iN = n(delta, heightMeasureSpec);
        float fL = this.totalWeight;
        int i = this.maxCrossSize;
        this.maxCrossSize = 0;
        int childCount = getChildCount();
        int i2 = iN;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                if (((ViewGroup.MarginLayoutParams) divLayoutParams).height == -1) {
                    if (iN > 0) {
                        int iL = (int) ((l(divLayoutParams) * i2) / fL);
                        fL -= l(divLayoutParams);
                        i2 -= iL;
                        L(childAt, widthMeasureSpec, i, iL);
                    } else if (this.skippedMatchParentChildren.contains(childAt)) {
                        L(childAt, widthMeasureSpec, i, 0);
                    }
                }
                V(widthMeasureSpec, childAt.getMeasuredWidth() + divLayoutParams.c());
                this.totalLength = p(this.totalLength, childAt.getMeasuredHeight() + divLayoutParams.h());
            }
        }
        this.maxCrossSize = Math.max(initialMaxWidth, this.maxCrossSize + getHorizontalPaddings$div_release());
        ae5 ae5Var = ae5.a;
        Integer numValueOf = Integer.valueOf(i);
        Integer numValueOf2 = Integer.valueOf(this.maxCrossSize);
        if (xi.o()) {
            xi.b("Width of vertical container changed after remeasuring", numValueOf, numValueOf2);
        }
    }

    public final void S(int widthMeasureSpec, int heightMeasureSpec, int delta) {
        int iN = n(delta, widthMeasureSpec);
        float fK = this.totalWeight;
        this.maxCrossSize = 0;
        this.maxBaselineAscent = -1;
        this.maxBaselineDescent = -1;
        int childCount = getChildCount();
        int i = iN;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                if (((ViewGroup.MarginLayoutParams) divLayoutParams).width == -1) {
                    if (iN > 0) {
                        int iK = (int) ((k(divLayoutParams) * i) / fK);
                        fK -= k(divLayoutParams);
                        i -= iK;
                        K(childAt, heightMeasureSpec, iK);
                    } else {
                        K(childAt, heightMeasureSpec, 0);
                    }
                }
                V(heightMeasureSpec, childAt.getMeasuredHeight() + divLayoutParams.h());
                this.totalLength = p(this.totalLength, childAt.getMeasuredWidth() + divLayoutParams.c());
                U(childAt);
            }
        }
    }

    public final void T(View child, int left, int top, int width, int height) {
        child.layout(left, top, width + left, height + top);
    }

    public final void U(View child) {
        int baseline;
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        if (divLayoutParams.getIsBaselineAligned() && (baseline = child.getBaseline()) != -1) {
            this.maxBaselineAscent = Math.max(this.maxBaselineAscent, ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin + baseline);
            this.maxBaselineDescent = Math.max(this.maxBaselineDescent, (child.getMeasuredHeight() - baseline) - ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin);
        }
    }

    public final void V(int measureSpec, int childSize) {
        if (odc.e(measureSpec)) {
            return;
        }
        this.maxCrossSize = Math.max(this.maxCrossSize, childSize);
    }

    public final void a(View child, int heightMeasureSpec, boolean measureChild) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        if (((ViewGroup.MarginLayoutParams) divLayoutParams).height != -1) {
            return;
        }
        if (measureChild) {
            this.maxCrossSize = Math.max(this.maxCrossSize, divLayoutParams.h());
        } else {
            K(child, heightMeasureSpec, child.getMeasuredWidth());
            V(heightMeasureSpec, child.getMeasuredHeight() + divLayoutParams.h());
        }
    }

    public final void b(View child, int widthMeasureSpec) {
        if (v(child, widthMeasureSpec)) {
            return;
        }
        int i = this.totalLength;
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        this.totalLength = p(i, ((DivLayoutParams) layoutParams).c());
    }

    public final void c(int widthMeasureSpec, int heightMeasureSpec) {
        if (odc.e(widthMeasureSpec)) {
            return;
        }
        if (this.maxCrossSize == 0) {
            for (View view : this.crossMatchParentChildren) {
                I(view, widthMeasureSpec, heightMeasureSpec, true, false);
                this.skippedMatchParentChildren.remove(view);
            }
            return;
        }
        for (View view2 : this.crossMatchParentChildren) {
            int i = this.maxCrossSize;
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
            this.maxCrossSize = Math.max(i, ((DivLayoutParams) layoutParams).c());
        }
    }

    public final zfb d(Canvas canvas, int left, int top, int right, int bottom) {
        Drawable drawable = this.dividerDrawable;
        if (drawable == null) {
            return null;
        }
        float f = (left + right) / 2.0f;
        float f2 = (top + bottom) / 2.0f;
        float f3 = this.dividerWidth / 2.0f;
        float f4 = this.dividerHeight / 2.0f;
        drawable.setBounds(Math.max((int) (f - f3), left), Math.max((int) (f2 - f4), top), Math.min((int) (f + f3), right), Math.min((int) (f2 + f4), bottom));
        drawable.draw(canvas);
        return zfb.a;
    }

    public float getAspectRatio() {
        return ((Number) this.aspectRatio.getValue(this, A[1])).floatValue();
    }

    @Override
    public int getBaseline() {
        if (!w()) {
            int i = this.maxBaselineAscent;
            return i != -1 ? i + getPaddingTop() : super.getBaseline();
        }
        View childAt = getChildAt(0);
        if (childAt == null) {
            return super.getBaseline();
        }
        int baseline = childAt.getBaseline();
        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        return baseline + ((ViewGroup.MarginLayoutParams) ((DivLayoutParams) layoutParams)).topMargin + getPaddingTop();
    }

    public final Drawable getDividerDrawable() {
        return this.dividerDrawable;
    }

    public final int getOrientation() {
        return ((Number) this.orientation.getValue(this, A[0])).intValue();
    }

    public final int getShowDividers() {
        return ((Number) this.showDividers.getValue(this, A[2])).intValue();
    }

    public final zfb h(Canvas canvas, int left) {
        return d(canvas, left, getPaddingTop() + this.dividerMarginTop, left + this.dividerWidth, (getHeight() - getPaddingBottom()) - this.dividerMarginBottom);
    }

    @Override
    public DivLayoutParams generateDefaultLayoutParams() {
        return w() ? new DivLayoutParams(-1, -2) : new DivLayoutParams(-2, -2);
    }

    public final int j(int index) {
        return index == this.firstVisibleChildIndex ? this.offsetsHolder.a() : (int) (this.offsetsHolder.c() / 2);
    }

    public final float k(DivLayoutParams divLayoutParams) {
        return m(divLayoutParams.getHorizontalWeight(), ((ViewGroup.MarginLayoutParams) divLayoutParams).width);
    }

    public final float l(DivLayoutParams divLayoutParams) {
        return m(divLayoutParams.getVerticalWeight(), ((ViewGroup.MarginLayoutParams) divLayoutParams).height);
    }

    public final float m(float weight, int size) {
        if (weight > 0.0f) {
            return weight;
        }
        return size == -1 ? 1.0f : 0.0f;
    }

    public final int n(int delta, int spec) {
        int i;
        if (delta >= 0 || (i = this.totalMatchParentLength) <= 0) {
            return (delta < 0 || !odc.e(spec)) ? delta : delta + this.totalMatchParentLength;
        }
        return wn8.d(delta + i, 0);
    }

    public final int o(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        return ((DivLayoutParams) layoutParams).getMaxHeight();
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        if (this.dividerDrawable == null) {
            return;
        }
        if (w()) {
            f(canvas);
        } else {
            e(canvas);
        }
    }

    @Override
    public void onLayout(boolean changed, int l, int t, int r, int b) {
        if (w()) {
            y(l, t, r, b);
        } else {
            x(l, t, r, b);
        }
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i;
        this.totalLength = 0;
        this.maxCrossSize = 0;
        this.totalConstrainedLength = 0;
        this.totalMatchParentLength = 0;
        this.totalWeight = 0.0f;
        this.childMeasuredState = 0;
        Iterator it = ViewGroupKt.getChildren(this).iterator();
        int i2 = 0;
        while (true) {
            i = -1;
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            Object next = it.next();
            if (i2 < 0) {
                y71.u();
            }
            if (!(((View) next).getVisibility() == 8)) {
                break;
            } else {
                i2++;
            }
        }
        this.firstVisibleChildIndex = i2;
        int i3 = 0;
        for (Object obj : ViewGroupKt.getChildren(this)) {
            if (i3 < 0) {
                y71.u();
            }
            if (!(((View) obj).getVisibility() == 8)) {
                i = i3;
            }
            i3++;
        }
        this.lastVisibleChildIndex = i;
        if (w()) {
            H(widthMeasureSpec, heightMeasureSpec);
        } else {
            D(widthMeasureSpec, heightMeasureSpec);
        }
        this.constrainedChildren.clear();
        this.crossMatchParentChildren.clear();
        this.skippedMatchParentChildren.clear();
    }

    public final int p(int current, int additional) {
        return Math.max(current, additional + current);
    }

    public final int q(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        return ((DivLayoutParams) layoutParams).getMaxWidth();
    }

    public final int r(int measureSpec) {
        return View.resolveSizeAndState(Math.max(getSuggestedMinimumWidth(), this.totalLength), measureSpec, this.childMeasuredState);
    }

    @Override
    public void setAspectRatio(float f) {
        this.aspectRatio.setValue(this, A[1], Float.valueOf(f));
    }

    public final void setDividerDrawable(Drawable drawable) {
        if (y45.e(this.dividerDrawable, drawable)) {
            return;
        }
        this.dividerDrawable = drawable;
        this.dividerWidth = drawable != null ? drawable.getIntrinsicWidth() : 0;
        this.dividerHeight = drawable != null ? drawable.getIntrinsicHeight() : 0;
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public final void setDividerMargins(int left, int top, int right, int bottom) {
        this.dividerMarginLeft = left;
        this.dividerMarginRight = right;
        this.dividerMarginTop = top;
        this.dividerMarginBottom = bottom;
        requestLayout();
    }

    public final void setOrientation(int i) {
        this.orientation.setValue(this, A[0], Integer.valueOf(i));
    }

    public final void setShowDividers(int i) {
        this.showDividers.setValue(this, A[2], Integer.valueOf(i));
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public final boolean t(int dimension, int parentMeasureSpec) {
        return (dimension == -1 && odc.e(parentMeasureSpec)) ? false : true;
    }

    public final boolean u(View child, int heightMeasureSpec) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        return t(((ViewGroup.MarginLayoutParams) ((DivLayoutParams) layoutParams)).height, heightMeasureSpec);
    }

    public final boolean v(View child, int widthMeasureSpec) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        return t(((ViewGroup.MarginLayoutParams) ((DivLayoutParams) layoutParams)).width, widthMeasureSpec);
    }

    public final boolean w() {
        return getOrientation() == 1;
    }

    public final void z(View child, int widthMeasureSpec, int heightMeasureSpec) {
        if (v(child, widthMeasureSpec)) {
            ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
            y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
            DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
            int i = ((ViewGroup.MarginLayoutParams) divLayoutParams).width;
            if (i == -3) {
                C(child, widthMeasureSpec, heightMeasureSpec);
            } else if (i != -1) {
                measureChildWithMargins(child, widthMeasureSpec, 0, heightMeasureSpec, 0);
            } else {
                G(child, widthMeasureSpec, heightMeasureSpec);
            }
            this.childMeasuredState = View.combineMeasuredStates(this.childMeasuredState, child.getMeasuredState());
            V(heightMeasureSpec, child.getMeasuredHeight() + divLayoutParams.h());
            U(child);
            this.totalLength = p(this.totalLength, child.getMeasuredWidth() + divLayoutParams.c());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LinearContainerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public LinearContainerLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinearContainerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.maxBaselineAscent = -1;
        this.maxBaselineDescent = -1;
        this.orientation = odc.d(0, null, 2, null);
        this.aspectRatio = AspectView.x6.a();
        this.offsetsHolder = new DivViewGroup.b(this, 0.0f, 0.0f, 0, 7, null);
        this.firstVisibleChildIndex = -1;
        this.lastVisibleChildIndex = -1;
        this.showDividers = odc.d(0, null, 2, null);
        this.constrainedChildren = new ArrayList();
        this.skippedMatchParentChildren = new LinkedHashSet();
        this.crossMatchParentChildren = new LinkedHashSet();
    }
}
