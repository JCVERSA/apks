package com.yandex.div.core.widget.wraplayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.core.widget.AspectView;
import com.yandex.div.internal.widget.DivLayoutParams;
import com.yandex.div.internal.widget.DivViewGroup;
import defpackage.af5;
import defpackage.go8;
import defpackage.hb0;
import defpackage.odc;
import defpackage.pdc;
import defpackage.q15;
import defpackage.s15;
import defpackage.s86;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Ref$IntRef;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b+\n\u0002\u0010!\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b(\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002:\u0001&B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\b\u0001\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u000e2\b\b\u0001\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u000e2\b\b\u0001\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0012\u0010\u0010J\u001f\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J7\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ'\u0010#\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0007H\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u0014H\u0002¢\u0006\u0004\b&\u0010\u0019J\u0017\u0010'\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u0014H\u0002¢\u0006\u0004\b'\u0010\u0019J/\u0010*\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u000eH\u0002¢\u0006\u0004\b*\u0010+J7\u0010.\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0007H\u0002¢\u0006\u0004\b.\u0010/J\u001f\u00102\u001a\u00020\n2\u0006\u00100\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u0007H\u0002¢\u0006\u0004\b2\u0010\fJ\u001f\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u0002032\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b5\u00106J\u001f\u00109\u001a\u00020\n2\u0006\u00107\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0007H\u0002¢\u0006\u0004\b9\u0010\fJ\u001f\u0010;\u001a\u00020\u00072\u0006\u00104\u001a\u0002032\u0006\u0010:\u001a\u00020\u0007H\u0002¢\u0006\u0004\b;\u0010<J\u0017\u0010?\u001a\u00020\n2\u0006\u0010>\u001a\u00020=H\u0002¢\u0006\u0004\b?\u0010@J\u0017\u0010A\u001a\u00020\n2\u0006\u0010>\u001a\u00020=H\u0002¢\u0006\u0004\bA\u0010@J7\u0010B\u001a\u00020\n2\u0006\u0010>\u001a\u00020=2\u0006\u00100\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0007H\u0002¢\u0006\u0004\bB\u0010CJ7\u0010D\u001a\u00020\n2\u0006\u0010>\u001a\u00020=2\u0006\u00100\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0007H\u0002¢\u0006\u0004\bD\u0010CJC\u0010G\u001a\u0004\u0018\u00010\n2\b\u0010F\u001a\u0004\u0018\u00010E2\u0006\u0010>\u001a\u00020=2\u0006\u00100\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0007H\u0002¢\u0006\u0004\bG\u0010HJ\u0019\u0010I\u001a\u00020\u000e2\b\b\u0001\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\bI\u0010\u0010J\u0019\u0010J\u001a\u00020\u000e2\b\b\u0001\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\bJ\u0010\u0010J-\u0010K\u001a\u00020\n2\u0006\u00100\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0007¢\u0006\u0004\bK\u0010LJ-\u0010M\u001a\u00020\n2\u0006\u00100\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0007¢\u0006\u0004\bM\u0010LJ\u001f\u0010N\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0014¢\u0006\u0004\bN\u0010\fJ7\u0010P\u001a\u00020\n2\u0006\u0010O\u001a\u00020\u000e2\u0006\u00100\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0007H\u0014¢\u0006\u0004\bP\u0010QJ\u0017\u0010R\u001a\u00020\n2\u0006\u0010>\u001a\u00020=H\u0014¢\u0006\u0004\bR\u0010@J\u000f\u0010S\u001a\u00020\u0007H\u0016¢\u0006\u0004\bS\u0010TR0\u0010\\\u001a\u00020\u00072\u0006\u0010U\u001a\u00020\u00078\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0004\b\u0016\u0010V\u0012\u0004\bZ\u0010[\u001a\u0004\bW\u0010T\"\u0004\bX\u0010YR1\u0010b\u001a\u00020\u00072\u0006\u0010]\u001a\u00020\u00078F@FX\u0087\u008e\u0002¢\u0006\u0018\n\u0004\b'\u0010^\u0012\u0004\ba\u0010[\u001a\u0004\b_\u0010T\"\u0004\b`\u0010YR1\u0010f\u001a\u00020\u00072\u0006\u0010]\u001a\u00020\u00078F@FX\u0087\u008e\u0002¢\u0006\u0018\n\u0004\b\u000b\u0010^\u0012\u0004\be\u0010[\u001a\u0004\bc\u0010T\"\u0004\bd\u0010YR/\u0010k\u001a\u0004\u0018\u00010E2\b\u0010]\u001a\u0004\u0018\u00010E8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b#\u0010^\u001a\u0004\bg\u0010h\"\u0004\bi\u0010jR/\u0010n\u001a\u0004\u0018\u00010E2\b\u0010]\u001a\u0004\u0018\u00010E8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\bD\u0010^\u001a\u0004\bl\u0010h\"\u0004\bm\u0010jR\u0016\u0010p\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010oR\u001a\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00140q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010rR\u0016\u0010t\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010VR\u0016\u0010v\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bu\u0010VR\u0016\u0010x\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bw\u0010VR\u0016\u0010y\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bA\u0010VR\u0016\u0010{\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bz\u0010VR\u0016\u0010}\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b|\u0010VR\u0016\u0010\u007f\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b~\u0010VR\u0017\u0010\u0080\u0001\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b;\u0010VR\u0017\u0010\u0081\u0001\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b*\u0010VR\u0017\u0010\u0082\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010VR\u0017\u0010\u0083\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010VR\u001c\u0010\u0087\u0001\u001a\u00070\u0084\u0001R\u00020\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0018\u0010\u0089\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010VR2\u0010\u008f\u0001\u001a\u00030\u008a\u00012\u0007\u0010]\u001a\u00030\u008a\u00018V@VX\u0096\u008e\u0002¢\u0006\u0016\n\u0004\b\u001e\u0010^\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001\"\u0006\b\u008d\u0001\u0010\u008e\u0001R\u0016\u0010\u0091\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0090\u0001\u0010TR\u0016\u0010\u0093\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0092\u0001\u0010TR\u0016\u0010\u0095\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0094\u0001\u0010TR\u0016\u0010\u0097\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0096\u0001\u0010TR\u0016\u0010\u0099\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0098\u0001\u0010TR\u0016\u0010\u009b\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u009a\u0001\u0010TR\u0016\u0010\u009d\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u009c\u0001\u0010TR\u0016\u0010\u009f\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u009e\u0001\u0010TR\u0016\u0010¡\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b \u0001\u0010TR\u0016\u0010£\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b¢\u0001\u0010TR\u001b\u0010¥\u0001\u001a\u00020\u000e*\u0002038BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0085\u0001\u0010¤\u0001R\u001a\u0010¦\u0001\u001a\u00020\u000e*\u0002038BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b~\u0010¤\u0001R\u001d\u0010¨\u0001\u001a\u00020\u000e*\u0004\u0018\u00010\u00078BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0088\u0001\u0010§\u0001R\u0016\u0010ª\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b©\u0001\u0010TR\u0016\u0010¬\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b«\u0001\u0010TR\u0016\u0010®\u0001\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u00ad\u0001\u0010TR\u0019\u0010±\u0001\u001a\u0004\u0018\u00010\u00148BX\u0082\u0004¢\u0006\b\u001a\u0006\b¯\u0001\u0010°\u0001¨\u0006²\u0001"}, d2 = {"Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout;", "Lcom/yandex/div/internal/widget/DivViewGroup;", "Lcom/yandex/div/core/widget/AspectView;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "", "widthMeasureSpec", "heightMeasureSpec", "Lzfb;", "e", "(II)V", hb0.KEY_NAME_MODE, "", "C", "(I)Z", "D", "B", "childIndex", "Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;", "line", "c", "(ILcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;)V", "b", "(Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;)V", "maxSize", "currentLength", "childLength", "lineItemsCount", "w", "(IIIII)Z", "measureSpec", "crossAlignment", "paddingAlongCrossAxis", "f", "(III)V", "spaceLine", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "d", PlayAudioData.TAG_SIZE, "isCrossAxis", "r", "(IIIZ)I", ICode.CALL.CALL_KEY_STATE, "tooSmallState", "s", "(IIIII)I", TtmlNode.LEFT, TtmlNode.RIGHT, "x", "Landroid/view/View;", "view", "t", "(Landroid/view/View;Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;)I", "top", "bottom", "y", "lineWidth", "q", "(Landroid/view/View;I)I", "Landroid/graphics/Canvas;", "canvas", "j", "(Landroid/graphics/Canvas;)V", CmcdData.OBJECT_TYPE_MANIFEST, CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(Landroid/graphics/Canvas;IIII)V", GslbInterceptor.HEADER_KEY_GSLB, "Landroid/graphics/drawable/Drawable;", "separator", CmcdData.STREAMING_FORMAT_HLS, "(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;IIII)Lzfb;", "z", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "setSeparatorMargins", "(IIII)V", "setLineSeparatorMargins", "onMeasure", "changed", "onLayout", "(ZIIII)V", "dispatchDraw", "getBaseline", "()I", ES6Iterator.VALUE_PROPERTY, "I", "getWrapDirection", "setWrapDirection", "(I)V", "getWrapDirection$annotations", "()V", "wrapDirection", "<set-?>", "Lgo8;", "getShowSeparators", "setShowSeparators", "getShowSeparators$annotations", "showSeparators", "getShowLineSeparators", "setShowLineSeparators", "getShowLineSeparators$annotations", "showLineSeparators", "getSeparatorDrawable", "()Landroid/graphics/drawable/Drawable;", "setSeparatorDrawable", "(Landroid/graphics/drawable/Drawable;)V", "separatorDrawable", "getLineSeparatorDrawable", "setLineSeparatorDrawable", "lineSeparatorDrawable", "Z", "isRowDirection", "", "Ljava/util/List;", "lines", "childState", "k", "separatorMarginTop", CmcdData.STREAM_TYPE_LIVE, "separatorMarginBottom", "separatorMarginLeft", "n", "separatorMarginRight", "o", "lineSeparatorMarginTop", TtmlNode.TAG_P, "lineSeparatorMarginBottom", "lineSeparatorMarginLeft", "lineSeparatorMarginRight", "middleLineSeparatorOffset", "edgeLineSeparatorOffset", "Lcom/yandex/div/internal/widget/DivViewGroup$b;", "u", "Lcom/yandex/div/internal/widget/DivViewGroup$b;", "offsetsHolder", "v", "tempSumCrossSize", "", "getAspectRatio", "()F", "setAspectRatio", "(F)V", "aspectRatio", "getSeparatorLength", "separatorLength", "getLineSeparatorLength", "lineSeparatorLength", "getEdgeSeparatorsLength", "edgeSeparatorsLength", "getEdgeLineSeparatorsLength", "edgeLineSeparatorsLength", "getStartSeparatorLength", "startSeparatorLength", "getMiddleSeparatorLength", "middleSeparatorLength", "getEndSeparatorLength", "endSeparatorLength", "getStartLineSeparatorLength", "startLineSeparatorLength", "getMiddleLineSeparatorLength", "middleLineSeparatorLength", "getEndLineSeparatorLength", "endLineSeparatorLength", "(Landroid/view/View;)Z", "isHidden", "hasIncorrectSize", "(Ljava/lang/Integer;)Z", "isIncorrectForCrossAxis", "getVisibleLinesCount", "visibleLinesCount", "getLargestMainSize", "largestMainSize", "getSumOfCrossSize", "sumOfCrossSize", "getFirstVisibleLine", "()Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout$a;", "firstVisibleLine", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class WrapContainerLayout extends DivViewGroup implements AspectView {
    public static final af5[] x = {xq8.f(new MutablePropertyReference1Impl(WrapContainerLayout.class, "showSeparators", "getShowSeparators()I", 0)), xq8.f(new MutablePropertyReference1Impl(WrapContainerLayout.class, "showLineSeparators", "getShowLineSeparators()I", 0)), xq8.f(new MutablePropertyReference1Impl(WrapContainerLayout.class, "separatorDrawable", "getSeparatorDrawable()Landroid/graphics/drawable/Drawable;", 0)), xq8.f(new MutablePropertyReference1Impl(WrapContainerLayout.class, "lineSeparatorDrawable", "getLineSeparatorDrawable()Landroid/graphics/drawable/Drawable;", 0)), xq8.f(new MutablePropertyReference1Impl(WrapContainerLayout.class, "aspectRatio", "getAspectRatio()F", 0))};

    public int wrapDirection;

    public final go8 showSeparators;

    public final go8 showLineSeparators;

    public final go8 separatorDrawable;

    public final go8 lineSeparatorDrawable;

    public boolean isRowDirection;

    public final List lines;

    public int childState;

    public int separatorMarginTop;

    public int separatorMarginBottom;

    public int separatorMarginLeft;

    public int separatorMarginRight;

    public int lineSeparatorMarginTop;

    public int lineSeparatorMarginBottom;

    public int lineSeparatorMarginLeft;

    public int lineSeparatorMarginRight;

    public int middleLineSeparatorOffset;

    public int edgeLineSeparatorOffset;

    public final DivViewGroup.b offsetsHolder;

    public int tempSumCrossSize;

    public final go8 aspectRatio;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrapContainerLayout(Context context) {
        super(context, null, 0, 6, null);
        y45.j(context, "context");
        this.showSeparators = odc.d(0, null, 2, null);
        this.showLineSeparators = odc.d(0, null, 2, null);
        this.separatorDrawable = odc.d(null, null, 2, null);
        this.lineSeparatorDrawable = odc.d(null, null, 2, null);
        this.isRowDirection = true;
        this.lines = new ArrayList();
        this.offsetsHolder = new DivViewGroup.b(this, 0.0f, 0.0f, 0, 7, null);
        this.aspectRatio = AspectView.x6.a();
    }

    private final int getEdgeLineSeparatorsLength() {
        return getStartLineSeparatorLength() + getEndLineSeparatorLength();
    }

    private final int getEdgeSeparatorsLength() {
        return getStartSeparatorLength() + getEndSeparatorLength();
    }

    private final int getEndLineSeparatorLength() {
        if (B(getShowLineSeparators())) {
            return getLineSeparatorLength();
        }
        return 0;
    }

    private final int getEndSeparatorLength() {
        if (B(getShowSeparators())) {
            return getSeparatorLength();
        }
        return 0;
    }

    private final a getFirstVisibleLine() {
        Object obj = null;
        if (!this.isRowDirection && pdc.f(this)) {
            List list = this.lines;
            ListIterator listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                objPrevious = listIterator.previous();
                if (((a) objPrevious).m()) {
                    obj = objPrevious;
                    break;
                }
            }
        } else {
            for (Object objPrevious : this.lines) {
                if (((a) objPrevious).m()) {
                    obj = objPrevious;
                    break;
                }
            }
        }
        return (a) obj;
    }

    private final int getLargestMainSize() {
        Integer num;
        Iterator it = this.lines.iterator();
        if (it.hasNext()) {
            Integer numValueOf = Integer.valueOf(((a) it.next()).h());
            while (it.hasNext()) {
                Integer numValueOf2 = Integer.valueOf(((a) it.next()).h());
                if (numValueOf.compareTo(numValueOf2) < 0) {
                    numValueOf = numValueOf2;
                }
            }
            num = numValueOf;
        } else {
            num = null;
        }
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    private final int getLineSeparatorLength() {
        int intrinsicWidth;
        int i;
        if (this.isRowDirection) {
            Drawable lineSeparatorDrawable = getLineSeparatorDrawable();
            intrinsicWidth = (lineSeparatorDrawable != null ? lineSeparatorDrawable.getIntrinsicHeight() : 0) + this.lineSeparatorMarginTop;
            i = this.lineSeparatorMarginBottom;
        } else {
            Drawable lineSeparatorDrawable2 = getLineSeparatorDrawable();
            intrinsicWidth = (lineSeparatorDrawable2 != null ? lineSeparatorDrawable2.getIntrinsicWidth() : 0) + this.lineSeparatorMarginLeft;
            i = this.lineSeparatorMarginRight;
        }
        return intrinsicWidth + i;
    }

    private final int getMiddleLineSeparatorLength() {
        if (D(getShowLineSeparators())) {
            return getLineSeparatorLength();
        }
        return 0;
    }

    private final int getMiddleSeparatorLength() {
        if (D(getShowSeparators())) {
            return getSeparatorLength();
        }
        return 0;
    }

    private final int getSeparatorLength() {
        int intrinsicHeight;
        int i;
        if (this.isRowDirection) {
            Drawable separatorDrawable = getSeparatorDrawable();
            intrinsicHeight = (separatorDrawable != null ? separatorDrawable.getIntrinsicWidth() : 0) + this.separatorMarginLeft;
            i = this.separatorMarginRight;
        } else {
            Drawable separatorDrawable2 = getSeparatorDrawable();
            intrinsicHeight = (separatorDrawable2 != null ? separatorDrawable2.getIntrinsicHeight() : 0) + this.separatorMarginTop;
            i = this.separatorMarginBottom;
        }
        return intrinsicHeight + i;
    }

    public static void getShowLineSeparators$annotations() {
    }

    public static void getShowSeparators$annotations() {
    }

    private final int getStartLineSeparatorLength() {
        if (C(getShowLineSeparators())) {
            return getLineSeparatorLength();
        }
        return 0;
    }

    private final int getStartSeparatorLength() {
        if (C(getShowSeparators())) {
            return getSeparatorLength();
        }
        return 0;
    }

    private final int getSumOfCrossSize() {
        Iterator it = this.lines.iterator();
        int iB = 0;
        while (it.hasNext()) {
            iB += ((a) it.next()).b();
        }
        return iB + getEdgeLineSeparatorsLength() + (getMiddleLineSeparatorLength() * (getVisibleLinesCount() - 1));
    }

    private final int getVisibleLinesCount() {
        List list = this.lines;
        int i = 0;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((a) it.next()).g() > 0 && (i = i + 1) < 0) {
                    y71.t();
                }
            }
        }
        return i;
    }

    public static void getWrapDirection$annotations() {
    }

    public static final void k(WrapContainerLayout wrapContainerLayout, Canvas canvas, int i) {
        wrapContainerLayout.g(canvas, wrapContainerLayout.getPaddingLeft(), i - wrapContainerLayout.getLineSeparatorLength(), wrapContainerLayout.getWidth() - wrapContainerLayout.getPaddingRight(), i);
    }

    public static final void l(WrapContainerLayout wrapContainerLayout, Canvas canvas, Ref$IntRef ref$IntRef, Ref$IntRef ref$IntRef2, int i) {
        wrapContainerLayout.i(canvas, i - wrapContainerLayout.getSeparatorLength(), ref$IntRef.element, i, ref$IntRef2.element);
    }

    public static final void n(WrapContainerLayout wrapContainerLayout, Canvas canvas, int i) {
        wrapContainerLayout.g(canvas, i - wrapContainerLayout.getLineSeparatorLength(), wrapContainerLayout.getPaddingTop(), i, wrapContainerLayout.getHeight() - wrapContainerLayout.getPaddingBottom());
    }

    public static final void o(WrapContainerLayout wrapContainerLayout, Canvas canvas, Ref$IntRef ref$IntRef, Ref$IntRef ref$IntRef2, int i) {
        wrapContainerLayout.i(canvas, ref$IntRef.element, i - wrapContainerLayout.getSeparatorLength(), ref$IntRef2.element, i);
    }

    public final boolean A(int mode) {
        return pdc.f(this) ? C(mode) : B(mode);
    }

    public final boolean B(int mode) {
        return (mode & 4) != 0;
    }

    public final boolean C(int mode) {
        return (mode & 1) != 0;
    }

    public final boolean D(int mode) {
        return (mode & 2) != 0;
    }

    public final void a(a spaceLine) {
        this.lines.add(0, spaceLine);
        this.lines.add(spaceLine);
    }

    public final void b(a line) {
        this.lines.add(line);
        if (line.i() > 0) {
            line.o(Math.max(line.b(), line.i() + line.j()));
        }
        this.tempSumCrossSize += line.b();
    }

    public final void c(int childIndex, a line) {
        if (childIndex != getChildCount() - 1 || line.g() == 0) {
            return;
        }
        b(line);
    }

    public final void d(a spaceLine) {
        for (int i = 1; i < this.lines.size(); i += 2) {
            this.lines.add(i, spaceLine);
        }
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.dispatchDraw(canvas);
        if (getSeparatorDrawable() == null && getLineSeparatorDrawable() == null) {
            return;
        }
        if (getShowSeparators() == 0 && getShowLineSeparators() == 0) {
            return;
        }
        if (this.isRowDirection) {
            j(canvas);
        } else {
            m(canvas);
        }
    }

    public final void e(int widthMeasureSpec, int heightMeasureSpec) {
        int edgeSeparatorsLength;
        int edgeSeparatorsLength2;
        int i;
        int i2;
        this.tempSumCrossSize = getEdgeLineSeparatorsLength();
        int i3 = this.isRowDirection ? widthMeasureSpec : heightMeasureSpec;
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        int edgeSeparatorsLength3 = getEdgeSeparatorsLength() + (this.isRowDirection ? getHorizontalPaddings$div_release() : getVerticalPaddings$div_release());
        a aVar = new a(0, edgeSeparatorsLength3, 0, 5, null);
        a aVar2 = aVar;
        int i4 = 0;
        int iMax = Integer.MIN_VALUE;
        for (Object obj : ViewGroupKt.getChildren(this)) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                y71.u();
            }
            View view = (View) obj;
            if (u(view)) {
                aVar2.q(aVar2.e() + 1);
                aVar2.r(aVar2.f() + 1);
                c(i4, aVar2);
            } else {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                int horizontalPaddings$div_release = getHorizontalPaddings$div_release() + divLayoutParams.c();
                int verticalPaddings$div_release = getVerticalPaddings$div_release() + divLayoutParams.h();
                if (this.isRowDirection) {
                    edgeSeparatorsLength = horizontalPaddings$div_release + getEdgeSeparatorsLength();
                    edgeSeparatorsLength2 = this.tempSumCrossSize;
                } else {
                    edgeSeparatorsLength = horizontalPaddings$div_release + this.tempSumCrossSize;
                    edgeSeparatorsLength2 = getEdgeSeparatorsLength();
                }
                int i6 = verticalPaddings$div_release + edgeSeparatorsLength2;
                int i7 = edgeSeparatorsLength;
                DivViewGroup.Companion companion = DivViewGroup.INSTANCE;
                view.measure(companion.a(widthMeasureSpec, i7, ((ViewGroup.MarginLayoutParams) divLayoutParams).width, view.getMinimumWidth(), divLayoutParams.getMaxWidth()), companion.a(heightMeasureSpec, i6, ((ViewGroup.MarginLayoutParams) divLayoutParams).height, view.getMinimumHeight(), divLayoutParams.getMaxHeight()));
                this.childState = View.combineMeasuredStates(this.childState, view.getMeasuredState());
                int measuredWidth = view.getMeasuredWidth() + divLayoutParams.c();
                int measuredHeight = view.getMeasuredHeight() + divLayoutParams.h();
                if (this.isRowDirection) {
                    i2 = measuredWidth;
                    i = measuredHeight;
                } else {
                    i = measuredWidth;
                    i2 = measuredHeight;
                }
                int i8 = i;
                if (w(mode, size, aVar2.h(), i2, aVar2.f())) {
                    if (aVar2.g() > 0) {
                        b(aVar2);
                    }
                    aVar2 = new a(i4, edgeSeparatorsLength3, 1);
                    iMax = Integer.MIN_VALUE;
                } else {
                    if (aVar2.f() > 0) {
                        aVar2.s(aVar2.h() + getMiddleSeparatorLength());
                    }
                    aVar2.r(aVar2.f() + 1);
                }
                if (this.isRowDirection && divLayoutParams.getIsBaselineAligned()) {
                    aVar2.t(Math.max(aVar2.i(), view.getBaseline() + ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin));
                    aVar2.u(Math.max(aVar2.j(), (view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin) - view.getBaseline()));
                }
                aVar2.s(aVar2.h() + i2);
                iMax = Math.max(iMax, i8);
                aVar2.o(Math.max(aVar2.b(), iMax));
                c(i4, aVar2);
            }
            i4 = i5;
        }
    }

    public final void f(int measureSpec, int crossAlignment, int paddingAlongCrossAxis) {
        this.middleLineSeparatorOffset = 0;
        this.edgeLineSeparatorOffset = 0;
        if (this.lines.size() != 0 && View.MeasureSpec.getMode(measureSpec) == 1073741824) {
            int size = View.MeasureSpec.getSize(measureSpec);
            if (this.lines.size() == 1) {
                ((a) this.lines.get(0)).o(size - paddingAlongCrossAxis);
                return;
            }
            int sumOfCrossSize = (size - getSumOfCrossSize()) + paddingAlongCrossAxis;
            if (crossAlignment != 1) {
                if (crossAlignment != 5) {
                    if (crossAlignment != 16) {
                        if (crossAlignment != 80) {
                            if (crossAlignment != 16777216) {
                                if (crossAlignment != 33554432) {
                                    if (crossAlignment != 67108864) {
                                        if (crossAlignment != 268435456) {
                                            if (crossAlignment != 536870912) {
                                                if (crossAlignment != 1073741824) {
                                                    return;
                                                }
                                            }
                                        }
                                    }
                                    a aVar = new a(0, 0, 0, 7, null);
                                    int iC = s86.c(DivViewGroup.INSTANCE.d(sumOfCrossSize, this.lines.size()));
                                    aVar.o(iC);
                                    int i = iC / 2;
                                    this.middleLineSeparatorOffset = i;
                                    this.edgeLineSeparatorOffset = i;
                                    d(aVar);
                                    a(aVar);
                                    return;
                                }
                                a aVar2 = new a(0, 0, 0, 7, null);
                                int iC2 = s86.c(DivViewGroup.INSTANCE.c(sumOfCrossSize, this.lines.size()));
                                aVar2.o(iC2);
                                this.middleLineSeparatorOffset = iC2 / 2;
                                d(aVar2);
                                return;
                            }
                            a aVar3 = new a(0, 0, 0, 7, null);
                            int iC3 = s86.c(DivViewGroup.INSTANCE.b(sumOfCrossSize, this.lines.size()));
                            aVar3.o(iC3);
                            this.middleLineSeparatorOffset = iC3;
                            this.edgeLineSeparatorOffset = iC3 / 2;
                            for (int i2 = 0; i2 < this.lines.size(); i2 += 3) {
                                this.lines.add(i2, aVar3);
                                this.lines.add(i2 + 2, aVar3);
                            }
                            return;
                        }
                    }
                }
                a aVar4 = new a(0, 0, 0, 7, null);
                aVar4.o(sumOfCrossSize);
                this.lines.add(0, aVar4);
                return;
            }
            a aVar5 = new a(0, 0, 0, 7, null);
            aVar5.o(sumOfCrossSize / 2);
            a(aVar5);
        }
    }

    public final void g(Canvas canvas, int left, int top, int right, int bottom) {
        h(getLineSeparatorDrawable(), canvas, left + this.lineSeparatorMarginLeft, top - this.lineSeparatorMarginTop, right - this.lineSeparatorMarginRight, bottom + this.lineSeparatorMarginBottom);
    }

    public float getAspectRatio() {
        return ((Number) this.aspectRatio.getValue(this, x[4])).floatValue();
    }

    @Override
    public int getBaseline() {
        a firstVisibleLine = getFirstVisibleLine();
        return firstVisibleLine != null ? firstVisibleLine.i() + getPaddingTop() : super.getBaseline();
    }

    public final Drawable getLineSeparatorDrawable() {
        return (Drawable) this.lineSeparatorDrawable.getValue(this, x[3]);
    }

    public final Drawable getSeparatorDrawable() {
        return (Drawable) this.separatorDrawable.getValue(this, x[2]);
    }

    public final int getShowLineSeparators() {
        return ((Number) this.showLineSeparators.getValue(this, x[1])).intValue();
    }

    public final int getShowSeparators() {
        return ((Number) this.showSeparators.getValue(this, x[0])).intValue();
    }

    public final int getWrapDirection() {
        return this.wrapDirection;
    }

    public final zfb h(Drawable separator, Canvas canvas, int left, int top, int right, int bottom) {
        if (separator == null) {
            return null;
        }
        float f = (left + right) / 2.0f;
        float f2 = (top + bottom) / 2.0f;
        float intrinsicWidth = separator.getIntrinsicWidth() / 2.0f;
        float intrinsicHeight = separator.getIntrinsicHeight() / 2.0f;
        separator.setBounds((int) (f - intrinsicWidth), (int) (f2 - intrinsicHeight), (int) (f + intrinsicWidth), (int) (f2 + intrinsicHeight));
        separator.draw(canvas);
        return zfb.a;
    }

    public final void i(Canvas canvas, int left, int top, int right, int bottom) {
        h(getSeparatorDrawable(), canvas, left + this.separatorMarginLeft, top - this.separatorMarginTop, right - this.separatorMarginRight, bottom + this.separatorMarginBottom);
    }

    public final void j(Canvas canvas) {
        int right;
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        Ref$IntRef ref$IntRef2 = new Ref$IntRef();
        if (this.lines.size() > 0 && C(getShowLineSeparators())) {
            a firstVisibleLine = getFirstVisibleLine();
            int iA = firstVisibleLine != null ? firstVisibleLine.a() - firstVisibleLine.b() : 0;
            ref$IntRef.element = iA;
            k(this, canvas, iA - this.edgeLineSeparatorOffset);
        }
        boolean z = false;
        for (a aVar : this.lines) {
            if (aVar.g() != 0) {
                int iA2 = aVar.a();
                ref$IntRef2.element = iA2;
                ref$IntRef.element = iA2 - aVar.b();
                if (z && D(getShowLineSeparators())) {
                    k(this, canvas, ref$IntRef.element - this.middleLineSeparatorOffset);
                }
                s15 s15VarC = pdc.c(this, aVar.d(), aVar.f());
                int iB = s15VarC.b();
                int iC = s15VarC.c();
                int iF = s15VarC.f();
                if ((iF > 0 && iB <= iC) || (iF < 0 && iC <= iB)) {
                    right = 0;
                    boolean z2 = true;
                    while (true) {
                        View childAt = getChildAt(iB);
                        if (childAt != null && !u(childAt)) {
                            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                            y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                            DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                            int left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) divLayoutParams).leftMargin;
                            right = ((ViewGroup.MarginLayoutParams) divLayoutParams).rightMargin + childAt.getRight();
                            if (z2) {
                                if (z(getShowSeparators())) {
                                    l(this, canvas, ref$IntRef, ref$IntRef2, left - aVar.c());
                                }
                                z2 = false;
                            } else if (D(getShowSeparators())) {
                                l(this, canvas, ref$IntRef, ref$IntRef2, left - ((int) (aVar.l() / 2)));
                            }
                        }
                        if (iB == iC) {
                            break;
                        } else {
                            iB += iF;
                        }
                    }
                } else {
                    right = 0;
                }
                if (right > 0 && A(getShowSeparators())) {
                    l(this, canvas, ref$IntRef, ref$IntRef2, right + getSeparatorLength() + aVar.c());
                }
                z = true;
            }
        }
        if (ref$IntRef2.element <= 0 || !B(getShowLineSeparators())) {
            return;
        }
        k(this, canvas, ref$IntRef2.element + getLineSeparatorLength() + this.edgeLineSeparatorOffset);
    }

    public final void m(Canvas canvas) {
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        Ref$IntRef ref$IntRef2 = new Ref$IntRef();
        if (this.lines.size() > 0 && z(getShowLineSeparators())) {
            a firstVisibleLine = getFirstVisibleLine();
            int iK = firstVisibleLine != null ? firstVisibleLine.k() - firstVisibleLine.b() : 0;
            ref$IntRef.element = iK;
            n(this, canvas, iK - this.edgeLineSeparatorOffset);
        }
        Iterator it = pdc.c(this, 0, this.lines.size()).iterator();
        boolean z = false;
        while (it.hasNext()) {
            a aVar = (a) this.lines.get(((q15) it).nextInt());
            if (aVar.g() != 0) {
                int iK2 = aVar.k();
                ref$IntRef2.element = iK2;
                ref$IntRef.element = iK2 - aVar.b();
                if (z && D(getShowLineSeparators())) {
                    n(this, canvas, ref$IntRef.element - this.middleLineSeparatorOffset);
                }
                boolean z2 = true;
                z = getLineSeparatorDrawable() != null;
                int iF = aVar.f();
                int bottom = 0;
                for (int i = 0; i < iF; i++) {
                    View childAt = getChildAt(aVar.d() + i);
                    if (childAt != null && !u(childAt)) {
                        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                        int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin;
                        bottom = ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin + childAt.getBottom();
                        if (z2) {
                            if (C(getShowSeparators())) {
                                o(this, canvas, ref$IntRef, ref$IntRef2, top - aVar.c());
                            }
                            z2 = false;
                        } else if (D(getShowSeparators())) {
                            o(this, canvas, ref$IntRef, ref$IntRef2, top - ((int) (aVar.l() / 2)));
                        }
                    }
                }
                if (bottom > 0 && B(getShowSeparators())) {
                    o(this, canvas, ref$IntRef, ref$IntRef2, bottom + getSeparatorLength() + aVar.c());
                }
            }
        }
        if (ref$IntRef2.element <= 0 || !A(getShowLineSeparators())) {
            return;
        }
        n(this, canvas, ref$IntRef2.element + getLineSeparatorLength() + this.edgeLineSeparatorOffset);
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        if (this.isRowDirection) {
            x(left, right);
        } else {
            y(top, bottom);
        }
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int iMakeMeasureSpec;
        int mode;
        int size;
        this.lines.clear();
        this.childState = 0;
        int mode2 = View.MeasureSpec.getMode(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(widthMeasureSpec);
        int i = 1073741824;
        if (getAspectRatio() != 0.0f && mode2 == 1073741824) {
            int iC = s86.c(size2 / getAspectRatio());
            size = iC;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iC, 1073741824);
            mode = 1073741824;
        } else {
            iMakeMeasureSpec = heightMeasureSpec;
            mode = View.MeasureSpec.getMode(heightMeasureSpec);
            size = View.MeasureSpec.getSize(heightMeasureSpec);
        }
        e(widthMeasureSpec, iMakeMeasureSpec);
        if (this.isRowDirection) {
            f(iMakeMeasureSpec, getVerticalGravity$div_release(), getVerticalPaddings$div_release());
        } else {
            f(widthMeasureSpec, getHorizontalGravity$div_release(), getHorizontalPaddings$div_release());
        }
        int largestMainSize = this.isRowDirection ? getLargestMainSize() : getSumOfCrossSize() + getHorizontalPaddings$div_release();
        int sumOfCrossSize = this.isRowDirection ? getSumOfCrossSize() + getVerticalPaddings$div_release() : getLargestMainSize();
        this.childState = s(mode2, this.childState, size2, largestMainSize, 16777216);
        int iResolveSizeAndState = View.resolveSizeAndState(r(mode2, size2, largestMainSize, !this.isRowDirection), widthMeasureSpec, this.childState);
        if (!this.isRowDirection || getAspectRatio() == 0.0f || mode2 == 1073741824) {
            i = mode;
        } else {
            size = s86.c((16777215 & iResolveSizeAndState) / getAspectRatio());
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
        }
        this.childState = s(i, this.childState, size, sumOfCrossSize, 256);
        setMeasuredDimension(iResolveSizeAndState, View.resolveSizeAndState(r(i, size, sumOfCrossSize, this.isRowDirection), iMakeMeasureSpec, this.childState));
    }

    public final boolean p(View view) {
        if (this.isRowDirection) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            return v(layoutParams != null ? Integer.valueOf(layoutParams.height) : null);
        }
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        return v(layoutParams2 != null ? Integer.valueOf(layoutParams2.width) : null);
    }

    public final int q(View view, int lineWidth) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(DivViewGroup.INSTANCE.e(divLayoutParams.getGravity()), ViewCompat.getLayoutDirection(this));
        if (absoluteGravity != 1) {
            return absoluteGravity != 5 ? ((ViewGroup.MarginLayoutParams) divLayoutParams).leftMargin : (lineWidth - view.getMeasuredWidth()) - ((ViewGroup.MarginLayoutParams) divLayoutParams).rightMargin;
        }
        return (((lineWidth - view.getMeasuredWidth()) + ((ViewGroup.MarginLayoutParams) divLayoutParams).leftMargin) - ((ViewGroup.MarginLayoutParams) divLayoutParams).rightMargin) / 2;
    }

    public final int r(int mode, int size, int maxSize, boolean isCrossAxis) {
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    return size;
                }
                throw new IllegalStateException("Unknown size mode is set: " + mode);
            }
        } else {
            if (isCrossAxis) {
                return Math.min(size, maxSize);
            }
            if (maxSize > size || getVisibleLinesCount() > 1) {
                return size;
            }
        }
        return maxSize;
    }

    public final int s(int mode, int state, int size, int maxSize, int tooSmallState) {
        return (mode != 0 && size < maxSize) ? View.combineMeasuredStates(state, tooSmallState) : state;
    }

    @Override
    public void setAspectRatio(float f) {
        this.aspectRatio.setValue(this, x[4], Float.valueOf(f));
    }

    public final void setLineSeparatorDrawable(Drawable drawable) {
        this.lineSeparatorDrawable.setValue(this, x[3], drawable);
    }

    public final void setLineSeparatorMargins(int left, int top, int right, int bottom) {
        this.lineSeparatorMarginLeft = left;
        this.lineSeparatorMarginRight = right;
        this.lineSeparatorMarginTop = top;
        this.lineSeparatorMarginBottom = bottom;
        requestLayout();
    }

    public final void setSeparatorDrawable(Drawable drawable) {
        this.separatorDrawable.setValue(this, x[2], drawable);
    }

    public final void setSeparatorMargins(int left, int top, int right, int bottom) {
        this.separatorMarginLeft = left;
        this.separatorMarginRight = right;
        this.separatorMarginTop = top;
        this.separatorMarginBottom = bottom;
        requestLayout();
    }

    public final void setShowLineSeparators(int i) {
        this.showLineSeparators.setValue(this, x[1], Integer.valueOf(i));
    }

    public final void setShowSeparators(int i) {
        this.showSeparators.setValue(this, x[0], Integer.valueOf(i));
    }

    public final void setWrapDirection(int i) {
        if (this.wrapDirection != i) {
            this.wrapDirection = i;
            boolean z = true;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("Invalid value for the wrap direction is set: " + this.wrapDirection);
                }
                z = false;
            }
            this.isRowDirection = z;
            requestLayout();
        }
    }

    public final int t(View view, a line) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        int iF = DivViewGroup.INSTANCE.f(divLayoutParams.getGravity());
        if (iF == 16) {
            return (((line.b() - view.getMeasuredHeight()) + ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin) / 2;
        }
        if (iF != 80) {
            return divLayoutParams.getIsBaselineAligned() ? Math.max(line.i() - view.getBaseline(), ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin) : ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin;
        }
        return (line.b() - view.getMeasuredHeight()) - ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin;
    }

    public final boolean u(View view) {
        return view.getVisibility() == 8 || p(view);
    }

    public final boolean v(Integer num) {
        return num != null && num.intValue() == -1;
    }

    public final boolean w(int mode, int maxSize, int currentLength, int childLength, int lineItemsCount) {
        return mode != 0 && maxSize < (currentLength + childLength) + (lineItemsCount != 0 ? getMiddleSeparatorLength() : 0);
    }

    public final void x(int left, int right) {
        int paddingTop = getPaddingTop() + getStartLineSeparatorLength();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(getHorizontalGravity$div_release(), ViewCompat.getLayoutDirection(this));
        boolean z = false;
        for (a aVar : this.lines) {
            float paddingLeft = getPaddingLeft() + (pdc.f(this) ? getEndSeparatorLength() : getStartSeparatorLength());
            float fH = (right - left) - aVar.h();
            DivViewGroup.b bVar = this.offsetsHolder;
            bVar.d(fH, absoluteGravity, aVar.g());
            float fB = paddingLeft + bVar.b();
            aVar.w(bVar.c());
            aVar.p(bVar.a());
            if (aVar.g() > 0) {
                if (z) {
                    paddingTop += getMiddleLineSeparatorLength();
                }
                z = true;
            }
            s15 s15VarC = pdc.c(this, aVar.d(), aVar.f());
            int iB = s15VarC.b();
            int iC = s15VarC.c();
            int iF = s15VarC.f();
            if ((iF > 0 && iB <= iC) || (iF < 0 && iC <= iB)) {
                boolean z2 = false;
                while (true) {
                    View childAt = getChildAt(iB);
                    if (childAt == null || u(childAt)) {
                        y45.i(childAt, "child");
                        if (p(childAt)) {
                            childAt.layout(0, 0, 0, 0);
                        }
                    } else {
                        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                        float middleSeparatorLength = fB + ((ViewGroup.MarginLayoutParams) divLayoutParams).leftMargin;
                        if (z2) {
                            middleSeparatorLength += getMiddleSeparatorLength();
                        }
                        int iT = t(childAt, aVar) + paddingTop;
                        childAt.layout(s86.c(middleSeparatorLength), iT, s86.c(middleSeparatorLength) + childAt.getMeasuredWidth(), iT + childAt.getMeasuredHeight());
                        fB = middleSeparatorLength + childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) divLayoutParams).rightMargin + aVar.l();
                        z2 = true;
                    }
                    if (iB != iC) {
                        iB += iF;
                    }
                }
            }
            paddingTop += aVar.b();
            aVar.v(s86.c(fB));
            aVar.n(paddingTop);
        }
    }

    public final void y(int top, int bottom) {
        int paddingLeft = getPaddingLeft() + (pdc.f(this) ? getEndLineSeparatorLength() : getStartLineSeparatorLength());
        Iterator it = pdc.c(this, 0, this.lines.size()).iterator();
        boolean z = false;
        while (it.hasNext()) {
            a aVar = (a) this.lines.get(((q15) it).nextInt());
            float fH = (bottom - top) - aVar.h();
            float paddingTop = getPaddingTop() + getStartSeparatorLength();
            DivViewGroup.b bVar = this.offsetsHolder;
            bVar.d(fH, getVerticalGravity$div_release(), aVar.g());
            float fB = paddingTop + bVar.b();
            aVar.w(bVar.c());
            aVar.p(bVar.a());
            if (aVar.g() > 0) {
                if (z) {
                    paddingLeft += getMiddleLineSeparatorLength();
                }
                z = true;
            }
            int iF = aVar.f();
            boolean z2 = false;
            for (int i = 0; i < iF; i++) {
                View childAt = getChildAt(aVar.d() + i);
                if (childAt == null || u(childAt)) {
                    y45.i(childAt, "child");
                    if (p(childAt)) {
                        childAt.layout(0, 0, 0, 0);
                    }
                } else {
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                    DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                    float middleSeparatorLength = fB + ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin;
                    if (z2) {
                        middleSeparatorLength += getMiddleSeparatorLength();
                    }
                    int iQ = q(childAt, aVar.b()) + paddingLeft;
                    childAt.layout(iQ, s86.c(middleSeparatorLength), childAt.getMeasuredWidth() + iQ, s86.c(middleSeparatorLength) + childAt.getMeasuredHeight());
                    fB = middleSeparatorLength + childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin + aVar.l();
                    z2 = true;
                }
            }
            paddingLeft += aVar.b();
            aVar.v(paddingLeft);
            aVar.n(s86.c(fB));
        }
    }

    public final boolean z(int mode) {
        return pdc.f(this) ? B(mode) : C(mode);
    }

    public static final class a {
        public final int a;
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public float k;

        public a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.e = -1;
        }

        public final int a() {
            return this.h;
        }

        public final int b() {
            return this.d;
        }

        public final int c() {
            return this.j;
        }

        public final int d() {
            return this.a;
        }

        public final int e() {
            return this.i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b && this.c == aVar.c;
        }

        public final int f() {
            return this.c;
        }

        public final int g() {
            return this.c - this.i;
        }

        public final int h() {
            return this.b;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c);
        }

        public final int i() {
            return this.e;
        }

        public final int j() {
            return this.f;
        }

        public final int k() {
            return this.g;
        }

        public final float l() {
            return this.k;
        }

        public final boolean m() {
            return g() > 0;
        }

        public final void n(int i) {
            this.h = i;
        }

        public final void o(int i) {
            this.d = i;
        }

        public final void p(int i) {
            this.j = i;
        }

        public final void q(int i) {
            this.i = i;
        }

        public final void r(int i) {
            this.c = i;
        }

        public final void s(int i) {
            this.b = i;
        }

        public final void t(int i) {
            this.e = i;
        }

        public String toString() {
            return "WrapLine(firstIndex=" + this.a + ", mainSize=" + this.b + ", itemCount=" + this.c + ')';
        }

        public final void u(int i) {
            this.f = i;
        }

        public final void v(int i) {
            this.g = i;
        }

        public final void w(float f) {
            this.k = f;
        }

        public a(int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this((i4 & 1) != 0 ? 0 : i, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? 0 : i3);
        }
    }
}
