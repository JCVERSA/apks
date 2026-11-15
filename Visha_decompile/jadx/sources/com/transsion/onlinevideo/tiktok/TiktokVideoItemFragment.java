package com.transsion.onlinevideo.tiktok;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.dbdata.beans.onlinevideo.tiktok.ArticleData;
import com.transsion.dbdata.beans.onlinevideo.tiktok.CoverImage;
import com.transsion.dbdata.beans.onlinevideo.tiktok.UserInfo;
import com.transsion.dbdata.beans.onlinevideo.tiktok.VideoInfo;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.tiktok.TiktokVideoItemFragment;
import com.transsion.onlinevideo.tiktok.widget.TiktokShortVideoPlayer;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoViewBridge;
import com.transsion.vishaplayersdk.gsyplayer.builder.GSYVideoOptionBuilder;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoProgressListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.VishaPlayerCallBack;
import com.transsion.vishaplayersdk.gsyplayer.video.StandardGSYVideoPlayer;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.transsion.widgetslib.widget.seekbar.OSMultiSeekBar;
import defpackage.bka;
import defpackage.c74;
import defpackage.db3;
import defpackage.e07;
import defpackage.e74;
import defpackage.ela;
import defpackage.i81;
import defpackage.j1a;
import defpackage.mc7;
import defpackage.olb;
import defpackage.rc2;
import defpackage.vb;
import defpackage.wn8;
import defpackage.x71;
import defpackage.y45;
import defpackage.zf1;
import defpackage.zfb;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Arrays;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.a;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000Î\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b1\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\t*\u0002©\u0002\u0018\u0000 \u00ad\u00022\u00020\u0001:\u0006®\u0002¯\u0002°\u0002B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\nH\u0003¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0010\u0010\u0003J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0016\u0010\u0003J\u0017\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0017\u0010\u0014J9\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00182\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u001a2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\n0\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\nH\u0002¢\u0006\u0004\b\"\u0010\u0003J\u000f\u0010#\u001a\u00020\nH\u0002¢\u0006\u0004\b#\u0010\u0003J\u000f\u0010$\u001a\u00020\nH\u0002¢\u0006\u0004\b$\u0010\u0003J\u0017\u0010&\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u0004H\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u0004H\u0002¢\u0006\u0004\b(\u0010'J\u0017\u0010+\u001a\u00020\n2\u0006\u0010*\u001a\u00020)H\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\nH\u0002¢\u0006\u0004\b/\u0010\u0003J\u000f\u00100\u001a\u00020\nH\u0002¢\u0006\u0004\b0\u0010\u0003J\u000f\u00101\u001a\u00020\nH\u0002¢\u0006\u0004\b1\u0010\u0003J\u0017\u00102\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b2\u0010\u0014J\u0017\u00103\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b3\u0010\u0014J\u0017\u00104\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b4\u0010\u0014J\u000f\u00105\u001a\u00020\nH\u0002¢\u0006\u0004\b5\u0010\u0003J\u000f\u00106\u001a\u00020\nH\u0002¢\u0006\u0004\b6\u0010\u0003J\u0017\u00109\u001a\u00020\n2\u0006\u00108\u001a\u000207H\u0002¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\nH\u0002¢\u0006\u0004\b;\u0010\u0003J\u001f\u0010>\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010=\u001a\u00020<H\u0002¢\u0006\u0004\b>\u0010?J\u001f\u0010B\u001a\u00020\n2\u0006\u0010A\u001a\u00020@2\u0006\u0010=\u001a\u00020<H\u0002¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\nH\u0002¢\u0006\u0004\bD\u0010\u0003J\u000f\u0010E\u001a\u00020\nH\u0002¢\u0006\u0004\bE\u0010\u0003J\u000f\u0010F\u001a\u00020\nH\u0002¢\u0006\u0004\bF\u0010\u0003J\u000f\u0010G\u001a\u00020\nH\u0002¢\u0006\u0004\bG\u0010\u0003J\u0017\u0010H\u001a\u00020\n2\u0006\u0010=\u001a\u00020<H\u0002¢\u0006\u0004\bH\u0010IJ\u0017\u0010L\u001a\u00020\n2\u0006\u0010K\u001a\u00020JH\u0002¢\u0006\u0004\bL\u0010MJ\u0017\u0010N\u001a\u00020J2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\nH\u0002¢\u0006\u0004\bP\u0010\u0003J\u000f\u0010Q\u001a\u00020\nH\u0002¢\u0006\u0004\bQ\u0010\u0003J\u001f\u0010T\u001a\u00020\n2\u0006\u0010S\u001a\u00020R2\u0006\u0010=\u001a\u00020<H\u0002¢\u0006\u0004\bT\u0010UJ\u0017\u0010V\u001a\u00020\n2\u0006\u0010=\u001a\u00020<H\u0002¢\u0006\u0004\bV\u0010IJ!\u0010X\u001a\u00020\n2\u0006\u0010=\u001a\u00020<2\b\b\u0002\u0010W\u001a\u00020JH\u0002¢\u0006\u0004\bX\u0010YJ\u0017\u0010Z\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\bZ\u0010\u0014J\u000f\u0010[\u001a\u00020\nH\u0002¢\u0006\u0004\b[\u0010\u0003J\u000f\u0010\\\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\\\u0010\u0006J\u000f\u0010]\u001a\u00020\nH\u0002¢\u0006\u0004\b]\u0010\u0003J\u0017\u0010_\u001a\u00020\n2\u0006\u0010^\u001a\u00020\u0004H\u0002¢\u0006\u0004\b_\u0010'J\u000f\u0010`\u001a\u00020\u0004H\u0002¢\u0006\u0004\b`\u0010\u0006J\u0019\u0010b\u001a\u00020\n2\b\u0010a\u001a\u0004\u0018\u00010<H\u0002¢\u0006\u0004\bb\u0010IJ\u0017\u0010d\u001a\u00020\n2\u0006\u0010c\u001a\u00020JH\u0002¢\u0006\u0004\bd\u0010MJ\u0017\u0010f\u001a\u00020\n2\u0006\u0010e\u001a\u00020\u0004H\u0002¢\u0006\u0004\bf\u0010'J\u000f\u0010g\u001a\u00020\nH\u0002¢\u0006\u0004\bg\u0010\u0003J\u000f\u0010h\u001a\u00020\nH\u0002¢\u0006\u0004\bh\u0010\u0003J\u000f\u0010i\u001a\u00020\nH\u0002¢\u0006\u0004\bi\u0010\u0003J\u000f\u0010j\u001a\u00020\nH\u0002¢\u0006\u0004\bj\u0010\u0003J\u000f\u0010k\u001a\u00020\nH\u0002¢\u0006\u0004\bk\u0010\u0003J\u000f\u0010l\u001a\u00020\nH\u0002¢\u0006\u0004\bl\u0010\u0003J\u001f\u0010n\u001a\u00020\n2\u0006\u0010W\u001a\u00020J2\u0006\u0010m\u001a\u00020JH\u0002¢\u0006\u0004\bn\u0010oJ\u0017\u0010q\u001a\u00020J2\u0006\u0010p\u001a\u00020JH\u0002¢\u0006\u0004\bq\u0010rJ\u000f\u0010s\u001a\u00020\nH\u0002¢\u0006\u0004\bs\u0010\u0003J\u0019\u0010u\u001a\u00020\n2\b\u0010t\u001a\u0004\u0018\u00010<H\u0002¢\u0006\u0004\bu\u0010IJ\u000f\u0010w\u001a\u00020vH\u0002¢\u0006\u0004\bw\u0010xJ\u000f\u0010y\u001a\u00020\nH\u0002¢\u0006\u0004\by\u0010\u0003J\u001f\u0010}\u001a\u00020\u00042\u0006\u0010z\u001a\u00020v2\u0006\u0010|\u001a\u00020{H\u0002¢\u0006\u0004\b}\u0010~J\u001a\u0010\u007f\u001a\u00020\n2\b\b\u0002\u0010z\u001a\u00020vH\u0002¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u0011\u0010\u0081\u0001\u001a\u00020\nH\u0002¢\u0006\u0005\b\u0081\u0001\u0010\u0003J\u0019\u0010\u0082\u0001\u001a\u00020\n2\u0006\u0010W\u001a\u00020JH\u0002¢\u0006\u0005\b\u0082\u0001\u0010MJ\u001c\u0010\u0084\u0001\u001a\u00020\n2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010<H\u0002¢\u0006\u0005\b\u0084\u0001\u0010IJ\u001d\u0010\u0086\u0001\u001a\u00020<2\t\u0010\u0085\u0001\u001a\u0004\u0018\u00010<H\u0002¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001J\u000f\u0010\u0088\u0001\u001a\u00020\u0004¢\u0006\u0005\b\u0088\u0001\u0010\u0006J\u000f\u0010\u0089\u0001\u001a\u00020\u0004¢\u0006\u0005\b\u0089\u0001\u0010\u0006J\u0018\u0010\u008b\u0001\u001a\u00020\n2\u0007\u0010\u008a\u0001\u001a\u00020J¢\u0006\u0005\b\u008b\u0001\u0010MJ\u001e\u0010\u008e\u0001\u001a\u00020\n2\n\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0016¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J&\u0010\u0090\u0001\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\n\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0016¢\u0006\u0006\b\u0090\u0001\u0010\u0091\u0001J\u000f\u0010\u0092\u0001\u001a\u00020\n¢\u0006\u0005\b\u0092\u0001\u0010\u0003J\u000f\u0010\u0093\u0001\u001a\u00020\n¢\u0006\u0005\b\u0093\u0001\u0010\u0003J#\u0010\u0095\u0001\u001a\u00020\n2\u0007\u0010\u0094\u0001\u001a\u00020J2\b\b\u0002\u0010%\u001a\u00020\u0004¢\u0006\u0006\b\u0095\u0001\u0010\u0096\u0001J\u000f\u0010\u0097\u0001\u001a\u00020\n¢\u0006\u0005\b\u0097\u0001\u0010\u0003J\u000f\u0010\u0098\u0001\u001a\u00020\n¢\u0006\u0005\b\u0098\u0001\u0010\u0003J\u000f\u0010\u0099\u0001\u001a\u00020\n¢\u0006\u0005\b\u0099\u0001\u0010\u0003J\u000f\u0010\u009a\u0001\u001a\u00020\n¢\u0006\u0005\b\u009a\u0001\u0010\u0003J\u000f\u0010\u009b\u0001\u001a\u00020\n¢\u0006\u0005\b\u009b\u0001\u0010\u0003J\u000f\u0010\u009c\u0001\u001a\u00020\n¢\u0006\u0005\b\u009c\u0001\u0010\u0003J\u000f\u0010\u009d\u0001\u001a\u00020\n¢\u0006\u0005\b\u009d\u0001\u0010\u0003J\u000f\u0010\u009e\u0001\u001a\u00020\n¢\u0006\u0005\b\u009e\u0001\u0010\u0003J\u0018\u0010 \u0001\u001a\u00020\n2\u0007\u0010\u009f\u0001\u001a\u00020\u0004¢\u0006\u0005\b \u0001\u0010'J\u0018\u0010¡\u0001\u001a\u00020\n2\u0007\u0010\u009f\u0001\u001a\u00020\u0004¢\u0006\u0005\b¡\u0001\u0010'J\u0019\u0010¢\u0001\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0005\b¢\u0001\u0010!J\u0011\u0010£\u0001\u001a\u00020\nH\u0016¢\u0006\u0005\b£\u0001\u0010\u0003J\u0011\u0010¤\u0001\u001a\u00020\nH\u0016¢\u0006\u0005\b¤\u0001\u0010\u0003J\u0011\u0010¥\u0001\u001a\u00020\nH\u0016¢\u0006\u0005\b¥\u0001\u0010\u0003R\u001b\u0010¨\u0001\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R\u001b\u0010«\u0001\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010ª\u0001R\u001c\u0010¯\u0001\u001a\u0005\u0018\u00010¬\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010®\u0001R\u001c\u0010±\u0001\u001a\u0005\u0018\u00010¬\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010®\u0001R\u001c\u0010µ\u0001\u001a\u0005\u0018\u00010²\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010´\u0001R\u001c\u0010·\u0001\u001a\u0005\u0018\u00010²\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010´\u0001R\u001c\u0010»\u0001\u001a\u0005\u0018\u00010¸\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010º\u0001R\u0019\u0010¾\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010½\u0001R\u001c\u0010À\u0001\u001a\u0005\u0018\u00010²\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010´\u0001R\u001b\u0010Â\u0001\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010ª\u0001R\u001c\u0010Æ\u0001\u001a\u0005\u0018\u00010Ã\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÄ\u0001\u0010Å\u0001R\u001c\u0010È\u0001\u001a\u0005\u0018\u00010Ã\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÇ\u0001\u0010Å\u0001R\u001c\u0010Ì\u0001\u001a\u0005\u0018\u00010É\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010Ë\u0001R\u0019\u0010Î\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÍ\u0001\u0010½\u0001R\u0019\u0010Ñ\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÏ\u0001\u0010Ð\u0001R\u0019\u0010Ó\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010Ð\u0001R\u001b\u0010Ö\u0001\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010Õ\u0001R\u001b\u0010Ø\u0001\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b×\u0001\u0010Õ\u0001R\u001b\u0010Û\u0001\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0001\u0010Ú\u0001R\u0019\u0010Ý\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÜ\u0001\u0010Ð\u0001R\u0019\u0010ß\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÞ\u0001\u0010Ð\u0001R\u0019\u0010á\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bà\u0001\u0010Ð\u0001R\u0019\u0010ä\u0001\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bâ\u0001\u0010ã\u0001R\u0019\u0010å\u0001\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010ã\u0001R\u0019\u0010æ\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bã\u0001\u0010½\u0001R\u0019\u0010è\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bç\u0001\u0010Ð\u0001R\u0019\u0010ê\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bé\u0001\u0010Ð\u0001R\u0019\u0010ì\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bë\u0001\u0010½\u0001R\u0019\u0010î\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0001\u0010Ð\u0001R\u0019\u0010ð\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bï\u0001\u0010Ð\u0001R\u0019\u0010ò\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bñ\u0001\u0010Ð\u0001R\u0019\u0010ô\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bó\u0001\u0010Ð\u0001R\u0019\u0010ö\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bõ\u0001\u0010Ð\u0001R\u0019\u0010ø\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b÷\u0001\u0010Ð\u0001R\u0019\u0010ú\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bù\u0001\u0010Ð\u0001R\u001c\u0010þ\u0001\u001a\u0005\u0018\u00010û\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bü\u0001\u0010ý\u0001R\u001c\u0010\u0082\u0002\u001a\u0005\u0018\u00010ÿ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0002\u0010\u0081\u0002R\u0019\u0010\u0084\u0002\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0002\u0010Ð\u0001R\u0019\u0010\u0086\u0002\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0002\u0010Ð\u0001R\u0019\u0010\u0088\u0002\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0002\u0010Ð\u0001R\u0019\u0010\u0089\u0002\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0001\u0010Ð\u0001R\u001b\u0010\u008b\u0002\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0002\u0010Õ\u0001R\u0019\u0010\u008d\u0002\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0002\u0010Ð\u0001R\u0019\u0010\u008f\u0002\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0002\u0010ã\u0001R\u0019\u0010\u0091\u0002\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0002\u0010Ð\u0001R\u0019\u0010\u0093\u0002\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0002\u0010Ð\u0001R\u001b\u0010\u0096\u0002\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0002\u0010\u0095\u0002R\u001c\u0010\u0098\u0002\u001a\u0005\u0018\u00010û\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0002\u0010ý\u0001R\u0019\u0010\u009b\u0002\u001a\u00020R8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0002\u0010\u009a\u0002R\u001c\u0010\u009d\u0002\u001a\u0005\u0018\u00010û\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0002\u0010ý\u0001R7\u0010¤\u0002\u001a\u0010\u0012\u0004\u0012\u00020J\u0012\u0004\u0012\u00020\n\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009e\u0002\u0010\u009f\u0002\u001a\u0006\b \u0002\u0010¡\u0002\"\u0006\b¢\u0002\u0010£\u0002R\u0018\u0010¨\u0002\u001a\u00030¥\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¦\u0002\u0010§\u0002R\u0018\u0010¬\u0002\u001a\u00030©\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bª\u0002\u0010«\u0002¨\u0006±\u0002"}, d2 = {"Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;", "Landroidx/fragment/app/Fragment;", MethodDecl.initName, "()V", "", "S0", "()Z", "E1", "Landroid/view/View;", "view", "Lzfb;", "initView", "(Landroid/view/View;)V", "u1", "B2", "M2", "i2", "Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;", "player", "Y1", "(Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;)V", "t2", "f1", "g2", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;", "article", "", "allArticles", "Lkotlin/Function1;", "onReady", "T1", "(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/util/List;Le74;)V", "T0", "(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)V", "l2", "H2", "G1", "allowResume", "F1", "(Z)V", "K1", "Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;", "block", "U0", "(Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;)V", "r1", "(Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;)Z", "k1", "l1", "R1", "K2", "M1", "j2", "i1", "q2", "", "posMs", "G2", "(J)V", "V0", "", "reason", "p1", "(Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;Ljava/lang/String;)V", "Landroid/graphics/Bitmap;", "bitmap", "F2", "(Landroid/graphics/Bitmap;Ljava/lang/String;)V", "j1", "r2", "e1", "h1", "A1", "(Ljava/lang/String;)V", "", "positionMs", "w2", "(I)V", "d2", "(Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;)I", "E2", "s1", "Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;", TypedValues.CycleType.S_WAVE_PHASE, "P2", "(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;Ljava/lang/String;)V", "o2", "currentMs", "Q2", "(Ljava/lang/String;I)V", "v2", "g1", "e2", "m1", "enabled", "y2", "t1", "newUrl", "b2", "percent", "S2", "buffering", "T2", "R0", "I1", "a2", "N2", "c2", "O2", "durationMs", "U2", "(II)V", "progressPercent", "D1", "(I)I", "a1", SniffSoucreBean.JSON_KEY_COVERURL, "d1", "Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;", "f2", "()Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;", "o1", "visibility", "Landroid/widget/ImageView;", "cover", "w1", "(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;Landroid/widget/ImageView;)Z", "X0", "(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;)V", "L2", "C1", "avatarUrl", "c1", "name", "q1", "(Ljava/lang/String;)Ljava/lang/String;", "y1", "x1", "globalPosition", "I2", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "k2", "onSelectInViewPage", "networkType", "H1", "(IZ)V", "onUnSelectInViewPage", "Q1", "N1", "P1", "h2", "B1", "L1", "b1", "muted", "J2", "S1", "x2", "onPause", "onStop", "onDestroyView", CmcdData.STREAM_TYPE_LIVE, "Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;", "mTiktokPlayer", CmcdData.OBJECT_TYPE_MANIFEST, "Landroid/widget/ImageView;", "mIvVideoCover", "Lcom/transsion/widgetslib/widget/OSIconTextView;", "n", "Lcom/transsion/widgetslib/widget/OSIconTextView;", "mIvPlayPause", "o", "mIvTtMute", "Landroid/widget/LinearLayout;", TtmlNode.TAG_P, "Landroid/widget/LinearLayout;", "mLlVideoInfoRow", "q", "mLlProgress", "Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;", "r", "Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;", "mSbVideoProgress", "s", "I", "mVideoDurationMs", "t", "mLlVideoInfo", "u", "mIvUploaderAvatar", "Landroid/widget/TextView;", "v", "Landroid/widget/TextView;", "mTvUploaderName", "w", "mTvVideoDescription", "Landroid/widget/ProgressBar;", "x", "Landroid/widget/ProgressBar;", "mPbLoading", "y", "mPosition", "z", "Z", "mIsPlaying", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "mIsPaused", "B", "Ljava/lang/String;", "mVideoUrl", "C", "mVideoTitle", "D", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;", "mArticleData", ExifInterface.LONGITUDE_EAST, "mPlayerInitialized", "F", "mPlaybackSelectActive", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "mIsCurrentPage", "H", "J", "mPlayStartMs", "mEffectiveDurationMs", "mMaxPercent", "K", "mPlayEventReported", "L", "mVideoOverReported", "M", "mLastPlayState", "N", "mReplay", "O", "mRetryPlayErrorOnNextVisible", "P", "mHostPaused", "Q", "mHostPausePending", "R", "mHostPausedDuringPrepare", ExifInterface.LATITUDE_SOUTH, "mHostResumingPlayback", "T", "mHostResumeReinitAttempted", "Ljava/lang/Runnable;", "U", "Ljava/lang/Runnable;", "mHostResumeWatchdog", "Lrc2;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lrc2;", "mEnsurePlayableDisposable", ExifInterface.LONGITUDE_WEST, "mPausedForScroll", "X", "mIsPlaybackBuffering", "Y", "mUserPausedByTap", "mForcePausedNeedsTap", "a0", "mBoundCoverUrl", "b0", "mHasRenderedVideoFrame", "c0", "mResumeSeekMs", "d0", "mNeedApplyResumeSeek", "e0", "mWaitingResumeSeekFrame", "f0", "Landroid/graphics/Bitmap;", "mShowingFrozenBitmap", "g0", "mClearFrozenCoverRunnable", "h0", "Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;", "mHostChromePhase", "i0", "mHostSurfaceRevealRunnable", "j0", "Le74;", "getOnFragmentReadyCallback", "()Le74;", "A2", "(Le74;)V", "onFragmentReadyCallback", "Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;", "k0", "Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;", "mProgressListener", "com/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d", "l0", "Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$d;", "mPlayerCallBack", "m0", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "HostChromePhase", "VideoCoverVisibility", "onlinevideo_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TiktokVideoItemFragment extends Fragment {

    public static final Companion INSTANCE = new Companion(null);

    public boolean mIsPaused;

    public String mVideoUrl;

    public String mVideoTitle;

    public ArticleData mArticleData;

    public boolean mPlayerInitialized;

    public boolean mPlaybackSelectActive;

    public boolean mIsCurrentPage;

    public long mPlayStartMs;

    public long mEffectiveDurationMs;

    public int mMaxPercent;

    public boolean mPlayEventReported;

    public boolean mVideoOverReported;

    public int mLastPlayState;

    public boolean mReplay;

    public boolean mRetryPlayErrorOnNextVisible;

    public boolean mHostPaused;

    public boolean mHostPausePending;

    public boolean mHostPausedDuringPrepare;

    public boolean mHostResumingPlayback;

    public boolean mHostResumeReinitAttempted;

    public Runnable mHostResumeWatchdog;

    public rc2 mEnsurePlayableDisposable;

    public boolean mPausedForScroll;

    public boolean mIsPlaybackBuffering;

    public boolean mUserPausedByTap;

    public boolean mForcePausedNeedsTap;

    public String mBoundCoverUrl;

    public boolean mHasRenderedVideoFrame;

    public long mResumeSeekMs;

    public boolean mNeedApplyResumeSeek;

    public boolean mWaitingResumeSeekFrame;

    public Bitmap mShowingFrozenBitmap;

    public Runnable mClearFrozenCoverRunnable;

    public HostChromePhase mHostChromePhase;

    public Runnable mHostSurfaceRevealRunnable;

    public e74 onFragmentReadyCallback;

    public final GSYVideoProgressListener mProgressListener;

    public TiktokShortVideoPlayer mTiktokPlayer;

    public final d mPlayerCallBack;

    public ImageView mIvVideoCover;

    public OSIconTextView mIvPlayPause;

    public OSIconTextView mIvTtMute;

    public LinearLayout mLlVideoInfoRow;

    public LinearLayout mLlProgress;

    public OSMultiSeekBar mSbVideoProgress;

    public int mVideoDurationMs;

    public LinearLayout mLlVideoInfo;

    public ImageView mIvUploaderAvatar;

    public TextView mTvUploaderName;

    public TextView mTvVideoDescription;

    public ProgressBar mPbLoading;

    public int mPosition;

    public boolean mIsPlaying;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "ACTIVE", "USER_PAUSED", "HOST_LEFT", "RECLAIMING", "onlinevideo_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum HostChromePhase {
        ACTIVE,
        USER_PAUSED,
        HOST_LEFT,
        RECLAIMING;

        public static final db3 c = a.a(a());

        public static db3 getEntries() {
            return c;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "COVER", "VIDEO", "FADE_OUT", "GONE_FOR_ERROR", "onlinevideo_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum VideoCoverVisibility {
        COVER,
        VIDEO,
        FADE_OUT,
        GONE_FOR_ERROR;

        public static final db3 c = a.a(a());

        public static db3 getEntries() {
            return c;
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TiktokVideoItemFragment a(int i) {
            TiktokVideoItemFragment tiktokVideoItemFragment = new TiktokVideoItemFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("position", i);
            tiktokVideoItemFragment.setArguments(bundle);
            return tiktokVideoItemFragment;
        }

        public Companion() {
        }
    }

    public class b {
        public static final int[] a;
        public static final int[] b;
        public static final int[] c;

        static {
            int[] iArr = new int[TiktokPlayNetworkHelper.PlayBlockType.values().length];
            try {
                iArr[TiktokPlayNetworkHelper.PlayBlockType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
            int[] iArr2 = new int[HostChromePhase.values().length];
            try {
                iArr2[HostChromePhase.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[HostChromePhase.USER_PAUSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[HostChromePhase.HOST_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[HostChromePhase.RECLAIMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused5) {
            }
            b = iArr2;
            int[] iArr3 = new int[VideoCoverVisibility.values().length];
            try {
                iArr3[VideoCoverVisibility.COVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[VideoCoverVisibility.VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[VideoCoverVisibility.GONE_FOR_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[VideoCoverVisibility.FADE_OUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            c = iArr3;
        }
    }

    public static final class c implements RequestListener {
        public final String c;
        public final ImageView d;

        public c(String str, ImageView imageView) {
            this.c = str;
            this.d = imageView;
        }

        public static final void b(TiktokVideoItemFragment tiktokVideoItemFragment) {
            TiktokVideoItemFragment.Y0(tiktokVideoItemFragment, null, 1, null);
        }

        @Override
        public boolean onResourceReady(Drawable drawable, Object obj, Target target, DataSource dataSource, boolean z) {
            y45.j(drawable, "resource");
            y45.j(obj, CommonUrlParts.MODEL);
            y45.j(dataSource, "dataSource");
            if (!y45.e(TiktokVideoItemFragment.this.mBoundCoverUrl, this.c)) {
                return false;
            }
            Log.d("TiktokVideoItemFragment", "bindVideoCover ready position=" + TiktokVideoItemFragment.this.mPosition + ", url=" + this.c + ", source=" + dataSource + ", first=" + z);
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            String message;
            List<Throwable> rootCauses;
            Throwable th;
            y45.j(target, TypedValues.AttributesType.S_TARGET);
            if (!y45.e(TiktokVideoItemFragment.this.mBoundCoverUrl, this.c)) {
                return false;
            }
            int i = TiktokVideoItemFragment.this.mPosition;
            String str = this.c;
            if (glideException == null || (rootCauses = glideException.getRootCauses()) == null || (th = (Throwable) i81.q0(rootCauses)) == null || (message = th.getMessage()) == null) {
                message = glideException != null ? glideException.getMessage() : null;
            }
            Log.w("TiktokVideoItemFragment", "bindVideoCover failed position=" + i + ", url=" + str + ", error=" + message);
            ImageView imageView = this.d;
            final TiktokVideoItemFragment tiktokVideoItemFragment = TiktokVideoItemFragment.this;
            imageView.post(new Runnable() {
                @Override
                public final void run() {
                    TiktokVideoItemFragment.c.b(tiktokVideoItemFragment);
                }
            });
            return false;
        }
    }

    public static final class d extends VishaPlayerCallBack {

        public class a {
            public static final int[] a;

            static {
                int[] iArr = new int[TiktokPlayNetworkHelper.PlayBlockType.values().length];
                try {
                    iArr[TiktokPlayNetworkHelper.PlayBlockType.NO_NET.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[TiktokPlayNetworkHelper.PlayBlockType.NO_WIFI.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[TiktokPlayNetworkHelper.PlayBlockType.NONE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                a = iArr;
            }
        }

        public d() {
        }

        @Override
        public void onAutoComplete(String str, Object... objArr) {
            y45.j(objArr, "objects");
            super.onAutoComplete(str, Arrays.copyOf(objArr, objArr.length));
            Log.d("TiktokVideoItemFragment", "onAutoComplete position=" + TiktokVideoItemFragment.this.mPosition + ", mVideoTitle=" + TiktokVideoItemFragment.this.mVideoTitle);
        }

        @Override
        public void onBufferingUpdate(boolean z, Object... objArr) {
            y45.j(objArr, "objects");
            super.onBufferingUpdate(z, Arrays.copyOf(objArr, objArr.length));
            TiktokVideoItemFragment.this.T2(z);
        }

        @Override
        public void onClickBlank(String str, Object... objArr) {
            y45.j(objArr, "objects");
            super.onClickBlank(str, Arrays.copyOf(objArr, objArr.length));
            Log.i("TiktokVideoItemFragment", "onClickBlank position=" + TiktokVideoItemFragment.this.mPosition + ", mVideoTitle=" + TiktokVideoItemFragment.this.mVideoTitle + ", " + str);
            TiktokVideoItemFragment.this.M2();
        }

        @Override
        public void onClickResume(String str, Object... objArr) {
            y45.j(objArr, "objects");
            super.onClickResume(str, Arrays.copyOf(objArr, objArr.length));
            Log.i("TiktokVideoItemFragment", "onClickResume position=" + TiktokVideoItemFragment.this.mPosition + ", mVideoTitle=" + TiktokVideoItemFragment.this.mVideoTitle + ", " + str);
            TiktokVideoItemFragment.this.mUserPausedByTap = false;
            TiktokVideoItemFragment.this.mForcePausedNeedsTap = false;
            TiktokShortVideoPlayer tiktokShortVideoPlayer = TiktokVideoItemFragment.this.mTiktokPlayer;
            if (tiktokShortVideoPlayer != null) {
                tiktokShortVideoPlayer.setUserPauseHoldAcrossHostResume(false);
            }
            TiktokVideoItemFragment.this.j1();
            TiktokVideoItemFragment.this.mIsPlaying = true;
            TiktokVideoItemFragment.this.mIsPaused = false;
            TiktokVideoItemFragment.this.mHasRenderedVideoFrame = true;
            TiktokVideoItemFragment.this.P2(HostChromePhase.ACTIVE, "onClickResume");
            TiktokVideoItemFragment.this.mPlayStartMs = System.currentTimeMillis();
        }

        @Override
        public void onPlayError(String str, Object... objArr) {
            TiktokShortVideoPlayer tiktokShortVideoPlayer;
            y45.j(objArr, "objects");
            super.onPlayError(str, Arrays.copyOf(objArr, objArr.length));
            if (TiktokVideoItemFragment.this.mIsCurrentPage && (tiktokShortVideoPlayer = TiktokVideoItemFragment.this.mTiktokPlayer) != null) {
                String playerErrMsgForLog = tiktokShortVideoPlayer.getPlayerErrMsgForLog();
                if (playerErrMsgForLog == null) {
                    playerErrMsgForLog = "";
                }
                Log.w("TiktokVideoItemFragment", "onPlayError position=" + TiktokVideoItemFragment.this.mPosition + ",mVideoTitle=" + TiktokVideoItemFragment.this.mVideoTitle + ",  url=" + str + ", errMsg=" + playerErrMsgForLog + ", state=" + tiktokShortVideoPlayer.getCurrentState());
                TiktokVideoItemFragment.this.mHostResumingPlayback = false;
                TiktokVideoItemFragment.this.f1();
                TiktokVideoItemFragment.this.mIsPlaybackBuffering = false;
                ProgressBar progressBar = TiktokVideoItemFragment.this.mPbLoading;
                if (progressBar != null) {
                    progressBar.setVisibility(8);
                }
                TiktokVideoItemFragment.this.mRetryPlayErrorOnNextVisible = true;
                TiktokVideoItemFragment.this.mIsPlaying = false;
                TiktokVideoItemFragment.this.mIsPaused = false;
                TiktokVideoItemFragment.this.s1();
                tiktokShortVideoPlayer.dismissNetworkErrorLayers();
                TiktokVideoItemFragment.this.X0(VideoCoverVisibility.GONE_FOR_ERROR);
            }
        }

        @Override
        public void onPrepared(String str, Object... objArr) {
            TiktokShortVideoPlayer tiktokShortVideoPlayer;
            y45.j(objArr, "objects");
            super.onPrepared(str, Arrays.copyOf(objArr, objArr.length));
            Log.i("TiktokVideoItemFragment", "onPrepared position=" + TiktokVideoItemFragment.this.mPosition + ", mVideoTitle=" + TiktokVideoItemFragment.this.mVideoTitle + ", " + str);
            if (TiktokVideoItemFragment.this.mIsCurrentPage && (tiktokShortVideoPlayer = TiktokVideoItemFragment.this.mTiktokPlayer) != null) {
                int i = a.a[TiktokPlayNetworkHelper.b(TiktokVideoItemFragment.this.getContext()).ordinal()];
                if (i == 1) {
                    TiktokVideoItemFragment.this.U0(TiktokPlayNetworkHelper.PlayBlockType.NO_NET);
                    return;
                }
                if (i == 2) {
                    TiktokVideoItemFragment.this.U0(TiktokPlayNetworkHelper.PlayBlockType.NO_WIFI);
                    return;
                }
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                TiktokVideoItemFragment.this.mRetryPlayErrorOnNextVisible = false;
                tiktokShortVideoPlayer.dismissNetworkErrorLayers();
                TiktokVideoItemFragment.this.mIsPlaybackBuffering = false;
                ProgressBar progressBar = TiktokVideoItemFragment.this.mPbLoading;
                if (progressBar != null) {
                    progressBar.setVisibility(8);
                }
                TiktokVideoItemFragment.this.mHostResumingPlayback = false;
                TiktokVideoItemFragment.this.f1();
                if (TiktokVideoItemFragment.this.S0()) {
                    TiktokVideoItemFragment.this.s1();
                    TiktokVideoItemFragment.this.mIsPlaying = true;
                    TiktokVideoItemFragment.this.mIsPaused = false;
                    TiktokVideoItemFragment.this.I1();
                    return;
                }
                tiktokShortVideoPlayer.setStartAfterPrepared(false);
                TiktokVideoItemFragment.this.mIsPlaying = false;
                TiktokVideoItemFragment.this.mIsPaused = true;
                if (TiktokVideoItemFragment.this.E1()) {
                    TiktokVideoItemFragment tiktokVideoItemFragment = TiktokVideoItemFragment.this;
                    tiktokVideoItemFragment.X0(tiktokVideoItemFragment.mHasRenderedVideoFrame ? VideoCoverVisibility.VIDEO : VideoCoverVisibility.COVER);
                    TiktokVideoItemFragment.this.E2();
                }
            }
        }

        @Override
        public void onRetryPlay() {
            TiktokShortVideoPlayer tiktokShortVideoPlayer;
            if (TiktokVideoItemFragment.this.mIsCurrentPage && (tiktokShortVideoPlayer = TiktokVideoItemFragment.this.mTiktokPlayer) != null) {
                boolean zIsNetworkBlockRetryPending = tiktokShortVideoPlayer.isNetworkBlockRetryPending();
                tiktokShortVideoPlayer.dismissNetworkErrorLayers();
                TiktokVideoItemFragment.this.mHostResumingPlayback = false;
                TiktokVideoItemFragment.this.f1();
                TiktokVideoItemFragment.Y0(TiktokVideoItemFragment.this, null, 1, null);
                TiktokVideoItemFragment.this.mUserPausedByTap = false;
                TiktokVideoItemFragment.this.mForcePausedNeedsTap = false;
                tiktokShortVideoPlayer.setUserPauseHoldAcrossHostResume(false);
                TiktokVideoItemFragment.this.mIsPlaying = true;
                TiktokVideoItemFragment.this.mIsPaused = false;
                TiktokVideoItemFragment.this.s1();
                if (!zIsNetworkBlockRetryPending) {
                    TiktokVideoItemFragment.this.l2();
                    return;
                }
                TiktokPlayNetworkHelper.d();
                if (TiktokVideoItemFragment.this.mPlayerInitialized || TiktokVideoItemFragment.this.t1()) {
                    if (tiktokShortVideoPlayer.isPreparedBeforeNetworkConsent()) {
                        tiktokShortVideoPlayer.resumeAfterNetworkConsent();
                    } else {
                        TiktokVideoItemFragment.this.Y1(tiktokShortVideoPlayer);
                    }
                }
            }
        }

        @Override
        public void onStartPrepared(String str, Object... objArr) {
            ProgressBar progressBar;
            y45.j(objArr, "objects");
            super.onStartPrepared(str, Arrays.copyOf(objArr, objArr.length));
            Log.i("TiktokVideoItemFragment", "onStartPrepared position=" + TiktokVideoItemFragment.this.mPosition + ", mVideoTitle=" + TiktokVideoItemFragment.this.mVideoTitle + ", " + str);
            if (TiktokVideoItemFragment.this.mIsCurrentPage) {
                if (TiktokPlayNetworkHelper.b(TiktokVideoItemFragment.this.getContext()) != TiktokPlayNetworkHelper.PlayBlockType.NONE) {
                    TiktokVideoItemFragment.this.R1();
                    return;
                }
                if (!TiktokVideoItemFragment.this.mHostResumingPlayback && (progressBar = TiktokVideoItemFragment.this.mPbLoading) != null) {
                    progressBar.setVisibility(0);
                }
                TiktokVideoItemFragment.this.o1();
            }
        }

        @Override
        public void onVideoPause(String str, Object... objArr) {
            y45.j(objArr, "objects");
            super.onVideoPause(str, Arrays.copyOf(objArr, objArr.length));
            Log.i("TiktokVideoItemFragment", "onVideoPause position=" + TiktokVideoItemFragment.this.mPosition + ", mVideoTitle=" + TiktokVideoItemFragment.this.mVideoTitle + ", " + str);
            TiktokVideoItemFragment.this.mIsPlaying = false;
            TiktokVideoItemFragment.this.mIsPaused = true;
            if (TiktokVideoItemFragment.this.E1()) {
                TiktokVideoItemFragment.this.E2();
            } else if (!TiktokVideoItemFragment.this.mHostPaused && !TiktokVideoItemFragment.this.mHostPausePending && !TiktokVideoItemFragment.this.mPausedForScroll) {
                Fragment parentFragment = TiktokVideoItemFragment.this.getParentFragment();
                TiktokFragment tiktokFragment = parentFragment instanceof TiktokFragment ? (TiktokFragment) parentFragment : null;
                if (tiktokFragment == null || !tiktokFragment.getMHostPlaybackSuspended()) {
                    if (TiktokVideoItemFragment.this.mIsCurrentPage) {
                        TiktokVideoItemFragment.this.A1("onVideoPause");
                    } else {
                        TiktokVideoItemFragment.this.s1();
                    }
                }
            }
            TiktokVideoItemFragment.this.R0();
        }

        @Override
        public void onVideoStartShow(String str, Object... objArr) {
            TiktokShortVideoPlayer tiktokShortVideoPlayer;
            y45.j(objArr, "objects");
            super.onVideoStartShow(str, Arrays.copyOf(objArr, objArr.length));
            Log.d("TiktokVideoItemFragment", "onVideoStartShow position=" + TiktokVideoItemFragment.this.mPosition + ",mVideoTitle=" + TiktokVideoItemFragment.this.mVideoTitle);
            if (!TiktokVideoItemFragment.this.mIsCurrentPage || TiktokVideoItemFragment.this.mHostPaused || (tiktokShortVideoPlayer = TiktokVideoItemFragment.this.mTiktokPlayer) == null) {
                return;
            }
            if (!tiktokShortVideoPlayer.isOwningSharedPlayer()) {
                Log.d("TiktokVideoItemFragment", "onVideoStartShow ignore (not owner) position=" + TiktokVideoItemFragment.this.mPosition + ", mVideoTitle=" + TiktokVideoItemFragment.this.mVideoTitle);
                return;
            }
            if (tiktokShortVideoPlayer.isNetworkErrorShowing()) {
                TiktokVideoItemFragment.this.R1();
                return;
            }
            TiktokVideoItemFragment.this.mHostResumingPlayback = false;
            TiktokVideoItemFragment.this.f1();
            if (TiktokVideoItemFragment.this.mNeedApplyResumeSeek && TiktokVideoItemFragment.this.mResumeSeekMs >= 500) {
                TiktokVideoItemFragment.this.X0(VideoCoverVisibility.COVER);
                TiktokVideoItemFragment.this.V0();
            }
            TiktokVideoItemFragment.R2(TiktokVideoItemFragment.this, "onVideoStartShow", 0, 2, null);
        }
    }

    public static final class e implements OSMultiSeekBar.b {
        public e() {
        }

        @Override
        public void a(OSMultiSeekBar oSMultiSeekBar, int i, float f, boolean z) {
        }

        @Override
        public void b(OSMultiSeekBar oSMultiSeekBar) {
        }

        @Override
        public void c(OSMultiSeekBar oSMultiSeekBar) {
            if (oSMultiSeekBar == null) {
                return;
            }
            TiktokVideoItemFragment.this.S2(oSMultiSeekBar.getProgress());
            TiktokVideoItemFragment tiktokVideoItemFragment = TiktokVideoItemFragment.this;
            tiktokVideoItemFragment.w2(tiktokVideoItemFragment.D1(oSMultiSeekBar.getProgress()));
        }
    }

    public TiktokVideoItemFragment() {
        super(R.layout.fragment_tiktok_video_item);
        this.mPlayStartMs = -1L;
        this.mHostChromePhase = HostChromePhase.ACTIVE;
        this.mProgressListener = new GSYVideoProgressListener() {
            @Override
            public final void onProgress(int i, int i2, int i3, int i4) {
                TiktokVideoItemFragment.z1(this.a, i, i2, i3, i4);
            }
        };
        this.mPlayerCallBack = new d();
    }

    public static final boolean C2(View view, MotionEvent motionEvent) {
        ViewParent parent;
        if (motionEvent.getAction() != 0 || (parent = view.getParent()) == null) {
            return false;
        }
        parent.requestDisallowInterceptTouchEvent(true);
        return false;
    }

    public static final void D2(TiktokVideoItemFragment tiktokVideoItemFragment, View view) {
        Fragment parentFragment = tiktokVideoItemFragment.getParentFragment();
        TiktokFragment tiktokFragment = parentFragment instanceof TiktokFragment ? (TiktokFragment) parentFragment : null;
        if (tiktokFragment != null) {
            tiktokFragment.g1();
        }
    }

    private final void G1() {
        if (!e07.f(getContext())) {
            this.mReplay = true;
            U0(TiktokPlayNetworkHelper.PlayBlockType.NO_NET);
            return;
        }
        Log.d("TiktokVideoItemFragment", "onNetworkDisconnected position=" + this.mPosition + ", ignored: still connected");
    }

    public static final zfb J1(TiktokVideoItemFragment tiktokVideoItemFragment, ArticleData articleData) {
        y45.j(articleData, "refreshed");
        tiktokVideoItemFragment.T0(articleData);
        tiktokVideoItemFragment.H2();
        return zfb.a;
    }

    public static final void O1(TiktokVideoItemFragment tiktokVideoItemFragment, TiktokShortVideoPlayer tiktokShortVideoPlayer) {
        if (tiktokVideoItemFragment.mUserPausedByTap && tiktokVideoItemFragment.mIsCurrentPage && tiktokVideoItemFragment.isAdded()) {
            tiktokShortVideoPlayer.snapshotPauseCoverForSurfaceLoss();
        }
    }

    public static void R2(TiktokVideoItemFragment tiktokVideoItemFragment, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        tiktokVideoItemFragment.Q2(str, i);
    }

    public static final zfb U1(TiktokVideoItemFragment tiktokVideoItemFragment, e74 e74Var, ArticleData articleData) {
        if (!tiktokVideoItemFragment.mIsCurrentPage) {
            return zfb.a;
        }
        ProgressBar progressBar = tiktokVideoItemFragment.mPbLoading;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
        if (!tiktokVideoItemFragment.mHostPaused && !tiktokVideoItemFragment.mUserPausedByTap && !tiktokVideoItemFragment.mForcePausedNeedsTap) {
            y45.g(articleData);
            e74Var.invoke(articleData);
            return zfb.a;
        }
        y45.g(articleData);
        tiktokVideoItemFragment.T0(articleData);
        if (tiktokVideoItemFragment.E1()) {
            tiktokVideoItemFragment.mIsPlaying = false;
            tiktokVideoItemFragment.mIsPaused = true;
            tiktokVideoItemFragment.P2(HostChromePhase.USER_PAUSED, "refresh_while_needs_tap");
        }
        Log.d("TiktokVideoItemFragment", "refreshPlayUrlAsync ready cached while paused position=" + tiktokVideoItemFragment.mPosition + ", hostPaused=" + tiktokVideoItemFragment.mHostPaused + ", userPaused=" + tiktokVideoItemFragment.mUserPausedByTap + ", forcePaused=" + tiktokVideoItemFragment.mForcePausedNeedsTap);
        return zfb.a;
    }

    public static final void V1(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final void W0(TiktokVideoItemFragment tiktokVideoItemFragment, long j) {
        if (tiktokVideoItemFragment.mWaitingResumeSeekFrame && tiktokVideoItemFragment.mIsCurrentPage && !tiktokVideoItemFragment.mHostPaused) {
            Log.w("TiktokVideoItemFragment", "applyResumeSeek timeout fade cover target=" + j + ", mVideoTitle=" + tiktokVideoItemFragment.mVideoTitle);
            tiktokVideoItemFragment.mWaitingResumeSeekFrame = false;
            tiktokVideoItemFragment.o2("seek_timeout");
        }
    }

    public static final zfb W1(TiktokVideoItemFragment tiktokVideoItemFragment, e74 e74Var, ArticleData articleData, Throwable th) {
        Log.w("TiktokVideoItemFragment", "refreshPlayUrlAsync failed: " + th.getMessage());
        ProgressBar progressBar = tiktokVideoItemFragment.mPbLoading;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
        if (tiktokVideoItemFragment.mIsCurrentPage && !tiktokVideoItemFragment.mHostPaused && !tiktokVideoItemFragment.mUserPausedByTap && !tiktokVideoItemFragment.mForcePausedNeedsTap) {
            e74Var.invoke(articleData);
        }
        return zfb.a;
    }

    public static final void X1(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static void Y0(TiktokVideoItemFragment tiktokVideoItemFragment, VideoCoverVisibility videoCoverVisibility, int i, Object obj) {
        if ((i & 1) != 0) {
            videoCoverVisibility = tiktokVideoItemFragment.f2();
        }
        tiktokVideoItemFragment.X0(videoCoverVisibility);
    }

    public static final void Z0(ImageView imageView) {
        imageView.setVisibility(8);
        imageView.setAlpha(1.0f);
    }

    public static final void Z1(TiktokVideoItemFragment tiktokVideoItemFragment, TiktokShortVideoPlayer tiktokShortVideoPlayer) {
        if (tiktokVideoItemFragment.mIsCurrentPage && tiktokVideoItemFragment.isAdded() && tiktokVideoItemFragment.t1()) {
            ProgressBar progressBar = tiktokVideoItemFragment.mPbLoading;
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
            int i = tiktokVideoItemFragment.mPosition;
            String str = tiktokVideoItemFragment.mVideoTitle;
            ArticleData articleData = tiktokVideoItemFragment.mArticleData;
            Log.d("TiktokVideoItemFragment", "reinitPlayerAfterHostReturn start position=" + i + ",mVideoTitle=" + str + ", seek=" + (articleData != null ? Long.valueOf(articleData.getPlayPosition()) : null));
            tiktokVideoItemFragment.P2(HostChromePhase.RECLAIMING, "reinit_prepare_start");
            tiktokVideoItemFragment.s1();
            tiktokShortVideoPlayer.prepareSurfaceAndStartPlay(true);
            tiktokVideoItemFragment.t2(tiktokShortVideoPlayer);
        }
    }

    private final void initView(View view) {
        TiktokShortVideoPlayer tiktokShortVideoPlayer = (TiktokShortVideoPlayer) view.findViewById(R.id.tiktok_short_player);
        this.mTiktokPlayer = tiktokShortVideoPlayer;
        if (tiktokShortVideoPlayer != null) {
            tiktokShortVideoPlayer.setMOnNetworkBlockShown(new c74() {
                @Override
                public final Object invoke() {
                    return TiktokVideoItemFragment.v1(this.b);
                }
            });
        }
        this.mIvVideoCover = (ImageView) view.findViewById(R.id.iv_video_cover);
        this.mIvPlayPause = (OSIconTextView) view.findViewById(R.id.iv_play_pause);
        this.mIvTtMute = (OSIconTextView) view.findViewById(R.id.iv_tt_mute);
        this.mLlVideoInfoRow = (LinearLayout) view.findViewById(R.id.ll_video_info_row);
        this.mLlProgress = (LinearLayout) view.findViewById(R.id.ll_progress);
        this.mSbVideoProgress = (OSMultiSeekBar) view.findViewById(R.id.sb_video_progress);
        this.mLlVideoInfo = (LinearLayout) view.findViewById(R.id.ll_video_info);
        this.mIvUploaderAvatar = (ImageView) view.findViewById(R.id.iv_uploader_avatar);
        this.mTvUploaderName = (TextView) view.findViewById(R.id.tv_uploader_name);
        this.mTvVideoDescription = (TextView) view.findViewById(R.id.tv_video_description);
        this.mPbLoading = (ProgressBar) view.findViewById(R.id.pb_loading);
        u1();
        L2();
    }

    public static final zfb m2(TiktokVideoItemFragment tiktokVideoItemFragment, TiktokShortVideoPlayer tiktokShortVideoPlayer) {
        Log.d("TiktokVideoItemFragment", "retryPlaybackAfterPlayError reinit mVideoTitle=" + tiktokVideoItemFragment.mVideoTitle + ", position=" + tiktokVideoItemFragment.mPosition);
        tiktokVideoItemFragment.Y1(tiktokShortVideoPlayer);
        return zfb.a;
    }

    public static final void n1(TiktokVideoItemFragment tiktokVideoItemFragment, View view) {
        Log.d("TiktokVideoItemFragment", "cover click toggle position=" + tiktokVideoItemFragment.mPosition);
        tiktokVideoItemFragment.M2();
    }

    public static final zfb n2(TiktokVideoItemFragment tiktokVideoItemFragment, c74 c74Var, ArticleData articleData) {
        y45.j(articleData, "refreshed");
        tiktokVideoItemFragment.T0(articleData);
        c74Var.invoke();
        return zfb.a;
    }

    public static final void p2(TiktokShortVideoPlayer tiktokShortVideoPlayer) {
        tiktokShortVideoPlayer.requestLayout();
        tiktokShortVideoPlayer.invalidate();
    }

    public static final void s2(TiktokVideoItemFragment tiktokVideoItemFragment, ImageView imageView, Bitmap bitmap) {
        List<CoverImage> coverImageList;
        CoverImage coverImage;
        String url = null;
        tiktokVideoItemFragment.mClearFrozenCoverRunnable = null;
        if (imageView.getDrawable() != null) {
            imageView.setImageDrawable(null);
        }
        if (bitmap.isRecycled()) {
            bitmap = null;
        }
        if (bitmap != null) {
            bitmap.recycle();
        }
        if (tiktokVideoItemFragment.isAdded()) {
            tiktokVideoItemFragment.mBoundCoverUrl = null;
            ArticleData articleData = tiktokVideoItemFragment.mArticleData;
            if (articleData != null && (coverImageList = articleData.getCoverImageList()) != null && (coverImage = (CoverImage) i81.q0(coverImageList)) != null) {
                url = coverImage.getUrl();
            }
            tiktokVideoItemFragment.d1(url);
        }
    }

    public static final void u2(TiktokVideoItemFragment tiktokVideoItemFragment, TiktokShortVideoPlayer tiktokShortVideoPlayer) {
        tiktokVideoItemFragment.mHostResumeWatchdog = null;
        if (tiktokVideoItemFragment.mIsCurrentPage) {
            if (tiktokVideoItemFragment.mUserPausedByTap) {
                tiktokVideoItemFragment.mHostResumingPlayback = false;
                return;
            }
            if ((tiktokShortVideoPlayer.isInPlayingState() && tiktokVideoItemFragment.mIsPlaying) || tiktokShortVideoPlayer.getCurrentState() == 2) {
                return;
            }
            if (tiktokShortVideoPlayer.getCurrentState() == 5 && !tiktokVideoItemFragment.mIsPlaying) {
                tiktokVideoItemFragment.mHostResumingPlayback = false;
                return;
            }
            if (!tiktokVideoItemFragment.mHostResumeReinitAttempted) {
                Log.w("TiktokVideoItemFragment", "host resume watchdog reinit mVideoTitle=" + tiktokVideoItemFragment.mVideoTitle + ", state=" + tiktokShortVideoPlayer.getCurrentState());
                tiktokVideoItemFragment.mHostResumeReinitAttempted = true;
                tiktokVideoItemFragment.Y1(tiktokShortVideoPlayer);
                return;
            }
            Log.w("TiktokVideoItemFragment", "host resume watchdog gave up mVideoTitle=" + tiktokVideoItemFragment.mVideoTitle + ", state=" + tiktokShortVideoPlayer.getCurrentState());
            ProgressBar progressBar = tiktokVideoItemFragment.mPbLoading;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
            tiktokVideoItemFragment.mHostResumingPlayback = false;
            tiktokVideoItemFragment.E2();
            tiktokVideoItemFragment.mIsPlaying = false;
            tiktokVideoItemFragment.mIsPaused = true;
        }
    }

    public static final zfb v1(TiktokVideoItemFragment tiktokVideoItemFragment) {
        tiktokVideoItemFragment.s1();
        return zfb.a;
    }

    public final void w2(int positionMs) {
        TiktokShortVideoPlayer tiktokShortVideoPlayer;
        int iD2;
        if (!this.mPlayerInitialized || !this.mIsCurrentPage || (tiktokShortVideoPlayer = this.mTiktokPlayer) == null || (iD2 = d2(tiktokShortVideoPlayer)) <= 0) {
            return;
        }
        int iK = wn8.k(positionMs, 0, iD2);
        ArticleData articleData = this.mArticleData;
        if (articleData != null) {
            articleData.setPlayPosition(iK);
        }
        try {
            tiktokShortVideoPlayer.setPlayPosition(iK);
            tiktokShortVideoPlayer.seekTo(iK);
            U2(iK, iD2);
        } catch (Throwable th) {
            Log.w("TiktokVideoItemFragment", "seekTo mVideoTitle=" + this.mVideoTitle + ", error: " + th.getMessage());
        }
    }

    public static final void z1(TiktokVideoItemFragment tiktokVideoItemFragment, int i, int i2, int i3, int i4) {
        TiktokShortVideoPlayer tiktokShortVideoPlayer;
        if (tiktokVideoItemFragment.mIsCurrentPage) {
            if (i4 >= 1000) {
                tiktokVideoItemFragment.mVideoDurationMs = i4;
            }
            TiktokShortVideoPlayer tiktokShortVideoPlayer2 = tiktokVideoItemFragment.mTiktokPlayer;
            if (tiktokShortVideoPlayer2 != null && tiktokShortVideoPlayer2.getCurrentState() == 3 && !tiktokVideoItemFragment.mIsPlaybackBuffering) {
                tiktokVideoItemFragment.T2(true);
            }
            if (i3 > 0 && !tiktokVideoItemFragment.mNeedApplyResumeSeek && !tiktokVideoItemFragment.mWaitingResumeSeekFrame && (tiktokShortVideoPlayer = tiktokVideoItemFragment.mTiktokPlayer) != null && tiktokShortVideoPlayer.isOwningSharedPlayer()) {
                tiktokVideoItemFragment.G2(i3);
            }
            if (i4 < 1000) {
                int i5 = tiktokVideoItemFragment.mVideoDurationMs;
                if (i5 > 0) {
                    i4 = i5;
                } else if (i4 <= 0) {
                    i4 = 0;
                }
            }
            tiktokVideoItemFragment.U2(i3, i4);
            tiktokVideoItemFragment.C1(i3);
            if (i4 > 0) {
                tiktokVideoItemFragment.S2(wn8.k((int) ((((long) i3) * ((long) 100)) / ((long) i4)), 0, 100));
            }
        }
    }

    public static final void z2(TiktokVideoItemFragment tiktokVideoItemFragment, View view) {
        Log.d("TiktokVideoItemFragment", "deferred pause cover click position=" + tiktokVideoItemFragment.mPosition);
        tiktokVideoItemFragment.M2();
    }

    public final void A1(String reason) {
        OSIconTextView oSIconTextView;
        if (this.mHostPaused || this.mHostPausePending || this.mPausedForScroll || !this.mIsCurrentPage) {
            return;
        }
        boolean z = this.mForcePausedNeedsTap && (oSIconTextView = this.mIvPlayPause) != null && oSIconTextView.getVisibility() == 0;
        this.mForcePausedNeedsTap = true;
        this.mIsPlaying = false;
        this.mIsPaused = true;
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer != null) {
            tiktokShortVideoPlayer.setStartAfterPrepared(false);
        }
        TiktokShortVideoPlayer tiktokShortVideoPlayer2 = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer2 != null) {
            tiktokShortVideoPlayer2.setUserPauseHoldAcrossHostResume(true);
        }
        if (!z) {
            E2();
        }
        Log.d("TiktokVideoItemFragment", "markForcePausedNeedsUserTap reason=" + reason + " position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle + ", alreadyShowing=" + z);
    }

    public final void A2(e74 e74Var) {
        this.onFragmentReadyCallback = e74Var;
    }

    public final void B1() {
        if (this.mIsCurrentPage) {
            this.mHostPausePending = true;
        }
    }

    public final void B2() {
        OSMultiSeekBar oSMultiSeekBar = this.mSbVideoProgress;
        if (oSMultiSeekBar != null) {
            oSMultiSeekBar.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return TiktokVideoItemFragment.C2(view, motionEvent);
                }
            });
        }
        OSMultiSeekBar oSMultiSeekBar2 = this.mSbVideoProgress;
        if (oSMultiSeekBar2 != null) {
            oSMultiSeekBar2.setOnProgressChangedListener(new e());
        }
        OSIconTextView oSIconTextView = this.mIvTtMute;
        if (oSIconTextView != null) {
            oSIconTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    TiktokVideoItemFragment.D2(this.b, view);
                }
            });
        }
        b1();
    }

    public final void C1(int currentMs) {
        if (currentMs <= 0 || !this.mIsCurrentPage || this.mHostPaused || this.mHostResumingPlayback) {
            return;
        }
        Q2("progress", currentMs);
    }

    public final int D1(int progressPercent) {
        int i = this.mVideoDurationMs;
        if (i <= 0) {
            return 0;
        }
        return (int) ((((long) progressPercent) * ((long) i)) / ((long) 100));
    }

    public final boolean E1() {
        return this.mUserPausedByTap || this.mForcePausedNeedsTap;
    }

    public final void E2() {
        OSIconTextView oSIconTextView = this.mIvPlayPause;
        if (oSIconTextView == null) {
            return;
        }
        float f = oSIconTextView.getResources().getDisplayMetrics().density * 8.0f;
        if (oSIconTextView.getElevation() < f) {
            oSIconTextView.setElevation(f);
        }
        oSIconTextView.animate().cancel();
        boolean z = oSIconTextView.getVisibility() == 0 && oSIconTextView.getAlpha() >= 1.0f;
        oSIconTextView.setAlpha(1.0f);
        oSIconTextView.setVisibility(0);
        if (z) {
            return;
        }
        ImageView imageView = this.mIvVideoCover;
        if (imageView == null || imageView.getVisibility() != 0) {
            oSIconTextView.bringToFront();
        } else {
            L2();
            oSIconTextView.bringToFront();
        }
    }

    public final void F1(boolean allowResume) {
        if (e07.h(getContext())) {
            Log.d("TiktokVideoItemFragment", "onMobileNetworkChanged position=" + this.mPosition + ", ignored: wifi connected");
            return;
        }
        TiktokPlayNetworkHelper.PlayBlockType playBlockTypeB = TiktokPlayNetworkHelper.b(getContext());
        if (playBlockTypeB == TiktokPlayNetworkHelper.PlayBlockType.NO_WIFI) {
            U0(playBlockTypeB);
            return;
        }
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer == null) {
            return;
        }
        tiktokShortVideoPlayer.dismissNetworkErrorLayers();
        K2(tiktokShortVideoPlayer);
        if (allowResume) {
            if (this.mReplay) {
                tiktokShortVideoPlayer.netWorkErrorLogic();
                this.mReplay = false;
            } else {
                if (this.mLastPlayState != 2 || this.mUserPausedByTap || this.mForcePausedNeedsTap) {
                    k1();
                    return;
                }
                tiktokShortVideoPlayer.startMediaManagerPlayback();
                this.mIsPlaying = true;
                this.mIsPaused = false;
                s1();
            }
        }
    }

    public final void F2(Bitmap bitmap, String reason) {
        ImageView imageView = this.mIvVideoCover;
        if (imageView == null) {
            bitmap.recycle();
            return;
        }
        Log.d("TiktokVideoItemFragment", "showUserPausedFrozenCover reason=" + reason + ", position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle);
        Bitmap bitmap2 = this.mShowingFrozenBitmap;
        if (bitmap2 != null) {
            if (bitmap2 == bitmap || bitmap2.isRecycled()) {
                bitmap2 = null;
            }
            if (bitmap2 != null) {
                bitmap2.recycle();
            }
        }
        this.mShowingFrozenBitmap = bitmap;
        imageView.setImageBitmap(bitmap);
        X0(VideoCoverVisibility.COVER);
        E2();
        y2(true);
        this.mHostChromePhase = HostChromePhase.USER_PAUSED;
    }

    public final void G2(long posMs) {
        if (posMs <= 0) {
            return;
        }
        this.mResumeSeekMs = posMs;
        ArticleData articleData = this.mArticleData;
        if (articleData != null) {
            articleData.setPlayPosition(posMs);
        }
    }

    public final void H1(int networkType, boolean allowResume) {
        String str;
        if (!this.mIsCurrentPage || (str = this.mVideoUrl) == null || str.length() == 0) {
            return;
        }
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        this.mLastPlayState = tiktokShortVideoPlayer != null ? tiktokShortVideoPlayer.getCurrentState() : 0;
        if (networkType == 1) {
            K1(allowResume);
        } else if (networkType == 0 || networkType == 6 || networkType == 7) {
            G1();
        } else {
            F1(allowResume);
        }
    }

    public final void H2() {
        if (this.mHostPaused) {
            Log.d("TiktokVideoItemFragment", "startPlaybackOnCurrentPage deferred: host paused position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle);
            return;
        }
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer == null) {
            return;
        }
        Context context = getContext();
        TiktokShortVideoPlayer tiktokShortVideoPlayer2 = this.mTiktokPlayer;
        TiktokPlayNetworkHelper.i(context, tiktokShortVideoPlayer2 != null && tiktokShortVideoPlayer2.getMNetworkBlockLayerActive());
        if (t1()) {
            Log.d("TiktokVideoItemFragment", "startPlaybackOnCurrentPage position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle + ", url=" + this.mVideoUrl + ", userPaused=" + this.mUserPausedByTap);
            TiktokPlayNetworkHelper.PlayBlockType playBlockTypeB = TiktokPlayNetworkHelper.b(getContext());
            if (b.a[playBlockTypeB.ordinal()] != 1) {
                U0(playBlockTypeB);
                return;
            }
            tiktokShortVideoPlayer.dismissNetworkErrorLayers();
            if (!E1()) {
                s1();
                this.mUserPausedByTap = false;
                this.mForcePausedNeedsTap = false;
                this.mIsPlaying = true;
                this.mIsPaused = false;
                j2(tiktokShortVideoPlayer);
                return;
            }
            this.mIsPlaying = false;
            this.mIsPaused = true;
            E2();
            X0(this.mHasRenderedVideoFrame ? VideoCoverVisibility.VIDEO : VideoCoverVisibility.COVER);
            K2(tiktokShortVideoPlayer);
            int currentState = tiktokShortVideoPlayer.getCurrentState();
            if (currentState == 0) {
                tiktokShortVideoPlayer.prepareSurfaceAndStartPlay(false);
            } else if (currentState == 2 || currentState == 3) {
                tiktokShortVideoPlayer.onVideoPause();
            }
        }
    }

    public final void I1() {
        a2();
        this.mPlayStartMs = System.currentTimeMillis();
    }

    public final void I2(int globalPosition) {
        int i;
        if (globalPosition < 0 || (i = this.mPosition) == globalPosition) {
            return;
        }
        Log.d("TiktokVideoItemFragment", "syncGlobalPosition " + i + " -> " + globalPosition);
        this.mPosition = globalPosition;
        Bundle arguments = getArguments();
        if (arguments != null) {
            arguments.putInt("position", globalPosition);
        }
    }

    public final void J2(boolean muted) {
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer != null) {
            tiktokShortVideoPlayer.syncTtSessionMute(muted);
        }
    }

    public final void K1(boolean allowResume) {
        if (allowResume) {
            k1();
        } else {
            l1();
        }
    }

    public final void K2(TiktokShortVideoPlayer player) {
        boolean z = S0() && !player.getMNetworkBlockLayerActive() && TiktokPlayNetworkHelper.b(getContext()) == TiktokPlayNetworkHelper.PlayBlockType.NONE;
        if (player.isStartAfterPrepared() != z) {
            player.setStartAfterPrepared(z);
        }
        if (z) {
            return;
        }
        M1(player);
    }

    public final void L1() {
        TiktokShortVideoPlayer tiktokShortVideoPlayer;
        boolean z = this.mIsCurrentPage;
        if (!z) {
            Log.d("TiktokVideoItemFragment", "pauseForBackground skip mVideoTitle=" + this.mVideoTitle + ", currentPage=" + z);
            return;
        }
        boolean z2 = this.mHostPaused;
        if (z2) {
            Log.d("TiktokVideoItemFragment", "pauseForBackground skip mVideoTitle=" + this.mVideoTitle + ", hostPaused=" + z2);
            this.mHostPausePending = false;
            return;
        }
        this.mHostPausePending = false;
        Log.d("TiktokVideoItemFragment", "pauseForBackground mVideoTitle=" + this.mVideoTitle + ", position=" + this.mPosition);
        q2();
        h1();
        this.mHostPaused = true;
        this.mHostResumingPlayback = false;
        this.mHostResumeReinitAttempted = false;
        f1();
        this.mIsPlaying = false;
        this.mIsPaused = true;
        if (!this.mUserPausedByTap) {
            P2(HostChromePhase.HOST_LEFT, "pauseForBackground");
            TiktokShortVideoPlayer tiktokShortVideoPlayer2 = this.mTiktokPlayer;
            if (tiktokShortVideoPlayer2 != null) {
                this.mHostPausedDuringPrepare = tiktokShortVideoPlayer2.getCurrentState() == 1;
                tiktokShortVideoPlayer2.setStartAfterPrepared(false);
                tiktokShortVideoPlayer2.onVideoPause();
                tiktokShortVideoPlayer2.pauseForHostBackground();
                return;
            }
            return;
        }
        TiktokShortVideoPlayer tiktokShortVideoPlayer3 = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer3 != null) {
            tiktokShortVideoPlayer3.setUserPauseHoldAcrossHostResume(true);
        }
        if (this.mShowingFrozenBitmap == null && (tiktokShortVideoPlayer = this.mTiktokPlayer) != null) {
            tiktokShortVideoPlayer.snapshotPauseCoverForSurfaceLoss();
        }
        Log.d("TiktokVideoItemFragment", "pauseForBackground skip player ops (user paused) mVideoTitle=" + this.mVideoTitle);
    }

    public final void L2() {
        TiktokShortVideoPlayer tiktokShortVideoPlayer;
        ImageView imageView = this.mIvVideoCover;
        if (imageView == null) {
            return;
        }
        ViewParent parent = imageView.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null || (tiktokShortVideoPlayer = this.mTiktokPlayer) == null || !y45.e(tiktokShortVideoPlayer.getParent(), viewGroup)) {
            return;
        }
        if (imageView.getVisibility() == 0) {
            imageView.bringToFront();
        }
        OSIconTextView oSIconTextView = this.mIvPlayPause;
        if (oSIconTextView != null && y45.e(oSIconTextView.getParent(), viewGroup) && oSIconTextView.getVisibility() == 0) {
            oSIconTextView.bringToFront();
        }
    }

    public final void M1(TiktokShortVideoPlayer player) {
        if (player.isInPlayingState()) {
            player.onVideoPause();
            return;
        }
        int currentState = player.getCurrentState();
        if (currentState == 1 || currentState == 3) {
            player.onVideoPause();
        }
    }

    public final void M2() {
        Log.i("TiktokVideoItemFragment", "togglePlayPause " + this.mVideoTitle + ", " + this.mIsCurrentPage + ", " + this.mIsPlaying);
        if (this.mIsCurrentPage) {
            TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
            Integer numValueOf = tiktokShortVideoPlayer != null ? Integer.valueOf(tiktokShortVideoPlayer.getCurrentState()) : null;
            ProgressBar progressBar = this.mPbLoading;
            boolean z = (progressBar != null && progressBar.getVisibility() == 0) || (numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 3);
            if (this.mIsPlaying || (!E1() && z)) {
                N1();
                return;
            }
            TiktokPlayNetworkHelper.PlayBlockType playBlockTypeB = TiktokPlayNetworkHelper.b(getContext());
            if (b.a[playBlockTypeB.ordinal()] == 1) {
                i2();
            } else {
                U0(playBlockTypeB);
            }
        }
    }

    public final void N1() {
        Log.d("TiktokVideoItemFragment", "pauseVideo mVideoTitle=" + this.mVideoTitle + ", position=" + this.mPosition);
        this.mHostResumingPlayback = false;
        f1();
        g1();
        q2();
        this.mUserPausedByTap = true;
        this.mForcePausedNeedsTap = false;
        this.mIsPlaying = false;
        this.mIsPaused = true;
        this.mPausedForScroll = false;
        this.mHostChromePhase = HostChromePhase.USER_PAUSED;
        if (this.mHasRenderedVideoFrame) {
            X0(VideoCoverVisibility.VIDEO);
        } else {
            X0(VideoCoverVisibility.COVER);
        }
        E2();
        final TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer != null) {
            tiktokShortVideoPlayer.setStartAfterPrepared(false);
            tiktokShortVideoPlayer.setUserPauseHoldAcrossHostResume(true);
            tiktokShortVideoPlayer.onVideoPause();
            tiktokShortVideoPlayer.post(new Runnable() {
                @Override
                public final void run() {
                    TiktokVideoItemFragment.O1(this.b, tiktokShortVideoPlayer);
                }
            });
        }
    }

    public final void N2() {
        R0();
        if (!this.mVideoOverReported && this.mPlayEventReported) {
            long j = this.mEffectiveDurationMs;
            if (j > 0) {
                int i = this.mMaxPercent;
                ArticleData articleData = this.mArticleData;
                ela.a aVar = ela.b;
                aVar.b().F(articleData, j);
                if (y45.e(articleData != null ? articleData.getArticleClass() : null, "small_video")) {
                    aVar.b().z(articleData, j, i);
                } else {
                    aVar.b().x(articleData, j, i);
                }
                this.mVideoOverReported = true;
                Log.d("TiktokVideoItemFragment", "trackVideoOver mVideoTitle=" + this.mVideoTitle + ", position=" + this.mPosition + ", duration=" + j + ", percent=" + i);
            }
        }
        c2();
    }

    public final void O2() {
        if (!this.mIsCurrentPage || this.mVideoOverReported) {
            return;
        }
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (this.mIsPlaying && tiktokShortVideoPlayer != null && tiktokShortVideoPlayer.getCurrentState() != 1) {
            tiktokShortVideoPlayer.onVideoPause();
        }
        N2();
    }

    public final void P1() {
        if (this.mIsCurrentPage) {
            if (E1()) {
                this.mPausedForScroll = true;
                Log.d("TiktokVideoItemFragment", "pauseVideoForScroll keep pause overlay position=" + this.mPosition + ", userPaused=" + this.mUserPausedByTap + ", forcePaused=" + this.mForcePausedNeedsTap + ", mVideoTitle=" + this.mVideoTitle);
                return;
            }
            Log.d("TiktokVideoItemFragment", "pauseVideoForScroll mVideoTitle=" + this.mVideoTitle + ", position=" + this.mPosition);
            q2();
            this.mPausedForScroll = true;
            this.mIsPlaying = false;
            this.mIsPaused = true;
            s1();
            Y0(this, null, 1, null);
            TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
            if (tiktokShortVideoPlayer != null) {
                tiktokShortVideoPlayer.onVideoPause();
            }
        }
    }

    public final void P2(HostChromePhase phase, String reason) {
        HostChromePhase hostChromePhase = this.mHostChromePhase;
        this.mHostChromePhase = phase;
        int i = b.b[phase.ordinal()];
        if (i == 1) {
            g1();
            this.mWaitingResumeSeekFrame = false;
            ProgressBar progressBar = this.mPbLoading;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
            if (this.mHasRenderedVideoFrame) {
                X0(VideoCoverVisibility.VIDEO);
            } else {
                X0(VideoCoverVisibility.COVER);
            }
            if (E1()) {
                E2();
            } else {
                s1();
            }
        } else if (i == 2) {
            g1();
            this.mWaitingResumeSeekFrame = false;
            this.mNeedApplyResumeSeek = false;
            ProgressBar progressBar2 = this.mPbLoading;
            if (progressBar2 != null) {
                progressBar2.setVisibility(8);
            }
            if (this.mHasRenderedVideoFrame && this.mPlayerInitialized) {
                X0(VideoCoverVisibility.VIDEO);
            } else {
                X0(VideoCoverVisibility.COVER);
            }
            E2();
        } else if (i == 3) {
            g1();
            this.mWaitingResumeSeekFrame = false;
            this.mNeedApplyResumeSeek = false;
            ProgressBar progressBar3 = this.mPbLoading;
            if (progressBar3 != null) {
                progressBar3.setVisibility(8);
            }
            if (this.mHasRenderedVideoFrame && this.mPlayerInitialized) {
                X0(VideoCoverVisibility.VIDEO);
            } else {
                X0(VideoCoverVisibility.COVER);
            }
            if (E1()) {
                E2();
            } else {
                s1();
            }
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            this.mHasRenderedVideoFrame = false;
            this.mWaitingResumeSeekFrame = false;
            X0(VideoCoverVisibility.COVER);
            if (E1()) {
                E2();
            } else {
                s1();
            }
        }
        if (hostChromePhase != phase) {
            Log.d("TiktokVideoItemFragment", "transitionHostChrome " + hostChromePhase + " -> " + phase + " reason=" + reason + ", rendered=" + this.mHasRenderedVideoFrame + ", userPaused=" + this.mUserPausedByTap + ", mVideoTitle=" + this.mVideoTitle);
        }
    }

    public final void Q1() {
        onSelectInViewPage();
    }

    public final void Q2(String reason, int currentMs) {
        TiktokShortVideoPlayer tiktokShortVideoPlayer;
        ImageView imageView;
        if (!this.mIsCurrentPage || this.mHostPaused || E1() || (tiktokShortVideoPlayer = this.mTiktokPlayer) == null || !tiktokShortVideoPlayer.isOwningSharedPlayer()) {
            return;
        }
        if (!this.mHasRenderedVideoFrame || ((imageView = this.mIvVideoCover) != null && imageView.getVisibility() == 0)) {
            if (this.mNeedApplyResumeSeek) {
                V0();
            }
            if (this.mNeedApplyResumeSeek) {
                if (y45.e(reason, "onVideoStartShow")) {
                    v2(tiktokShortVideoPlayer);
                    return;
                }
                return;
            }
            if (this.mWaitingResumeSeekFrame) {
                if (currentMs < 0) {
                    return;
                }
                long j = this.mResumeSeekMs;
                long j2 = currentMs;
                if (j2 + 1500 < j && Math.abs(j2 - j) > 1500) {
                    return;
                } else {
                    this.mWaitingResumeSeekFrame = false;
                }
            }
            if (currentMs > 0) {
                o2(reason);
            } else if (y45.e(reason, "onVideoStartShow")) {
                v2(tiktokShortVideoPlayer);
            }
        }
    }

    public final void R0() {
        long j = this.mPlayStartMs;
        if (j > 0) {
            this.mEffectiveDurationMs += System.currentTimeMillis() - j;
            this.mPlayStartMs = -1L;
        }
    }

    public final void R1() {
        Log.d("TiktokVideoItemFragment", "presentNetworkBlockUi position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle + ", url=" + this.mVideoUrl);
        ProgressBar progressBar = this.mPbLoading;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
        s1();
        X0(VideoCoverVisibility.GONE_FOR_ERROR);
    }

    public final boolean S0() {
        return (this.mHostPaused || this.mUserPausedByTap || this.mForcePausedNeedsTap) ? false : true;
    }

    public final void S1(boolean muted) {
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer != null) {
            tiktokShortVideoPlayer.configureTtMutePolicyOnEnter(muted);
        }
    }

    public final void S2(int percent) {
        int iK = wn8.k(percent, 0, 100);
        if (iK > this.mMaxPercent) {
            this.mMaxPercent = iK;
        }
    }

    public final void T0(ArticleData article) {
        this.mArticleData = article;
        VideoInfo videoInfo = article.getVideoInfo();
        if (videoInfo == null) {
            return;
        }
        b2(videoInfo.getUrl());
    }

    public final void T1(final ArticleData article, List allArticles, final e74 onReady) {
        rc2 rc2Var = this.mEnsurePlayableDisposable;
        if (rc2Var != null) {
            rc2Var.dispose();
        }
        ProgressBar progressBar = this.mPbLoading;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
        mc7 mc7VarM = com.transsion.onlinevideo.tiktok.repository.a.c.a().r(article, allArticles).M(vb.a());
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return TiktokVideoItemFragment.U1(this.b, onReady, (ArticleData) obj);
            }
        };
        zf1 zf1Var = new zf1() {
            @Override
            public final void accept(Object obj) {
                TiktokVideoItemFragment.V1(e74Var, obj);
            }
        };
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return TiktokVideoItemFragment.W1(this.b, onReady, article, (Throwable) obj);
            }
        };
        this.mEnsurePlayableDisposable = mc7VarM.a0(zf1Var, new zf1() {
            @Override
            public final void accept(Object obj) {
                TiktokVideoItemFragment.X1(e74Var2, obj);
            }
        });
    }

    public final void T2(boolean buffering) {
        Integer numValueOf;
        if (this.mIsCurrentPage) {
            TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
            ProgressBar progressBar = this.mPbLoading;
            if (tiktokShortVideoPlayer != null && tiktokShortVideoPlayer.getMNetworkBlockLayerActive()) {
                if (this.mIsPlaybackBuffering || (progressBar != null && progressBar.getVisibility() == 0)) {
                    this.mIsPlaybackBuffering = false;
                    if (progressBar != null) {
                        progressBar.setVisibility(8);
                        return;
                    }
                    return;
                }
                return;
            }
            if (buffering) {
                if (this.mIsPlaybackBuffering && progressBar != null && progressBar.getVisibility() == 0) {
                    return;
                }
                this.mIsPlaybackBuffering = true;
                if (progressBar == null || progressBar.getVisibility() != 0) {
                    if (progressBar != null) {
                        progressBar.setVisibility(0);
                    }
                    int i = this.mPosition;
                    numValueOf = tiktokShortVideoPlayer != null ? Integer.valueOf(tiktokShortVideoPlayer.getCurrentState()) : null;
                    Log.d("TiktokVideoItemFragment", "buffering loading show position=" + i + ", state=" + numValueOf + ", mVideoTitle=" + this.mVideoTitle);
                    return;
                }
                return;
            }
            if (tiktokShortVideoPlayer == null || tiktokShortVideoPlayer.getCurrentState() != 1) {
                if (tiktokShortVideoPlayer != null && tiktokShortVideoPlayer.getCurrentState() == 3) {
                    if (this.mIsPlaybackBuffering && progressBar != null && progressBar.getVisibility() == 0) {
                        return;
                    }
                    this.mIsPlaybackBuffering = true;
                    if (progressBar != null) {
                        progressBar.setVisibility(0);
                        return;
                    }
                    return;
                }
                if (this.mIsPlaybackBuffering || (progressBar != null && progressBar.getVisibility() == 0)) {
                    this.mIsPlaybackBuffering = false;
                    if (progressBar != null) {
                        progressBar.setVisibility(8);
                    }
                    int i2 = this.mPosition;
                    numValueOf = tiktokShortVideoPlayer != null ? Integer.valueOf(tiktokShortVideoPlayer.getCurrentState()) : null;
                    Log.d("TiktokVideoItemFragment", "buffering loading hide position=" + i2 + ", state=" + numValueOf + ", mVideoTitle=" + this.mVideoTitle);
                }
            }
        }
    }

    public final void U0(TiktokPlayNetworkHelper.PlayBlockType block) {
        Integer numJ;
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer == null || (numJ = TiktokPlayNetworkHelper.j(block)) == null) {
            return;
        }
        int iIntValue = numJ.intValue();
        tiktokShortVideoPlayer.setStartAfterPrepared(false);
        M1(tiktokShortVideoPlayer);
        tiktokShortVideoPlayer.showErrorLayer(iIntValue);
        if (!this.mHostPaused && this.mIsCurrentPage && r1(tiktokShortVideoPlayer)) {
            this.mForcePausedNeedsTap = true;
            tiktokShortVideoPlayer.setUserPauseHoldAcrossHostResume(true);
        }
        R1();
        this.mIsPlaying = false;
        this.mIsPaused = false;
    }

    public final void U2(int currentMs, int durationMs) {
        if (durationMs <= 0) {
            OSMultiSeekBar oSMultiSeekBar = this.mSbVideoProgress;
            if (oSMultiSeekBar != null) {
                oSMultiSeekBar.setProgress(0.0f);
                return;
            }
            return;
        }
        int iK = wn8.k((int) ((((long) currentMs) * ((long) 100)) / ((long) durationMs)), 0, 100);
        OSMultiSeekBar oSMultiSeekBar2 = this.mSbVideoProgress;
        if (oSMultiSeekBar2 != null) {
            oSMultiSeekBar2.setProgress(iK);
        }
    }

    public final void V0() {
        if (this.mNeedApplyResumeSeek) {
            final long j = this.mResumeSeekMs;
            if (j < 500) {
                this.mNeedApplyResumeSeek = false;
                return;
            }
            TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
            if (tiktokShortVideoPlayer == null) {
                return;
            }
            if (!tiktokShortVideoPlayer.isOwningSharedPlayer()) {
                Log.d("TiktokVideoItemFragment", "applyResumeSeek defer (not owner) target=" + j + ", mVideoTitle=" + this.mVideoTitle);
                return;
            }
            this.mNeedApplyResumeSeek = false;
            Log.d("TiktokVideoItemFragment", "applyResumeSeek target=" + j + ", mVideoTitle=" + this.mVideoTitle + ", position=" + this.mPosition);
            int i = (int) j;
            try {
                tiktokShortVideoPlayer.setPlayPosition(wn8.d(i, 0));
                tiktokShortVideoPlayer.seekTo(j);
                this.mWaitingResumeSeekFrame = true;
                tiktokShortVideoPlayer.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        TiktokVideoItemFragment.W0(this.b, j);
                    }
                }, 2500L);
                int iD2 = d2(tiktokShortVideoPlayer);
                if (iD2 > 0) {
                    U2(wn8.k(i, 0, iD2), iD2);
                }
            } catch (Throwable th) {
                this.mWaitingResumeSeekFrame = false;
                Log.w("TiktokVideoItemFragment", "applyResumeSeek failed: " + th.getMessage());
            }
        }
    }

    public final void X0(VideoCoverVisibility visibility) {
        final ImageView imageView = this.mIvVideoCover;
        if (imageView == null) {
            return;
        }
        int i = b.c[visibility.ordinal()];
        if (i == 1) {
            TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
            boolean z = (tiktokShortVideoPlayer == null || !tiktokShortVideoPlayer.isOwningSharedPlayer() || tiktokShortVideoPlayer.needsFullReinitAfterHostReturn()) ? false : true;
            if (this.mHostChromePhase == HostChromePhase.ACTIVE && this.mIsCurrentPage && this.mIsPlaying && this.mHasRenderedVideoFrame && z && imageView.getVisibility() != 0) {
                return;
            }
            if (w1(visibility, imageView)) {
                L2();
                m1();
                return;
            }
            Log.i("TiktokVideoItemFragment", "applyVideoCover COVER position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle + ", url=" + this.mVideoUrl);
            imageView.animate().cancel();
            imageView.setAlpha(1.0f);
            imageView.setVisibility(0);
            L2();
            m1();
            return;
        }
        if (i == 2) {
            if (w1(visibility, imageView)) {
                return;
            }
            Log.i("TiktokVideoItemFragment", "applyVideoCover VIDEO position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle + ", url=" + this.mVideoUrl);
            imageView.animate().cancel();
            imageView.setAlpha(1.0f);
            imageView.setVisibility(8);
            imageView.setOnClickListener(null);
            imageView.setClickable(false);
            return;
        }
        if (i == 3) {
            if (w1(visibility, imageView)) {
                return;
            }
            imageView.animate().cancel();
            imageView.setVisibility(8);
            return;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        if (w1(visibility, imageView)) {
            return;
        }
        Log.i("TiktokVideoItemFragment", "applyVideoCover FADE_OUT position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle + ", url=" + this.mVideoUrl);
        imageView.animate().cancel();
        imageView.setOnClickListener(null);
        imageView.setClickable(false);
        imageView.animate().alpha(0.0f).setDuration(120L).withEndAction(new Runnable() {
            @Override
            public final void run() {
                TiktokVideoItemFragment.Z0(imageView);
            }
        }).start();
    }

    public final void Y1(final TiktokShortVideoPlayer player) {
        this.mHostResumingPlayback = false;
        boolean z = this.mUserPausedByTap;
        this.mIsPlaying = !z;
        this.mIsPaused = z;
        P2(HostChromePhase.RECLAIMING, "reinit_after_host_return");
        player.forceReleaseForHostReinit();
        this.mPlayerInitialized = false;
        f1();
        if (!z) {
            player.post(new Runnable() {
                @Override
                public final void run() {
                    TiktokVideoItemFragment.Z1(this.b, player);
                }
            });
            return;
        }
        this.mPlaybackSelectActive = false;
        ProgressBar progressBar = this.mPbLoading;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
        P2(HostChromePhase.USER_PAUSED, "reinit_deferred_user_paused");
        y2(true);
        Log.d("TiktokVideoItemFragment", "reinitPlayerAfterHostReturn deferred (userPaused) position=" + this.mPosition);
    }

    public final void a1() {
        CoverImage coverImage;
        ArticleData articleData = this.mArticleData;
        if (articleData == null) {
            return;
        }
        List<CoverImage> coverImageList = articleData.getCoverImageList();
        d1((coverImageList == null || (coverImage = (CoverImage) i81.q0(coverImageList)) == null) ? null : coverImage.getUrl());
        UserInfo userInfo = articleData.getUserInfo();
        TextView textView = this.mTvUploaderName;
        if (textView != null) {
            textView.setText(q1(userInfo != null ? userInfo.getName() : null));
        }
        if (userInfo != null) {
            c1(userInfo.getAvatarUrl());
        } else {
            c1(null);
        }
        String title = articleData.getTitle();
        if (title == null) {
            title = "";
        }
        TextView textView2 = this.mTvVideoDescription;
        if (textView2 != null) {
            textView2.setText(title);
        }
        TextView textView3 = this.mTvVideoDescription;
        if (textView3 != null) {
            textView3.setVisibility(title.length() == 0 ? 8 : 0);
        }
        VideoInfo videoInfo = articleData.getVideoInfo();
        if (videoInfo != null) {
            int iH = (int) wn8.h((long) (videoInfo.getVideoDuration() * 1000.0d), 2147483647L);
            this.mVideoDurationMs = iH;
            U2(0, iH);
            b2(videoInfo.getUrl());
        }
        this.mVideoTitle = articleData.getTitle();
    }

    public final void a2() {
        ArticleData articleData;
        if (this.mPlayEventReported || !this.mIsCurrentPage || (articleData = this.mArticleData) == null) {
            return;
        }
        this.mPlayEventReported = true;
        if (y45.e(articleData.getArticleClass(), "small_video")) {
            ela.b.b().D(articleData);
        } else {
            ela.b.b().B(articleData);
        }
    }

    public final void b1() {
        Fragment parentFragment = getParentFragment();
        TiktokFragment tiktokFragment = parentFragment instanceof TiktokFragment ? (TiktokFragment) parentFragment : null;
        bka bkaVarB1 = tiktokFragment != null ? tiktokFragment.getMMuteSession() : null;
        OSIconTextView oSIconTextView = this.mIvTtMute;
        if (oSIconTextView == null) {
            return;
        }
        boolean z = (bkaVarB1 == null || bkaVarB1.a()) ? false : true;
        boolean z2 = (bkaVarB1 == null || bkaVarB1.b()) ? false : true;
        oSIconTextView.setVisibility(z ? 8 : 0);
        oSIconTextView.setText(!z2 ? R.string.os_volume_off : R.string.os_volume2);
    }

    public final void b2(String newUrl) {
        if (y45.e(newUrl, this.mVideoUrl)) {
            return;
        }
        if (this.mPlayerInitialized) {
            TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
            if (tiktokShortVideoPlayer != null) {
                tiktokShortVideoPlayer.release();
            }
            this.mPlayerInitialized = false;
        }
        this.mVideoUrl = newUrl;
        this.mHasRenderedVideoFrame = false;
    }

    public final void c1(String avatarUrl) {
        Context context;
        ImageView imageView = this.mIvUploaderAvatar;
        if (imageView == null || (context = getContext()) == null) {
            return;
        }
        RequestBuilder requestBuilderCircleCrop = Glide.with(context).load2(avatarUrl).circleCrop();
        int i = R.drawable.ic_default_avatar;
        requestBuilderCircleCrop.placeholder(i).error(i).into(imageView);
    }

    public final void c2() {
        this.mPlayStartMs = -1L;
        this.mEffectiveDurationMs = 0L;
        this.mMaxPercent = 0;
        this.mPlayEventReported = false;
    }

    public final void d1(String coverUrl) {
        Context context;
        ImageView imageView = this.mIvVideoCover;
        if (imageView == null || (context = getContext()) == null) {
            return;
        }
        String string = coverUrl != null ? j1a.i1(coverUrl).toString() : null;
        if (string == null) {
            string = "";
        }
        if (string.length() == 0) {
            string = null;
        }
        if (y45.e(string, this.mBoundCoverUrl)) {
            Log.d("TiktokVideoItemFragment", "bindVideoCover skip position=" + this.mPosition + ", url=" + string);
            Y0(this, null, 1, null);
            return;
        }
        this.mBoundCoverUrl = string;
        Log.d("TiktokVideoItemFragment", "bindVideoCover start position=" + this.mPosition + ", coverUrl=" + string);
        if (string == null) {
            Glide.with(context).clear(imageView);
            Y0(this, null, 1, null);
            return;
        }
        Integer numValueOf = Integer.valueOf(imageView.getWidth());
        if (numValueOf.intValue() <= 0) {
            numValueOf = null;
        }
        int iIntValue = numValueOf != null ? numValueOf.intValue() : com.transsion.utils.a.m(context);
        Integer numValueOf2 = Integer.valueOf(imageView.getHeight());
        if (numValueOf2.intValue() <= 0) {
            numValueOf2 = null;
        }
        Glide.with(context).load2(string).override(iIntValue, numValueOf2 != null ? numValueOf2.intValue() : com.transsion.utils.a.l(context)).priority(Priority.HIGH).listener(new c(string, imageView)).into(imageView);
        Y0(this, null, 1, null);
    }

    public final int d2(TiktokShortVideoPlayer player) {
        int duration = player.getDuration();
        int i = this.mVideoDurationMs;
        if (duration >= 1000) {
            return duration;
        }
        return i > 0 ? i : wn8.d(duration, 0);
    }

    public final void e1() {
        Runnable runnable = this.mClearFrozenCoverRunnable;
        if (runnable == null) {
            return;
        }
        this.mClearFrozenCoverRunnable = null;
        ImageView imageView = this.mIvVideoCover;
        if (imageView != null) {
            imageView.removeCallbacks(runnable);
        }
    }

    public final boolean e2() {
        Fragment parentFragment = getParentFragment();
        TiktokFragment tiktokFragment = parentFragment instanceof TiktokFragment ? (TiktokFragment) parentFragment : null;
        if (tiktokFragment != null) {
            return tiktokFragment.c1();
        }
        return true;
    }

    public final void f1() {
        TiktokShortVideoPlayer tiktokShortVideoPlayer;
        Runnable runnable = this.mHostResumeWatchdog;
        if (runnable != null && (tiktokShortVideoPlayer = this.mTiktokPlayer) != null) {
            tiktokShortVideoPlayer.removeCallbacks(runnable);
        }
        this.mHostResumeWatchdog = null;
    }

    public final VideoCoverVisibility f2() {
        if (!this.mIsCurrentPage) {
            return VideoCoverVisibility.COVER;
        }
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer != null && tiktokShortVideoPlayer.isNetworkErrorShowing()) {
            return VideoCoverVisibility.GONE_FOR_ERROR;
        }
        Bitmap bitmap = this.mShowingFrozenBitmap;
        if (bitmap != null) {
            y45.g(bitmap);
            if (!bitmap.isRecycled()) {
                return VideoCoverVisibility.COVER;
            }
        }
        if (this.mHostChromePhase == HostChromePhase.RECLAIMING) {
            return VideoCoverVisibility.COVER;
        }
        return (this.mPlayerInitialized && this.mHasRenderedVideoFrame) ? VideoCoverVisibility.VIDEO : VideoCoverVisibility.COVER;
    }

    public final void g1() {
        Runnable runnable = this.mHostSurfaceRevealRunnable;
        if (runnable == null) {
            return;
        }
        this.mHostSurfaceRevealRunnable = null;
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer != null) {
            tiktokShortVideoPlayer.removeCallbacks(runnable);
        }
    }

    public final void g2(TiktokShortVideoPlayer player) {
        if (this.mUserPausedByTap) {
            this.mIsPlaying = false;
            this.mIsPaused = true;
            P2(HostChromePhase.USER_PAUSED, "resume_after_bg_user_paused");
            return;
        }
        GSYVideoViewBridge gSYVideoManager = player.getGSYVideoManager();
        int currentState = player.getCurrentState();
        if (currentState == 2 || currentState == 3) {
            this.mIsPlaying = true;
            this.mIsPaused = false;
            ProgressBar progressBar = this.mPbLoading;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
            s1();
            I1();
            if (this.mHostChromePhase == HostChromePhase.RECLAIMING) {
                v2(player);
                return;
            }
            return;
        }
        if (currentState != 5) {
            Log.w("TiktokVideoItemFragment", "resumeAfterHostBackground unexpected state=" + player.getCurrentState() + ", reinit");
            Y1(player);
            return;
        }
        if (gSYVideoManager.getIsPausedByUser()) {
            this.mIsPlaying = false;
            this.mIsPaused = true;
            P2(HostChromePhase.USER_PAUSED, "resume_after_bg_gsy_user_paused");
            return;
        }
        this.mIsPlaying = true;
        this.mIsPaused = false;
        s1();
        player.onVideoResume(false);
        I1();
        if (this.mHostChromePhase == HostChromePhase.RECLAIMING) {
            v2(player);
        }
    }

    public final void h1() {
        TiktokShortVideoPlayer tiktokShortVideoPlayer;
        if (this.mForcePausedNeedsTap) {
            this.mForcePausedNeedsTap = false;
            if (!this.mUserPausedByTap && (tiktokShortVideoPlayer = this.mTiktokPlayer) != null) {
                tiktokShortVideoPlayer.setUserPauseHoldAcrossHostResume(false);
            }
            Log.d("TiktokVideoItemFragment", "clearForcePausedOnHostLeave position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle);
        }
    }

    public final void h2() {
        if (this.mIsCurrentPage) {
            if (this.mHostPaused || this.mHostPausePending) {
                Log.d("TiktokVideoItemFragment", "resumeAfterScrollIdle skip: host paused position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle);
                this.mPausedForScroll = false;
                return;
            }
            boolean z = this.mUserPausedByTap;
            if (z || this.mForcePausedNeedsTap) {
                Log.d("TiktokVideoItemFragment", "resumeAfterScrollIdle skip: needs tap position=" + this.mPosition + ",userPaused=" + z + ", forcePaused=" + this.mForcePausedNeedsTap + ", mVideoTitle=" + this.mVideoTitle);
                this.mPausedForScroll = false;
                if (E1()) {
                    E2();
                    return;
                }
                return;
            }
            Log.d("TiktokVideoItemFragment", "resumeAfterScrollIdle position=" + this.mPosition + ",mVideoTitle=" + this.mVideoTitle);
            this.mPausedForScroll = false;
            TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
            if (tiktokShortVideoPlayer == null) {
                return;
            }
            if (!this.mPlayerInitialized) {
                onSelectInViewPage();
                return;
            }
            TiktokPlayNetworkHelper.i(getContext(), tiktokShortVideoPlayer.getMNetworkBlockLayerActive());
            K2(tiktokShortVideoPlayer);
            TiktokPlayNetworkHelper.PlayBlockType playBlockTypeB = TiktokPlayNetworkHelper.b(getContext());
            if (b.a[playBlockTypeB.ordinal()] != 1) {
                U0(playBlockTypeB);
                return;
            }
            tiktokShortVideoPlayer.dismissNetworkErrorLayers();
            s1();
            Y0(this, null, 1, null);
            this.mUserPausedByTap = false;
            this.mForcePausedNeedsTap = false;
            this.mIsPlaying = true;
            this.mIsPaused = false;
            j2(tiktokShortVideoPlayer);
        }
    }

    public final void i1() {
        this.mResumeSeekMs = 0L;
        this.mNeedApplyResumeSeek = false;
        this.mWaitingResumeSeekFrame = false;
        ArticleData articleData = this.mArticleData;
        if (articleData != null) {
            articleData.setPlayPosition(0L);
        }
        Log.d("TiktokVideoItemFragment", "clearResumeSeekForPageSwitch position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle);
    }

    public final void i2() {
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer == null) {
            return;
        }
        boolean z = this.mPlayerInitialized && !this.mHasRenderedVideoFrame && !tiktokShortVideoPlayer.needsFullReinitAfterHostReturn() && tiktokShortVideoPlayer.getCurrentState() == 5;
        if (this.mPlayerInitialized && this.mHasRenderedVideoFrame && !tiktokShortVideoPlayer.needsFullReinitAfterHostReturn() && tiktokShortVideoPlayer.getCurrentState() == 5) {
            j1();
        } else {
            X0(VideoCoverVisibility.COVER);
        }
        tiktokShortVideoPlayer.setUserPauseHoldAcrossHostResume(false);
        this.mForcePausedNeedsTap = false;
        if (this.mPlayerInitialized && this.mIsPaused) {
            int currentState = tiktokShortVideoPlayer.getCurrentState();
            if (currentState == 1 || currentState == 3) {
                this.mUserPausedByTap = false;
                this.mForcePausedNeedsTap = false;
                this.mIsPlaying = true;
                this.mIsPaused = false;
                s1();
                tiktokShortVideoPlayer.setStartAfterPrepared(true);
                X0(VideoCoverVisibility.COVER);
                ProgressBar progressBar = this.mPbLoading;
                if (progressBar != null) {
                    progressBar.setVisibility(0);
                }
                Log.d("TiktokVideoItemFragment", "resumeFromUserPauseOrStart open gate while state=" + tiktokShortVideoPlayer.getCurrentState() + ", mVideoTitle=" + this.mVideoTitle);
                return;
            }
            if (currentState == 5) {
                this.mUserPausedByTap = false;
                this.mForcePausedNeedsTap = false;
                this.mIsPlaying = true;
                this.mIsPaused = false;
                y2(false);
                s1();
                tiktokShortVideoPlayer.setStartAfterPrepared(true);
                if (tiktokShortVideoPlayer.needsFullReinitAfterHostReturn()) {
                    X0(VideoCoverVisibility.COVER);
                    ProgressBar progressBar2 = this.mPbLoading;
                    if (progressBar2 != null) {
                        progressBar2.setVisibility(0);
                    }
                    Log.d("TiktokVideoItemFragment", "resumeFromUserPauseOrStart full reinit mVideoTitle=" + this.mVideoTitle);
                    Y1(tiktokShortVideoPlayer);
                } else if (z || !this.mHasRenderedVideoFrame) {
                    X0(VideoCoverVisibility.COVER);
                    ProgressBar progressBar3 = this.mPbLoading;
                    if (progressBar3 != null) {
                        progressBar3.setVisibility(0);
                    }
                    Log.d("TiktokVideoItemFragment", "resumeFromUserPauseOrStart startAfterPrepared (paused before first frame) mVideoTitle=" + this.mVideoTitle);
                    tiktokShortVideoPlayer.startAfterPreparedFromUserResume();
                } else {
                    X0(VideoCoverVisibility.VIDEO);
                    tiktokShortVideoPlayer.onVideoResume(false);
                }
                this.mPlayStartMs = System.currentTimeMillis();
                return;
            }
            if (tiktokShortVideoPlayer.needsFullReinitAfterHostReturn()) {
                this.mUserPausedByTap = false;
                this.mForcePausedNeedsTap = false;
                this.mIsPlaying = true;
                this.mIsPaused = false;
                y2(false);
                s1();
                Log.d("TiktokVideoItemFragment", "resumeFromUserPauseOrStart full reinit from state=" + tiktokShortVideoPlayer.getCurrentState() + ", mVideoTitle=" + this.mVideoTitle);
                Y1(tiktokShortVideoPlayer);
                return;
            }
        }
        this.mUserPausedByTap = false;
        this.mForcePausedNeedsTap = false;
        this.mPlaybackSelectActive = false;
        this.mIsPlaying = true;
        this.mIsPaused = false;
        y2(false);
        s1();
        Q1();
    }

    public final void j1() {
        List<CoverImage> coverImageList;
        CoverImage coverImage;
        e1();
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer != null) {
            tiktokShortVideoPlayer.clearPausedFrameForSurfaceLoss();
        }
        Bitmap bitmap = this.mShowingFrozenBitmap;
        String url = null;
        this.mShowingFrozenBitmap = null;
        if (bitmap != null) {
            ImageView imageView = this.mIvVideoCover;
            if (imageView != null && imageView.getDrawable() != null) {
                imageView.setImageDrawable(null);
            }
            if (bitmap.isRecycled()) {
                bitmap = null;
            }
            if (bitmap != null) {
                bitmap.recycle();
            }
            this.mBoundCoverUrl = null;
        }
        y2(false);
        ArticleData articleData = this.mArticleData;
        if (articleData != null && (coverImageList = articleData.getCoverImageList()) != null && (coverImage = (CoverImage) i81.q0(coverImageList)) != null) {
            url = coverImage.getUrl();
        }
        d1(url);
    }

    public final void j2(TiktokShortVideoPlayer player) {
        int currentState;
        if (!S0() || TiktokPlayNetworkHelper.b(getContext()) != TiktokPlayNetworkHelper.PlayBlockType.NONE || (currentState = player.getCurrentState()) == 1 || currentState == 2 || currentState == 3) {
            return;
        }
        if (currentState == 5) {
            player.onVideoResume(false);
            return;
        }
        if (currentState != 7) {
            player.startPlay();
            return;
        }
        Log.w("TiktokVideoItemFragment", "resumeOrStartPlayback skipped on ERROR position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle);
    }

    public final void k1() {
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer == null) {
            return;
        }
        if (tiktokShortVideoPlayer.getCurrentState() == 7) {
            Log.d("TiktokVideoItemFragment", "dismissNetworkBlockAndResume skipped on ERROR state position=" + this.mPosition);
            return;
        }
        tiktokShortVideoPlayer.dismissNetworkErrorLayers();
        if (this.mPlayerInitialized || t1()) {
            K2(tiktokShortVideoPlayer);
            if (TiktokPlayNetworkHelper.b(getContext()) != TiktokPlayNetworkHelper.PlayBlockType.NONE) {
                return;
            }
            if (S0()) {
                this.mIsPlaying = true;
                this.mIsPaused = false;
                s1();
                Log.d("TiktokVideoItemFragment", "dismissNetworkBlockAndResume position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle + ", url=" + this.mVideoUrl);
                Y0(this, null, 1, null);
                j2(tiktokShortVideoPlayer);
                return;
            }
            Log.d("TiktokVideoItemFragment", "dismissNetworkBlockAndResume skip auto-resume position=" + this.mPosition + ", mVideoTitle=" + this.mVideoTitle + ", userPaused=" + this.mUserPausedByTap + ", forcePaused=" + this.mForcePausedNeedsTap + ", hostPaused=" + this.mHostPaused);
            if (!this.mUserPausedByTap) {
                Y0(this, null, 1, null);
                if (this.mForcePausedNeedsTap) {
                    E2();
                    return;
                }
                return;
            }
            TiktokShortVideoPlayer tiktokShortVideoPlayer2 = this.mTiktokPlayer;
            if (tiktokShortVideoPlayer2 != null) {
                p1(tiktokShortVideoPlayer2, "network_skip_user_paused");
            } else {
                X0(VideoCoverVisibility.COVER);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:60:0x017e  */
    public final void k2() {
        TiktokShortVideoPlayer tiktokShortVideoPlayer;
        Log.d("TiktokVideoItemFragment", "resumePlaybackOnVisible mVideoTitle=" + this.mVideoTitle + ", position=" + this.mPosition + ", initialized=" + this.mPlayerInitialized + ", phase=" + this.mHostChromePhase);
        this.mHostPaused = false;
        this.mHostPausePending = false;
        if (this.mForcePausedNeedsTap && !this.mUserPausedByTap) {
            h1();
        }
        this.mVideoOverReported = false;
        String str = this.mVideoUrl;
        if (str == null || str.length() == 0 || (tiktokShortVideoPlayer = this.mTiktokPlayer) == null) {
            return;
        }
        if (!this.mIsCurrentPage) {
            onSelectInViewPage();
            return;
        }
        boolean z = !this.mPlayerInitialized || tiktokShortVideoPlayer.needsFullReinitAfterHostReturn();
        if (!this.mPlayerInitialized) {
            if (!this.mUserPausedByTap) {
                this.mPlaybackSelectActive = false;
                P2(HostChromePhase.RECLAIMING, "resume_not_init_reselect");
                onSelectInViewPage();
                return;
            }
            this.mIsPlaying = false;
            this.mIsPaused = true;
            tiktokShortVideoPlayer.setUserPauseHoldAcrossHostResume(true);
            tiktokShortVideoPlayer.ensurePausedForUserHold();
            P2(HostChromePhase.USER_PAUSED, "resume_not_init_user_paused");
            y2(true);
            Log.d("TiktokVideoItemFragment", "resumePlaybackOnVisible keep user-paused UI (not initialized) mVideoTitle=" + this.mVideoTitle);
            return;
        }
        f1();
        this.mHostResumeReinitAttempted = false;
        Context context = getContext();
        TiktokShortVideoPlayer tiktokShortVideoPlayer2 = this.mTiktokPlayer;
        TiktokPlayNetworkHelper.i(context, tiktokShortVideoPlayer2 != null && tiktokShortVideoPlayer2.getMNetworkBlockLayerActive());
        K2(tiktokShortVideoPlayer);
        if (tiktokShortVideoPlayer.getCurrentState() == 7) {
            if (this.mRetryPlayErrorOnNextVisible) {
                this.mRetryPlayErrorOnNextVisible = false;
                Log.d("TiktokVideoItemFragment", "resumePlaybackOnVisible retry once for play error position=" + this.mPosition);
                l2();
                return;
            }
            s1();
            X0(VideoCoverVisibility.GONE_FOR_ERROR);
            Log.d("TiktokVideoItemFragment", "resumePlaybackOnVisible skipped: play error showing position=" + this.mPosition);
            return;
        }
        if (S0()) {
            TiktokPlayNetworkHelper.PlayBlockType playBlockTypeB = TiktokPlayNetworkHelper.b(getContext());
            if (b.a[playBlockTypeB.ordinal()] != 1) {
                U0(playBlockTypeB);
                return;
            }
            tiktokShortVideoPlayer.dismissNetworkErrorLayers();
            s1();
            if (z) {
                Log.d("TiktokVideoItemFragment", "resumePlaybackOnVisible full reinit mVideoTitle=" + this.mVideoTitle + ", state=" + tiktokShortVideoPlayer.getCurrentState());
                Y1(tiktokShortVideoPlayer);
                return;
            }
            if (this.mHostPausedDuringPrepare) {
                Log.d("TiktokVideoItemFragment", "resumePlaybackOnVisible full reinit (paused while preparing) mVideoTitle=" + this.mVideoTitle + ", state=" + tiktokShortVideoPlayer.getCurrentState());
                this.mHostPausedDuringPrepare = false;
                Y1(tiktokShortVideoPlayer);
                return;
            }
            this.mHasRenderedVideoFrame = false;
            P2(HostChromePhase.ACTIVE, "resume_light_cover_until_frame");
            this.mHostResumingPlayback = true;
            ProgressBar progressBar = this.mPbLoading;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
            tiktokShortVideoPlayer.configureTtMutePolicyOnEnter(e2());
            tiktokShortVideoPlayer.resumeFromHostBackground();
            g2(tiktokShortVideoPlayer);
            v2(tiktokShortVideoPlayer);
            t2(tiktokShortVideoPlayer);
            return;
        }
        tiktokShortVideoPlayer.dismissNetworkErrorLayers();
        tiktokShortVideoPlayer.configureTtMutePolicyOnEnter(e2());
        tiktokShortVideoPlayer.setUserPauseHoldAcrossHostResume(true);
        if (z) {
            Log.d("TiktokVideoItemFragment", "resumePlaybackOnVisible release while userPaused (defer prepare) mVideoTitle=" + this.mVideoTitle + ", state=" + tiktokShortVideoPlayer.getCurrentState());
            Bitmap bitmapTakePausedFrameBitmap = tiktokShortVideoPlayer.takePausedFrameBitmap();
            tiktokShortVideoPlayer.forceReleaseForHostReinit();
            this.mPlayerInitialized = false;
            this.mPlaybackSelectActive = false;
            f1();
            this.mHostResumingPlayback = false;
            y2(true);
            if (bitmapTakePausedFrameBitmap != null) {
                F2(bitmapTakePausedFrameBitmap, "resume_user_paused_released");
            } else {
                Bitmap bitmap = this.mShowingFrozenBitmap;
                if (bitmap != null) {
                    y45.g(bitmap);
                    if (bitmap.isRecycled()) {
                        P2(HostChromePhase.USER_PAUSED, "resume_user_paused_released");
                    } else {
                        X0(VideoCoverVisibility.COVER);
                        E2();
                        this.mHostChromePhase = HostChromePhase.USER_PAUSED;
                    }
                } else {
                    P2(HostChromePhase.USER_PAUSED, "resume_user_paused_released");
                }
            }
        } else {
            tiktokShortVideoPlayer.ensurePausedForUserHold();
            p1(tiktokShortVideoPlayer, "resume_user_paused_keep_frame");
        }
        this.mIsPlaying = false;
        this.mIsPaused = true;
        Log.d("TiktokVideoItemFragment", "resumePlaybackOnVisible skip auto-resume: userPaused=" + this.mUserPausedByTap + ", surfaceDead=" + z + ", mVideoTitle=" + this.mVideoTitle);
    }

    public final void l1() {
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer == null) {
            return;
        }
        tiktokShortVideoPlayer.dismissNetworkErrorLayers();
        if (this.mPlayerInitialized || t1()) {
            K2(tiktokShortVideoPlayer);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0041  */
    public final void l2() {
        List listE;
        List listX1;
        VideoInfo videoInfo;
        final TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer == null) {
            return;
        }
        ArticleData articleData = this.mArticleData;
        String url = (articleData == null || (videoInfo = articleData.getVideoInfo()) == null) ? null : videoInfo.getUrl();
        if (articleData == null || url == null || url.length() == 0) {
            Log.d("TiktokVideoItemFragment", "retryPlaybackAfterPlayError reinit without url mVideoTitle=" + this.mVideoTitle);
            Y1(tiktokShortVideoPlayer);
            return;
        }
        Fragment parentFragment = getParentFragment();
        TiktokFragment tiktokFragment = parentFragment instanceof TiktokFragment ? (TiktokFragment) parentFragment : null;
        if (tiktokFragment == null || (listX1 = tiktokFragment.x1()) == null) {
            listE = x71.e(articleData);
        } else {
            listE = listX1.isEmpty() ? null : listX1;
            if (listE == null) {
                listE = x71.e(articleData);
            }
        }
        com.transsion.onlinevideo.tiktok.repository.a aVarA = com.transsion.onlinevideo.tiktok.repository.a.c.a();
        final c74 c74Var = new c74() {
            @Override
            public final Object invoke() {
                return TiktokVideoItemFragment.m2(this.b, tiktokShortVideoPlayer);
            }
        };
        if (aVarA.A(articleData, listE)) {
            T1(articleData, listE, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return TiktokVideoItemFragment.n2(this.b, c74Var, (ArticleData) obj);
                }
            });
        } else {
            c74Var.invoke();
        }
    }

    public final void m1() {
        ImageView imageView = this.mIvVideoCover;
        if (imageView != null && imageView.getVisibility() == 0 && this.mIsCurrentPage && !imageView.hasOnClickListeners()) {
            imageView.setClickable(true);
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    TiktokVideoItemFragment.n1(this.b, view);
                }
            });
        }
    }

    public final void o1() {
        VideoCoverVisibility videoCoverVisibilityF2 = f2();
        VideoCoverVisibility videoCoverVisibility = VideoCoverVisibility.COVER;
        if (videoCoverVisibilityF2 != videoCoverVisibility) {
            return;
        }
        X0(videoCoverVisibility);
    }

    public final void o2(String reason) {
        if (!this.mIsCurrentPage || this.mHostPaused || E1()) {
            return;
        }
        boolean z = this.mNeedApplyResumeSeek;
        if (z || this.mWaitingResumeSeekFrame) {
            Log.d("TiktokVideoItemFragment", "revealPlayingSurface defer reason=" + reason + ", needSeek=" + z + ", waitingSeek=" + this.mWaitingResumeSeekFrame + ", target=" + this.mResumeSeekMs);
            return;
        }
        g1();
        this.mHasRenderedVideoFrame = true;
        this.mHostPausedDuringPrepare = false;
        this.mIsPlaying = true;
        this.mIsPaused = false;
        this.mIsPlaybackBuffering = false;
        ProgressBar progressBar = this.mPbLoading;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
        s1();
        this.mHostChromePhase = HostChromePhase.ACTIVE;
        X0(VideoCoverVisibility.FADE_OUT);
        r2();
        final TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer != null) {
            tiktokShortVideoPlayer.post(new Runnable() {
                @Override
                public final void run() {
                    TiktokVideoItemFragment.p2(tiktokShortVideoPlayer);
                }
            });
        }
        Log.d("TiktokVideoItemFragment", "revealPlayingSurface reason=" + reason + ", mVideoTitle=" + this.mVideoTitle);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mPosition = arguments.getInt("position", 0);
        }
    }

    @Override
    public void onDestroyView() {
        Context context;
        super.onDestroyView();
        Log.d("TiktokVideoItemFragment", "onDestroyView mVideoTitle=" + this.mVideoTitle + ", position=" + this.mPosition);
        q2();
        N2();
        this.mIsCurrentPage = false;
        this.mPausedForScroll = false;
        this.mHostPaused = false;
        this.mHostPausePending = false;
        this.mHostPausedDuringPrepare = false;
        this.mHostResumingPlayback = false;
        this.mHostResumeReinitAttempted = false;
        this.mIsPlaybackBuffering = false;
        f1();
        g1();
        this.mHostChromePhase = HostChromePhase.ACTIVE;
        rc2 rc2Var = this.mEnsurePlayableDisposable;
        if (rc2Var != null) {
            rc2Var.dispose();
        }
        this.mEnsurePlayableDisposable = null;
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer != null) {
            tiktokShortVideoPlayer.clearTtAudioFocusPolicyOnLeave();
        }
        TiktokShortVideoPlayer tiktokShortVideoPlayer2 = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer2 != null) {
            tiktokShortVideoPlayer2.release();
        }
        this.mPlayerInitialized = false;
        this.mUserPausedByTap = false;
        this.mForcePausedNeedsTap = false;
        this.mIsPlaying = false;
        this.mIsPaused = false;
        y2(false);
        this.mTvUploaderName = null;
        this.mTvVideoDescription = null;
        this.mIvUploaderAvatar = null;
        e1();
        Bitmap bitmap = this.mShowingFrozenBitmap;
        this.mShowingFrozenBitmap = null;
        ImageView imageView = this.mIvVideoCover;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        if (bitmap != null) {
            if (bitmap.isRecycled()) {
                bitmap = null;
            }
            if (bitmap != null) {
                bitmap.recycle();
            }
        }
        TiktokShortVideoPlayer tiktokShortVideoPlayer3 = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer3 != null) {
            tiktokShortVideoPlayer3.clearPausedFrameForSurfaceLoss();
        }
        ImageView imageView2 = this.mIvVideoCover;
        if (imageView2 != null && (context = getContext()) != null) {
            Glide.with(context).clear(imageView2);
        }
        this.mIvVideoCover = null;
        this.mBoundCoverUrl = null;
        this.mHasRenderedVideoFrame = false;
        TiktokShortVideoPlayer tiktokShortVideoPlayer4 = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer4 != null) {
            tiktokShortVideoPlayer4.dismissNetworkErrorLayers();
        }
        TiktokShortVideoPlayer tiktokShortVideoPlayer5 = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer5 != null) {
            tiktokShortVideoPlayer5.setMOnNetworkBlockShown(null);
        }
        this.mTiktokPlayer = null;
    }

    @Override
    public void onPause() {
        super.onPause();
        O2();
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0130  */
    public final void onSelectInViewPage() {
        List listE;
        List listX1;
        VideoInfo videoInfo;
        if (this.mIsCurrentPage) {
            rc2 rc2Var = this.mEnsurePlayableDisposable;
            if (rc2Var != null && (!rc2Var.isDisposed())) {
                Log.d("TiktokVideoItemFragment", "onSelectInViewPage skipped: refresh in flight position=" + this.mPosition);
                ProgressBar progressBar = this.mPbLoading;
                if (progressBar != null) {
                    progressBar.setVisibility(0);
                    return;
                }
                return;
            }
            if (this.mPlaybackSelectActive || this.mPlayerInitialized) {
                if (this.mPlayerInitialized || !(this.mHostPaused || E1())) {
                    Log.d("TiktokVideoItemFragment", "onSelectInViewPage skipped: already active position=" + this.mPosition);
                    return;
                }
                Log.d("TiktokVideoItemFragment", "onSelectInViewPage unblock deferred start position=" + this.mPosition + ", hostPaused=" + this.mHostPaused + ", userPaused=" + this.mUserPausedByTap + ", forcePaused=" + this.mForcePausedNeedsTap);
                this.mHostPaused = false;
                this.mPlaybackSelectActive = false;
            }
        }
        Log.d("TiktokVideoItemFragment", "onSelectInViewPage position=" + this.mPosition + ",mVideoTitle=" + this.mVideoTitle + ", url=" + this.mVideoUrl);
        b1();
        this.mHostPaused = false;
        this.mHostPausePending = false;
        this.mHostPausedDuringPrepare = false;
        this.mVideoOverReported = false;
        this.mPlaybackSelectActive = true;
        this.mIsCurrentPage = true;
        this.mPausedForScroll = false;
        this.mHasRenderedVideoFrame = false;
        HostChromePhase hostChromePhase = this.mHostChromePhase;
        if (hostChromePhase == HostChromePhase.RECLAIMING || hostChromePhase == HostChromePhase.HOST_LEFT) {
            this.mHostChromePhase = HostChromePhase.ACTIVE;
        }
        g1();
        X0(VideoCoverVisibility.COVER);
        ArticleData articleData = this.mArticleData;
        String url = (articleData == null || (videoInfo = articleData.getVideoInfo()) == null) ? null : videoInfo.getUrl();
        if (articleData == null || url == null || url.length() == 0) {
            Log.w("TiktokVideoItemFragment", "onSelectInViewPage position=" + this.mPosition + ",mVideoTitle=" + this.mVideoTitle + ", skipped: url not ready");
            return;
        }
        if (!y45.e(this.mVideoUrl, url)) {
            this.mVideoUrl = url;
        }
        Fragment parentFragment = getParentFragment();
        TiktokFragment tiktokFragment = parentFragment instanceof TiktokFragment ? (TiktokFragment) parentFragment : null;
        if (tiktokFragment == null || (listX1 = tiktokFragment.x1()) == null) {
            listE = x71.e(articleData);
        } else {
            listE = listX1.isEmpty() ? null : listX1;
            if (listE == null) {
                listE = x71.e(articleData);
            }
        }
        if (com.transsion.onlinevideo.tiktok.repository.a.c.a().A(articleData, listE)) {
            T1(articleData, listE, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return TiktokVideoItemFragment.J1(this.b, (ArticleData) obj);
                }
            });
        } else {
            H2();
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        O2();
    }

    public final void onUnSelectInViewPage() {
        Log.d("TiktokVideoItemFragment", "onUnSelectInViewPage mVideoTitle=" + this.mVideoTitle + ", position=" + this.mPosition + ", initialized=" + this.mPlayerInitialized);
        i1();
        this.mPlaybackSelectActive = false;
        this.mIsCurrentPage = false;
        this.mPausedForScroll = false;
        this.mHasRenderedVideoFrame = false;
        this.mIsPlaybackBuffering = false;
        this.mHostChromePhase = HostChromePhase.ACTIVE;
        g1();
        N2();
        this.mUserPausedByTap = false;
        this.mForcePausedNeedsTap = false;
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer != null) {
            tiktokShortVideoPlayer.setUserPauseHoldAcrossHostResume(false);
        }
        j1();
        this.mIsPlaying = false;
        this.mIsPaused = false;
        y2(false);
        s1();
        Y0(this, null, 1, null);
        L2();
        TiktokShortVideoPlayer tiktokShortVideoPlayer2 = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer2 != null) {
            tiktokShortVideoPlayer2.dismissNetworkErrorLayers();
        }
        if (this.mPlayerInitialized) {
            TiktokShortVideoPlayer tiktokShortVideoPlayer3 = this.mTiktokPlayer;
            if (tiktokShortVideoPlayer3 != null) {
                tiktokShortVideoPlayer3.releaseForPageSwitch();
            }
            this.mPlayerInitialized = false;
            return;
        }
        TiktokShortVideoPlayer tiktokShortVideoPlayer4 = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer4 != null) {
            tiktokShortVideoPlayer4.stopPlay();
        }
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initView(view);
        B2();
        this.mPlayerInitialized = false;
        a1();
        e74 e74Var = this.onFragmentReadyCallback;
        if (e74Var != null) {
            e74Var.invoke(Integer.valueOf(this.mPosition));
        }
    }

    public final void p1(TiktokShortVideoPlayer player, String reason) {
        Bitmap bitmap = this.mShowingFrozenBitmap;
        if (bitmap != null) {
            y45.g(bitmap);
            if (!bitmap.isRecycled()) {
                X0(VideoCoverVisibility.COVER);
                E2();
                y2(true);
                this.mHostChromePhase = HostChromePhase.USER_PAUSED;
                Log.d("TiktokVideoItemFragment", "ensureUserPausedFrozenCoverVisible keep showing reason=" + reason);
                return;
            }
        }
        Bitmap bitmapTakePausedFrameBitmap = player.takePausedFrameBitmap();
        if (bitmapTakePausedFrameBitmap != null) {
            F2(bitmapTakePausedFrameBitmap, reason);
            return;
        }
        HostChromePhase hostChromePhase = this.mHostChromePhase;
        HostChromePhase hostChromePhase2 = HostChromePhase.USER_PAUSED;
        if (hostChromePhase != hostChromePhase2) {
            P2(hostChromePhase2, reason);
        }
    }

    public final String q1(String name) {
        String string = name != null ? j1a.i1(name).toString() : null;
        if (string == null) {
            string = "";
        }
        if (string.length() != 0) {
            return string;
        }
        String string2 = getString(R.string.visha_unknown);
        y45.i(string2, "getString(...)");
        return string2;
    }

    public final void q2() {
        TiktokShortVideoPlayer tiktokShortVideoPlayer;
        ArticleData articleData = this.mArticleData;
        if (articleData == null || (tiktokShortVideoPlayer = this.mTiktokPlayer) == null || !this.mPlayerInitialized) {
            return;
        }
        try {
            if (!tiktokShortVideoPlayer.isOwningSharedPlayer()) {
                Log.d("TiktokVideoItemFragment", "savePlayPosition skip (not owner), keep playPosition=" + articleData.getPlayPosition() + ", resumeSeek=" + this.mResumeSeekMs + ", mVideoTitle=" + this.mVideoTitle);
                return;
            }
            long playbackPositionMs = tiktokShortVideoPlayer.getPlaybackPositionMs();
            if (playbackPositionMs > 0) {
                G2(playbackPositionMs);
                Log.d("TiktokVideoItemFragment", "savePlayPosition mVideoTitle=" + this.mVideoTitle + ", position=" + this.mPosition + " ms=" + playbackPositionMs);
            }
        } catch (Throwable th) {
            Log.w("TiktokVideoItemFragment", "savePlayPosition mVideoTitle=" + this.mVideoTitle + ", error: " + th.getMessage());
        }
    }

    public final boolean r1(TiktokShortVideoPlayer player) {
        int currentState;
        return this.mIsPlaying || this.mIsPaused || this.mUserPausedByTap || this.mHasRenderedVideoFrame || (currentState = player.getCurrentState()) == 1 || currentState == 2 || currentState == 3 || currentState == 5;
    }

    public final void r2() {
        e1();
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer != null) {
            tiktokShortVideoPlayer.clearPausedFrameForSurfaceLoss();
        }
        final Bitmap bitmap = this.mShowingFrozenBitmap;
        if (bitmap == null) {
            return;
        }
        this.mShowingFrozenBitmap = null;
        y2(false);
        final ImageView imageView = this.mIvVideoCover;
        if (imageView != null) {
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    TiktokVideoItemFragment.s2(this.b, imageView, bitmap);
                }
            };
            this.mClearFrozenCoverRunnable = runnable;
            imageView.postDelayed(runnable, 160L);
        } else {
            if (bitmap.isRecycled()) {
                bitmap = null;
            }
            if (bitmap != null) {
                bitmap.recycle();
            }
        }
    }

    public final void s1() {
        OSIconTextView oSIconTextView = this.mIvPlayPause;
        if (oSIconTextView != null) {
            oSIconTextView.setVisibility(8);
        }
    }

    public final boolean t1() {
        String str;
        TiktokShortVideoPlayer tiktokShortVideoPlayer = this.mTiktokPlayer;
        if (tiktokShortVideoPlayer == null || (str = this.mVideoUrl) == null) {
            return false;
        }
        if (this.mPlayerInitialized) {
            tiktokShortVideoPlayer.configureTtMutePolicyOnEnter(e2());
            tiktokShortVideoPlayer.setShowPauseCover(false);
            K2(tiktokShortVideoPlayer);
            return true;
        }
        this.mHasRenderedVideoFrame = false;
        tiktokShortVideoPlayer.configureTtMutePolicyOnEnter(e2());
        Context context = getContext();
        if (context == null) {
            return false;
        }
        TiktokPlayNetworkHelper.i(context, tiktokShortVideoPlayer.getMNetworkBlockLayerActive());
        boolean z = S0() && !tiktokShortVideoPlayer.getMNetworkBlockLayerActive() && TiktokPlayNetworkHelper.b(context) == TiktokPlayNetworkHelper.PlayBlockType.NONE;
        TiktokPlayNetworkHelper.e(context, tiktokShortVideoPlayer.getMNetworkBlockLayerActive());
        long j = this.mResumeSeekMs;
        ArticleData articleData = this.mArticleData;
        long jMax = Math.max(j, articleData != null ? articleData.getPlayPosition() : 0L);
        if (jMax >= 500) {
            this.mResumeSeekMs = jMax;
            this.mNeedApplyResumeSeek = true;
            this.mWaitingResumeSeekFrame = false;
        } else {
            this.mNeedApplyResumeSeek = false;
            this.mWaitingResumeSeekFrame = false;
        }
        Log.d("TiktokVideoItemFragment", "initPlayer position=" + this.mPosition + ",mVideoTitle=" + this.mVideoTitle + ", url=" + str + ", seekOnStart=" + jMax + ", needApplySeek=" + this.mNeedApplyResumeSeek);
        try {
            tiktokShortVideoPlayer.setPlayerType(6);
        } catch (Throwable th) {
            Log.w("TiktokVideoItemFragment", "setPlayerType position=" + this.mPosition + ",mVideoTitle=" + this.mVideoTitle + ", failed: " + th.getMessage());
        }
        tiktokShortVideoPlayer.setRotateViewAuto(false);
        tiktokShortVideoPlayer.setLockLand(false);
        tiktokShortVideoPlayer.applyFullScreenScaleMode();
        GSYVideoOptionBuilder startAfterPrepared = new GSYVideoOptionBuilder().setIsTouchWiget(false).setIsTouchWigetFull(false).setRotateViewAuto(false).setLockLand(false).setNeedLockFull(false).setHideKey(true).setLooping(true).setNeedShowWifiTip(false).setShowPauseCover(false).setStartAfterPrepared(z);
        String str2 = this.mVideoTitle;
        if (str2 == null) {
            str2 = "";
        }
        startAfterPrepared.setVideoTitle(str2).setSeekOnStart(jMax).setUrl(str).setCacheWithPlay(false).setPlayTag("TiktokVideoItem" + this.mPosition).setPlayPosition(this.mPosition).setVideoAllCallBack(this.mPlayerCallBack).setGSYVideoProgressListener(this.mProgressListener).build((StandardGSYVideoPlayer) tiktokShortVideoPlayer);
        this.mPlayerInitialized = true;
        return true;
    }

    public final void t2(final TiktokShortVideoPlayer player) {
        f1();
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                TiktokVideoItemFragment.u2(this.b, player);
            }
        };
        this.mHostResumeWatchdog = runnable;
        player.postDelayed(runnable, 4500L);
    }

    public final void u1() {
        OSMultiSeekBar oSMultiSeekBar;
        Context context = getContext();
        if (context == null || (oSMultiSeekBar = this.mSbVideoProgress) == null) {
            return;
        }
        int iH = olb.h(context, 2);
        int iH2 = olb.h(context, 4);
        OSMultiSeekBar.a aVarF = oSMultiSeekBar.getConfigBuilder().f(ContextCompat.getColor(context, R.color.os_color_white4));
        int i = R.color.white;
        aVarF.b(ContextCompat.getColor(context, i)).g(iH).c(iH).d(ContextCompat.getColor(context, i)).e(iH2).a();
    }

    public final void v2(final TiktokShortVideoPlayer player) {
        g1();
        Runnable runnable = new Runnable() {
            private int attempts;

            public final int getAttempts() {
                return this.attempts;
            }

            @Override
            public void run() {
                if (this.this$0.mHostSurfaceRevealRunnable != this) {
                    return;
                }
                if (!this.this$0.mIsCurrentPage || this.this$0.mHostPaused || this.this$0.E1()) {
                    this.this$0.mHostSurfaceRevealRunnable = null;
                    return;
                }
                if (this.this$0.mHasRenderedVideoFrame) {
                    this.this$0.mHostSurfaceRevealRunnable = null;
                    return;
                }
                int iD = 0;
                try {
                    iD = wn8.d((int) player.getPlaybackPositionMs(), 0);
                } catch (Throwable unused) {
                }
                this.this$0.Q2("host_resume_fallback", iD);
                if (this.this$0.mHasRenderedVideoFrame) {
                    this.this$0.mHostSurfaceRevealRunnable = null;
                    return;
                }
                int i = this.attempts + 1;
                this.attempts = i;
                if (i < 12) {
                    player.postDelayed(this, 320L);
                    return;
                }
                this.this$0.mHostSurfaceRevealRunnable = null;
                Log.w("TiktokVideoItemFragment", "first frame reveal gave up mVideoTitle=" + this.this$0.mVideoTitle + ", pos=" + iD + ", state=" + player.getCurrentState());
            }

            public final void setAttempts(int i) {
                this.attempts = i;
            }
        };
        this.mHostSurfaceRevealRunnable = runnable;
        player.postDelayed(runnable, 320L);
    }

    public final boolean w1(VideoCoverVisibility visibility, ImageView cover) {
        int i = b.c[visibility.ordinal()];
        if (i != 1) {
            if (i == 2 || i == 3) {
                if (cover.getVisibility() != 8) {
                    return false;
                }
            } else {
                if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                if (cover.getVisibility() == 0) {
                    return false;
                }
            }
        } else if (cover.getVisibility() != 0 || cover.getAlpha() < 1.0f) {
            return false;
        }
        return true;
    }

    public final boolean getMIsCurrentPage() {
        return this.mIsCurrentPage;
    }

    public final void x2(ArticleData article) {
        Log.i("TiktokVideoItemFragment", "setArticleData " + article);
        if (article == null) {
            return;
        }
        this.mArticleData = article;
        Long lValueOf = Long.valueOf(article.getPlayPosition());
        if (lValueOf.longValue() <= 0) {
            lValueOf = null;
        }
        this.mResumeSeekMs = lValueOf != null ? lValueOf.longValue() : 0L;
        this.mNeedApplyResumeSeek = false;
        this.mWaitingResumeSeekFrame = false;
        this.mHostChromePhase = HostChromePhase.ACTIVE;
        g1();
        a1();
    }

    public final boolean getMPlayerInitialized() {
        return this.mPlayerInitialized;
    }

    public final void y2(boolean enabled) {
        ImageView imageView = this.mIvVideoCover;
        if (imageView == null) {
            return;
        }
        if (enabled) {
            imageView.setClickable(true);
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    TiktokVideoItemFragment.z2(this.b, view);
                }
            });
        } else if (imageView.getVisibility() != 8) {
            m1();
        } else {
            imageView.setOnClickListener(null);
            imageView.setClickable(false);
        }
    }
}
