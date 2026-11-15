package com.transsion.onlinevideo.tiktok;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.ThreadUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.dbdata.beans.onlinevideo.tiktok.ArticleData;
import com.transsion.livecaption.constant.ICode;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.home.OnlineHomeFragment;
import com.transsion.onlinevideo.tiktok.TiktokFragment;
import com.transsion.onlinevideo.tiktok.ad.AdSlotRemoveReason;
import com.transsion.onlinevideo.tiktok.repository.TiktokFeedRepository;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.utils.NetworkObserver;
import com.transsion.utils.ToastUtils;
import com.transsion.utils.a;
import defpackage.bka;
import defpackage.c06;
import defpackage.c74;
import defpackage.e74;
import defpackage.ela;
import defpackage.gd1;
import defpackage.h27;
import defpackage.j1a;
import defpackage.mc7;
import defpackage.vz6;
import defpackage.wn8;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import defpackage.yia;
import defpackage.zf1;
import defpackage.zfb;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b(\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\b\u0007*\u0002ß\u0001\u0018\u0000 ã\u00012\u00020\u00012\u00020\u0002:\u0002ä\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u001f\u0010\u001b\u001a\u00020\u00052\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u0010\nJ\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0007H\u0002¢\u0006\u0004\b$\u0010\nJ\u001d\u0010&\u001a\u00020\u00052\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00070\u0018H\u0002¢\u0006\u0004\b&\u0010\u001cJ\u0017\u0010'\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0007H\u0002¢\u0006\u0004\b'\u0010\nJ!\u0010+\u001a\u00020*2\u0006\u0010(\u001a\u00020\u00072\b\u0010)\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u000bH\u0002¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u000bH\u0002¢\u0006\u0004\b/\u0010.J\u0017\u00101\u001a\u00020\u00052\u0006\u00100\u001a\u00020*H\u0002¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0005H\u0002¢\u0006\u0004\b3\u0010\u0004J\u0017\u00104\u001a\u00020\u00052\u0006\u00100\u001a\u00020*H\u0002¢\u0006\u0004\b4\u00102J\u000f\u00105\u001a\u00020\u0005H\u0002¢\u0006\u0004\b5\u0010\u0004J\u0017\u00106\u001a\u00020\u00052\u0006\u00100\u001a\u00020*H\u0002¢\u0006\u0004\b6\u00102J\u000f\u00107\u001a\u00020\u0005H\u0002¢\u0006\u0004\b7\u0010\u0004J\u000f\u00108\u001a\u00020\u0005H\u0002¢\u0006\u0004\b8\u0010\u0004J\u0017\u00109\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0007H\u0002¢\u0006\u0004\b9\u0010\nJ\u0019\u0010;\u001a\u00020\u00052\b\b\u0002\u0010:\u001a\u00020\u000bH\u0002¢\u0006\u0004\b;\u0010\u000eJ\u0017\u0010=\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u0007H\u0002¢\u0006\u0004\b=\u0010\nJ\u000f\u0010>\u001a\u00020\u0005H\u0002¢\u0006\u0004\b>\u0010\u0004J\u000f\u0010?\u001a\u00020\u0005H\u0002¢\u0006\u0004\b?\u0010\u0004J\u0017\u0010@\u001a\u00020\u00052\u0006\u00100\u001a\u00020*H\u0002¢\u0006\u0004\b@\u00102J\u000f\u0010A\u001a\u00020\u0005H\u0002¢\u0006\u0004\bA\u0010\u0004J\u000f\u0010B\u001a\u00020\u0005H\u0002¢\u0006\u0004\bB\u0010\u0004J\u000f\u0010C\u001a\u00020\u0005H\u0002¢\u0006\u0004\bC\u0010\u0004J\u000f\u0010D\u001a\u00020\u0005H\u0002¢\u0006\u0004\bD\u0010\u0004J\u0017\u0010F\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u0007H\u0002¢\u0006\u0004\bF\u0010\nJ\u0017\u0010H\u001a\u00020\u00052\u0006\u0010G\u001a\u00020\u0007H\u0002¢\u0006\u0004\bH\u0010\nJ\u000f\u0010I\u001a\u00020\u0005H\u0002¢\u0006\u0004\bI\u0010\u0004J\u000f\u0010J\u001a\u00020\u0005H\u0002¢\u0006\u0004\bJ\u0010\u0004J\u000f\u0010K\u001a\u00020\u0005H\u0002¢\u0006\u0004\bK\u0010\u0004J\u000f\u0010L\u001a\u00020\u0005H\u0002¢\u0006\u0004\bL\u0010\u0004J\u0017\u0010N\u001a\u00020\u00052\u0006\u0010M\u001a\u00020\u0007H\u0002¢\u0006\u0004\bN\u0010\nJ\u000f\u0010O\u001a\u00020\u000bH\u0002¢\u0006\u0004\bO\u0010.J\u000f\u0010P\u001a\u00020\u0005H\u0002¢\u0006\u0004\bP\u0010\u0004J\u000f\u0010Q\u001a\u00020\u0005H\u0002¢\u0006\u0004\bQ\u0010\u0004J\u000f\u0010R\u001a\u00020\u000bH\u0002¢\u0006\u0004\bR\u0010.J\r\u0010T\u001a\u00020S¢\u0006\u0004\bT\u0010UJ\r\u0010V\u001a\u00020\u000b¢\u0006\u0004\bV\u0010.J\u0019\u0010Y\u001a\u00020\u00052\b\u0010X\u001a\u0004\u0018\u00010WH\u0016¢\u0006\u0004\bY\u0010ZJ-\u0010_\u001a\u0004\u0018\u00010\u00102\u0006\u0010\\\u001a\u00020[2\b\u0010^\u001a\u0004\u0018\u00010]2\b\u0010X\u001a\u0004\u0018\u00010WH\u0016¢\u0006\u0004\b_\u0010`J\u000f\u0010a\u001a\u00020\u0007H\u0014¢\u0006\u0004\ba\u0010bJ!\u0010d\u001a\u00020\u00052\u0006\u0010c\u001a\u00020\u00102\b\u0010X\u001a\u0004\u0018\u00010WH\u0016¢\u0006\u0004\bd\u0010eJ\u001f\u0010h\u001a\u00020\u00052\u0006\u0010f\u001a\u00020\u00072\u0006\u00100\u001a\u00020gH\u0016¢\u0006\u0004\bh\u0010iJ%\u0010j\u001a\u00020\u00052\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00070\u00182\u0006\u00100\u001a\u00020gH\u0016¢\u0006\u0004\bj\u0010kJ\u0013\u0010l\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018¢\u0006\u0004\bl\u0010mJ\r\u0010n\u001a\u00020\u000b¢\u0006\u0004\bn\u0010.J\r\u0010o\u001a\u00020\u0005¢\u0006\u0004\bo\u0010\u0004J/\u0010t\u001a\u00020\u00052\u0006\u0010p\u001a\u00020\u00072\u0016\u0010s\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010r0q\"\u0004\u0018\u00010rH\u0016¢\u0006\u0004\bt\u0010uJ\u000f\u0010v\u001a\u00020\u0005H\u0016¢\u0006\u0004\bv\u0010\u0004J\u000f\u0010w\u001a\u00020\u0005H\u0016¢\u0006\u0004\bw\u0010\u0004J\u000f\u0010x\u001a\u00020\u0005H\u0016¢\u0006\u0004\bx\u0010\u0004J\u0017\u0010z\u001a\u00020\u00052\u0006\u0010y\u001a\u00020\u000bH\u0016¢\u0006\u0004\bz\u0010\u000eJ\u0017\u0010|\u001a\u00020\u00052\u0006\u0010{\u001a\u00020\u000bH\u0017¢\u0006\u0004\b|\u0010\u000eJ\u000f\u0010}\u001a\u00020\u0005H\u0016¢\u0006\u0004\b}\u0010\u0004J\u001a\u0010\u0080\u0001\u001a\u00020\u00052\b\u0010\u007f\u001a\u0004\u0018\u00010~¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u000f\u0010\u0082\u0001\u001a\u00020\u0005¢\u0006\u0005\b\u0082\u0001\u0010\u0004J\u0011\u0010\u0083\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0005\b\u0083\u0001\u0010.R*\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0084\u0001\u0010\u0085\u0001\u001a\u0005\b\u0086\u0001\u0010\u0012\"\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001c\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0090\u0001R\u001c\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0090\u0001R\u0019\u0010\u0098\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001c\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u0099\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u001b\u0010\u009f\u0001\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001R\u001b\u0010¡\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010\u0085\u0001R\u001c\u0010¥\u0001\u001a\u0005\u0018\u00010¢\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R\u001c\u0010§\u0001\u001a\u0005\u0018\u00010¢\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010¤\u0001R\u001c\u0010©\u0001\u001a\u0005\u0018\u00010¢\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010¤\u0001R\u0019\u0010¬\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010«\u0001R\u0019\u0010®\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010«\u0001R*\u0010\u007f\u001a\u0004\u0018\u00010~8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¯\u0001\u0010°\u0001\u001a\u0006\b±\u0001\u0010²\u0001\"\u0006\b³\u0001\u0010\u0081\u0001R\u0019\u0010µ\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010\u0097\u0001R\u001a\u0010¹\u0001\u001a\u00030¶\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010¸\u0001R\u0019\u0010»\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010\u0097\u0001R\u0019\u0010¾\u0001\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010½\u0001R\u0019\u0010À\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010«\u0001R\u001c\u0010Ä\u0001\u001a\u0005\u0018\u00010Á\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010Ã\u0001R\u001c\u0010È\u0001\u001a\u0005\u0018\u00010Å\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010Ç\u0001R\u0018\u0010Ì\u0001\u001a\u00030É\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÊ\u0001\u0010Ë\u0001R\u0019\u0010Í\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010«\u0001R)\u0010Ñ\u0001\u001a\u0014\u0012\u0004\u0012\u00020*0Î\u0001j\t\u0012\u0004\u0012\u00020*`Ï\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¸\u0001\u0010Ð\u0001R\u0017\u0010Ô\u0001\u001a\u00020S8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÒ\u0001\u0010Ó\u0001R\u0019\u0010Ö\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÕ\u0001\u0010«\u0001R\u0019\u0010Ø\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b×\u0001\u0010\u0097\u0001R\u0019\u0010Ú\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0001\u0010«\u0001R\u0019\u0010Ü\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÛ\u0001\u0010«\u0001R\u0019\u0010Þ\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÝ\u0001\u0010«\u0001R\u0018\u0010â\u0001\u001a\u00030ß\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bà\u0001\u0010á\u0001¨\u0006å\u0001"}, d2 = {"Lcom/transsion/onlinevideo/tiktok/TiktokFragment;", "Lcom/transsion/playercommon/fragments/BaseFragment;", "Lyia;", MethodDecl.initName, "()V", "Lzfb;", "s1", "", "navigationBarBottom", "v0", "(I)V", "", "loading", "L0", "(Z)V", "J0", "Landroid/view/View;", "B0", "()Landroid/view/View;", "f1", "C1", "u1", "Q0", "T0", "", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;", "list", "e1", "(Ljava/util/List;)V", "", NotificationCompat.CATEGORY_ERROR, "d1", "(Ljava/lang/Throwable;)V", "position", "a1", "videoGlobalPosition", "Z0", "removedPositions", "q0", "z1", "globalPosition", "article", "", "y0", "(ILcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Ljava/lang/String;", "P0", "()Z", "I0", "reason", "Y0", "(Ljava/lang/String;)V", "G0", "x0", "w0", "y1", "h1", "i1", "H0", "reclaimForeignMute", "t0", TtmlNode.CENTER, "m1", "F0", "F1", "E0", "D1", "A0", "j1", "k1", "hintType", "p1", "networkType", "z0", "l1", "r0", "n1", "s0", ICode.CALL.CALL_KEY_STATE, "G1", "M0", "A1", "B1", "N0", "Lbka;", "b1", "()Lbka;", "c1", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onLayoutId", "()I", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "removedGlobalIndex", "Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;", "f", "(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V", "e", "(Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V", "x1", "()Ljava/util/List;", "O0", "g1", "eventId", "", "", "args", "didReceivedNotification", "(I[Ljava/lang/Object;)V", "markPointPageShow", "onPause", "onDestroy", "isVisible", "setParentVisible", "isVisibleToUser", "setUserVisibleHint", "onResume", "Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;", "mTopBarCallback", "r1", "(Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;)V", "w1", "onBackPressed", CmcdData.STREAM_TYPE_LIVE, "Landroid/view/View;", "getMFragmentView", "setMFragmentView", "(Landroid/view/View;)V", "mFragmentView", "Lcom/transsion/utils/NetworkObserver;", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/transsion/utils/NetworkObserver;", "networkObserver", "Ljava/lang/Runnable;", "n", "Ljava/lang/Runnable;", "networkStateDebounceRunnable", "o", "resumePlaybackRunnable", TtmlNode.TAG_P, "applyNetworkOnVisibleRunnable", "q", "I", "mNetState", "Landroidx/viewpager2/widget/ViewPager2;", "r", "Landroidx/viewpager2/widget/ViewPager2;", "mVpVideos", "s", "Landroid/view/ViewGroup;", "mRootContainer", "t", "mEmptyView", "Landroid/widget/LinearLayout;", "u", "Landroid/widget/LinearLayout;", "mLoadingView", "v", "mNoWifiView", "w", "mNoContentView", "x", "Z", "mIsLoading", "y", "mHaveNetWork", "z", "Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;", "getMTopBarCallback", "()Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;", "setMTopBarCallback", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "mHeaderMargin", "", "B", "J", "mTrackLastShowTime", "C", "mChannelId", "D", "Ljava/lang/String;", "mChannelName", ExifInterface.LONGITUDE_EAST, "mTrackVisibleTab", "Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;", "F", "Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;", "mAdapter", "Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;", "mRepository", "Lgd1;", "H", "Lgd1;", "mDisposables", "mLoadingMore", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "Ljava/util/HashSet;", "mClientShowReportedKeys", "K", "Lbka;", "mMuteSession", "L", "mMuteEnterApplied", "M", "mMuteLastPagePosition", "N", "mVolumeObserverRegistered", "O", "mHostPlaybackSuspended", "P", "mPendingResumePlayback", "com/transsion/onlinevideo/tiktok/TiktokFragment$b", "Q", "Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;", "mNetworkStatusCallback", "R", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "onlinevideo_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TiktokFragment extends BaseFragment implements yia {

    public int mHeaderMargin;

    public long mTrackLastShowTime;

    public int mChannelId;

    public String mChannelName;

    public boolean mTrackVisibleTab;

    public TiktokVideoPagerAdapter mAdapter;

    public TiktokFeedRepository mRepository;

    public final gd1 mDisposables;

    public volatile boolean mLoadingMore;

    public final HashSet mClientShowReportedKeys;

    public final bka mMuteSession;

    public boolean mMuteEnterApplied;

    public int mMuteLastPagePosition;

    public boolean mVolumeObserverRegistered;

    public boolean mHostPlaybackSuspended;

    public boolean mPendingResumePlayback;

    public final b mNetworkStatusCallback;

    public View mFragmentView;

    public NetworkObserver networkObserver;

    public Runnable networkStateDebounceRunnable;

    public Runnable resumePlaybackRunnable;

    public Runnable applyNetworkOnVisibleRunnable;

    public int mNetState;

    public ViewPager2 mVpVideos;

    public ViewGroup mRootContainer;

    public View mEmptyView;

    public LinearLayout mLoadingView;

    public LinearLayout mNoWifiView;

    public LinearLayout mNoContentView;

    public volatile boolean mIsLoading;

    public boolean mHaveNetWork;

    public OnlineHomeFragment.e mTopBarCallback;

    public static final class b implements vz6 {
        public b() {
        }

        public static final void e(TiktokFragment tiktokFragment, int i) {
            Context context = tiktokFragment.getContext();
            if (context == null) {
                return;
            }
            boolean z = tiktokFragment.mHaveNetWork;
            tiktokFragment.mNetState = i;
            tiktokFragment.p1(i);
            if (TiktokPlayNetworkHelper.f(context, Integer.valueOf(i)) != 0) {
                tiktokFragment.mHaveNetWork = true;
                if (z) {
                    return;
                }
                TiktokVideoPagerAdapter tiktokVideoPagerAdapter = tiktokFragment.mAdapter;
                if ((tiktokVideoPagerAdapter != null ? tiktokVideoPagerAdapter.e0() : 0) == 0) {
                    tiktokFragment.Q0();
                }
            }
        }

        public static final void f(TiktokFragment tiktokFragment) {
            tiktokFragment.mNetState = 0;
            tiktokFragment.p1(0);
        }

        public static final void g(TiktokFragment tiktokFragment) {
            tiktokFragment.mNetState = 4;
            tiktokFragment.p1(4);
        }

        public static final void h(TiktokFragment tiktokFragment) {
            tiktokFragment.mNetState = 1;
            tiktokFragment.p1(1);
        }

        @Override
        public void onConnect(final int i) {
            super.onConnect(i);
            final TiktokFragment tiktokFragment = TiktokFragment.this;
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    TiktokFragment.b.e(tiktokFragment, i);
                }
            });
        }

        @Override
        public void onDisconnect() {
            final TiktokFragment tiktokFragment = TiktokFragment.this;
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    TiktokFragment.b.f(tiktokFragment);
                }
            });
        }

        @Override
        public void onMobile() {
            final TiktokFragment tiktokFragment = TiktokFragment.this;
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    TiktokFragment.b.g(tiktokFragment);
                }
            });
        }

        @Override
        public void onWifi() {
            final TiktokFragment tiktokFragment = TiktokFragment.this;
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    TiktokFragment.b.h(tiktokFragment);
                }
            });
        }
    }

    public static final class c implements TiktokVideoPagerAdapter.c {
        public c() {
        }

        @Override
        public void a(int i) {
            TiktokFragment.this.z1(i);
        }

        @Override
        public void b(int i) {
            TiktokFragment.this.a1(i);
            TiktokFragment.this.Z0(i);
        }

        @Override
        public boolean c() {
            return TiktokFragment.this.P0();
        }
    }

    public TiktokFragment() {
        this.mIsVisibleToUser = false;
        this.mChannelId = -1;
        this.mChannelName = "";
        this.mDisposables = new gd1();
        this.mClientShowReportedKeys = new HashSet();
        this.mMuteSession = new bka();
        this.mMuteLastPagePosition = -1;
        this.mNetworkStatusCallback = new b();
    }

    private final View B0() {
        ViewStub viewStub;
        View view = this.mEmptyView;
        if (view != null) {
            return view;
        }
        View view2 = this.mFragmentView;
        if (view2 == null || (viewStub = (ViewStub) view2.findViewById(R.id.online_video_empty_view)) == null) {
            return null;
        }
        try {
            this.mEmptyView = viewStub.inflate();
        } catch (Throwable th) {
            Log.w("visha_TiktokFragment", "inflate empty stub error: " + th.getMessage());
            this.mEmptyView = view2.findViewById(R.id.loading_container);
        }
        View view3 = this.mEmptyView;
        if (view3 == null) {
            return null;
        }
        this.mLoadingView = (LinearLayout) view3.findViewById(R.id.ll_loading_channel);
        this.mNoWifiView = (LinearLayout) view3.findViewById(R.id.ll_no_wifi);
        this.mNoContentView = (LinearLayout) view3.findViewById(R.id.ll_empty);
        TextView textView = (TextView) view3.findViewById(R.id.tv_retry);
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view4) {
                    TiktokFragment.C0(this.b, view4);
                }
            });
        }
        TextView textView2 = (TextView) view3.findViewById(R.id.tv_content_retry);
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view4) {
                    TiktokFragment.D0(this.b, view4);
                }
            });
        }
        return view3;
    }

    public static final void C0(TiktokFragment tiktokFragment, View view) {
        tiktokFragment.f1();
    }

    public static final void D0(TiktokFragment tiktokFragment, View view) {
        tiktokFragment.f1();
    }

    public static final void E1(TiktokFragment tiktokFragment) {
        tiktokFragment.resumePlaybackRunnable = null;
        tiktokFragment.A0();
    }

    private final void G1(int state) {
        this.mHaveNetWork = state != 0;
        l1();
        if (this.mHaveNetWork) {
            View view = this.mEmptyView;
            if (view != null && view.getVisibility() == 0) {
                TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
                if ((tiktokVideoPagerAdapter != null ? tiktokVideoPagerAdapter.e0() : 0) > 0) {
                    J0();
                    return;
                }
            }
            ViewPager2 viewPager2 = this.mVpVideos;
            if (viewPager2 != null) {
                viewPager2.setVisibility(0);
                return;
            }
            return;
        }
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter2 = this.mAdapter;
        if ((tiktokVideoPagerAdapter2 != null ? tiktokVideoPagerAdapter2.e0() : 0) <= 0) {
            L0(false);
            return;
        }
        try {
            ToastUtils.s(com.transsion.playercommon.R.string.no_network);
        } catch (Throwable th) {
            Log.w("visha_TiktokFragment", "toast no_network error: " + th.getMessage());
        }
    }

    public static final void K0(TiktokFragment tiktokFragment) {
        View view = tiktokFragment.mEmptyView;
        if (view != null) {
            view.setVisibility(8);
        }
        ViewPager2 viewPager2 = tiktokFragment.mVpVideos;
        if (viewPager2 != null) {
            viewPager2.setVisibility(0);
        }
    }

    private final void L0(boolean loading) {
        this.mIsLoading = loading;
        if (B0() == null) {
            return;
        }
        View view = this.mEmptyView;
        if (view != null) {
            view.setVisibility(0);
        }
        ViewPager2 viewPager2 = this.mVpVideos;
        if (viewPager2 != null) {
            viewPager2.setVisibility(8);
        }
        boolean z = this.mHaveNetWork;
        LinearLayout linearLayout = this.mLoadingView;
        if (linearLayout != null) {
            linearLayout.setVisibility(loading ? 0 : 8);
        }
        LinearLayout linearLayout2 = this.mNoWifiView;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility((loading || z) ? 8 : 0);
        }
        LinearLayout linearLayout3 = this.mNoContentView;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility((loading || !z) ? 8 : 0);
        }
    }

    private final boolean M0() {
        return this.mIsVisibleToUser && this.mIsParentVisibleToUser && !this.mIsHide;
    }

    private final boolean N0() {
        return (!isAdded() || getView() == null || getActivity() == null) ? false : true;
    }

    public static final void R0(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final void S0(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final zfb U0(TiktokFragment tiktokFragment, List list) {
        tiktokFragment.mLoadingMore = false;
        tiktokFragment.e1(list);
        return zfb.a;
    }

    public static final void V0(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final zfb W0(TiktokFragment tiktokFragment, Throwable th) {
        tiktokFragment.mLoadingMore = false;
        y45.g(th);
        tiktokFragment.d1(th);
        return zfb.a;
    }

    public static final void X0(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final void o1(TiktokFragment tiktokFragment) {
        tiktokFragment.applyNetworkOnVisibleRunnable = null;
        tiktokFragment.s0();
    }

    public static final void q1(TiktokFragment tiktokFragment, int i) {
        Context context;
        if (tiktokFragment.N0() && (context = tiktokFragment.getContext()) != null) {
            int iF = TiktokPlayNetworkHelper.f(context, Integer.valueOf(i));
            tiktokFragment.mNetState = iF;
            tiktokFragment.mHaveNetWork = iF != 0;
            if (!tiktokFragment.mIsRealVisibleToUser) {
                Log.d("visha_TiktokFragment", "scheduleDispatchNetwork skip UI/player: not realVisible, type=" + iF + ", visible=" + tiktokFragment.mIsVisibleToUser + ", parent=" + tiktokFragment.mIsParentVisibleToUser);
                return;
            }
            tiktokFragment.z0(iF);
            if (iF == 0) {
                tiktokFragment.G1(0);
                return;
            }
            if (tiktokFragment.mHaveNetWork) {
                TiktokVideoPagerAdapter tiktokVideoPagerAdapter = tiktokFragment.mAdapter;
                if ((tiktokVideoPagerAdapter != null ? tiktokVideoPagerAdapter.e0() : 0) > 0) {
                    View view = tiktokFragment.mEmptyView;
                    if (view != null && view.getVisibility() == 0) {
                        tiktokFragment.J0();
                        return;
                    }
                    ViewPager2 viewPager2 = tiktokFragment.mVpVideos;
                    if (viewPager2 != null) {
                        viewPager2.setVisibility(0);
                    }
                }
            }
        }
    }

    public static final WindowInsetsCompat t1(TiktokFragment tiktokFragment, View view, WindowInsetsCompat windowInsetsCompat) {
        y45.j(view, "<unused var>");
        y45.j(windowInsetsCompat, "insets");
        tiktokFragment.v0(windowInsetsCompat.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom);
        return windowInsetsCompat;
    }

    public static void u0(TiktokFragment tiktokFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        tiktokFragment.t0(z);
    }

    public static final ViewPager2 v1(TiktokFragment tiktokFragment) {
        return tiktokFragment.mVpVideos;
    }

    public final void A0() {
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter;
        if (!N0() || (tiktokVideoPagerAdapter = this.mAdapter) == null) {
            return;
        }
        y45.g(tiktokVideoPagerAdapter);
        if (tiktokVideoPagerAdapter.e0() == 0) {
            return;
        }
        if (!P0()) {
            Y0("dispatch denied");
            return;
        }
        this.mPendingResumePlayback = false;
        this.mHostPlaybackSuspended = false;
        Log.d("visha_TiktokFragment", "tryResumePlayback");
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter2 = this.mAdapter;
        if (tiktokVideoPagerAdapter2 != null) {
            tiktokVideoPagerAdapter2.C0();
        }
    }

    public final void A1() {
        if (!M0() || !N0() || this.mChannelId <= -1 || this.mTrackLastShowTime > 0) {
            return;
        }
        Log.i("visha_TiktokFragment", "trackTtChannelShow");
        c06.r(this.mChannelId, this.mChannelName);
        this.mTrackLastShowTime = System.currentTimeMillis();
        this.mTrackVisibleTab = true;
    }

    public final void B1() {
        if (this.mTrackLastShowTime <= 0 || this.mChannelId <= -1) {
            return;
        }
        int iCurrentTimeMillis = (int) ((System.currentTimeMillis() - this.mTrackLastShowTime) / ((long) 1000));
        this.mTrackLastShowTime = 0L;
        this.mTrackVisibleTab = false;
        if (iCurrentTimeMillis > 0) {
            c06.s(this.mChannelId, this.mChannelName, iCurrentTimeMillis);
        }
    }

    public final void C1() {
        List listK;
        TiktokFeedRepository tiktokFeedRepository = this.mRepository;
        if (tiktokFeedRepository == null) {
            G1(0);
            return;
        }
        try {
            listK = tiktokFeedRepository.k();
        } catch (Throwable th) {
            Log.w("visha_TiktokFragment", "readCache error: " + th.getMessage());
            listK = null;
        }
        List list = listK;
        if (list == null || list.isEmpty()) {
            L0(false);
        } else {
            e1(listK);
            ToastUtils.s(com.transsion.playercommon.R.string.no_network);
        }
    }

    public final void D1() {
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if (tiktokVideoPagerAdapter != null) {
            y45.g(tiktokVideoPagerAdapter);
            if (tiktokVideoPagerAdapter.e0() != 0) {
                View view = this.mFragmentView;
                if (view == null) {
                    Y0("no view");
                    Log.d("visha_TiktokFragment", "tryResumePlayback deferred: no view, pending=" + this.mPendingResumePlayback);
                    return;
                }
                if (P0()) {
                    Runnable runnable = this.resumePlaybackRunnable;
                    if (runnable != null) {
                        view.removeCallbacks(runnable);
                    }
                    Runnable runnable2 = new Runnable() {
                        @Override
                        public final void run() {
                            TiktokFragment.E1(this.b);
                        }
                    };
                    this.resumePlaybackRunnable = runnable2;
                    view.post(runnable2);
                    return;
                }
                Y0("allowed=false");
                w0();
                Log.d("visha_TiktokFragment", "tryResumePlayback deferred: allowed=false, visible=" + this.mIsVisibleToUser + ", parent=" + this.mIsParentVisibleToUser + ", hide=" + this.mIsHide + ", resumed=" + isResumed() + ", pending=" + this.mPendingResumePlayback);
                return;
            }
        }
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter2 = this.mAdapter;
        Log.d("visha_TiktokFragment", "tryResumePlayback skipped: count=" + (tiktokVideoPagerAdapter2 != null ? tiktokVideoPagerAdapter2.e0() : 0));
        E0("tryResumePlayback");
        if (M0()) {
            Y0("empty feed");
        }
    }

    public final void E0(String reason) {
        if (!N0() || this.mRepository == null) {
            return;
        }
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if ((tiktokVideoPagerAdapter != null ? tiktokVideoPagerAdapter.e0() : 0) > 0 || this.mIsLoading || !M0()) {
            return;
        }
        Log.d("visha_TiktokFragment", "ensureFeedLoadedWhenEmpty: " + reason);
        if (this.mHaveNetWork) {
            Q0();
        } else {
            C1();
        }
    }

    public final void F0() {
        if (this.mVolumeObserverRegistered) {
            return;
        }
        h27.c().b(this, 1164);
        this.mVolumeObserverRegistered = true;
    }

    public final void F1() {
        if (this.mVolumeObserverRegistered) {
            h27.c().f(this, 1164);
            this.mVolumeObserverRegistered = false;
        }
    }

    public final void G0() {
        if (this.mPendingResumePlayback) {
            Log.d("visha_TiktokFragment", "flushPendingResumePlayback");
            D1();
        }
    }

    public final void H0(int position) {
        int i = this.mMuteLastPagePosition;
        if (i >= 0 && i != position) {
            this.mMuteSession.c();
            u0(this, false, 1, null);
        }
        this.mMuteLastPagePosition = position;
    }

    public final boolean I0() {
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        return (tiktokVideoPagerAdapter != null ? tiktokVideoPagerAdapter.e0() : 0) > 0;
    }

    public final void J0() {
        this.mIsLoading = false;
        View view = this.mEmptyView;
        if (view != null) {
            view.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    TiktokFragment.K0(this.b);
                }
            }, 300L);
            return;
        }
        ViewPager2 viewPager2 = this.mVpVideos;
        if (viewPager2 != null) {
            viewPager2.setVisibility(0);
        }
    }

    public final boolean getMHostPlaybackSuspended() {
        return this.mHostPlaybackSuspended;
    }

    public final boolean P0() {
        return N0() && this.mIsRealVisibleToUser && isResumed();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0012  */
    public final void Q0() {
        if (this.mRepository == null) {
            return;
        }
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if (tiktokVideoPagerAdapter != null) {
            y45.g(tiktokVideoPagerAdapter);
            if (tiktokVideoPagerAdapter.e0() == 0) {
                L0(true);
            }
        } else {
            L0(true);
        }
        TiktokFeedRepository tiktokFeedRepository = this.mRepository;
        y45.g(tiktokFeedRepository);
        mc7 mc7VarG = tiktokFeedRepository.g();
        final TiktokFragment$loadFirstPage$d$1 tiktokFragment$loadFirstPage$d$1 = new TiktokFragment$loadFirstPage$d$1(this);
        zf1 zf1Var = new zf1() {
            @Override
            public final void accept(Object obj) {
                TiktokFragment.R0(tiktokFragment$loadFirstPage$d$1, obj);
            }
        };
        final TiktokFragment$loadFirstPage$d$2 tiktokFragment$loadFirstPage$d$2 = new TiktokFragment$loadFirstPage$d$2(this);
        this.mDisposables.b(mc7VarG.a0(zf1Var, new zf1() {
            @Override
            public final void accept(Object obj) {
                TiktokFragment.S0(tiktokFragment$loadFirstPage$d$2, obj);
            }
        }));
    }

    public final void T0() {
        if (this.mRepository == null || this.mLoadingMore) {
            return;
        }
        this.mLoadingMore = true;
        TiktokFeedRepository tiktokFeedRepository = this.mRepository;
        y45.g(tiktokFeedRepository);
        mc7 mc7VarJ = tiktokFeedRepository.j();
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return TiktokFragment.U0(this.b, (List) obj);
            }
        };
        zf1 zf1Var = new zf1() {
            @Override
            public final void accept(Object obj) {
                TiktokFragment.V0(e74Var, obj);
            }
        };
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return TiktokFragment.W0(this.b, (Throwable) obj);
            }
        };
        this.mDisposables.b(mc7VarJ.a0(zf1Var, new zf1() {
            @Override
            public final void accept(Object obj) {
                TiktokFragment.X0(e74Var2, obj);
            }
        }));
    }

    public final void Y0(String reason) {
        if (I0()) {
            if (!this.mPendingResumePlayback) {
                Log.d("visha_TiktokFragment", "pendingResume set: " + reason);
            }
            this.mPendingResumePlayback = true;
        }
    }

    public final void Z0(int videoGlobalPosition) {
        Context context;
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if (tiktokVideoPagerAdapter == null || (context = getContext()) == null) {
            return;
        }
        tiktokVideoPagerAdapter.w0(context, videoGlobalPosition);
    }

    public final void a1(int position) {
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if (tiktokVideoPagerAdapter == null) {
            return;
        }
        y45.g(tiktokVideoPagerAdapter);
        if ((tiktokVideoPagerAdapter.getItemCount() - position) - 1 <= 3) {
            T0();
        }
    }

    public final bka getMMuteSession() {
        return this.mMuteSession;
    }

    public final boolean c1() {
        return this.mMuteSession.b();
    }

    public final void d1(Throwable err) {
        Log.w("visha_TiktokFragment", "loadPage error: " + err.getMessage());
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if (tiktokVideoPagerAdapter != null) {
            y45.g(tiktokVideoPagerAdapter);
            if (tiktokVideoPagerAdapter.e0() != 0) {
                J0();
                return;
            }
        }
        L0(false);
    }

    @Override
    public void didReceivedNotification(int eventId, Object... args) {
        y45.j(args, "args");
        super.didReceivedNotification(eventId, Arrays.copyOf(args, args.length));
        if (eventId == 1164 && M0() && this.mMuteEnterApplied && this.mMuteSession.f()) {
            Log.d("visha_TiktokFragment", "unmuteFromVolume via EVENT_VOLUME_CHANGE");
            u0(this, false, 1, null);
        }
    }

    @Override
    public void e(List removedPositions, AdSlotRemoveReason reason) {
        y45.j(removedPositions, "removedPositions");
        y45.j(reason, "reason");
        q0(removedPositions);
    }

    public final void e1(List list) {
        if (!N0() || this.mAdapter == null) {
            return;
        }
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            Log.i("visha_TiktokFragment", "onPageDataLoaded: empty list");
            TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
            y45.g(tiktokVideoPagerAdapter);
            if (tiktokVideoPagerAdapter.e0() == 0) {
                L0(false);
                return;
            } else {
                J0();
                return;
            }
        }
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter2 = this.mAdapter;
        y45.g(tiktokVideoPagerAdapter2);
        if (tiktokVideoPagerAdapter2.e0() == 0) {
            TiktokVideoPagerAdapter tiktokVideoPagerAdapter3 = this.mAdapter;
            y45.g(tiktokVideoPagerAdapter3);
            tiktokVideoPagerAdapter3.N0(list);
            if (P0()) {
                D1();
            } else {
                Y0("dataLoaded while not allowed");
            }
        } else {
            TiktokVideoPagerAdapter tiktokVideoPagerAdapter4 = this.mAdapter;
            y45.g(tiktokVideoPagerAdapter4);
            tiktokVideoPagerAdapter4.J(list);
        }
        J0();
    }

    @Override
    public void f(int removedGlobalIndex, AdSlotRemoveReason reason) {
        y45.j(reason, "reason");
        q0(x71.e(Integer.valueOf(removedGlobalIndex)));
    }

    public final void f1() {
        if (this.mIsLoading) {
            return;
        }
        boolean z = this.mNetState != 0;
        this.mHaveNetWork = z;
        if (!z) {
            L0(false);
        } else {
            L0(true);
            Q0();
        }
    }

    public final void g1() {
        this.mMuteSession.e();
        u0(this, false, 1, null);
    }

    public final void h1() {
        if (M0()) {
            if (!this.mMuteEnterApplied) {
                this.mMuteSession.d();
                this.mMuteEnterApplied = true;
                ViewPager2 viewPager2 = this.mVpVideos;
                this.mMuteLastPagePosition = viewPager2 != null ? viewPager2.getCurrentItem() : -1;
                Log.d("visha_TiktokFragment", "muteSession resetOnEnterTt");
                t0(true);
            }
            F0();
        }
    }

    public final void i1() {
        this.mMuteEnterApplied = false;
        this.mMuteLastPagePosition = -1;
        F1();
    }

    public final void j1() {
        if (!N0() || this.mHostPlaybackSuspended) {
            return;
        }
        this.mHostPlaybackSuspended = true;
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if (tiktokVideoPagerAdapter != null) {
            tiktokVideoPagerAdapter.g0();
        }
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter2 = this.mAdapter;
        if (tiktokVideoPagerAdapter2 != null) {
            tiktokVideoPagerAdapter2.u0();
        }
    }

    public final void k1() {
        if (!N0() || this.mHostPlaybackSuspended) {
            return;
        }
        this.mHostPlaybackSuspended = true;
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if (tiktokVideoPagerAdapter != null) {
            tiktokVideoPagerAdapter.g0();
        }
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter2 = this.mAdapter;
        if (tiktokVideoPagerAdapter2 != null) {
            tiktokVideoPagerAdapter2.u0();
        }
    }

    public final void l1() {
        Context context;
        if (N0()) {
            TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
            if ((tiktokVideoPagerAdapter != null ? tiktokVideoPagerAdapter.e0() : 0) == 0 || (context = getContext()) == null) {
                return;
            }
            z0(TiktokPlayNetworkHelper.f(context, Integer.valueOf(this.mNetState)));
        }
    }

    public final void m1(int center) {
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter;
        TiktokVideoItemFragment tiktokVideoItemFragmentC0;
        for (int i = -1; i < 2; i++) {
            int i2 = center + i;
            if (i2 != center && (tiktokVideoPagerAdapter = this.mAdapter) != null && (tiktokVideoItemFragmentC0 = tiktokVideoPagerAdapter.c0(i2)) != null) {
                tiktokVideoItemFragmentC0.b1();
            }
        }
    }

    @Override
    public void markPointPageShow() {
        super.markPointPageShow();
        A1();
    }

    public final void n1() {
        View view;
        if (N0() && this.mIsRealVisibleToUser && (view = this.mFragmentView) != null) {
            Runnable runnable = this.applyNetworkOnVisibleRunnable;
            if (runnable != null) {
                view.removeCallbacks(runnable);
            }
            Runnable runnable2 = new Runnable() {
                @Override
                public final void run() {
                    TiktokFragment.o1(this.b);
                }
            };
            this.applyNetworkOnVisibleRunnable = runnable2;
            view.post(runnable2);
        }
    }

    @Override
    public boolean onBackPressed() {
        return false;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mHeaderMargin = arguments.getInt("header_margin");
            this.mChannelId = arguments.getInt("channelid", -1);
            this.mChannelName = arguments.getString("channelname", "");
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        y45.j(inflater, "inflater");
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.mFragmentView = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public void onDestroy() {
        View view;
        View view2;
        View view3;
        super.onDestroy();
        Log.d("visha_TiktokFragment", "onDestroy");
        TiktokPlayNetworkHelper.a();
        Runnable runnable = this.networkStateDebounceRunnable;
        if (runnable != null && (view3 = this.mFragmentView) != null) {
            view3.removeCallbacks(runnable);
        }
        this.networkStateDebounceRunnable = null;
        Runnable runnable2 = this.resumePlaybackRunnable;
        if (runnable2 != null && (view2 = this.mFragmentView) != null) {
            view2.removeCallbacks(runnable2);
        }
        this.resumePlaybackRunnable = null;
        Runnable runnable3 = this.applyNetworkOnVisibleRunnable;
        if (runnable3 != null && (view = this.mFragmentView) != null) {
            view.removeCallbacks(runnable3);
        }
        this.applyNetworkOnVisibleRunnable = null;
        this.mPendingResumePlayback = false;
        this.networkObserver = null;
        this.mDisposables.d();
        this.mClientShowReportedKeys.clear();
        F1();
        this.mMuteEnterApplied = false;
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if (tiktokVideoPagerAdapter != null) {
            tiktokVideoPagerAdapter.U();
        }
        this.mAdapter = null;
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_tiktok;
    }

    @Override
    public void onPause() {
        super.onPause();
        if (M0()) {
            B1();
            this.mMuteEnterApplied = false;
            F1();
        } else {
            w0();
            x0("onPause while not channel visible");
        }
        k1();
        w0();
    }

    @Override
    public void onResume() {
        super.onResume();
        if (!this.mIsRealVisibleToUser) {
            w0();
            x0("onResume while not realVisible");
        } else {
            h1();
            r0();
            G0();
            D1();
        }
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.mRootContainer = (ViewGroup) view.findViewById(R.id.root_container);
        this.mVpVideos = (ViewPager2) view.findViewById(R.id.vp_tiktok_videos);
        s1();
        u1();
        NetworkObserver networkObserver = new NetworkObserver(requireContext());
        getViewLifecycleOwner().getLifecycle().addObserver(networkObserver);
        networkObserver.b("visha_TiktokFragment", this.mNetworkStatusCallback);
        this.networkObserver = networkObserver;
        int iG = TiktokPlayNetworkHelper.g(requireContext(), null, 2, null);
        this.mNetState = iG;
        boolean z = iG != 0;
        this.mHaveNetWork = z;
        if (z) {
            Q0();
        } else {
            C1();
        }
        G0();
        Log.d("visha_TiktokFragment", "onViewCreated");
    }

    public final void p1(final int hintType) {
        View view = this.mFragmentView;
        if (view == null) {
            return;
        }
        Runnable runnable = this.networkStateDebounceRunnable;
        if (runnable != null) {
            view.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() {
            @Override
            public final void run() {
                TiktokFragment.q1(this.b, hintType);
            }
        };
        this.networkStateDebounceRunnable = runnable2;
        view.postDelayed(runnable2, 350L);
    }

    public final void q0(List removedPositions) {
    }

    public final void r0() {
        n1();
    }

    public final void r1(OnlineHomeFragment.e mTopBarCallback) {
        this.mTopBarCallback = mTopBarCallback;
    }

    public final void s0() {
        Context context;
        if (N0() && this.mIsRealVisibleToUser && (context = getContext()) != null) {
            int iF = TiktokPlayNetworkHelper.f(context, Integer.valueOf(this.mNetState));
            this.mNetState = iF;
            this.mHaveNetWork = iF != 0;
            TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
            Log.d("visha_TiktokFragment", "applyCachedNetworkStateOnVisible type=" + iF + ", count=" + (tiktokVideoPagerAdapter != null ? tiktokVideoPagerAdapter.e0() : 0));
            if (iF == 0) {
                G1(0);
                return;
            }
            TiktokVideoPagerAdapter tiktokVideoPagerAdapter2 = this.mAdapter;
            if ((tiktokVideoPagerAdapter2 != null ? tiktokVideoPagerAdapter2.e0() : 0) <= 0) {
                View view = this.mEmptyView;
                if (!(view != null && view.getVisibility() == 0) || this.mIsLoading) {
                    return;
                }
                Q0();
                return;
            }
            View view2 = this.mEmptyView;
            if (view2 != null && view2.getVisibility() == 0) {
                J0();
            } else {
                ViewPager2 viewPager2 = this.mVpVideos;
                if (viewPager2 != null) {
                    viewPager2.setVisibility(0);
                }
            }
            z0(iF);
        }
    }

    public final void s1() {
        ViewGroup viewGroup = this.mRootContainer;
        if (viewGroup == null) {
            return;
        }
        ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return TiktokFragment.t1(this.a, view, windowInsetsCompat);
            }
        });
        v0(0);
        ViewCompat.requestApplyInsets(viewGroup);
    }

    @Override
    public void setParentVisible(boolean isVisible) {
        super.setParentVisible(isVisible);
        if (!isVisible) {
            B1();
            y1("parentInvisible");
            return;
        }
        A1();
        if (!this.mIsVisibleToUser) {
            Y0("parentVisible without channelVisible");
            return;
        }
        h1();
        r0();
        G0();
        D1();
    }

    @Override
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (!isVisibleToUser) {
            B1();
            y1("channelInvisible");
            return;
        }
        A1();
        if (!this.mIsParentVisibleToUser) {
            Y0("channelVisible without parentVisible");
            return;
        }
        h1();
        r0();
        G0();
        D1();
    }

    public final void t0(boolean reclaimForeignMute) {
        TiktokVideoItemFragment tiktokVideoItemFragmentC0;
        boolean zB = this.mMuteSession.b();
        ViewPager2 viewPager2 = this.mVpVideos;
        int currentItem = viewPager2 != null ? viewPager2.getCurrentItem() : 0;
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if (tiktokVideoPagerAdapter != null && (tiktokVideoItemFragmentC0 = tiktokVideoPagerAdapter.c0(currentItem)) != null) {
            tiktokVideoItemFragmentC0.b1();
            if (reclaimForeignMute) {
                tiktokVideoItemFragmentC0.S1(zB);
            } else {
                tiktokVideoItemFragmentC0.J2(zB);
            }
        }
        m1(currentItem);
    }

    public final void u1() {
        this.mRepository = new TiktokFeedRepository();
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = new TiktokVideoPagerAdapter(this, new c74() {
            @Override
            public final Object invoke() {
                return TiktokFragment.v1(this.b);
            }
        }, null, 4, null);
        this.mAdapter = tiktokVideoPagerAdapter;
        tiktokVideoPagerAdapter.setOnPagePlayListener(new c());
        ViewPager2 viewPager2 = this.mVpVideos;
        if (viewPager2 != null) {
            viewPager2.setAdapter(this.mAdapter);
        }
        ViewPager2 viewPager3 = this.mVpVideos;
        if (viewPager3 != null) {
            viewPager3.setOrientation(1);
        }
        ViewPager2 viewPager4 = this.mVpVideos;
        if (viewPager4 != null) {
            viewPager4.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() {
                @Override
                public void onPageScrollStateChanged(int state) {
                    TiktokVideoPagerAdapter tiktokVideoPagerAdapter2;
                    super.onPageScrollStateChanged(state);
                    if (state != 0) {
                        if (state == 1 && (tiktokVideoPagerAdapter2 = this.d.mAdapter) != null) {
                            tiktokVideoPagerAdapter2.v0();
                            return;
                        }
                        return;
                    }
                    TiktokVideoPagerAdapter tiktokVideoPagerAdapter3 = this.d.mAdapter;
                    if (tiktokVideoPagerAdapter3 != null) {
                        tiktokVideoPagerAdapter3.t0();
                    }
                }

                @Override
                public void onPageSelected(int position) {
                    super.onPageSelected(position);
                    Log.d("visha_TiktokFragment", "onPageSelected: " + position);
                    this.d.H0(position);
                    TiktokVideoPagerAdapter tiktokVideoPagerAdapter2 = this.d.mAdapter;
                    if (tiktokVideoPagerAdapter2 != null) {
                        tiktokVideoPagerAdapter2.r0(position);
                    }
                }
            });
        }
        ViewPager2 viewPager5 = this.mVpVideos;
        if (viewPager5 != null) {
            viewPager5.setOffscreenPageLimit(1);
        }
    }

    public final void v0(int navigationBarBottom) {
        int iD;
        ViewGroup viewGroup = this.mRootContainer;
        if (viewGroup == null) {
            return;
        }
        if (isFoldScreen()) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(com.transsion.playercommon.R.dimen.os_foot_bar_min_height);
            if (dimensionPixelSize <= 0) {
                dimensionPixelSize = a.d(getContext(), 60.0f);
            }
            iD = dimensionPixelSize + wn8.d(navigationBarBottom, 0);
        } else {
            iD = 0;
        }
        if (viewGroup.getPaddingTop() == this.mHeaderMargin && viewGroup.getPaddingBottom() == iD) {
            return;
        }
        viewGroup.setPadding(0, this.mHeaderMargin, 0, iD);
    }

    public final void w0() {
        View view;
        Runnable runnable = this.resumePlaybackRunnable;
        if (runnable != null && (view = this.mFragmentView) != null) {
            view.removeCallbacks(runnable);
        }
        this.resumePlaybackRunnable = null;
    }

    public final void w1() {
        OnlineHomeFragment.e eVar = this.mTopBarCallback;
        if (eVar != null) {
            eVar.a(true);
        }
    }

    public final void x0(String reason) {
        if (this.mPendingResumePlayback) {
            Log.d("visha_TiktokFragment", "pendingResume cleared: " + reason);
            this.mPendingResumePlayback = false;
        }
    }

    public final List x1() {
        List listO0;
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        return (tiktokVideoPagerAdapter == null || (listO0 = tiktokVideoPagerAdapter.O0()) == null) ? y71.k() : listO0;
    }

    public final String y0(int globalPosition, ArticleData article) {
        String docId;
        String string = (article == null || (docId = article.getDocId()) == null) ? null : j1a.i1(docId).toString();
        if (string == null) {
            string = "";
        }
        if (string.length() != 0) {
            return string;
        }
        return "ad@" + globalPosition;
    }

    public final void y1(String reason) {
        w0();
        x0(reason);
        i1();
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if (tiktokVideoPagerAdapter != null) {
            tiktokVideoPagerAdapter.g0();
        }
        j1();
    }

    public final void z0(int networkType) {
        TiktokVideoItemFragment tiktokVideoItemFragmentC0;
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if ((tiktokVideoPagerAdapter != null ? tiktokVideoPagerAdapter.e0() : 0) == 0) {
            return;
        }
        if (!this.mIsRealVisibleToUser) {
            Log.d("visha_TiktokFragment", "dispatchNetworkToCurrentItem skipped: not realVisible");
            return;
        }
        ViewPager2 viewPager2 = this.mVpVideos;
        if (viewPager2 != null) {
            int currentItem = viewPager2.getCurrentItem();
            TiktokVideoPagerAdapter tiktokVideoPagerAdapter2 = this.mAdapter;
            if (tiktokVideoPagerAdapter2 == null || (tiktokVideoItemFragmentC0 = tiktokVideoPagerAdapter2.c0(currentItem)) == null) {
                return;
            }
            tiktokVideoItemFragmentC0.H1(networkType, P0());
        }
    }

    public final void z1(int position) {
        TiktokVideoPagerAdapter tiktokVideoPagerAdapter = this.mAdapter;
        if (tiktokVideoPagerAdapter == null) {
            return;
        }
        ArticleData articleDataD0 = tiktokVideoPagerAdapter.d0(position);
        String strY0 = y0(position, articleDataD0);
        if (this.mClientShowReportedKeys.contains(strY0)) {
            Log.d("visha_TiktokFragment", "client_show skipped: already reported, key=" + strY0);
            return;
        }
        try {
            ela.b.b().v(articleDataD0);
            this.mClientShowReportedKeys.add(strY0);
        } catch (Throwable th) {
            Log.w("visha_TiktokFragment", "trackPageImpression error: " + th.getMessage());
        }
    }
}
