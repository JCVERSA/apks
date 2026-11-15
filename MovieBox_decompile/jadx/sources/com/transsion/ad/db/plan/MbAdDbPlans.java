package com.transsion.ad.db.plan;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

@Keep
@Metadata(d1 = {"\u00007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u001c\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0003\b\u008a\u0001\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001BÝ\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)\u0012\b\b\u0002\u0010*\u001a\u00020+\u0012\b\b\u0002\u0010,\u001a\u00020+\u0012\b\b\u0002\u0010-\u001a\u00020+\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b/\u00100J\n\u0010\u008a\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0090\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010@J\u0011\u0010\u0091\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010@J\f\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010 \u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010@J\f\u0010¡\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¢\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010£\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¤\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¥\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¦\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010§\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¨\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010©\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010ª\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010«\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010¬\u0001\u001a\u0004\u0018\u00010'HÆ\u0003¢\u0006\u0002\u0010{J\u0012\u0010\u00ad\u0001\u001a\u0004\u0018\u00010)HÆ\u0003¢\u0006\u0003\u0010\u0080\u0001J\n\u0010®\u0001\u001a\u00020+HÆ\u0003J\n\u0010¯\u0001\u001a\u00020+HÆ\u0003J\n\u0010°\u0001\u001a\u00020+HÆ\u0003J\f\u0010±\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jè\u0003\u0010²\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)2\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020+2\b\b\u0002\u0010-\u001a\u00020+2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0003\u0010³\u0001J\u0016\u0010´\u0001\u001a\u00020+2\n\u0010µ\u0001\u001a\u0005\u0018\u00010¶\u0001HÖ\u0003J\n\u0010·\u0001\u001a\u00020\nHÖ\u0001J\n\u0010¸\u0001\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00102\"\u0004\b6\u00104R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00102\"\u0004\b8\u00104R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u00102\"\u0004\b:\u00104R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00102\"\u0004\b<\u00104R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u00102\"\u0004\b>\u00104R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010C\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010C\u001a\u0004\bD\u0010@\"\u0004\bE\u0010BR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u00102\"\u0004\bG\u00104R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u00102\"\u0004\bI\u00104R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u00102\"\u0004\bK\u00104R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u00102\"\u0004\bM\u00104R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u00102\"\u0004\bO\u00104R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u00102\"\u0004\bQ\u00104R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u00102\"\u0004\bS\u00104R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u00102\"\u0004\bU\u00104R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u00102\"\u0004\bW\u00104R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bX\u00102\"\u0004\bY\u00104R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u00102\"\u0004\b[\u00104R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u00102\"\u0004\b]\u00104R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u00102\"\u0004\b_\u00104R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u00102\"\u0004\ba\u00104R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010C\u001a\u0004\bb\u0010@\"\u0004\bc\u0010BR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bd\u00102\"\u0004\be\u00104R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u00102\"\u0004\bg\u00104R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bh\u00102\"\u0004\bi\u00104R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bj\u00102\"\u0004\bk\u00104R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bl\u00102\"\u0004\bm\u00104R\u001c\u0010 \u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bn\u00102\"\u0004\bo\u00104R\u001c\u0010!\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bp\u00102\"\u0004\bq\u00104R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\br\u00102\"\u0004\bs\u00104R\u001c\u0010#\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bt\u00102\"\u0004\bu\u00104R\u001c\u0010$\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bv\u00102\"\u0004\bw\u00104R\u001c\u0010%\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bx\u00102\"\u0004\by\u00104R\u001e\u0010&\u001a\u0004\u0018\u00010'X\u0086\u000e¢\u0006\u0010\n\u0002\u0010~\u001a\u0004\bz\u0010{\"\u0004\b|\u0010}R\"\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e¢\u0006\u0014\n\u0003\u0010\u0083\u0001\u001a\u0005\b\u007f\u0010\u0080\u0001\"\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001d\u0010*\u001a\u00020+X\u0086\u000e¢\u0006\u0011\n\u0000\u001a\u0005\b*\u0010\u0084\u0001\"\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0013\u0010,\u001a\u00020+¢\u0006\n\n\u0000\u001a\u0006\b\u0087\u0001\u0010\u0084\u0001R\u0013\u0010-\u001a\u00020+¢\u0006\n\n\u0000\u001a\u0006\b\u0088\u0001\u0010\u0084\u0001R\u0014\u0010.\u001a\u0004\u0018\u00010\u0003¢\u0006\t\n\u0000\u001a\u0005\b\u0089\u0001\u00102¨\u0006¹\u0001"}, d2 = {"Lcom/transsion/ad/db/plan/MbAdDbPlans;", "Ljava/io/Serializable;", "id", "", "version", "name", "startTime", "endTime", "extraConfig", "displayTimes", "", "showedTimes", "showDate", "advertiserName", "advertiserAvatar", "advertiserAvatarPath", "brand", "denyBrand", "model", "denyModel", PlaceTypes.COUNTRY, "scenes", "adSource", "extAdSlot", "adMaterialList", "adPlanUpdateTime", "sort", "adShowLevel", "filterClientVersion", "adPlanCreateTime", "appStarDesc", "appSizeDesc", "ctxEnableExpr", "ctxDisableExpr", "ctxAttributeConfig", "dispatchTimeStart", "dispatchTimeEnd", "extImage", "bidEcpmCent", "", "ecpmCent", "", "isValid", "", "h5LinkPreload", "h5LinkOpenByCct", "countryCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getVersion", "setVersion", "getName", "setName", "getStartTime", "setStartTime", "getEndTime", "setEndTime", "getExtraConfig", "setExtraConfig", "getDisplayTimes", "()Ljava/lang/Integer;", "setDisplayTimes", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getShowedTimes", "setShowedTimes", "getShowDate", "setShowDate", "getAdvertiserName", "setAdvertiserName", "getAdvertiserAvatar", "setAdvertiserAvatar", "getAdvertiserAvatarPath", "setAdvertiserAvatarPath", "getBrand", "setBrand", "getDenyBrand", "setDenyBrand", "getModel", "setModel", "getDenyModel", "setDenyModel", "getCountry", "setCountry", "getScenes", "setScenes", "getAdSource", "setAdSource", "getExtAdSlot", "setExtAdSlot", "getAdMaterialList", "setAdMaterialList", "getAdPlanUpdateTime", "setAdPlanUpdateTime", "getSort", "setSort", "getAdShowLevel", "setAdShowLevel", "getFilterClientVersion", "setFilterClientVersion", "getAdPlanCreateTime", "setAdPlanCreateTime", "getAppStarDesc", "setAppStarDesc", "getAppSizeDesc", "setAppSizeDesc", "getCtxEnableExpr", "setCtxEnableExpr", "getCtxDisableExpr", "setCtxDisableExpr", "getCtxAttributeConfig", "setCtxAttributeConfig", "getDispatchTimeStart", "setDispatchTimeStart", "getDispatchTimeEnd", "setDispatchTimeEnd", "getExtImage", "setExtImage", "getBidEcpmCent", "()Ljava/lang/Double;", "setBidEcpmCent", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getEcpmCent", "()Ljava/lang/Long;", "setEcpmCent", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "()Z", "setValid", "(Z)V", "getH5LinkPreload", "getH5LinkOpenByCct", "getCountryCode", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component40", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)Lcom/transsion/ad/db/plan/MbAdDbPlans;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MbAdDbPlans implements Serializable {
    private String adMaterialList;
    private String adPlanCreateTime;
    private String adPlanUpdateTime;
    private String adShowLevel;
    private String adSource;
    private String advertiserAvatar;
    private String advertiserAvatarPath;
    private String advertiserName;
    private String appSizeDesc;
    private String appStarDesc;
    private Double bidEcpmCent;
    private String brand;
    private String country;
    private final String countryCode;
    private String ctxAttributeConfig;
    private String ctxDisableExpr;
    private String ctxEnableExpr;
    private String denyBrand;
    private String denyModel;
    private String dispatchTimeEnd;
    private String dispatchTimeStart;
    private Integer displayTimes;
    private Long ecpmCent;
    private String endTime;
    private String extAdSlot;
    private String extImage;
    private String extraConfig;
    private String filterClientVersion;
    private final boolean h5LinkOpenByCct;
    private final boolean h5LinkPreload;
    private String id;
    private boolean isValid;
    private String model;
    private String name;
    private String scenes;
    private String showDate;
    private Integer showedTimes;
    private Integer sort;
    private String startTime;
    private String version;

    public MbAdDbPlans(String id2, String str, String str2, String str3, String str4, String str5, Integer num, Integer num2, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, Integer num3, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, Double d10, Long l10, boolean z10, boolean z11, boolean z12, String str31) {
        Intrinsics.h(id2, "id");
        this.id = id2;
        this.version = str;
        this.name = str2;
        this.startTime = str3;
        this.endTime = str4;
        this.extraConfig = str5;
        this.displayTimes = num;
        this.showedTimes = num2;
        this.showDate = str6;
        this.advertiserName = str7;
        this.advertiserAvatar = str8;
        this.advertiserAvatarPath = str9;
        this.brand = str10;
        this.denyBrand = str11;
        this.model = str12;
        this.denyModel = str13;
        this.country = str14;
        this.scenes = str15;
        this.adSource = str16;
        this.extAdSlot = str17;
        this.adMaterialList = str18;
        this.adPlanUpdateTime = str19;
        this.sort = num3;
        this.adShowLevel = str20;
        this.filterClientVersion = str21;
        this.adPlanCreateTime = str22;
        this.appStarDesc = str23;
        this.appSizeDesc = str24;
        this.ctxEnableExpr = str25;
        this.ctxDisableExpr = str26;
        this.ctxAttributeConfig = str27;
        this.dispatchTimeStart = str28;
        this.dispatchTimeEnd = str29;
        this.extImage = str30;
        this.bidEcpmCent = d10;
        this.ecpmCent = l10;
        this.isValid = z10;
        this.h5LinkPreload = z11;
        this.h5LinkOpenByCct = z12;
        this.countryCode = str31;
    }

    public final String getId() {
        return this.id;
    }

    public final String getAdvertiserName() {
        return this.advertiserName;
    }

    public final String getAdvertiserAvatar() {
        return this.advertiserAvatar;
    }

    public final String getAdvertiserAvatarPath() {
        return this.advertiserAvatarPath;
    }

    public final String getBrand() {
        return this.brand;
    }

    public final String getDenyBrand() {
        return this.denyBrand;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getDenyModel() {
        return this.denyModel;
    }

    public final String getCountry() {
        return this.country;
    }

    public final String getScenes() {
        return this.scenes;
    }

    public final String getAdSource() {
        return this.adSource;
    }

    public final String getVersion() {
        return this.version;
    }

    public final String getExtAdSlot() {
        return this.extAdSlot;
    }

    public final String getAdMaterialList() {
        return this.adMaterialList;
    }

    public final String getAdPlanUpdateTime() {
        return this.adPlanUpdateTime;
    }

    public final Integer getSort() {
        return this.sort;
    }

    public final String getAdShowLevel() {
        return this.adShowLevel;
    }

    public final String getFilterClientVersion() {
        return this.filterClientVersion;
    }

    public final String getAdPlanCreateTime() {
        return this.adPlanCreateTime;
    }

    public final String getAppStarDesc() {
        return this.appStarDesc;
    }

    public final String getAppSizeDesc() {
        return this.appSizeDesc;
    }

    public final String getCtxEnableExpr() {
        return this.ctxEnableExpr;
    }

    public final String getName() {
        return this.name;
    }

    public final String getCtxDisableExpr() {
        return this.ctxDisableExpr;
    }

    public final String getCtxAttributeConfig() {
        return this.ctxAttributeConfig;
    }

    public final String getDispatchTimeStart() {
        return this.dispatchTimeStart;
    }

    public final String getDispatchTimeEnd() {
        return this.dispatchTimeEnd;
    }

    public final String getExtImage() {
        return this.extImage;
    }

    public final Double getBidEcpmCent() {
        return this.bidEcpmCent;
    }

    public final Long getEcpmCent() {
        return this.ecpmCent;
    }

    public final boolean getIsValid() {
        return this.isValid;
    }

    public final boolean getH5LinkPreload() {
        return this.h5LinkPreload;
    }

    public final boolean getH5LinkOpenByCct() {
        return this.h5LinkOpenByCct;
    }

    public final String getStartTime() {
        return this.startTime;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getEndTime() {
        return this.endTime;
    }

    public final String getExtraConfig() {
        return this.extraConfig;
    }

    public final Integer getDisplayTimes() {
        return this.displayTimes;
    }

    public final Integer getShowedTimes() {
        return this.showedTimes;
    }

    public final String getShowDate() {
        return this.showDate;
    }

    public final MbAdDbPlans copy(String id2, String version, String name, String startTime, String endTime, String extraConfig, Integer displayTimes, Integer showedTimes, String showDate, String advertiserName, String advertiserAvatar, String advertiserAvatarPath, String brand, String denyBrand, String model, String denyModel, String country, String scenes, String adSource, String extAdSlot, String adMaterialList, String adPlanUpdateTime, Integer sort, String adShowLevel, String filterClientVersion, String adPlanCreateTime, String appStarDesc, String appSizeDesc, String ctxEnableExpr, String ctxDisableExpr, String ctxAttributeConfig, String dispatchTimeStart, String dispatchTimeEnd, String extImage, Double bidEcpmCent, Long ecpmCent, boolean isValid, boolean h5LinkPreload, boolean h5LinkOpenByCct, String countryCode) {
        Intrinsics.h(id2, "id");
        return new MbAdDbPlans(id2, version, name, startTime, endTime, extraConfig, displayTimes, showedTimes, showDate, advertiserName, advertiserAvatar, advertiserAvatarPath, brand, denyBrand, model, denyModel, country, scenes, adSource, extAdSlot, adMaterialList, adPlanUpdateTime, sort, adShowLevel, filterClientVersion, adPlanCreateTime, appStarDesc, appSizeDesc, ctxEnableExpr, ctxDisableExpr, ctxAttributeConfig, dispatchTimeStart, dispatchTimeEnd, extImage, bidEcpmCent, ecpmCent, isValid, h5LinkPreload, h5LinkOpenByCct, countryCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MbAdDbPlans)) {
            return false;
        }
        MbAdDbPlans mbAdDbPlans = (MbAdDbPlans) other;
        return Intrinsics.c(this.id, mbAdDbPlans.id) && Intrinsics.c(this.version, mbAdDbPlans.version) && Intrinsics.c(this.name, mbAdDbPlans.name) && Intrinsics.c(this.startTime, mbAdDbPlans.startTime) && Intrinsics.c(this.endTime, mbAdDbPlans.endTime) && Intrinsics.c(this.extraConfig, mbAdDbPlans.extraConfig) && Intrinsics.c(this.displayTimes, mbAdDbPlans.displayTimes) && Intrinsics.c(this.showedTimes, mbAdDbPlans.showedTimes) && Intrinsics.c(this.showDate, mbAdDbPlans.showDate) && Intrinsics.c(this.advertiserName, mbAdDbPlans.advertiserName) && Intrinsics.c(this.advertiserAvatar, mbAdDbPlans.advertiserAvatar) && Intrinsics.c(this.advertiserAvatarPath, mbAdDbPlans.advertiserAvatarPath) && Intrinsics.c(this.brand, mbAdDbPlans.brand) && Intrinsics.c(this.denyBrand, mbAdDbPlans.denyBrand) && Intrinsics.c(this.model, mbAdDbPlans.model) && Intrinsics.c(this.denyModel, mbAdDbPlans.denyModel) && Intrinsics.c(this.country, mbAdDbPlans.country) && Intrinsics.c(this.scenes, mbAdDbPlans.scenes) && Intrinsics.c(this.adSource, mbAdDbPlans.adSource) && Intrinsics.c(this.extAdSlot, mbAdDbPlans.extAdSlot) && Intrinsics.c(this.adMaterialList, mbAdDbPlans.adMaterialList) && Intrinsics.c(this.adPlanUpdateTime, mbAdDbPlans.adPlanUpdateTime) && Intrinsics.c(this.sort, mbAdDbPlans.sort) && Intrinsics.c(this.adShowLevel, mbAdDbPlans.adShowLevel) && Intrinsics.c(this.filterClientVersion, mbAdDbPlans.filterClientVersion) && Intrinsics.c(this.adPlanCreateTime, mbAdDbPlans.adPlanCreateTime) && Intrinsics.c(this.appStarDesc, mbAdDbPlans.appStarDesc) && Intrinsics.c(this.appSizeDesc, mbAdDbPlans.appSizeDesc) && Intrinsics.c(this.ctxEnableExpr, mbAdDbPlans.ctxEnableExpr) && Intrinsics.c(this.ctxDisableExpr, mbAdDbPlans.ctxDisableExpr) && Intrinsics.c(this.ctxAttributeConfig, mbAdDbPlans.ctxAttributeConfig) && Intrinsics.c(this.dispatchTimeStart, mbAdDbPlans.dispatchTimeStart) && Intrinsics.c(this.dispatchTimeEnd, mbAdDbPlans.dispatchTimeEnd) && Intrinsics.c(this.extImage, mbAdDbPlans.extImage) && Intrinsics.c(this.bidEcpmCent, mbAdDbPlans.bidEcpmCent) && Intrinsics.c(this.ecpmCent, mbAdDbPlans.ecpmCent) && this.isValid == mbAdDbPlans.isValid && this.h5LinkPreload == mbAdDbPlans.h5LinkPreload && this.h5LinkOpenByCct == mbAdDbPlans.h5LinkOpenByCct && Intrinsics.c(this.countryCode, mbAdDbPlans.countryCode);
    }

    public final String getAdMaterialList() {
        return this.adMaterialList;
    }

    public final String getAdPlanCreateTime() {
        return this.adPlanCreateTime;
    }

    public final String getAdPlanUpdateTime() {
        return this.adPlanUpdateTime;
    }

    public final String getAdShowLevel() {
        return this.adShowLevel;
    }

    public final String getAdSource() {
        return this.adSource;
    }

    public final String getAdvertiserAvatar() {
        return this.advertiserAvatar;
    }

    public final String getAdvertiserAvatarPath() {
        return this.advertiserAvatarPath;
    }

    public final String getAdvertiserName() {
        return this.advertiserName;
    }

    public final String getAppSizeDesc() {
        return this.appSizeDesc;
    }

    public final String getAppStarDesc() {
        return this.appStarDesc;
    }

    public final Double getBidEcpmCent() {
        return this.bidEcpmCent;
    }

    public final String getBrand() {
        return this.brand;
    }

    public final String getCountry() {
        return this.country;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getCtxAttributeConfig() {
        return this.ctxAttributeConfig;
    }

    public final String getCtxDisableExpr() {
        return this.ctxDisableExpr;
    }

    public final String getCtxEnableExpr() {
        return this.ctxEnableExpr;
    }

    public final String getDenyBrand() {
        return this.denyBrand;
    }

    public final String getDenyModel() {
        return this.denyModel;
    }

    public final String getDispatchTimeEnd() {
        return this.dispatchTimeEnd;
    }

    public final String getDispatchTimeStart() {
        return this.dispatchTimeStart;
    }

    public final Integer getDisplayTimes() {
        return this.displayTimes;
    }

    public final Long getEcpmCent() {
        return this.ecpmCent;
    }

    public final String getEndTime() {
        return this.endTime;
    }

    public final String getExtAdSlot() {
        return this.extAdSlot;
    }

    public final String getExtImage() {
        return this.extImage;
    }

    public final String getExtraConfig() {
        return this.extraConfig;
    }

    public final String getFilterClientVersion() {
        return this.filterClientVersion;
    }

    public final boolean getH5LinkOpenByCct() {
        return this.h5LinkOpenByCct;
    }

    public final boolean getH5LinkPreload() {
        return this.h5LinkPreload;
    }

    public final String getId() {
        return this.id;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getName() {
        return this.name;
    }

    public final String getScenes() {
        return this.scenes;
    }

    public final String getShowDate() {
        return this.showDate;
    }

    public final Integer getShowedTimes() {
        return this.showedTimes;
    }

    public final Integer getSort() {
        return this.sort;
    }

    public final String getStartTime() {
        return this.startTime;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        String str = this.version;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.name;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.startTime;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.endTime;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.extraConfig;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num = this.displayTimes;
        int iHashCode7 = (iHashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.showedTimes;
        int iHashCode8 = (iHashCode7 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str6 = this.showDate;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.advertiserName;
        int iHashCode10 = (iHashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.advertiserAvatar;
        int iHashCode11 = (iHashCode10 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.advertiserAvatarPath;
        int iHashCode12 = (iHashCode11 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.brand;
        int iHashCode13 = (iHashCode12 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.denyBrand;
        int iHashCode14 = (iHashCode13 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.model;
        int iHashCode15 = (iHashCode14 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.denyModel;
        int iHashCode16 = (iHashCode15 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.country;
        int iHashCode17 = (iHashCode16 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.scenes;
        int iHashCode18 = (iHashCode17 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.adSource;
        int iHashCode19 = (iHashCode18 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.extAdSlot;
        int iHashCode20 = (iHashCode19 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.adMaterialList;
        int iHashCode21 = (iHashCode20 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.adPlanUpdateTime;
        int iHashCode22 = (iHashCode21 + (str19 == null ? 0 : str19.hashCode())) * 31;
        Integer num3 = this.sort;
        int iHashCode23 = (iHashCode22 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str20 = this.adShowLevel;
        int iHashCode24 = (iHashCode23 + (str20 == null ? 0 : str20.hashCode())) * 31;
        String str21 = this.filterClientVersion;
        int iHashCode25 = (iHashCode24 + (str21 == null ? 0 : str21.hashCode())) * 31;
        String str22 = this.adPlanCreateTime;
        int iHashCode26 = (iHashCode25 + (str22 == null ? 0 : str22.hashCode())) * 31;
        String str23 = this.appStarDesc;
        int iHashCode27 = (iHashCode26 + (str23 == null ? 0 : str23.hashCode())) * 31;
        String str24 = this.appSizeDesc;
        int iHashCode28 = (iHashCode27 + (str24 == null ? 0 : str24.hashCode())) * 31;
        String str25 = this.ctxEnableExpr;
        int iHashCode29 = (iHashCode28 + (str25 == null ? 0 : str25.hashCode())) * 31;
        String str26 = this.ctxDisableExpr;
        int iHashCode30 = (iHashCode29 + (str26 == null ? 0 : str26.hashCode())) * 31;
        String str27 = this.ctxAttributeConfig;
        int iHashCode31 = (iHashCode30 + (str27 == null ? 0 : str27.hashCode())) * 31;
        String str28 = this.dispatchTimeStart;
        int iHashCode32 = (iHashCode31 + (str28 == null ? 0 : str28.hashCode())) * 31;
        String str29 = this.dispatchTimeEnd;
        int iHashCode33 = (iHashCode32 + (str29 == null ? 0 : str29.hashCode())) * 31;
        String str30 = this.extImage;
        int iHashCode34 = (iHashCode33 + (str30 == null ? 0 : str30.hashCode())) * 31;
        Double d10 = this.bidEcpmCent;
        int iHashCode35 = (iHashCode34 + (d10 == null ? 0 : d10.hashCode())) * 31;
        Long l10 = this.ecpmCent;
        int iHashCode36 = (((((((iHashCode35 + (l10 == null ? 0 : l10.hashCode())) * 31) + e.a(this.isValid)) * 31) + e.a(this.h5LinkPreload)) * 31) + e.a(this.h5LinkOpenByCct)) * 31;
        String str31 = this.countryCode;
        return iHashCode36 + (str31 != null ? str31.hashCode() : 0);
    }

    public final boolean isValid() {
        return this.isValid;
    }

    public final void setAdMaterialList(String str) {
        this.adMaterialList = str;
    }

    public final void setAdPlanCreateTime(String str) {
        this.adPlanCreateTime = str;
    }

    public final void setAdPlanUpdateTime(String str) {
        this.adPlanUpdateTime = str;
    }

    public final void setAdShowLevel(String str) {
        this.adShowLevel = str;
    }

    public final void setAdSource(String str) {
        this.adSource = str;
    }

    public final void setAdvertiserAvatar(String str) {
        this.advertiserAvatar = str;
    }

    public final void setAdvertiserAvatarPath(String str) {
        this.advertiserAvatarPath = str;
    }

    public final void setAdvertiserName(String str) {
        this.advertiserName = str;
    }

    public final void setAppSizeDesc(String str) {
        this.appSizeDesc = str;
    }

    public final void setAppStarDesc(String str) {
        this.appStarDesc = str;
    }

    public final void setBidEcpmCent(Double d10) {
        this.bidEcpmCent = d10;
    }

    public final void setBrand(String str) {
        this.brand = str;
    }

    public final void setCountry(String str) {
        this.country = str;
    }

    public final void setCtxAttributeConfig(String str) {
        this.ctxAttributeConfig = str;
    }

    public final void setCtxDisableExpr(String str) {
        this.ctxDisableExpr = str;
    }

    public final void setCtxEnableExpr(String str) {
        this.ctxEnableExpr = str;
    }

    public final void setDenyBrand(String str) {
        this.denyBrand = str;
    }

    public final void setDenyModel(String str) {
        this.denyModel = str;
    }

    public final void setDispatchTimeEnd(String str) {
        this.dispatchTimeEnd = str;
    }

    public final void setDispatchTimeStart(String str) {
        this.dispatchTimeStart = str;
    }

    public final void setDisplayTimes(Integer num) {
        this.displayTimes = num;
    }

    public final void setEcpmCent(Long l10) {
        this.ecpmCent = l10;
    }

    public final void setEndTime(String str) {
        this.endTime = str;
    }

    public final void setExtAdSlot(String str) {
        this.extAdSlot = str;
    }

    public final void setExtImage(String str) {
        this.extImage = str;
    }

    public final void setExtraConfig(String str) {
        this.extraConfig = str;
    }

    public final void setFilterClientVersion(String str) {
        this.filterClientVersion = str;
    }

    public final void setId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.id = str;
    }

    public final void setModel(String str) {
        this.model = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setScenes(String str) {
        this.scenes = str;
    }

    public final void setShowDate(String str) {
        this.showDate = str;
    }

    public final void setShowedTimes(Integer num) {
        this.showedTimes = num;
    }

    public final void setSort(Integer num) {
        this.sort = num;
    }

    public final void setStartTime(String str) {
        this.startTime = str;
    }

    public final void setValid(boolean z10) {
        this.isValid = z10;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "MbAdDbPlans(id=" + this.id + ", version=" + this.version + ", name=" + this.name + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", extraConfig=" + this.extraConfig + ", displayTimes=" + this.displayTimes + ", showedTimes=" + this.showedTimes + ", showDate=" + this.showDate + ", advertiserName=" + this.advertiserName + ", advertiserAvatar=" + this.advertiserAvatar + ", advertiserAvatarPath=" + this.advertiserAvatarPath + ", brand=" + this.brand + ", denyBrand=" + this.denyBrand + ", model=" + this.model + ", denyModel=" + this.denyModel + ", country=" + this.country + ", scenes=" + this.scenes + ", adSource=" + this.adSource + ", extAdSlot=" + this.extAdSlot + ", adMaterialList=" + this.adMaterialList + ", adPlanUpdateTime=" + this.adPlanUpdateTime + ", sort=" + this.sort + ", adShowLevel=" + this.adShowLevel + ", filterClientVersion=" + this.filterClientVersion + ", adPlanCreateTime=" + this.adPlanCreateTime + ", appStarDesc=" + this.appStarDesc + ", appSizeDesc=" + this.appSizeDesc + ", ctxEnableExpr=" + this.ctxEnableExpr + ", ctxDisableExpr=" + this.ctxDisableExpr + ", ctxAttributeConfig=" + this.ctxAttributeConfig + ", dispatchTimeStart=" + this.dispatchTimeStart + ", dispatchTimeEnd=" + this.dispatchTimeEnd + ", extImage=" + this.extImage + ", bidEcpmCent=" + this.bidEcpmCent + ", ecpmCent=" + this.ecpmCent + ", isValid=" + this.isValid + ", h5LinkPreload=" + this.h5LinkPreload + ", h5LinkOpenByCct=" + this.h5LinkOpenByCct + ", countryCode=" + this.countryCode + ")";
    }

    public MbAdDbPlans(String str, String str2, String str3, String str4, String str5, String str6, Integer num, Integer num2, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, Integer num3, String str21, String str22, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, Double d10, Long l10, boolean z10, boolean z11, boolean z12, String str32, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? null : str4, (i10 & 16) != 0 ? null : str5, (i10 & 32) != 0 ? null : str6, (i10 & 64) != 0 ? null : num, (i10 & 128) != 0 ? null : num2, (i10 & 256) != 0 ? null : str7, (i10 & 512) != 0 ? null : str8, (i10 & 1024) != 0 ? null : str9, (i10 & 2048) != 0 ? null : str10, (i10 & 4096) != 0 ? null : str11, (i10 & 8192) != 0 ? null : str12, (i10 & 16384) != 0 ? null : str13, (i10 & 32768) != 0 ? null : str14, (i10 & 65536) != 0 ? null : str15, (i10 & 131072) != 0 ? null : str16, (i10 & 262144) != 0 ? null : str17, (i10 & 524288) != 0 ? null : str18, (i10 & 1048576) != 0 ? null : str19, (i10 & 2097152) != 0 ? null : str20, (i10 & 4194304) != 0 ? Integer.MAX_VALUE : num3, (i10 & 8388608) != 0 ? null : str21, (i10 & 16777216) != 0 ? null : str22, (i10 & ASTNode.PCTX_STORED) != 0 ? null : str23, (i10 & 67108864) != 0 ? null : str24, (i10 & ASTNode.NOJIT) != 0 ? null : str25, (i10 & ASTNode.DEOP) != 0 ? null : str26, (i10 & ASTNode.DISCARD) != 0 ? null : str27, (i10 & 1073741824) != 0 ? null : str28, (i10 & Integer.MIN_VALUE) != 0 ? null : str29, (i11 & 1) != 0 ? null : str30, (i11 & 2) != 0 ? null : str31, (i11 & 4) != 0 ? null : d10, (i11 & 8) != 0 ? null : l10, (i11 & 16) != 0 ? false : z10, (i11 & 32) != 0 ? false : z11, (i11 & 64) == 0 ? z12 : false, (i11 & 128) != 0 ? null : str32);
    }
}
