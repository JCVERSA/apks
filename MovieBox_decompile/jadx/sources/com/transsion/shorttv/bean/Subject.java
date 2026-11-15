package com.transsion.shorttv.bean;

import android.text.TextUtils;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import nr.a;
import org.mvel2.ast.ASTNode;

@Keep
@Metadata(d1 = {"\u0000\u0097\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0003\b¾\u0001\b\u0017\u0018\u00002\u00020\u00012\u00020\u0002Bù\u0005\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 \u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010$\u0012\b\b\u0002\u0010&\u001a\u00020\u001b\u0012\b\b\u0002\u0010'\u001a\u00020\u001b\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010.\u001a\u00020\u001b\u0012\b\b\u0002\u0010/\u001a\u00020\u001b\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u000100\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u000102\u0012\b\b\u0002\u00104\u001a\u00020\u0005\u0012\b\b\u0002\u00105\u001a\u00020\u001b\u0012\b\b\u0002\u00106\u001a\u00020\u001b\u0012\b\b\u0002\u00107\u001a\u00020\u0019\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010:\u001a\n\u0012\u0004\u0012\u000209\u0018\u00010\u0010\u0012\b\b\u0002\u0010;\u001a\u00020\u0019\u0012\u0010\b\u0002\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010 \u0012\b\b\u0002\u0010=\u001a\u00020\u0005\u0012\b\b\u0002\u0010>\u001a\u00020\u001b\u0012\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010@\u001a\u00020\u0005\u0012\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010C\u001a\n\u0012\u0004\u0012\u00020B\u0018\u00010 \u0012\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010F\u001a\u0004\u0018\u00010\u0019\u0012\b\b\u0002\u0010G\u001a\u00020\u001b\u0012\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010J\u001a\u0004\u0018\u00010I\u0012\b\b\u0002\u0010K\u001a\u00020\u0005\u0012\b\b\u0002\u0010L\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00050\u0010\u0012\b\b\u0002\u0010N\u001a\u00020\u0005\u0012\n\b\u0002\u0010P\u001a\u0004\u0018\u00010O\u0012\b\b\u0002\u0010Q\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00050R¢\u0006\u0004\bT\u0010UJ\r\u0010V\u001a\u00020\u001b¢\u0006\u0004\bV\u0010WJ\r\u0010X\u001a\u00020\u001b¢\u0006\u0004\bX\u0010WJ\r\u0010Y\u001a\u00020\u0000¢\u0006\u0004\bY\u0010ZJ\r\u0010[\u001a\u00020\u0003¢\u0006\u0004\b[\u0010\\R$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010]\u001a\u0004\b^\u0010\\\"\u0004\b_\u0010`R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR$\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010]\u001a\u0004\bf\u0010\\\"\u0004\bg\u0010`R$\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\b\u0010]\u001a\u0004\bh\u0010\\\"\u0004\bi\u0010`R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010j\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR$\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010]\u001a\u0004\bo\u0010\\\"\u0004\bp\u0010`R$\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010]\u001a\u0004\bq\u0010\\\"\u0004\br\u0010`R$\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\r\u0010]\u001a\u0004\bs\u0010\\\"\u0004\bt\u0010`R$\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010a\u001a\u0004\bu\u0010c\"\u0004\bv\u0010eR$\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010]\u001a\u0004\bw\u0010\\\"\u0004\bx\u0010`R*\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010y\u001a\u0004\bz\u0010{\"\u0004\b|\u0010}R$\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010]\u001a\u0004\b~\u0010\\\"\u0004\b\u007f\u0010`R&\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u0013\u0010]\u001a\u0005\b\u0080\u0001\u0010\\\"\u0005\b\u0081\u0001\u0010`R&\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u0014\u0010]\u001a\u0005\b\u0082\u0001\u0010\\\"\u0005\b\u0083\u0001\u0010`R&\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u0015\u0010]\u001a\u0005\b\u0084\u0001\u0010\\\"\u0005\b\u0085\u0001\u0010`R&\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u0016\u0010a\u001a\u0005\b\u0086\u0001\u0010c\"\u0005\b\u0087\u0001\u0010eR,\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u0018\u0010y\u001a\u0005\b\u0088\u0001\u0010{\"\u0005\b\u0089\u0001\u0010}R)\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b\u001a\u0010\u008a\u0001\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001\"\u0006\b\u008d\u0001\u0010\u008e\u0001R)\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b\u001c\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001\"\u0006\b\u0092\u0001\u0010\u0093\u0001R&\u0010\u001d\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u001d\u0010]\u001a\u0005\b\u0094\u0001\u0010\\\"\u0005\b\u0095\u0001\u0010`R1\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0087\u000e¢\u0006\u001f\n\u0005\b\u001f\u0010\u0096\u0001\u0012\u0006\b\u009b\u0001\u0010\u009c\u0001\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001\"\u0006\b\u0099\u0001\u0010\u009a\u0001R4\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 8\u0006@\u0006X\u0087\u000e¢\u0006\u001c\n\u0004\b\"\u0010y\u0012\u0006\b\u009f\u0001\u0010\u009c\u0001\u001a\u0005\b\u009d\u0001\u0010{\"\u0005\b\u009e\u0001\u0010}R&\u0010#\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b#\u0010j\u001a\u0005\b \u0001\u0010l\"\u0005\b¡\u0001\u0010nR)\u0010%\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b%\u0010¢\u0001\u001a\u0006\b£\u0001\u0010¤\u0001\"\u0006\b¥\u0001\u0010¦\u0001R&\u0010&\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b&\u0010§\u0001\u001a\u0005\b¨\u0001\u0010W\"\u0006\b©\u0001\u0010ª\u0001R&\u0010'\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b'\u0010§\u0001\u001a\u0005\b«\u0001\u0010W\"\u0006\b¬\u0001\u0010ª\u0001R)\u0010)\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b)\u0010\u00ad\u0001\u001a\u0006\b®\u0001\u0010¯\u0001\"\u0006\b°\u0001\u0010±\u0001R&\u0010*\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b*\u0010]\u001a\u0005\b²\u0001\u0010\\\"\u0005\b³\u0001\u0010`R)\u0010+\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b+\u0010\u008a\u0001\u001a\u0006\b´\u0001\u0010\u008c\u0001\"\u0006\bµ\u0001\u0010\u008e\u0001R&\u0010,\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b,\u0010]\u001a\u0005\b¶\u0001\u0010\\\"\u0005\b·\u0001\u0010`R&\u0010-\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b-\u0010]\u001a\u0005\b¸\u0001\u0010\\\"\u0005\b¹\u0001\u0010`R&\u0010.\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b.\u0010§\u0001\u001a\u0005\bº\u0001\u0010W\"\u0006\b»\u0001\u0010ª\u0001R%\u0010/\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b/\u0010§\u0001\u001a\u0004\b/\u0010W\"\u0006\b¼\u0001\u0010ª\u0001R)\u00101\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b1\u0010½\u0001\u001a\u0006\b¾\u0001\u0010¿\u0001\"\u0006\bÀ\u0001\u0010Á\u0001R)\u00103\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b3\u0010Â\u0001\u001a\u0006\bÃ\u0001\u0010Ä\u0001\"\u0006\bÅ\u0001\u0010Æ\u0001R'\u00104\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b4\u0010Ç\u0001\u001a\u0006\bÈ\u0001\u0010É\u0001\"\u0006\bÊ\u0001\u0010Ë\u0001R&\u00105\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b5\u0010§\u0001\u001a\u0005\bÌ\u0001\u0010W\"\u0006\bÍ\u0001\u0010ª\u0001R&\u00106\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b6\u0010§\u0001\u001a\u0005\bÎ\u0001\u0010W\"\u0006\bÏ\u0001\u0010ª\u0001R'\u00107\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b7\u0010Ð\u0001\u001a\u0006\bÑ\u0001\u0010Ò\u0001\"\u0006\bÓ\u0001\u0010Ô\u0001R&\u00108\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b8\u0010]\u001a\u0005\bÕ\u0001\u0010\\\"\u0005\bÖ\u0001\u0010`R,\u0010:\u001a\n\u0012\u0004\u0012\u000209\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b:\u0010y\u001a\u0005\b×\u0001\u0010{\"\u0005\bØ\u0001\u0010}R'\u0010;\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b;\u0010Ð\u0001\u001a\u0006\bÙ\u0001\u0010Ò\u0001\"\u0006\bÚ\u0001\u0010Ô\u0001R,\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b<\u0010y\u001a\u0005\bÛ\u0001\u0010{\"\u0005\bÜ\u0001\u0010}R'\u0010=\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b=\u0010Ç\u0001\u001a\u0006\bÝ\u0001\u0010É\u0001\"\u0006\bÞ\u0001\u0010Ë\u0001R&\u0010>\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b>\u0010§\u0001\u001a\u0005\bß\u0001\u0010W\"\u0006\bà\u0001\u0010ª\u0001R&\u0010?\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b?\u0010a\u001a\u0005\bá\u0001\u0010c\"\u0005\bâ\u0001\u0010eR'\u0010@\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b@\u0010Ç\u0001\u001a\u0006\bã\u0001\u0010É\u0001\"\u0006\bä\u0001\u0010Ë\u0001R&\u0010A\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bA\u0010]\u001a\u0005\bå\u0001\u0010\\\"\u0005\bæ\u0001\u0010`R,\u0010C\u001a\n\u0012\u0004\u0012\u00020B\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bC\u0010y\u001a\u0005\bç\u0001\u0010{\"\u0005\bè\u0001\u0010}R&\u0010D\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\bD\u0010]\u001a\u0005\bé\u0001\u0010\\\"\u0005\bê\u0001\u0010`R&\u0010E\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bE\u0010]\u001a\u0005\bë\u0001\u0010\\\"\u0005\bì\u0001\u0010`R)\u0010F\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\bF\u0010\u008a\u0001\u001a\u0006\bí\u0001\u0010\u008c\u0001\"\u0006\bî\u0001\u0010\u008e\u0001R&\u0010G\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\bG\u0010§\u0001\u001a\u0005\bï\u0001\u0010W\"\u0006\bð\u0001\u0010ª\u0001R&\u0010H\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\bH\u0010a\u001a\u0005\bñ\u0001\u0010c\"\u0005\bò\u0001\u0010eR)\u0010J\u001a\u0004\u0018\u00010I8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bJ\u0010ó\u0001\u001a\u0006\bô\u0001\u0010õ\u0001\"\u0006\bö\u0001\u0010÷\u0001R'\u0010K\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\bK\u0010Ç\u0001\u001a\u0006\bø\u0001\u0010É\u0001\"\u0006\bù\u0001\u0010Ë\u0001R'\u0010L\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\bL\u0010Ç\u0001\u001a\u0006\bú\u0001\u0010É\u0001\"\u0006\bû\u0001\u0010Ë\u0001R*\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00050\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\bM\u0010y\u001a\u0005\bü\u0001\u0010{\"\u0005\bý\u0001\u0010}R&\u0010N\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0005\bN\u0010Ç\u0001\u001a\u0005\bN\u0010É\u0001\"\u0006\bþ\u0001\u0010Ë\u0001R)\u0010P\u001a\u0004\u0018\u00010O8\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\bP\u0010ÿ\u0001\u001a\u0006\b\u0080\u0002\u0010\u0081\u0002\"\u0006\b\u0082\u0002\u0010\u0083\u0002R'\u0010Q\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\bQ\u0010Ç\u0001\u001a\u0006\b\u0084\u0002\u0010É\u0001\"\u0006\b\u0085\u0002\u0010Ë\u0001R-\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00050R8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bS\u0010\u0086\u0002\u001a\u0006\b\u0087\u0002\u0010\u0088\u0002\"\u0006\b\u0089\u0002\u0010\u008a\u0002R\u0016\u0010\u008d\u0002\u001a\u0004\u0018\u00010!8F¢\u0006\b\u001a\u0006\b\u008b\u0002\u0010\u008c\u0002R\u0014\u0010\u008f\u0002\u001a\u00020\u00198F¢\u0006\b\u001a\u0006\b\u008e\u0002\u0010Ò\u0001¨\u0006\u0090\u0002"}, d2 = {"Lcom/transsion/shorttv/bean/Subject;", "Lnr/a;", "Ljava/io/Serializable;", "", "subjectId", "", "subjectType", CampaignEx.JSON_KEY_TITLE, "countryName", "Lcom/transsion/shorttv/bean/Cover;", "cover", "releaseDate", TrackingKey.DESCRIPTION, "duration", "durationSeconds", "genre", "", "tags", "tag", "imdbRate", TmcConstants.KEY_LANGUAGE, "mySeeTime", "seenStatus", "Lcom/transsion/shorttv/bean/Staff;", "staffList", "", "wantToSeeCount", "", "hasResource", "ops", "Lcom/transsion/shorttv/bean/SubjectDl;", "download", "", "Lcom/transsion/shorttv/bean/ResourceDetectors;", "resourceDetectors", "stills", "Lcom/transsion/shorttv/bean/Trailer;", "trailer", "series", "correlation", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nonAdDelegate", "postTitle", "viewers", "contentRating", "category", "builtIn", "isCache", "Lcom/transsion/shorttv/bean/ShortTVItem;", "shortTVFirstEp", "Lcom/transsion/shorttv/bean/ShortTVFavInfo;", "shortTVFavInfo", "totalEpisode", "loadCoverSuccess", "coverCache", "loadCoverDuration", "aka", "Lcom/transsion/shorttv/bean/ExplainBean;", "explains", "totalSize", "unlockedEps", "coinPerEp", "deleted", "seNum", "season", "subtitles", "Lcom/transsion/shorttv/bean/DubsInfo;", "dubs", "corner", "restrictLevel", "appointmentCnt", "showTitle", "likeStatus", "Lcom/transsion/shorttv/bean/PlayUrl;", "playUrl", "miniTvType", "needPaid", "unlockType", "isPaid", "Lcom/transsion/shorttv/bean/SkuInfo;", "skuInfo", "unlockFrom", "", "adUnlockedEps", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/shorttv/bean/SubjectDl;Ljava/util/List;Lcom/transsion/shorttv/bean/Cover;Lcom/transsion/shorttv/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/shorttv/bean/ShortTVItem;Lcom/transsion/shorttv/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/Integer;Lcom/transsion/shorttv/bean/PlayUrl;IILjava/util/List;ILcom/transsion/shorttv/bean/SkuInfo;ILjava/util/Set;)V", "isSeries", "()Z", "isShortTV", "copyData", "()Lcom/transsion/shorttv/bean/Subject;", "toStringAboutLock", "()Ljava/lang/String;", "Ljava/lang/String;", "getSubjectId", "setSubjectId", "(Ljava/lang/String;)V", "Ljava/lang/Integer;", "getSubjectType", "()Ljava/lang/Integer;", "setSubjectType", "(Ljava/lang/Integer;)V", "getTitle", "setTitle", "getCountryName", "setCountryName", "Lcom/transsion/shorttv/bean/Cover;", "getCover", "()Lcom/transsion/shorttv/bean/Cover;", "setCover", "(Lcom/transsion/shorttv/bean/Cover;)V", "getReleaseDate", "setReleaseDate", "getDescription", "setDescription", "getDuration", "setDuration", "getDurationSeconds", "setDurationSeconds", "getGenre", "setGenre", "Ljava/util/List;", "getTags", "()Ljava/util/List;", "setTags", "(Ljava/util/List;)V", "getTag", "setTag", "getImdbRate", "setImdbRate", "getLanguage", "setLanguage", "getMySeeTime", "setMySeeTime", "getSeenStatus", "setSeenStatus", "getStaffList", "setStaffList", "Ljava/lang/Long;", "getWantToSeeCount", "()Ljava/lang/Long;", "setWantToSeeCount", "(Ljava/lang/Long;)V", "Ljava/lang/Boolean;", "getHasResource", "()Ljava/lang/Boolean;", "setHasResource", "(Ljava/lang/Boolean;)V", "getOps", "setOps", "Lcom/transsion/shorttv/bean/SubjectDl;", "getDownload", "()Lcom/transsion/shorttv/bean/SubjectDl;", "setDownload", "(Lcom/transsion/shorttv/bean/SubjectDl;)V", "getDownload$annotations", "()V", "getResourceDetectors", "setResourceDetectors", "getResourceDetectors$annotations", "getStills", "setStills", "Lcom/transsion/shorttv/bean/Trailer;", "getTrailer", "()Lcom/transsion/shorttv/bean/Trailer;", "setTrailer", "(Lcom/transsion/shorttv/bean/Trailer;)V", "Z", "getSeries", "setSeries", "(Z)V", "getCorrelation", "setCorrelation", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "getNonAdDelegate", "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "setNonAdDelegate", "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "getPostTitle", "setPostTitle", "getViewers", "setViewers", "getContentRating", "setContentRating", "getCategory", "setCategory", "getBuiltIn", "setBuiltIn", "setCache", "Lcom/transsion/shorttv/bean/ShortTVItem;", "getShortTVFirstEp", "()Lcom/transsion/shorttv/bean/ShortTVItem;", "setShortTVFirstEp", "(Lcom/transsion/shorttv/bean/ShortTVItem;)V", "Lcom/transsion/shorttv/bean/ShortTVFavInfo;", "getShortTVFavInfo", "()Lcom/transsion/shorttv/bean/ShortTVFavInfo;", "setShortTVFavInfo", "(Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V", "I", "getTotalEpisode", "()I", "setTotalEpisode", "(I)V", "getLoadCoverSuccess", "setLoadCoverSuccess", "getCoverCache", "setCoverCache", "J", "getLoadCoverDuration", "()J", "setLoadCoverDuration", "(J)V", "getAka", "setAka", "getExplains", "setExplains", "getTotalSize", "setTotalSize", "getUnlockedEps", "setUnlockedEps", "getCoinPerEp", "setCoinPerEp", "getDeleted", "setDeleted", "getSeNum", "setSeNum", "getSeason", "setSeason", "getSubtitles", "setSubtitles", "getDubs", "setDubs", "getCorner", "setCorner", "getRestrictLevel", "setRestrictLevel", "getAppointmentCnt", "setAppointmentCnt", "getShowTitle", "setShowTitle", "getLikeStatus", "setLikeStatus", "Lcom/transsion/shorttv/bean/PlayUrl;", "getPlayUrl", "()Lcom/transsion/shorttv/bean/PlayUrl;", "setPlayUrl", "(Lcom/transsion/shorttv/bean/PlayUrl;)V", "getMiniTvType", "setMiniTvType", "getNeedPaid", "setNeedPaid", "getUnlockType", "setUnlockType", "setPaid", "Lcom/transsion/shorttv/bean/SkuInfo;", "getSkuInfo", "()Lcom/transsion/shorttv/bean/SkuInfo;", "setSkuInfo", "(Lcom/transsion/shorttv/bean/SkuInfo;)V", "getUnlockFrom", "setUnlockFrom", "Ljava/util/Set;", "getAdUnlockedEps", "()Ljava/util/Set;", "setAdUnlockedEps", "(Ljava/util/Set;)V", "getResourceDetector", "()Lcom/transsion/shorttv/bean/ResourceDetectors;", "resourceDetector", "getResourceAboutDuration", "resourceAboutDuration", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class Subject extends a implements Serializable {
    private Set<Integer> adUnlockedEps;
    private String aka;

    @SerializedName("appointmentCnt")
    private Long appointmentCnt;
    private boolean builtIn;

    @SerializedName("category")
    private String category;
    private int coinPerEp;

    @SerializedName("contentRating")
    private String contentRating;

    @SerializedName("corner")
    private String corner;
    private transient boolean correlation;

    @SerializedName("countryName")
    private String countryName;

    @SerializedName("cover")
    private Cover cover;
    private transient boolean coverCache;
    private transient boolean deleted;

    @SerializedName(TrackingKey.DESCRIPTION)
    private String description;

    @SerializedName("dl")
    private SubjectDl download;
    private List<DubsInfo> dubs;

    @SerializedName("duration")
    private String duration;

    @SerializedName(alternate = {"durationSeconds"}, value = "seconds")
    private Integer durationSeconds;
    private List<ExplainBean> explains;

    @SerializedName("genre")
    private String genre;

    @SerializedName("hasResource")
    private Boolean hasResource;

    @SerializedName("imdbRatingValue")
    private String imdbRate;
    private boolean isCache;

    @SerializedName("isPaid")
    private int isPaid;

    @SerializedName(TmcConstants.KEY_LANGUAGE)
    private String language;

    @SerializedName("likeStatus")
    private Integer likeStatus;
    private transient long loadCoverDuration;
    private transient boolean loadCoverSuccess;

    @SerializedName("minitvType")
    private int miniTvType;

    @SerializedName("mySeeTime")
    private String mySeeTime;

    @SerializedName("needPaid")
    private int needPaid;
    private transient BiddingNativeManager nonAdDelegate;

    @SerializedName("ops")
    private String ops;
    private PlayUrl playUrl;

    @SerializedName("postTitle")
    private String postTitle;

    @SerializedName("releaseDate")
    private String releaseDate;

    @SerializedName("resourceDetectors")
    private List<ResourceDetectors> resourceDetectors;
    private String restrictLevel;
    private Integer seNum;
    private int season;

    @SerializedName("seenStatus")
    private Integer seenStatus;
    private transient boolean series;

    @SerializedName("favInfo")
    private ShortTVFavInfo shortTVFavInfo;

    @SerializedName("firstEp")
    private ShortTVItem shortTVFirstEp;
    private transient boolean showTitle;

    @SerializedName("skuInfo")
    private SkuInfo skuInfo;

    @SerializedName("staffList")
    private List<? extends Staff> staffList;

    @SerializedName("stills")
    private Cover stills;

    @SerializedName("subjectId")
    private String subjectId;

    @SerializedName("subjectType")
    private Integer subjectType;
    private String subtitles;

    @SerializedName("tag")
    private String tag;

    @SerializedName("tags")
    private List<String> tags;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String title;

    @SerializedName(alternate = {"shortsEpisode"}, value = "totalEpisode")
    private int totalEpisode;
    private long totalSize;

    @SerializedName("trailer")
    private Trailer trailer;

    @SerializedName("unlockFrom")
    private int unlockFrom;

    @SerializedName("unlockType")
    private List<Integer> unlockType;
    private List<Integer> unlockedEps;

    @SerializedName("viewers")
    private Long viewers;

    @SerializedName("wantToSeeCount")
    private Long wantToSeeCount;

    public Subject() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, false, null, null, 0, 0, null, 0, null, 0, null, -1, 1073741823, null);
    }

    @Deprecated
    public static void getDownload$annotations() {
    }

    @Deprecated
    public static void getResourceDetectors$annotations() {
    }

    public final Subject copyData() {
        return new Subject(this.subjectId, this.subjectType, this.title, this.countryName, this.cover, this.releaseDate, this.description, this.duration, this.durationSeconds, this.genre, this.tags, null, this.imdbRate, this.language, this.mySeeTime, null, null, null, this.hasResource, this.ops, this.download, this.resourceDetectors, this.stills, this.trailer, false, false, null, null, null, null, null, this.builtIn, this.isCache, this.shortTVFirstEp, this.shortTVFavInfo, this.totalEpisode, false, false, 0L, null, null, this.totalSize, this.unlockedEps, this.coinPerEp, false, null, 0, null, null, null, null, null, false, null, null, this.miniTvType, this.needPaid, this.unlockType, this.isPaid, this.skuInfo, this.unlockFrom, CollectionsKt.V0(this.adUnlockedEps), 2130937856, 8385008, null);
    }

    public final Set<Integer> getAdUnlockedEps() {
        return this.adUnlockedEps;
    }

    public final String getAka() {
        return this.aka;
    }

    public final Long getAppointmentCnt() {
        return this.appointmentCnt;
    }

    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final String getCategory() {
        return this.category;
    }

    public final int getCoinPerEp() {
        return this.coinPerEp;
    }

    public final String getContentRating() {
        return this.contentRating;
    }

    public final String getCorner() {
        return this.corner;
    }

    public final boolean getCorrelation() {
        return this.correlation;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final Cover getCover() {
        return this.cover;
    }

    public final boolean getCoverCache() {
        return this.coverCache;
    }

    public final boolean getDeleted() {
        return this.deleted;
    }

    public final String getDescription() {
        return this.description;
    }

    public final SubjectDl getDownload() {
        return this.download;
    }

    public final List<DubsInfo> getDubs() {
        return this.dubs;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final Integer getDurationSeconds() {
        return this.durationSeconds;
    }

    public final List<ExplainBean> getExplains() {
        return this.explains;
    }

    public final String getGenre() {
        return this.genre;
    }

    public final Boolean getHasResource() {
        return this.hasResource;
    }

    public final String getImdbRate() {
        return this.imdbRate;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final Integer getLikeStatus() {
        return this.likeStatus;
    }

    public final long getLoadCoverDuration() {
        return this.loadCoverDuration;
    }

    public final boolean getLoadCoverSuccess() {
        return this.loadCoverSuccess;
    }

    public final int getMiniTvType() {
        return this.miniTvType;
    }

    public final String getMySeeTime() {
        return this.mySeeTime;
    }

    public final int getNeedPaid() {
        return this.needPaid;
    }

    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    public final String getOps() {
        return this.ops;
    }

    public final PlayUrl getPlayUrl() {
        return this.playUrl;
    }

    public final String getPostTitle() {
        return this.postTitle;
    }

    public final String getReleaseDate() {
        return this.releaseDate;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002c  */
    public final long getResourceAboutDuration() {
        boolean z10;
        int i10;
        Integer num = this.durationSeconds;
        int iIntValue = 0;
        if ((num != null ? num.intValue() : 0) > 0) {
            Integer num2 = this.durationSeconds;
            if (num2 != null) {
                iIntValue = num2.intValue();
            }
        } else {
            String str = this.duration;
            if (str == null) {
                z10 = false;
            } else {
                if (str.length() > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            if (!z10) {
                return 0L;
            }
            Pattern patternCompile = Pattern.compile("[^0-9]+");
            String str2 = this.duration;
            Intrinsics.e(str2);
            String[] strArrSplit = patternCompile.split(StringsKt.n1(str2).toString());
            if (strArrSplit.length == 2) {
                String str3 = strArrSplit[0];
                Intrinsics.g(str3, "get(...)");
                iIntValue = Integer.parseInt(str3);
                String str4 = strArrSplit[1];
                Intrinsics.g(str4, "get(...)");
                i10 = Integer.parseInt(str4);
            } else if (strArrSplit.length == 1) {
                String str5 = strArrSplit[0];
                Intrinsics.g(str5, "get(...)");
                i10 = Integer.parseInt(str5);
            } else {
                i10 = 0;
            }
            iIntValue = ((iIntValue * 60) + i10) * 60;
        }
        return ((long) iIntValue) * 1000;
    }

    public final ResourceDetectors getResourceDetector() {
        ResourceDetectors resourceDetectors;
        List<DownloadItem> resolutionList;
        List<ResourceDetectors> list = this.resourceDetectors;
        if (list == null || list.isEmpty()) {
            boolean zIsSeries = isSeries();
            SubjectDl subjectDl = this.download;
            String resourceId = subjectDl != null ? subjectDl.getResourceId() : null;
            SubjectDl subjectDl2 = this.download;
            String url = subjectDl2 != null ? subjectDl2.getUrl() : null;
            SubjectDl subjectDl3 = this.download;
            Long size = subjectDl3 != null ? subjectDl3.getSize() : null;
            SubjectDl subjectDl4 = this.download;
            String sourceUrl = subjectDl4 != null ? subjectDl4.getSourceUrl() : null;
            SubjectDl subjectDl5 = this.download;
            return new ResourceDetectors(Integer.valueOf(zIsSeries ? 1 : 0), null, size, null, null, sourceUrl, url, null, resourceId, null, subjectDl5 != null ? subjectDl5.getPostId() : null, null, null, 6810, null);
        }
        List<ResourceDetectors> list2 = this.resourceDetectors;
        ResourceDetectors resourceDetectors2 = list2 != null ? list2.get(0) : null;
        List<ResourceDetectors> list3 = this.resourceDetectors;
        if (list3 == null || (resourceDetectors = list3.get(0)) == null || (resolutionList = resourceDetectors.getResolutionList()) == null) {
            return resourceDetectors2;
        }
        for (DownloadItem downloadItem : resolutionList) {
            if (Intrinsics.c(downloadItem.getResourceId(), resourceDetectors2 != null ? resourceDetectors2.getResourceId() : null)) {
                resourceDetectors2 = new ResourceDetectors(resourceDetectors2 != null ? resourceDetectors2.getType() : null, null, downloadItem.getSize(), null, downloadItem.getUploadBy(), downloadItem.getSourceUrl(), downloadItem.getUrl(), null, downloadItem.getResourceId(), null, downloadItem.getPostId(), null, downloadItem.getResolution(), 2698, null);
            }
        }
        return resourceDetectors2;
    }

    public final List<ResourceDetectors> getResourceDetectors() {
        return this.resourceDetectors;
    }

    public final String getRestrictLevel() {
        return this.restrictLevel;
    }

    public final Integer getSeNum() {
        return this.seNum;
    }

    public final int getSeason() {
        return this.season;
    }

    public final Integer getSeenStatus() {
        return this.seenStatus;
    }

    public final boolean getSeries() {
        return this.series;
    }

    public final ShortTVFavInfo getShortTVFavInfo() {
        return this.shortTVFavInfo;
    }

    public final ShortTVItem getShortTVFirstEp() {
        return this.shortTVFirstEp;
    }

    public final boolean getShowTitle() {
        return this.showTitle;
    }

    public final SkuInfo getSkuInfo() {
        return this.skuInfo;
    }

    public final List<Staff> getStaffList() {
        return this.staffList;
    }

    public final Cover getStills() {
        return this.stills;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final Integer getSubjectType() {
        return this.subjectType;
    }

    public final String getSubtitles() {
        return this.subtitles;
    }

    public final String getTag() {
        return this.tag;
    }

    public final List<String> getTags() {
        return this.tags;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getTotalEpisode() {
        return this.totalEpisode;
    }

    public final long getTotalSize() {
        return this.totalSize;
    }

    public final Trailer getTrailer() {
        return this.trailer;
    }

    public final int getUnlockFrom() {
        return this.unlockFrom;
    }

    public final List<Integer> getUnlockType() {
        return this.unlockType;
    }

    public final List<Integer> getUnlockedEps() {
        return this.unlockedEps;
    }

    public final Long getViewers() {
        return this.viewers;
    }

    public final Long getWantToSeeCount() {
        return this.wantToSeeCount;
    }

    public final boolean getIsCache() {
        return this.isCache;
    }

    public final int getIsPaid() {
        return this.isPaid;
    }

    public final boolean isSeries() {
        SubjectDl subjectDl;
        if (!this.series && (subjectDl = this.download) != null) {
            if (!TextUtils.isEmpty(subjectDl != null ? subjectDl.getUrl() : null)) {
                return false;
            }
        }
        return true;
    }

    public final boolean isShortTV() {
        Integer num = this.subjectType;
        return num != null && num.intValue() == 7;
    }

    public final void setAdUnlockedEps(Set<Integer> set) {
        Intrinsics.h(set, "<set-?>");
        this.adUnlockedEps = set;
    }

    public final void setAka(String str) {
        this.aka = str;
    }

    public final void setAppointmentCnt(Long l10) {
        this.appointmentCnt = l10;
    }

    public final void setBuiltIn(boolean z10) {
        this.builtIn = z10;
    }

    public final void setCache(boolean z10) {
        this.isCache = z10;
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public final void setCoinPerEp(int i10) {
        this.coinPerEp = i10;
    }

    public final void setContentRating(String str) {
        this.contentRating = str;
    }

    public final void setCorner(String str) {
        this.corner = str;
    }

    public final void setCorrelation(boolean z10) {
        this.correlation = z10;
    }

    public final void setCountryName(String str) {
        this.countryName = str;
    }

    public final void setCover(Cover cover) {
        this.cover = cover;
    }

    public final void setCoverCache(boolean z10) {
        this.coverCache = z10;
    }

    public final void setDeleted(boolean z10) {
        this.deleted = z10;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setDownload(SubjectDl subjectDl) {
        this.download = subjectDl;
    }

    public final void setDubs(List<DubsInfo> list) {
        this.dubs = list;
    }

    public final void setDuration(String str) {
        this.duration = str;
    }

    public final void setDurationSeconds(Integer num) {
        this.durationSeconds = num;
    }

    public final void setExplains(List<ExplainBean> list) {
        this.explains = list;
    }

    public final void setGenre(String str) {
        this.genre = str;
    }

    public final void setHasResource(Boolean bool) {
        this.hasResource = bool;
    }

    public final void setImdbRate(String str) {
        this.imdbRate = str;
    }

    public final void setLanguage(String str) {
        this.language = str;
    }

    public final void setLikeStatus(Integer num) {
        this.likeStatus = num;
    }

    public final void setLoadCoverDuration(long j10) {
        this.loadCoverDuration = j10;
    }

    public final void setLoadCoverSuccess(boolean z10) {
        this.loadCoverSuccess = z10;
    }

    public final void setMiniTvType(int i10) {
        this.miniTvType = i10;
    }

    public final void setMySeeTime(String str) {
        this.mySeeTime = str;
    }

    public final void setNeedPaid(int i10) {
        this.needPaid = i10;
    }

    public final void setNonAdDelegate(BiddingNativeManager biddingNativeManager) {
        this.nonAdDelegate = biddingNativeManager;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPaid(int i10) {
        this.isPaid = i10;
    }

    public final void setPlayUrl(PlayUrl playUrl) {
        this.playUrl = playUrl;
    }

    public final void setPostTitle(String str) {
        this.postTitle = str;
    }

    public final void setReleaseDate(String str) {
        this.releaseDate = str;
    }

    public final void setResourceDetectors(List<ResourceDetectors> list) {
        this.resourceDetectors = list;
    }

    public final void setRestrictLevel(String str) {
        this.restrictLevel = str;
    }

    public final void setSeNum(Integer num) {
        this.seNum = num;
    }

    public final void setSeason(int i10) {
        this.season = i10;
    }

    public final void setSeenStatus(Integer num) {
        this.seenStatus = num;
    }

    public final void setSeries(boolean z10) {
        this.series = z10;
    }

    public final void setShortTVFavInfo(ShortTVFavInfo shortTVFavInfo) {
        this.shortTVFavInfo = shortTVFavInfo;
    }

    public final void setShortTVFirstEp(ShortTVItem shortTVItem) {
        this.shortTVFirstEp = shortTVItem;
    }

    public final void setShowTitle(boolean z10) {
        this.showTitle = z10;
    }

    public final void setSkuInfo(SkuInfo skuInfo) {
        this.skuInfo = skuInfo;
    }

    public final void setStaffList(List<? extends Staff> list) {
        this.staffList = list;
    }

    public final void setStills(Cover cover) {
        this.stills = cover;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setSubjectType(Integer num) {
        this.subjectType = num;
    }

    public final void setSubtitles(String str) {
        this.subtitles = str;
    }

    public final void setTag(String str) {
        this.tag = str;
    }

    public final void setTags(List<String> list) {
        this.tags = list;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setTotalEpisode(int i10) {
        this.totalEpisode = i10;
    }

    public final void setTotalSize(long j10) {
        this.totalSize = j10;
    }

    public final void setTrailer(Trailer trailer) {
        this.trailer = trailer;
    }

    public final void setUnlockFrom(int i10) {
        this.unlockFrom = i10;
    }

    public final void setUnlockType(List<Integer> list) {
        Intrinsics.h(list, "<set-?>");
        this.unlockType = list;
    }

    public final void setUnlockedEps(List<Integer> list) {
        this.unlockedEps = list;
    }

    public final void setViewers(Long l10) {
        this.viewers = l10;
    }

    public final void setWantToSeeCount(Long l10) {
        this.wantToSeeCount = l10;
    }

    public final String toStringAboutLock() {
        return "Subject(subjectId=" + this.subjectId + ", needPaid=" + this.needPaid + ", isPaid=" + this.isPaid + ")";
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Subject(String str, Integer num, String str2, String str3, Cover cover, String str4, String str5, String str6, Integer num2, String str7, List list, String str8, String str9, String str10, String str11, Integer num3, List list2, Long l10, Boolean bool, String str12, SubjectDl subjectDl, List list3, Cover cover2, Trailer trailer, boolean z10, boolean z11, BiddingNativeManager biddingNativeManager, String str13, Long l11, String str14, String str15, boolean z12, boolean z13, ShortTVItem shortTVItem, ShortTVFavInfo shortTVFavInfo, int i10, boolean z14, boolean z15, long j10, String str16, List list4, long j11, List list5, int i11, boolean z16, Integer num4, int i12, String str17, List list6, String str18, String str19, Long l12, boolean z17, Integer num5, PlayUrl playUrl, int i13, int i14, List list7, int i15, SkuInfo skuInfo, int i16, Set set, int i17, int i18, DefaultConstructorMarker defaultConstructorMarker) {
        int i19;
        Integer num6;
        String str20 = (i17 & 1) != 0 ? null : str;
        Integer num7 = (i17 & 2) != 0 ? 1 : num;
        String str21 = (i17 & 4) != 0 ? null : str2;
        String str22 = (i17 & 8) != 0 ? null : str3;
        Cover cover3 = (i17 & 16) != 0 ? null : cover;
        String str23 = (i17 & 32) != 0 ? null : str4;
        String str24 = (i17 & 64) != 0 ? null : str5;
        String str25 = (i17 & 128) != 0 ? null : str6;
        Integer num8 = (i17 & 256) != 0 ? 0 : num2;
        String str26 = (i17 & 512) != 0 ? null : str7;
        List list8 = (i17 & 1024) != 0 ? null : list;
        String str27 = (i17 & 2048) != 0 ? null : str8;
        String str28 = (i17 & 4096) != 0 ? null : str9;
        String str29 = (i17 & 8192) != 0 ? null : str10;
        String str30 = (i17 & 16384) != 0 ? null : str11;
        Integer num9 = (i17 & 32768) != 0 ? 0 : num3;
        List list9 = (i17 & 65536) != 0 ? null : list2;
        Long l13 = (i17 & 131072) != 0 ? 0L : l10;
        Boolean bool2 = (i17 & 262144) != 0 ? null : bool;
        String str31 = (i17 & 524288) != 0 ? null : str12;
        SubjectDl subjectDl2 = (i17 & 1048576) != 0 ? null : subjectDl;
        List list10 = (i17 & 2097152) != 0 ? null : list3;
        Cover cover4 = (i17 & 4194304) != 0 ? null : cover2;
        Trailer trailer2 = (i17 & 8388608) != 0 ? null : trailer;
        boolean z18 = (i17 & 16777216) != 0 ? false : z10;
        boolean z19 = (i17 & ASTNode.PCTX_STORED) != 0 ? false : z11;
        BiddingNativeManager biddingNativeManager2 = (i17 & 67108864) != 0 ? null : biddingNativeManager;
        String str32 = (i17 & ASTNode.NOJIT) != 0 ? null : str13;
        Long l14 = (i17 & ASTNode.DEOP) != 0 ? null : l11;
        String str33 = (i17 & ASTNode.DISCARD) != 0 ? null : str14;
        String str34 = (i17 & 1073741824) != 0 ? null : str15;
        boolean z20 = (i17 & Integer.MIN_VALUE) != 0 ? false : z12;
        boolean z21 = (i18 & 1) != 0 ? false : z13;
        ShortTVItem shortTVItem2 = (i18 & 2) != 0 ? null : shortTVItem;
        ShortTVFavInfo shortTVFavInfo2 = (i18 & 4) != 0 ? null : shortTVFavInfo;
        int i20 = (i18 & 8) != 0 ? 0 : i10;
        boolean z22 = (i18 & 16) != 0 ? false : z14;
        boolean z23 = (i18 & 32) != 0 ? false : z15;
        long j12 = (i18 & 64) != 0 ? 0L : j10;
        boolean z24 = z20;
        String str35 = (i18 & 128) != 0 ? null : str16;
        List list11 = (i18 & 256) != 0 ? null : list4;
        long j13 = (i18 & 512) != 0 ? 0L : j11;
        List list12 = (i18 & 1024) != 0 ? null : list5;
        int i21 = (i18 & 2048) != 0 ? -1 : i11;
        boolean z25 = (i18 & 4096) != 0 ? false : z16;
        Integer num10 = (i18 & 8192) != 0 ? 0 : num4;
        int i22 = (i18 & 16384) != 0 ? 1 : i12;
        String str36 = (i18 & 32768) != 0 ? null : str17;
        List list13 = (i18 & 65536) != 0 ? null : list6;
        String str37 = (i18 & 131072) != 0 ? null : str18;
        String str38 = (i18 & 262144) != 0 ? null : str19;
        Long l15 = (i18 & 524288) != 0 ? 0L : l12;
        boolean z26 = (i18 & 1048576) != 0 ? false : z17;
        if ((i18 & 2097152) != 0) {
            i19 = 0;
            num6 = 0;
        } else {
            i19 = 0;
            num6 = num5;
        }
        this(str20, num7, str21, str22, cover3, str23, str24, str25, num8, str26, list8, str27, str28, str29, str30, num9, list9, l13, bool2, str31, subjectDl2, list10, cover4, trailer2, z18, z19, biddingNativeManager2, str32, l14, str33, str34, z24, z21, shortTVItem2, shortTVFavInfo2, i20, z22, z23, j12, str35, list11, j13, list12, i21, z25, num10, i22, str36, list13, str37, str38, l15, z26, num6, (i18 & 4194304) != 0 ? null : playUrl, (i18 & 8388608) != 0 ? 1 : i13, (i18 & 16777216) != 0 ? i19 : i14, (i18 & ASTNode.PCTX_STORED) != 0 ? CollectionsKt.l() : list7, (i18 & 67108864) != 0 ? i19 : i15, (i18 & ASTNode.NOJIT) != 0 ? null : skuInfo, (i18 & ASTNode.DEOP) == 0 ? i16 : i19, (i18 & ASTNode.DISCARD) != 0 ? new LinkedHashSet() : set);
    }

    public Subject(String str, Integer num, String str2, String str3, Cover cover, String str4, String str5, String str6, Integer num2, String str7, List<String> list, String str8, String str9, String str10, String str11, Integer num3, List<? extends Staff> list2, Long l10, Boolean bool, String str12, SubjectDl subjectDl, List<ResourceDetectors> list3, Cover cover2, Trailer trailer, boolean z10, boolean z11, BiddingNativeManager biddingNativeManager, String str13, Long l11, String str14, String str15, boolean z12, boolean z13, ShortTVItem shortTVItem, ShortTVFavInfo shortTVFavInfo, int i10, boolean z14, boolean z15, long j10, String str16, List<ExplainBean> list4, long j11, List<Integer> list5, int i11, boolean z16, Integer num4, int i12, String str17, List<DubsInfo> list6, String str18, String str19, Long l12, boolean z17, Integer num5, PlayUrl playUrl, int i13, int i14, List<Integer> unlockType, int i15, SkuInfo skuInfo, int i16, Set<Integer> adUnlockedEps) {
        Intrinsics.h(unlockType, "unlockType");
        Intrinsics.h(adUnlockedEps, "adUnlockedEps");
        this.subjectId = str;
        this.subjectType = num;
        this.title = str2;
        this.countryName = str3;
        this.cover = cover;
        this.releaseDate = str4;
        this.description = str5;
        this.duration = str6;
        this.durationSeconds = num2;
        this.genre = str7;
        this.tags = list;
        this.tag = str8;
        this.imdbRate = str9;
        this.language = str10;
        this.mySeeTime = str11;
        this.seenStatus = num3;
        this.staffList = list2;
        this.wantToSeeCount = l10;
        this.hasResource = bool;
        this.ops = str12;
        this.download = subjectDl;
        this.resourceDetectors = list3;
        this.stills = cover2;
        this.trailer = trailer;
        this.series = z10;
        this.correlation = z11;
        this.nonAdDelegate = biddingNativeManager;
        this.postTitle = str13;
        this.viewers = l11;
        this.contentRating = str14;
        this.category = str15;
        this.builtIn = z12;
        this.isCache = z13;
        this.shortTVFirstEp = shortTVItem;
        this.shortTVFavInfo = shortTVFavInfo;
        this.totalEpisode = i10;
        this.loadCoverSuccess = z14;
        this.coverCache = z15;
        this.loadCoverDuration = j10;
        this.aka = str16;
        this.explains = list4;
        this.totalSize = j11;
        this.unlockedEps = list5;
        this.coinPerEp = i11;
        this.deleted = z16;
        this.seNum = num4;
        this.season = i12;
        this.subtitles = str17;
        this.dubs = list6;
        this.corner = str18;
        this.restrictLevel = str19;
        this.appointmentCnt = l12;
        this.showTitle = z17;
        this.likeStatus = num5;
        this.playUrl = playUrl;
        this.miniTvType = i13;
        this.needPaid = i14;
        this.unlockType = unlockType;
        this.isPaid = i15;
        this.skuInfo = skuInfo;
        this.unlockFrom = i16;
        this.adUnlockedEps = adUnlockedEps;
    }
}
