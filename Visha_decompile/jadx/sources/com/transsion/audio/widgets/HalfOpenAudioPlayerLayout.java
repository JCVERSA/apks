package com.transsion.audio.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.audiofx.Visualizer;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.app.NotificationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p003activity.result.ActivityResultCallback;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.WindowInfoViewModel;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.data.AudioOpStatus;
import com.transsion.audio.lyrics.LrcSearcher;
import com.transsion.audio.lyrics.bean.LrcRow;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.widgets.HalfOpenAudioPlayerLayout;
import com.transsion.audio.widgets.LrcViewNew;
import com.transsion.audio.widgets.musicwaveview.MagicWaveView;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.data.Repository;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.push.PushConstants;
import com.transsion.widgets.GestureUtil;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.ao;
import defpackage.aw6;
import defpackage.e74;
import defpackage.k29;
import defpackage.mc7;
import defpackage.oa1;
import defpackage.p06;
import defpackage.pp3;
import defpackage.s86;
import defpackage.t74;
import defpackage.vb;
import defpackage.vha;
import defpackage.w6c;
import defpackage.wna;
import defpackage.woc;
import defpackage.wz5;
import defpackage.y45;
import defpackage.y71;
import defpackage.zf1;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0086\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0007\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0002±\u0001\b\u0017\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\bH\u0002¢\u0006\u0004\b\r\u0010\nJ\u000f\u0010\u000e\u001a\u00020\bH\u0003¢\u0006\u0004\b\u000e\u0010\nJ\u0017\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\nJ\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0012J\u0017\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0017\u0010\u0012J'\u0010\u001c\u001a\u00020\b2\u0016\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0018j\b\u0012\u0004\u0012\u00020\u0019`\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001e\u0010\nJ\u000f\u0010\u001f\u001a\u00020\bH\u0003¢\u0006\u0004\b\u001f\u0010\nJ\u000f\u0010 \u001a\u00020\bH\u0002¢\u0006\u0004\b \u0010\nJ\u001f\u0010$\u001a\u00020\b2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\bH\u0002¢\u0006\u0004\b&\u0010\nJ\u0017\u0010)\u001a\u00020\b2\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b)\u0010*J\u0017\u0010-\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\b2\u0006\u0010/\u001a\u00020\u000fH\u0002¢\u0006\u0004\b0\u0010\u0012J\u000f\u00101\u001a\u00020\u000fH\u0002¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\bH\u0002¢\u0006\u0004\b3\u0010\nJ\u000f\u00104\u001a\u00020\bH\u0002¢\u0006\u0004\b4\u0010\nJ\u0017\u00106\u001a\u00020\b2\b\u00105\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b6\u00107J\r\u00108\u001a\u00020\b¢\u0006\u0004\b8\u0010\nJ\u000f\u00109\u001a\u00020\bH\u0014¢\u0006\u0004\b9\u0010\nJ\u000f\u0010:\u001a\u00020\bH\u0014¢\u0006\u0004\b:\u0010\nJ\u0017\u0010<\u001a\u00020\b2\u0006\u0010;\u001a\u00020'H\u0016¢\u0006\u0004\b<\u0010*J\u0017\u0010?\u001a\u00020\b2\u0006\u0010>\u001a\u00020=H\u0016¢\u0006\u0004\b?\u0010@J\u001f\u0010B\u001a\u00020\b2\u0006\u0010A\u001a\u00020+2\u0006\u0010;\u001a\u00020'H\u0014¢\u0006\u0004\bB\u0010CJ\r\u0010D\u001a\u00020\u000f¢\u0006\u0004\bD\u00102J'\u0010F\u001a\u00020\b2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!2\u0006\u0010E\u001a\u00020!H\u0014¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u00020\bH\u0014¢\u0006\u0004\bH\u0010\nJ\u0017\u0010J\u001a\u00020\b2\u0006\u0010I\u001a\u00020\u000fH\u0014¢\u0006\u0004\bJ\u0010\u0012J\u0017\u0010M\u001a\u00020\b2\u0006\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bM\u0010NJ\r\u0010O\u001a\u00020\b¢\u0006\u0004\bO\u0010\nJ\u0015\u0010Q\u001a\u00020\b2\u0006\u0010P\u001a\u00020\u000f¢\u0006\u0004\bQ\u0010\u0012J\u0017\u0010S\u001a\u00020\b2\u0006\u0010R\u001a\u00020\u000fH\u0016¢\u0006\u0004\bS\u0010\u0012J\u000f\u0010T\u001a\u00020\bH\u0016¢\u0006\u0004\bT\u0010\nJ\r\u0010U\u001a\u00020\b¢\u0006\u0004\bU\u0010\nJ\u0015\u0010W\u001a\u00020\b2\u0006\u0010V\u001a\u00020\u000f¢\u0006\u0004\bW\u0010\u0012R\u001a\u0010Y\u001a\u00020X8\u0016X\u0096D¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R\u0016\u0010^\u001a\u00020]8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b^\u0010_R\u0016\u0010`\u001a\u00020]8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b`\u0010_R\u0016\u0010a\u001a\u00020]8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\ba\u0010_R\u0016\u0010b\u001a\u00020+8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bb\u0010cR\u0016\u0010d\u001a\u00020+8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bd\u0010cR\u0016\u0010e\u001a\u00020+8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\be\u0010cR\u0016\u0010g\u001a\u00020f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bg\u0010hR\u0016\u0010i\u001a\u00020f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bi\u0010hR\u0016\u0010j\u001a\u00020f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bj\u0010hR\u0016\u0010l\u001a\u00020k8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bl\u0010mR\u0016\u0010o\u001a\u00020n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bo\u0010pR\u0016\u0010r\u001a\u00020q8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\br\u0010sR\u0016\u0010u\u001a\u00020t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bu\u0010vR\u0016\u0010w\u001a\u00020t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bw\u0010vR\u0016\u0010x\u001a\u00020t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bx\u0010vR\u0016\u0010y\u001a\u00020t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\by\u0010vR\u0016\u0010z\u001a\u00020t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bz\u0010vR\u0016\u0010|\u001a\u00020{8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b|\u0010}R\u0017\u0010\u007f\u001a\u00020~8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u001a\u0010\u0082\u0001\u001a\u00030\u0081\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001a\u0010\u0084\u0001\u001a\u00030\u0081\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0083\u0001R\u0018\u0010\u0085\u0001\u001a\u00020f8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010hR\u0018\u0010\u0086\u0001\u001a\u00020f8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010hR\u001a\u0010\u0087\u0001\u001a\u00030\u0081\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0083\u0001R\u0018\u0010\u0088\u0001\u001a\u00020]8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010_R$\u0010\u008b\u0001\u001a\r \u008a\u0001*\u0005\u0018\u00010\u0089\u00010\u0089\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001a\u0010\u008e\u0001\u001a\u00030\u008d\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R \u0010\u0091\u0001\u001a\t\u0012\u0004\u0012\u00020\u00190\u0090\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u001b\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u0019\u0010\u0095\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u0019\u0010\u0097\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u001a\u0010\u009a\u0001\u001a\u00030\u0099\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u001a\u0010\u009d\u0001\u001a\u00030\u009c\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001R\u001b\u0010\u009f\u0001\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u0019\u0010¡\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010\u0098\u0001R\u0019\u0010¢\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010\u0098\u0001R\u0019\u0010£\u0001\u001a\u00020=8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R\u0019\u0010¥\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010\u0098\u0001R\u0019\u0010¦\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010\u0096\u0001R\u0018\u0010§\u0001\u001a\u00020+8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b§\u0001\u0010cR\u001a\u0010©\u0001\u001a\u00030¨\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b©\u0001\u0010ª\u0001R\u001a\u0010«\u0001\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b«\u0001\u0010cR\u001a\u0010¬\u0001\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¬\u0001\u0010cR\u0019\u0010\u00ad\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010\u0098\u0001R\u0019\u0010®\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010¯\u0001R\u0019\u0010°\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010\u0098\u0001R\u0018\u0010²\u0001\u001a\u00030±\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u0018\u0010µ\u0001\u001a\u00030´\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bµ\u0001\u0010¶\u0001R\u0018\u0010¸\u0001\u001a\u00030·\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001R\u0018\u0010º\u0001\u001a\u00030·\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bº\u0001\u0010¹\u0001R\u001a\u0010»\u0001\u001a\u00030·\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b»\u0001\u0010¹\u0001R\u001a\u0010½\u0001\u001a\u00030¼\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b½\u0001\u0010¾\u0001R\u001a\u0010À\u0001\u001a\u00030¿\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÀ\u0001\u0010Á\u0001R\u0019\u0010Â\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010\u0098\u0001R\u0019\u0010Ã\u0001\u001a\u00020=8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010¤\u0001¨\u0006Ä\u0001"}, d2 = {"Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lzfb;", "initClick", "()V", "initView", "(Landroid/content/Context;)V", "makeMotionLayoutChildAlpha1", "initData", "", PushConstants.PUSH_SERVICE_TYPE_SHOW, "markLrcView", "(Z)V", "setCarousel", "isPlaying", "playStatusChange", "isAnimation", "setBeingAnimation", "Ljava/util/ArrayList;", "Lcom/transsion/dbdata/beans/media/AudioItem;", "Lkotlin/collections/ArrayList;", "arrayList", "refreshPlayList", "(Ljava/util/ArrayList;)V", "checkPlayList", "loadAudioAlbums", "runVideoProgressUpdate", "", "position", "duration", "updateProgress", "(JJ)V", "searchLyrics", "", TypedValues.CycleType.S_WAVE_OFFSET, "setCurrentOffset", "(I)V", "Landroid/view/View;", "view", "initLrcView", "(Landroid/view/View;)V", "isLrcMode", "switchToLrcView", "isNeedShowVisualizerView", "()Z", "updateVolumeSeekBar", "pauseOrResumeAnim", "audioItem", "updateUI", "(Lcom/transsion/dbdata/beans/media/AudioItem;)V", "updatePermission", "onAttachedToWindow", "onDetachedFromWindow", "visibility", "setVisibility", "", "alpha", "setAlpha", "(F)V", "changedView", "onVisibilityChanged", "(Landroid/view/View;I)V", "isAudioPlaying", "bufferedPosition", "onProgressUpdateError", "(JJJ)V", "updateLoadingView", "isEmpty", "updateEmptyView", "Lwoc;", "windowOptions", "adaptLayout", "(Lwoc;)V", "onResume", "visible", "showVolume", "isUp", "setVolume", "onVolumeChange", "resetHalfOpenPlayerCurrentMusicAlbum", TtmlNode.START, "onCallStartOrStop", "", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "getTAG", "()Ljava/lang/String;", "Landroidx/constraintlayout/widget/Guideline;", "topLine", "Landroidx/constraintlayout/widget/Guideline;", "startMarginLine", "endMarginLine", "leftMarginLine", "Landroid/view/View;", "rightMarginLine", "emptyPermission", "Landroid/widget/TextView;", "mTvTitle", "Landroid/widget/TextView;", "mArtistName", "mTvPermission", "Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;", "audioVisualizerView", "Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;", "Lcom/transsion/audio/widgets/AudioMotionLayout;", "audioMotionLayout", "Lcom/transsion/audio/widgets/AudioMotionLayout;", "Lcom/transsion/audio/widgets/AudioCarousel;", "carousel", "Lcom/transsion/audio/widgets/AudioCarousel;", "Lcom/transsion/audio/widgets/AudioPlayerItemView;", "audioItemView0", "Lcom/transsion/audio/widgets/AudioPlayerItemView;", "audioItemView1", "audioItemView2", "audioItemView3", "audioItemView4", "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;", "mBottomSeekBar", "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;", "Landroid/widget/SeekBar;", "mVolumeSeekBar", "Landroid/widget/SeekBar;", "Landroid/widget/ImageView;", "mVolumeIv", "Landroid/widget/ImageView;", "mVolumeIcon", "mTvTotalProgress", "mTvCurrentProgress", "btnPlay", "mBtmLine", "Lcom/transsion/audio/player/MusicPlayManager;", "kotlin.jvm.PlatformType", "playManager", "Lcom/transsion/audio/player/MusicPlayManager;", "Lcom/transsion/dbdata/beans/media/PlayAudioListData;", "playListData", "Lcom/transsion/dbdata/beans/media/PlayAudioListData;", "", "playList", "Ljava/util/List;", "mCurrentMediaItem", "Lcom/transsion/dbdata/beans/media/AudioItem;", "mDuration", "J", "mTracking", "Z", "Lcom/transsion/playercommon/videomodel/PlayListModel;", "audioModel", "Lcom/transsion/playercommon/videomodel/PlayListModel;", "Lcom/transsion/WindowInfoViewModel;", "windowModel", "Lcom/transsion/WindowInfoViewModel;", "mWindowOptions", "Lwoc;", "isInjectCover", "beingAnimation", "lastProgress", "F", "hasBeenRollback", "animComplete", "rootView", "Lcom/transsion/audio/data/AudioOpStatus;", "mAudioOpStatus", "Lcom/transsion/audio/data/AudioOpStatus;", "mEmptyView", "mLoadingView", "mIsLoadingLyric", "mSafeInsetBottom", "I", "mIsStart", "com/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1", "audioCarouselAdapter", "Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;", "Lcom/transsion/audio/player/MusicPlayManager$d;", "playerListener", "Lcom/transsion/audio/player/MusicPlayManager$d;", "Ljava/lang/Runnable;", "errorNextRunnable", "Ljava/lang/Runnable;", "hideVolBarRunnable", "progressUpdateRunnable", "Landroidx/appcompat/widget/AppCompatCheckedTextView;", "mSwitchView", "Landroidx/appcompat/widget/AppCompatCheckedTextView;", "Lcom/transsion/audio/widgets/LrcViewNew;", "mLrcView", "Lcom/transsion/audio/widgets/LrcViewNew;", "mIsLrcMode", "mCurrentOffset", "audio_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SuppressLint({"ClickableViewAccessibility"})
public class HalfOpenAudioPlayerLayout extends ConstraintLayout {
    private final String TAG;
    private long animComplete;
    private final HalfOpenAudioPlayerLayout$audioCarouselAdapter$1 audioCarouselAdapter;
    private AudioPlayerItemView audioItemView0;
    private AudioPlayerItemView audioItemView1;
    private AudioPlayerItemView audioItemView2;
    private AudioPlayerItemView audioItemView3;
    private AudioPlayerItemView audioItemView4;
    private PlayListModel audioModel;
    private AudioMotionLayout audioMotionLayout;
    private MagicWaveView audioVisualizerView;
    private boolean beingAnimation;
    private ImageView btnPlay;
    private AudioCarousel carousel;
    private View emptyPermission;
    private Guideline endMarginLine;
    private final Runnable errorNextRunnable;
    private boolean hasBeenRollback;
    private final Runnable hideVolBarRunnable;
    private boolean isInjectCover;
    private float lastProgress;
    private View leftMarginLine;
    private TextView mArtistName;
    private AudioOpStatus mAudioOpStatus;
    private OSSeekbar mBottomSeekBar;
    private Guideline mBtmLine;
    private AudioItem mCurrentMediaItem;
    private float mCurrentOffset;
    private long mDuration;
    private View mEmptyView;
    private boolean mIsLoadingLyric;
    private boolean mIsLrcMode;
    private boolean mIsStart;
    private View mLoadingView;
    private LrcViewNew mLrcView;
    private int mSafeInsetBottom;
    private AppCompatCheckedTextView mSwitchView;
    private boolean mTracking;
    private TextView mTvCurrentProgress;
    private TextView mTvPermission;
    private TextView mTvTitle;
    private TextView mTvTotalProgress;
    private ImageView mVolumeIcon;
    private ImageView mVolumeIv;
    private SeekBar mVolumeSeekBar;
    private woc mWindowOptions;
    private List<AudioItem> playList;
    private PlayAudioListData playListData;
    private MusicPlayManager playManager;
    private final MusicPlayManager.d playerListener;
    private Runnable progressUpdateRunnable;
    private View rightMarginLine;
    private View rootView;
    private Guideline startMarginLine;
    private Guideline topLine;
    private WindowInfoViewModel windowModel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HalfOpenAudioPlayerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
        this.TAG = "HalfOpenAudioPlayerLayout";
        this.playManager = MusicPlayManager.S();
        this.playList = new ArrayList();
        if (context instanceof AudioPlayerActivity) {
            AudioPlayerActivity audioPlayerActivity = (AudioPlayerActivity) context;
            this.audioModel = (PlayListModel) audioPlayerActivity.getViewModel(PlayListModel.class);
            this.windowModel = (WindowInfoViewModel) audioPlayerActivity.getViewModel(WindowInfoViewModel.class);
        }
        initView(context);
        initData();
        initClick();
        this.audioCarouselAdapter = new HalfOpenAudioPlayerLayout$audioCarouselAdapter$1(this);
        this.playerListener = new MusicPlayManager.d() {
            @Override
            public void hideBottomOperateBar() {
                super.hideBottomOperateBar();
            }

            @Override
            public void onFftDataCapture(Visualizer visualizer, byte[] fft, int samplingRate) {
                y45.j(visualizer, "visualizer");
                y45.j(fft, "fft");
            }

            @Override
            public boolean onInfo(int i, int i2) {
                return super.onInfo(i, i2);
            }

            @Override
            public void onPlayItemChanged(AudioItem mediaItem) {
                if (mediaItem == null) {
                    return;
                }
                this.this$0.updateUI(mediaItem);
                AudioCarousel audioCarousel = null;
                if (this.this$0.getVisibility() == 0 && this.this$0.mIsStart) {
                    AudioPlayerItemView audioPlayerItemView = this.this$0.audioItemView2;
                    if (audioPlayerItemView == null) {
                        y45.B("audioItemView2");
                        audioPlayerItemView = null;
                    }
                    audioPlayerItemView.startAlbumAnim();
                }
                if (!this.this$0.isInjectCover) {
                    this.this$0.loadAudioAlbums();
                    return;
                }
                int i = -1;
                int i2 = 0;
                if (this.this$0.getVisibility() != 0) {
                    Iterator it = this.this$0.playList.iterator();
                    while (it.hasNext()) {
                        if (((AudioItem) it.next()).id == mediaItem.id) {
                            i = i2;
                            break;
                        }
                        i2++;
                    }
                    AudioCarousel audioCarousel2 = this.this$0.carousel;
                    if (audioCarousel2 == null) {
                        y45.B("carousel");
                        audioCarousel2 = null;
                    }
                    if (audioCarousel2.getCurrentIndex() != i) {
                        AudioCarousel audioCarousel3 = this.this$0.carousel;
                        if (audioCarousel3 == null) {
                            y45.B("carousel");
                        } else {
                            audioCarousel = audioCarousel3;
                        }
                        audioCarousel.jumpToIndex(i);
                        return;
                    }
                    return;
                }
                Iterator it2 = this.this$0.playList.iterator();
                while (it2.hasNext()) {
                    if (((AudioItem) it2.next()).id == mediaItem.id) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                AudioCarousel audioCarousel4 = this.this$0.carousel;
                if (audioCarousel4 == null) {
                    y45.B("carousel");
                    audioCarousel4 = null;
                }
                if (audioCarousel4.getCurrentIndex() != i) {
                    if (i == 0) {
                        AudioCarousel audioCarousel5 = this.this$0.carousel;
                        if (audioCarousel5 == null) {
                            y45.B("carousel");
                            audioCarousel5 = null;
                        }
                        if (audioCarousel5.getCurrentIndex() == this.this$0.playList.size() - 1) {
                            AudioCarousel audioCarousel6 = this.this$0.carousel;
                            if (audioCarousel6 == null) {
                                y45.B("carousel");
                            } else {
                                audioCarousel = audioCarousel6;
                            }
                            audioCarousel.transitionNext(500);
                            return;
                        }
                        AudioCarousel audioCarousel7 = this.this$0.carousel;
                        if (audioCarousel7 == null) {
                            y45.B("carousel");
                        } else {
                            audioCarousel = audioCarousel7;
                        }
                        audioCarousel.transitionPrevious(500);
                        return;
                    }
                    if (i != this.this$0.playList.size() - 1) {
                        AudioCarousel audioCarousel8 = this.this$0.carousel;
                        if (audioCarousel8 == null) {
                            y45.B("carousel");
                        } else {
                            audioCarousel = audioCarousel8;
                        }
                        audioCarousel.transitionToIndex(i, 500);
                        return;
                    }
                    AudioCarousel audioCarousel9 = this.this$0.carousel;
                    if (audioCarousel9 == null) {
                        y45.B("carousel");
                        audioCarousel9 = null;
                    }
                    if (audioCarousel9.getCurrentIndex() == 0) {
                        AudioCarousel audioCarousel10 = this.this$0.carousel;
                        if (audioCarousel10 == null) {
                            y45.B("carousel");
                        } else {
                            audioCarousel = audioCarousel10;
                        }
                        audioCarousel.transitionPrevious(500);
                        return;
                    }
                    AudioCarousel audioCarousel11 = this.this$0.carousel;
                    if (audioCarousel11 == null) {
                        y45.B("carousel");
                    } else {
                        audioCarousel = audioCarousel11;
                    }
                    audioCarousel.transitionNext(500);
                }
            }

            @Override
            public void onPlayListLoadFinished(ArrayList<AudioItem> arrayList) {
                y45.j(arrayList, "arrayList");
                HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout = this.this$0;
                ArrayList<AudioItem> playList = PlayAudioListData.getInstance().getPlayList();
                y45.i(playList, "getPlayList(...)");
                halfOpenAudioPlayerLayout.refreshPlayList(playList);
                AudioItem audioItemP = MusicPlayManager.S().P();
                if (this.this$0.mCurrentMediaItem == null || audioItemP == null || !audioItemP.isAudioItemChanged(this.this$0.mCurrentMediaItem)) {
                    return;
                }
                Log.d("AudioPlayerLayout", "onPlayListLoadFinished " + audioItemP);
                this.this$0.updateUI(audioItemP);
            }

            @Override
            public void onPlayerStateUpdate(int state) {
                com.transsion.audio.a.c(String.valueOf(state));
                AudioPlayerItemView audioPlayerItemView = null;
                if (state == 2) {
                    if (this.this$0.getVisibility() == 0 && this.this$0.mIsStart) {
                        AudioPlayerItemView audioPlayerItemView2 = this.this$0.audioItemView2;
                        if (audioPlayerItemView2 == null) {
                            y45.B("audioItemView2");
                        } else {
                            audioPlayerItemView = audioPlayerItemView2;
                        }
                        audioPlayerItemView.startAlbumAnim();
                        return;
                    }
                    return;
                }
                if (state == 3) {
                    if (this.this$0.getVisibility() == 0 && this.this$0.mIsStart) {
                        AudioPlayerItemView audioPlayerItemView3 = this.this$0.audioItemView2;
                        if (audioPlayerItemView3 == null) {
                            y45.B("audioItemView2");
                            audioPlayerItemView3 = null;
                        }
                        audioPlayerItemView3.resumeAlbumAnim();
                    }
                    AudioPlayerItemView audioPlayerItemView4 = this.this$0.audioItemView2;
                    if (audioPlayerItemView4 == null) {
                        y45.B("audioItemView2");
                        audioPlayerItemView4 = null;
                    }
                    AudioPlayerItemView.setPlayState$default(audioPlayerItemView4, true, null, 2, null);
                    this.this$0.playStatusChange(true);
                    return;
                }
                if (state == 4 || state == 5) {
                    AudioPlayerItemView audioPlayerItemView5 = this.this$0.audioItemView2;
                    if (audioPlayerItemView5 == null) {
                        y45.B("audioItemView2");
                        audioPlayerItemView5 = null;
                    }
                    audioPlayerItemView5.pauseAlbumAnim();
                    AudioPlayerItemView audioPlayerItemView6 = this.this$0.audioItemView2;
                    if (audioPlayerItemView6 == null) {
                        y45.B("audioItemView2");
                        audioPlayerItemView6 = null;
                    }
                    AudioPlayerItemView.setPlayState$default(audioPlayerItemView6, true, null, 2, null);
                    this.this$0.playStatusChange(false);
                }
            }

            @Override
            public void onShowError(int what, int messageId) {
                HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout = this.this$0;
                halfOpenAudioPlayerLayout.postDelayed(halfOpenAudioPlayerLayout.errorNextRunnable, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
            }

            @Override
            public void onTimerShow(long j) {
                super.onTimerShow(j);
            }

            @Override
            public void onUpdateAll(MusicPlayManager musicPlayManager) {
                y45.j(musicPlayManager, "musicPlayManager");
            }

            @Override
            public void onVideoSizeChanged(int i, int i2) {
                super.onVideoSizeChanged(i, i2);
            }

            @Override
            public void seekTo(int i) {
                super.seekTo(i);
            }
        };
        this.errorNextRunnable = new Runnable() {
            @Override
            public final void run() {
                HalfOpenAudioPlayerLayout.errorNextRunnable$lambda$15();
            }
        };
        this.hideVolBarRunnable = new Runnable() {
            @Override
            public final void run() {
                HalfOpenAudioPlayerLayout.hideVolBarRunnable$lambda$16(this.b);
            }
        };
        this.progressUpdateRunnable = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.runVideoProgressUpdate();
            }
        };
    }

    public static final void adaptLayout$lambda$30(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout) {
        halfOpenAudioPlayerLayout.switchToLrcView(halfOpenAudioPlayerLayout.mIsLrcMode);
        if (halfOpenAudioPlayerLayout.mIsLrcMode && halfOpenAudioPlayerLayout.getVisibility() == 0) {
            halfOpenAudioPlayerLayout.markLrcView(true);
        }
    }

    private final void checkPlayList() {
        if (this.playList.isEmpty()) {
            List<AudioItem> list = this.playList;
            PlayAudioListData playAudioListData = this.playListData;
            if (playAudioListData == null) {
                y45.B("playListData");
                playAudioListData = null;
            }
            ArrayList<AudioItem> playList = playAudioListData.getPlayList();
            y45.i(playList, "getPlayList(...)");
            list.addAll(playList);
        }
    }

    public static final void errorNextRunnable$lambda$15() {
        MusicPlayManager.S().R0();
    }

    public static final void hideVolBarRunnable$lambda$16(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout) {
        ImageView imageView = halfOpenAudioPlayerLayout.mVolumeIcon;
        SeekBar seekBar = null;
        if (imageView == null) {
            y45.B("mVolumeIcon");
            imageView = null;
        }
        ImageView imageView2 = halfOpenAudioPlayerLayout.mVolumeIv;
        if (imageView2 == null) {
            y45.B("mVolumeIv");
            imageView2 = null;
        }
        SeekBar seekBar2 = halfOpenAudioPlayerLayout.mVolumeSeekBar;
        if (seekBar2 == null) {
            y45.B("mVolumeSeekBar");
        } else {
            seekBar = seekBar2;
        }
        HalfOpenAudioAnimotionHelper.showVolumeWithAnimotion(imageView, imageView2, seekBar, false);
    }

    private final void initClick() {
        AppCompatCheckedTextView appCompatCheckedTextView = this.mSwitchView;
        TextView textView = null;
        if (appCompatCheckedTextView == null) {
            y45.B("mSwitchView");
            appCompatCheckedTextView = null;
        }
        appCompatCheckedTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                HalfOpenAudioPlayerLayout.initClick$lambda$0(this.b, view);
            }
        });
        AudioPlayerItemView audioPlayerItemView = this.audioItemView1;
        if (audioPlayerItemView == null) {
            y45.B("audioItemView1");
            audioPlayerItemView = null;
        }
        GestureUtil.scrollGesturesForAudio(audioPlayerItemView, new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i) {
                HalfOpenAudioPlayerLayout.initClick$lambda$1(this.a, i);
            }
        });
        AudioPlayerItemView audioPlayerItemView2 = this.audioItemView3;
        if (audioPlayerItemView2 == null) {
            y45.B("audioItemView3");
            audioPlayerItemView2 = null;
        }
        GestureUtil.scrollGesturesForAudio(audioPlayerItemView2, new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i) {
                HalfOpenAudioPlayerLayout.initClick$lambda$2(this.a, i);
            }
        });
        ImageView imageView = this.btnPlay;
        if (imageView == null) {
            y45.B("btnPlay");
            imageView = null;
        }
        GestureUtil.scrollGesturesForAudio(imageView, new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i) {
                HalfOpenAudioPlayerLayout.initClick$lambda$3(this.a, i);
            }
        });
        TextView textView2 = this.mTvPermission;
        if (textView2 == null) {
            y45.B("mTvPermission");
        } else {
            textView = textView2;
        }
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                HalfOpenAudioPlayerLayout.initClick$lambda$5(this.b, view);
            }
        });
    }

    public static final void initClick$lambda$0(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, View view) {
        PlayListModel playListModel = halfOpenAudioPlayerLayout.audioModel;
        if (playListModel == null) {
            y45.B("audioModel");
            playListModel = null;
        }
        playListModel.o.setValue(Boolean.valueOf(!halfOpenAudioPlayerLayout.mIsLrcMode));
    }

    public static final void initClick$lambda$1(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, int i) {
        Log.i(halfOpenAudioPlayerLayout.getTAG(), "audioItemView1 scrollGestures beingAnimation=" + halfOpenAudioPlayerLayout.beingAnimation);
        if (halfOpenAudioPlayerLayout.beingAnimation) {
            return;
        }
        AudioCarousel audioCarousel = null;
        if (i == 1) {
            AudioCarousel audioCarousel2 = halfOpenAudioPlayerLayout.carousel;
            if (audioCarousel2 == null) {
                y45.B("carousel");
            } else {
                audioCarousel = audioCarousel2;
            }
            audioCarousel.transitionNext(500);
            return;
        }
        if (i == 2) {
            AudioCarousel audioCarousel3 = halfOpenAudioPlayerLayout.carousel;
            if (audioCarousel3 == null) {
                y45.B("carousel");
            } else {
                audioCarousel = audioCarousel3;
            }
            audioCarousel.transitionPrevious(500);
            return;
        }
        if (i == 5 && System.currentTimeMillis() - halfOpenAudioPlayerLayout.animComplete > 300) {
            AudioCarousel audioCarousel4 = halfOpenAudioPlayerLayout.carousel;
            if (audioCarousel4 == null) {
                y45.B("carousel");
            } else {
                audioCarousel = audioCarousel4;
            }
            audioCarousel.transitionPrevious(500);
        }
    }

    public static final void initClick$lambda$2(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, int i) {
        Log.i(halfOpenAudioPlayerLayout.getTAG(), "audioItemView3 scrollGestures beingAnimation=" + halfOpenAudioPlayerLayout.beingAnimation + "  time=" + System.currentTimeMillis());
        if (halfOpenAudioPlayerLayout.beingAnimation) {
            return;
        }
        AudioCarousel audioCarousel = null;
        if (i == 1) {
            AudioCarousel audioCarousel2 = halfOpenAudioPlayerLayout.carousel;
            if (audioCarousel2 == null) {
                y45.B("carousel");
            } else {
                audioCarousel = audioCarousel2;
            }
            audioCarousel.transitionNext(500);
            return;
        }
        if (i == 2) {
            AudioCarousel audioCarousel3 = halfOpenAudioPlayerLayout.carousel;
            if (audioCarousel3 == null) {
                y45.B("carousel");
            } else {
                audioCarousel = audioCarousel3;
            }
            audioCarousel.transitionPrevious(500);
            return;
        }
        if (i == 5 && System.currentTimeMillis() - halfOpenAudioPlayerLayout.animComplete > 300) {
            AudioCarousel audioCarousel4 = halfOpenAudioPlayerLayout.carousel;
            if (audioCarousel4 == null) {
                y45.B("carousel");
            } else {
                audioCarousel = audioCarousel4;
            }
            audioCarousel.transitionNext(500);
        }
    }

    public static final void initClick$lambda$3(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, int i) {
        Log.i(halfOpenAudioPlayerLayout.getTAG(), "audioItemView2 scrollGestures beingAnimation=" + halfOpenAudioPlayerLayout.beingAnimation);
        if (halfOpenAudioPlayerLayout.beingAnimation) {
            return;
        }
        AudioCarousel audioCarousel = null;
        if (i == 1) {
            if (halfOpenAudioPlayerLayout.playList.size() > 1) {
                AudioCarousel audioCarousel2 = halfOpenAudioPlayerLayout.carousel;
                if (audioCarousel2 == null) {
                    y45.B("carousel");
                } else {
                    audioCarousel = audioCarousel2;
                }
                audioCarousel.transitionNext(500);
                return;
            }
            return;
        }
        if (i != 2) {
            if (i != 5) {
                return;
            }
            halfOpenAudioPlayerLayout.playManager.A1(true, !halfOpenAudioPlayerLayout.isAudioPlaying());
        } else if (halfOpenAudioPlayerLayout.playList.size() > 1) {
            AudioCarousel audioCarousel3 = halfOpenAudioPlayerLayout.carousel;
            if (audioCarousel3 == null) {
                y45.B("carousel");
            } else {
                audioCarousel = audioCarousel3;
            }
            audioCarousel.transitionPrevious(500);
        }
    }

    public static final void initClick$lambda$5(final HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, View view) {
        Context context = halfOpenAudioPlayerLayout.getContext();
        y45.h(context, "null cannot be cast to non-null type com.transsion.audio.activities.AudioPlayerActivity");
        final AudioPlayerActivity audioPlayerActivity = (AudioPlayerActivity) context;
        audioPlayerActivity.I1(new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                HalfOpenAudioPlayerLayout.initClick$lambda$5$lambda$4(audioPlayerActivity, halfOpenAudioPlayerLayout, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final void initClick$lambda$5$lambda$4(AudioPlayerActivity audioPlayerActivity, HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, boolean z) {
        if (z) {
            halfOpenAudioPlayerLayout.updatePermission();
        } else {
            audioPlayerActivity.N1();
        }
    }

    @SuppressLint({"CheckResult"})
    private final void initData() {
        this.playManager = MusicPlayManager.S();
        this.playListData = PlayAudioListData.getInstance();
        int iD = w6c.d(getContext(), "audio_play_repeat_mode", 1);
        PlayAudioListData playAudioListData = this.playListData;
        PlayListModel playListModel = null;
        if (playAudioListData == null) {
            y45.B("playListData");
            playAudioListData = null;
        }
        playAudioListData.setRepeatMode(iD);
        postDelayed(new Runnable() {
            @Override
            public final void run() {
                HalfOpenAudioPlayerLayout.initData$lambda$11(this.b);
            }
        }, 100L);
        this.mIsLrcMode = Repository.INSTANCE.isLrcMode;
        PlayListModel playListModel2 = this.audioModel;
        if (playListModel2 == null) {
            y45.B("audioModel");
        } else {
            playListModel = playListModel2;
        }
        MutableLiveData mutableLiveData = playListModel.o;
        Context context = getContext();
        y45.h(context, "null cannot be cast to non-null type com.transsion.audio.activities.AudioPlayerActivity");
        mutableLiveData.observe((AudioPlayerActivity) context, new HalfOpenAudioPlayerLayout$sam$androidx_lifecycle_Observer$0(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return HalfOpenAudioPlayerLayout.initData$lambda$12(this.b, (Boolean) obj);
            }
        }));
    }

    public static final void initData$lambda$11(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout) {
        PlayAudioListData playAudioListData = halfOpenAudioPlayerLayout.playListData;
        if (playAudioListData == null) {
            y45.B("playListData");
            playAudioListData = null;
        }
        ArrayList<AudioItem> playList = playAudioListData.getPlayList();
        y45.i(playList, "getPlayList(...)");
        halfOpenAudioPlayerLayout.refreshPlayList(playList);
    }

    public static final zfb initData$lambda$12(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, Boolean bool) {
        if (bool != null && halfOpenAudioPlayerLayout.mWindowOptions != null) {
            halfOpenAudioPlayerLayout.switchToLrcView(bool.booleanValue());
        }
        return zfb.a;
    }

    private final void initLrcView(View view) {
        LrcViewNew lrcViewNew = (LrcViewNew) view.findViewById(R.id.lyrics_view);
        this.mLrcView = lrcViewNew;
        View view2 = null;
        if (lrcViewNew == null) {
            y45.B("mLrcView");
            lrcViewNew = null;
        }
        lrcViewNew.setCurrentColor(getContext().getResources().getColor(R.color.white, null));
        LrcViewNew lrcViewNew2 = this.mLrcView;
        if (lrcViewNew2 == null) {
            y45.B("mLrcView");
            lrcViewNew2 = null;
        }
        lrcViewNew2.setTimeTextColor(getContext().getResources().getColor(R.color.lyric_timeline_color, null));
        LrcViewNew lrcViewNew3 = this.mLrcView;
        if (lrcViewNew3 == null) {
            y45.B("mLrcView");
            lrcViewNew3 = null;
        }
        lrcViewNew3.setTimelineTextColor(getContext().getResources().getColor(R.color.lyric_second_highlight_color, null));
        LrcViewNew lrcViewNew4 = this.mLrcView;
        if (lrcViewNew4 == null) {
            y45.B("mLrcView");
            lrcViewNew4 = null;
        }
        lrcViewNew4.setNormalColor(getContext().getResources().getColor(R.color.lyric_normal_color, null));
        LrcViewNew lrcViewNew5 = this.mLrcView;
        if (lrcViewNew5 == null) {
            y45.B("mLrcView");
            lrcViewNew5 = null;
        }
        lrcViewNew5.setLabel(getContext().getResources().getString(R.string.no_lyrics));
        LrcViewNew lrcViewNew6 = this.mLrcView;
        if (lrcViewNew6 == null) {
            y45.B("mLrcView");
            lrcViewNew6 = null;
        }
        lrcViewNew6.setDraggable(true, new LrcViewNew.OnPlayClickListener() {
            @Override
            public final boolean onPlayClick(LrcViewNew lrcViewNew7, long j) {
                return HalfOpenAudioPlayerLayout.initLrcView$lambda$25(this.a, lrcViewNew7, j);
            }
        });
        LrcViewNew lrcViewNew7 = this.mLrcView;
        if (lrcViewNew7 == null) {
            y45.B("mLrcView");
            lrcViewNew7 = null;
        }
        lrcViewNew7.setOnTapListener(new LrcViewNew.OnTapListener() {
            @Override
            public final void onTap(LrcViewNew lrcViewNew8, float f, float f2) {
                HalfOpenAudioPlayerLayout.initLrcView$lambda$26(this.a, lrcViewNew8, f, f2);
            }
        });
        MagicWaveView magicWaveView = this.audioVisualizerView;
        if (magicWaveView == null) {
            y45.B("audioVisualizerView");
            magicWaveView = null;
        }
        magicWaveView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view3) {
                HalfOpenAudioPlayerLayout.initLrcView$lambda$27(this.b, view3);
            }
        });
        View view3 = this.emptyPermission;
        if (view3 == null) {
            y45.B("emptyPermission");
        } else {
            view2 = view3;
        }
        view2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view4) {
                HalfOpenAudioPlayerLayout.initLrcView$lambda$28(this.b, view4);
            }
        });
    }

    public static final boolean initLrcView$lambda$25(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, LrcViewNew lrcViewNew, long j) {
        MusicPlayManager.S().m1((int) j);
        if (halfOpenAudioPlayerLayout.playManager.s0()) {
            return true;
        }
        halfOpenAudioPlayerLayout.playManager.B1();
        return true;
    }

    public static final void initLrcView$lambda$26(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, LrcViewNew lrcViewNew, float f, float f2) {
        PlayListModel playListModel = halfOpenAudioPlayerLayout.audioModel;
        if (playListModel == null) {
            y45.B("audioModel");
            playListModel = null;
        }
        playListModel.o.setValue(Boolean.FALSE);
        halfOpenAudioPlayerLayout.markLrcView(false);
    }

    public static final void initLrcView$lambda$27(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, View view) {
        PlayListModel playListModel = halfOpenAudioPlayerLayout.audioModel;
        if (playListModel == null) {
            y45.B("audioModel");
            playListModel = null;
        }
        playListModel.o.setValue(Boolean.TRUE);
        halfOpenAudioPlayerLayout.markLrcView(true);
    }

    public static final void initLrcView$lambda$28(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, View view) {
        PlayListModel playListModel = halfOpenAudioPlayerLayout.audioModel;
        if (playListModel == null) {
            y45.B("audioModel");
            playListModel = null;
        }
        playListModel.o.setValue(Boolean.TRUE);
    }

    private final void initView(final Context context) {
        this.mAudioOpStatus = new AudioOpStatus();
        View viewInflate = !pp3.l() ? LayoutInflater.from(context).inflate(R.layout.layout_audio_player_half_open_flat, (ViewGroup) this, true) : LayoutInflater.from(context).inflate(R.layout.layout_audio_player_half_open, (ViewGroup) this, true);
        this.rootView = viewInflate;
        AudioMotionLayout audioMotionLayout = null;
        if (viewInflate == null) {
            y45.B("rootView");
            viewInflate = null;
        }
        this.topLine = (Guideline) viewInflate.findViewById(R.id.top_line);
        View view = this.rootView;
        if (view == null) {
            y45.B("rootView");
            view = null;
        }
        this.startMarginLine = (Guideline) view.findViewById(R.id.start_margin_line);
        View view2 = this.rootView;
        if (view2 == null) {
            y45.B("rootView");
            view2 = null;
        }
        this.endMarginLine = (Guideline) view2.findViewById(R.id.end_margin_line);
        View view3 = this.rootView;
        if (view3 == null) {
            y45.B("rootView");
            view3 = null;
        }
        this.leftMarginLine = view3.findViewById(R.id.left_margin_line);
        View view4 = this.rootView;
        if (view4 == null) {
            y45.B("rootView");
            view4 = null;
        }
        this.rightMarginLine = view4.findViewById(R.id.right_margin_line);
        View view5 = this.rootView;
        if (view5 == null) {
            y45.B("rootView");
            view5 = null;
        }
        this.emptyPermission = view5.findViewById(R.id.ll_empty_permission);
        View view6 = this.rootView;
        if (view6 == null) {
            y45.B("rootView");
            view6 = null;
        }
        this.mTvTitle = (TextView) view6.findViewById(R.id.tv_audio_play_title);
        View view7 = this.rootView;
        if (view7 == null) {
            y45.B("rootView");
            view7 = null;
        }
        this.mArtistName = (TextView) view7.findViewById(R.id.tv_audio_artist);
        View view8 = this.rootView;
        if (view8 == null) {
            y45.B("rootView");
            view8 = null;
        }
        this.mTvPermission = (TextView) view8.findViewById(R.id.tv_permission);
        View view9 = this.rootView;
        if (view9 == null) {
            y45.B("rootView");
            view9 = null;
        }
        this.audioVisualizerView = (MagicWaveView) view9.findViewById(R.id.audio_visualizer_view);
        View view10 = this.rootView;
        if (view10 == null) {
            y45.B("rootView");
            view10 = null;
        }
        this.audioMotionLayout = (AudioMotionLayout) view10.findViewById(R.id.motionLayout);
        View view11 = this.rootView;
        if (view11 == null) {
            y45.B("rootView");
            view11 = null;
        }
        this.btnPlay = (ImageView) view11.findViewById(R.id.btn_play);
        View view12 = this.rootView;
        if (view12 == null) {
            y45.B("rootView");
            view12 = null;
        }
        this.carousel = (AudioCarousel) view12.findViewById(R.id.carousel);
        View view13 = this.rootView;
        if (view13 == null) {
            y45.B("rootView");
            view13 = null;
        }
        this.audioItemView0 = (AudioPlayerItemView) view13.findViewById(R.id.audioItem0);
        View view14 = this.rootView;
        if (view14 == null) {
            y45.B("rootView");
            view14 = null;
        }
        this.audioItemView1 = (AudioPlayerItemView) view14.findViewById(R.id.audioItem1);
        View view15 = this.rootView;
        if (view15 == null) {
            y45.B("rootView");
            view15 = null;
        }
        this.audioItemView2 = (AudioPlayerItemView) view15.findViewById(R.id.audioItem2);
        View view16 = this.rootView;
        if (view16 == null) {
            y45.B("rootView");
            view16 = null;
        }
        this.audioItemView3 = (AudioPlayerItemView) view16.findViewById(R.id.audioItem3);
        View view17 = this.rootView;
        if (view17 == null) {
            y45.B("rootView");
            view17 = null;
        }
        this.audioItemView4 = (AudioPlayerItemView) view17.findViewById(R.id.audioItem4);
        AudioPlayerItemView audioPlayerItemView = this.audioItemView0;
        if (audioPlayerItemView == null) {
            y45.B("audioItemView0");
            audioPlayerItemView = null;
        }
        audioPlayerItemView.setName("audioItemView0");
        AudioPlayerItemView audioPlayerItemView2 = this.audioItemView1;
        if (audioPlayerItemView2 == null) {
            y45.B("audioItemView1");
            audioPlayerItemView2 = null;
        }
        audioPlayerItemView2.setName("audioItemView1");
        AudioPlayerItemView audioPlayerItemView3 = this.audioItemView2;
        if (audioPlayerItemView3 == null) {
            y45.B("audioItemView2");
            audioPlayerItemView3 = null;
        }
        audioPlayerItemView3.setName("audioItemView2");
        AudioPlayerItemView audioPlayerItemView4 = this.audioItemView3;
        if (audioPlayerItemView4 == null) {
            y45.B("audioItemView3");
            audioPlayerItemView4 = null;
        }
        audioPlayerItemView4.setName("audioItemView3");
        AudioPlayerItemView audioPlayerItemView5 = this.audioItemView4;
        if (audioPlayerItemView5 == null) {
            y45.B("audioItemView4");
            audioPlayerItemView5 = null;
        }
        audioPlayerItemView5.setName("audioItemView4");
        View view18 = this.rootView;
        if (view18 == null) {
            y45.B("rootView");
            view18 = null;
        }
        this.mSwitchView = (AppCompatCheckedTextView) view18.findViewById(R.id.tv_switch);
        View view19 = this.rootView;
        if (view19 == null) {
            y45.B("rootView");
            view19 = null;
        }
        initLrcView(view19);
        View view20 = this.rootView;
        if (view20 == null) {
            y45.B("rootView");
            view20 = null;
        }
        this.mBtmLine = (Guideline) view20.findViewById(R.id.gl_btm);
        View view21 = this.rootView;
        if (view21 == null) {
            y45.B("rootView");
            view21 = null;
        }
        this.mTvCurrentProgress = (TextView) view21.findViewById(R.id.tv_video_play_current_progress);
        View view22 = this.rootView;
        if (view22 == null) {
            y45.B("rootView");
            view22 = null;
        }
        this.mTvTotalProgress = (TextView) view22.findViewById(R.id.tv_video_play_total_progress);
        View view23 = this.rootView;
        if (view23 == null) {
            y45.B("rootView");
            view23 = null;
        }
        this.mBottomSeekBar = (OSSeekbar) view23.findViewById(R.id.seekbar_video_play);
        View view24 = this.rootView;
        if (view24 == null) {
            y45.B("rootView");
            view24 = null;
        }
        this.mVolumeSeekBar = (SeekBar) view24.findViewById(R.id.seekbar_volume);
        View view25 = this.rootView;
        if (view25 == null) {
            y45.B("rootView");
            view25 = null;
        }
        this.mVolumeIv = (ImageView) view25.findViewById(R.id.iv_volume);
        View view26 = this.rootView;
        if (view26 == null) {
            y45.B("rootView");
            view26 = null;
        }
        this.mVolumeIcon = (ImageView) view26.findViewById(R.id.volume);
        View view27 = this.rootView;
        if (view27 == null) {
            y45.B("rootView");
            view27 = null;
        }
        View viewFindViewById = view27.findViewById(R.id.volume_container);
        y45.i(viewFindViewById, "findViewById(...)");
        ((FrameLayout) viewFindViewById).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view28) {
                HalfOpenAudioPlayerLayout.initView$lambda$6(this.b, view28);
            }
        });
        OSSeekbar oSSeekbar = this.mBottomSeekBar;
        if (oSSeekbar == null) {
            y45.B("mBottomSeekBar");
            oSSeekbar = null;
        }
        oSSeekbar.setOnProgressChangedListener(new OSSeekbar.c() {
            @Override
            public void onProgressChanged(OSSeekbar seekBar, int progress, float v, boolean fromUser) {
                long jQ;
                if (HalfOpenAudioPlayerLayout.this.mTracking) {
                    jQ = (HalfOpenAudioPlayerLayout.this.mDuration * ((long) progress)) / ((long) 100);
                    if (jQ > HalfOpenAudioPlayerLayout.this.mDuration) {
                        jQ = HalfOpenAudioPlayerLayout.this.mDuration;
                    }
                } else {
                    jQ = MusicPlayManager.S().Q();
                }
                TextView textView = HalfOpenAudioPlayerLayout.this.mTvCurrentProgress;
                if (textView == null) {
                    y45.B("mTvCurrentProgress");
                    textView = null;
                }
                textView.setText(wna.d(jQ));
            }

            @Override
            public void onStartTrackingTouch(OSSeekbar seekBar) {
                HalfOpenAudioPlayerLayout.this.mTracking = true;
            }

            @Override
            public void onStopTrackingTouch(OSSeekbar seekBar) {
                HalfOpenAudioPlayerLayout.this.mTracking = false;
                long j = HalfOpenAudioPlayerLayout.this.mDuration;
                OSSeekbar oSSeekbar2 = HalfOpenAudioPlayerLayout.this.mBottomSeekBar;
                if (oSSeekbar2 == null) {
                    y45.B("mBottomSeekBar");
                    oSSeekbar2 = null;
                }
                HalfOpenAudioPlayerLayout.this.playManager.n1((int) ((j * ((long) oSSeekbar2.getProgress())) / ((long) 100)), true);
                p06.h0("audio_play_seekbar");
            }
        });
        SeekBar seekBar = this.mVolumeSeekBar;
        if (seekBar == null) {
            y45.B("mVolumeSeekBar");
            seekBar = null;
        }
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar2, int progress, boolean fromUser) {
                y45.j(seekBar2, "seekBar");
                if (fromUser) {
                    AudioOpStatus audioOpStatus = HalfOpenAudioPlayerLayout.this.mAudioOpStatus;
                    if (audioOpStatus == null) {
                        y45.B("mAudioOpStatus");
                        audioOpStatus = null;
                    }
                    aw6.c(audioOpStatus, (progress * 1.0f) / seekBar2.getMax(), HalfOpenAudioPlayerLayout.this.playManager);
                }
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar2) {
                y45.j(seekBar2, "seekBar");
                ThreadUtils.o().removeCallbacks(HalfOpenAudioPlayerLayout.this.hideVolBarRunnable);
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar2) {
                y45.j(seekBar2, "seekBar");
                ThreadUtils.o().postDelayed(HalfOpenAudioPlayerLayout.this.hideVolBarRunnable, 2000L);
                HalfOpenAudioPlayerLayout.this.updateVolumeSeekBar();
            }
        });
        Log.d(getTAG(), "initView");
        updateVolumeSeekBar();
        if (vha.s(context)) {
            OSSeekbar oSSeekbar2 = this.mBottomSeekBar;
            if (oSSeekbar2 == null) {
                y45.B("mBottomSeekBar");
                oSSeekbar2 = null;
            }
            oSSeekbar2.setThumb(vha.e(context));
        }
        OSSeekbar oSSeekbar3 = this.mBottomSeekBar;
        if (oSSeekbar3 == null) {
            y45.B("mBottomSeekBar");
            oSSeekbar3 = null;
        }
        oSSeekbar3.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view28, MotionEvent motionEvent) {
                return HalfOpenAudioPlayerLayout.initView$lambda$7(this.b, view28, motionEvent);
            }
        });
        AudioMotionLayout audioMotionLayout2 = this.audioMotionLayout;
        if (audioMotionLayout2 == null) {
            y45.B("audioMotionLayout");
        } else {
            audioMotionLayout = audioMotionLayout2;
        }
        audioMotionLayout.setTransitionListener(new MotionLayout.TransitionListener() {
            @Override
            public void onTransitionChange(MotionLayout motionLayout, int startId, int endId, float progress) {
                if (progress < HalfOpenAudioPlayerLayout.this.lastProgress) {
                    HalfOpenAudioPlayerLayout.this.hasBeenRollback = true;
                }
                HalfOpenAudioPlayerLayout.this.lastProgress = progress;
                com.transsion.audio.a.c("onTransitionChange progress=" + progress);
                if (HalfOpenAudioPlayerLayout.this.beingAnimation || progress <= 0.0f || progress >= 1.0f) {
                    return;
                }
                HalfOpenAudioPlayerLayout.this.setBeingAnimation(true);
            }

            @Override
            public void onTransitionCompleted(MotionLayout motionLayout, int currentId) {
                com.transsion.audio.a.c("onTransitionCompleted progress=" + (motionLayout != null ? Float.valueOf(motionLayout.getProgress()) : null));
                if (HalfOpenAudioPlayerLayout.this.hasBeenRollback) {
                    if (y45.c(motionLayout != null ? Float.valueOf(motionLayout.getProgress()) : null, 0.0f)) {
                        Log.i(HalfOpenAudioPlayerLayout.this.getTAG(), "scrollGestures onTransitionComplete");
                        HalfOpenAudioPlayerLayout.this.setBeingAnimation(false);
                    }
                }
                HalfOpenAudioPlayerLayout.this.makeMotionLayoutChildAlpha1();
            }

            @Override
            public void onTransitionStarted(MotionLayout motionLayout, int startId, int endId) {
            }

            @Override
            public void onTransitionTrigger(MotionLayout motionLayout, int triggerId, boolean positive, float progress) {
            }
        });
        LiveEventBus.MyMutableLiveData myMutableLiveDataD = LiveEventBus.b().d("change_audio_cover");
        y45.h(context, "null cannot be cast to non-null type com.transsion.audio.activities.AudioPlayerActivity");
        AudioPlayerActivity audioPlayerActivity = (AudioPlayerActivity) context;
        myMutableLiveDataD.observe(audioPlayerActivity, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.loadAudioAlbums();
            }
        });
        LiveEventBus.b().d("audio_switch_repeat_mode").observe(audioPlayerActivity, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                HalfOpenAudioPlayerLayout.initView$lambda$9(this.a, obj);
            }
        });
        if (Build.VERSION.SDK_INT >= 30) {
            setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() {
                @Override
                public final WindowInsets onApplyWindowInsets(View view28, WindowInsets windowInsets) {
                    return HalfOpenAudioPlayerLayout.initView$lambda$10(this.a, context, view28, windowInsets);
                }
            });
        }
    }

    public static final WindowInsets initView$lambda$10(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, Context context, View view, WindowInsets windowInsets) {
        y45.j(view, "v");
        y45.j(windowInsets, "insets");
        halfOpenAudioPlayerLayout.mSafeInsetBottom = windowInsets.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom;
        Guideline guideline = halfOpenAudioPlayerLayout.mBtmLine;
        if (guideline == null) {
            y45.B("mBtmLine");
            guideline = null;
        }
        guideline.setGuidelineEnd(halfOpenAudioPlayerLayout.mSafeInsetBottom + com.transsion.audio.a.b(context, 18.0f));
        return view.onApplyWindowInsets(windowInsets);
    }

    public static final void initView$lambda$6(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, View view) {
        if (oa1.d()) {
            return;
        }
        ImageView imageView = halfOpenAudioPlayerLayout.mVolumeIcon;
        SeekBar seekBar = null;
        if (imageView == null) {
            y45.B("mVolumeIcon");
            imageView = null;
        }
        ImageView imageView2 = halfOpenAudioPlayerLayout.mVolumeIv;
        if (imageView2 == null) {
            y45.B("mVolumeIv");
            imageView2 = null;
        }
        SeekBar seekBar2 = halfOpenAudioPlayerLayout.mVolumeSeekBar;
        if (seekBar2 == null) {
            y45.B("mVolumeSeekBar");
        } else {
            seekBar = seekBar2;
        }
        HalfOpenAudioAnimotionHelper.showVolumeWithAnimotion(imageView, imageView2, seekBar, true);
        ThreadUtils.o().postDelayed(halfOpenAudioPlayerLayout.hideVolBarRunnable, 2000L);
    }

    public static final boolean initView$lambda$7(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, View view, MotionEvent motionEvent) {
        y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
        if (motionEvent.getAction() != 0) {
            return false;
        }
        halfOpenAudioPlayerLayout.getParent().requestDisallowInterceptTouchEvent(true);
        return false;
    }

    public static final void initView$lambda$9(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, Object obj) {
        PlayAudioListData playAudioListData = halfOpenAudioPlayerLayout.playListData;
        if (playAudioListData == null) {
            y45.B("playListData");
            playAudioListData = null;
        }
        ArrayList<AudioItem> playList = playAudioListData.getPlayList();
        y45.i(playList, "getPlayList(...)");
        halfOpenAudioPlayerLayout.refreshPlayList(playList);
    }

    private final boolean isNeedShowVisualizerView() {
        Context context = getContext();
        y45.h(context, "null cannot be cast to non-null type com.transsion.audio.activities.AudioPlayerActivity");
        if (((AudioPlayerActivity) context).l1()) {
            woc wocVar = this.mWindowOptions;
            if (wocVar != null && wocVar.g()) {
                return true;
            }
            woc wocVar2 = this.mWindowOptions;
            if (wocVar2 != null && wocVar2.h()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"CheckResult"})
    public final void loadAudioAlbums() {
        checkPlayList();
        mc7 mc7VarC = mc7.C(this.playList);
        Context context = getContext();
        y45.h(context, "null cannot be cast to non-null type com.transsion.playercommon.activities.BaseActivity");
        mc7 mc7VarG = mc7VarC.g(((BaseActivity) context).bindToLifecycle());
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return HalfOpenAudioPlayerLayout.loadAudioAlbums$lambda$18((List) obj);
            }
        };
        mc7 mc7VarM = mc7VarG.L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return HalfOpenAudioPlayerLayout.loadAudioAlbums$lambda$19(e74Var, obj);
            }
        }).d0(k29.c()).M(vb.a());
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return HalfOpenAudioPlayerLayout.loadAudioAlbums$lambda$20(this.b, (zfb) obj);
            }
        };
        mc7VarM.Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                e74Var2.invoke(obj);
            }
        });
    }

    public static final zfb loadAudioAlbums$lambda$18(List list) {
        y45.j(list, "it");
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            AudioItem audioItem = (AudioItem) obj;
            AudioAlbum audioAlbumD = ao.d.a().D(audioItem.id);
            if (audioAlbumD != null) {
                audioItem.albumPath = audioAlbumD.imgPath;
            } else {
                audioItem.albumPath = "null";
            }
            i = i2;
        }
        return zfb.a;
    }

    public static final zfb loadAudioAlbums$lambda$19(e74 e74Var, Object obj) {
        y45.j(obj, "p0");
        return (zfb) e74Var.invoke(obj);
    }

    public static final zfb loadAudioAlbums$lambda$20(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout, zfb zfbVar) {
        halfOpenAudioPlayerLayout.setCarousel();
        halfOpenAudioPlayerLayout.isInjectCover = true;
        return zfb.a;
    }

    public final void makeMotionLayoutChildAlpha1() {
        AudioPlayerItemView audioPlayerItemView = this.audioItemView1;
        AudioPlayerItemView audioPlayerItemView2 = null;
        if (audioPlayerItemView == null) {
            y45.B("audioItemView1");
            audioPlayerItemView = null;
        }
        audioPlayerItemView.setAlpha(1.0f);
        AudioPlayerItemView audioPlayerItemView3 = this.audioItemView2;
        if (audioPlayerItemView3 == null) {
            y45.B("audioItemView2");
            audioPlayerItemView3 = null;
        }
        audioPlayerItemView3.setAlpha(1.0f);
        AudioPlayerItemView audioPlayerItemView4 = this.audioItemView3;
        if (audioPlayerItemView4 == null) {
            y45.B("audioItemView3");
        } else {
            audioPlayerItemView2 = audioPlayerItemView4;
        }
        audioPlayerItemView2.setAlpha(1.0f);
        invalidate();
    }

    private final void markLrcView(boolean show) {
    }

    private final void pauseOrResumeAnim() {
        AudioPlayerItemView audioPlayerItemView = null;
        if (!this.mIsStart || getVisibility() != 0) {
            AudioPlayerItemView audioPlayerItemView2 = this.audioItemView2;
            if (audioPlayerItemView2 == null) {
                y45.B("audioItemView2");
                audioPlayerItemView2 = null;
            }
            if (audioPlayerItemView2.isRunningAlbumAnim()) {
                AudioPlayerItemView audioPlayerItemView3 = this.audioItemView2;
                if (audioPlayerItemView3 == null) {
                    y45.B("audioItemView2");
                } else {
                    audioPlayerItemView = audioPlayerItemView3;
                }
                audioPlayerItemView.pauseAlbumAnim();
                return;
            }
            return;
        }
        if (isAudioPlaying()) {
            AudioPlayerItemView audioPlayerItemView4 = this.audioItemView2;
            if (audioPlayerItemView4 == null) {
                y45.B("audioItemView2");
                audioPlayerItemView4 = null;
            }
            if (audioPlayerItemView4.isPauseAlbumAnim()) {
                AudioPlayerItemView audioPlayerItemView5 = this.audioItemView2;
                if (audioPlayerItemView5 == null) {
                    y45.B("audioItemView2");
                } else {
                    audioPlayerItemView = audioPlayerItemView5;
                }
                audioPlayerItemView.resumeAlbumAnim();
                return;
            }
            AudioPlayerItemView audioPlayerItemView6 = this.audioItemView2;
            if (audioPlayerItemView6 == null) {
                y45.B("audioItemView2");
            } else {
                audioPlayerItemView = audioPlayerItemView6;
            }
            audioPlayerItemView.startAlbumAnim();
        }
    }

    public final void playStatusChange(boolean isPlaying) {
        ImageView imageView = null;
        if (isPlaying) {
            ImageView imageView2 = this.btnPlay;
            if (imageView2 == null) {
                y45.B("btnPlay");
            } else {
                imageView = imageView2;
            }
            imageView.setImageResource(R.drawable.ic_audio_parse);
            return;
        }
        ImageView imageView3 = this.btnPlay;
        if (imageView3 == null) {
            y45.B("btnPlay");
        } else {
            imageView = imageView3;
        }
        imageView.setImageResource(R.drawable.ic_audio_play);
    }

    public final void refreshPlayList(ArrayList<AudioItem> arrayList) {
        if (!this.playList.isEmpty()) {
            this.playList.clear();
        }
        this.playList.addAll(arrayList);
        if (this.playList.isEmpty()) {
            return;
        }
        loadAudioAlbums();
    }

    public final void runVideoProgressUpdate() throws Throwable {
        long jR;
        LrcViewNew lrcViewNew = null;
        try {
            jR = this.playManager.R();
            try {
                long jQ = this.playManager.Q();
                Handler handlerO = ThreadUtils.o();
                handlerO.removeCallbacks(this.progressUpdateRunnable);
                handlerO.postDelayed(this.progressUpdateRunnable, 500L);
                if (jR <= 0) {
                    onProgressUpdateError(jQ, jR, 0L);
                    return;
                }
                updateProgress(jQ, jR);
                if (this.mIsLrcMode && this.playManager.s0()) {
                    LrcViewNew lrcViewNew2 = this.mLrcView;
                    if (lrcViewNew2 == null) {
                        y45.B("mLrcView");
                    } else {
                        lrcViewNew = lrcViewNew2;
                    }
                    lrcViewNew.updateTime(jQ);
                }
            } catch (Throwable th) {
                th = th;
                Handler handlerO2 = ThreadUtils.o();
                handlerO2.removeCallbacks(this.progressUpdateRunnable);
                handlerO2.postDelayed(this.progressUpdateRunnable, 500L);
                if (jR > 0) {
                    updateProgress(0L, jR);
                    if (this.mIsLrcMode && this.playManager.s0()) {
                        LrcViewNew lrcViewNew3 = this.mLrcView;
                        if (lrcViewNew3 == null) {
                            y45.B("mLrcView");
                        } else {
                            lrcViewNew = lrcViewNew3;
                        }
                        lrcViewNew.updateTime(0L);
                    }
                } else {
                    onProgressUpdateError(0L, jR, 0L);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            jR = 0;
        }
    }

    private final void searchLyrics() {
        LrcSearcher lrcSearcher = new LrcSearcher();
        lrcSearcher.F(false);
        lrcSearcher.u();
        lrcSearcher.E(this.mCurrentMediaItem);
        this.mIsLoadingLyric = true;
        updateLoadingView();
        updateEmptyView(false);
        LrcViewNew lrcViewNew = this.mLrcView;
        if (lrcViewNew == null) {
            y45.B("mLrcView");
            lrcViewNew = null;
        }
        lrcViewNew.onLrcLoaded(new ArrayList());
        lrcSearcher.C(new LrcSearcher.i() {
            @Override
            public void onRemoteSearchBegin() {
                super.onRemoteSearchBegin();
            }

            @Override
            public void searchFailed(AudioItem audioItem) {
                LrcViewNew lrcViewNew2 = HalfOpenAudioPlayerLayout.this.mLrcView;
                if (lrcViewNew2 == null) {
                    y45.B("mLrcView");
                    lrcViewNew2 = null;
                }
                lrcViewNew2.onLrcLoaded(new ArrayList());
                HalfOpenAudioPlayerLayout.this.mIsLoadingLyric = false;
                if (HalfOpenAudioPlayerLayout.this.mIsLrcMode) {
                    HalfOpenAudioPlayerLayout.this.updateEmptyView(true);
                    HalfOpenAudioPlayerLayout.this.updateLoadingView();
                }
            }

            @Override
            public void searchSuccess(List<LrcRow> lrcRows, AudioItem audioItem) {
                LrcViewNew lrcViewNew2 = HalfOpenAudioPlayerLayout.this.mLrcView;
                LrcViewNew lrcViewNew3 = null;
                if (lrcViewNew2 == null) {
                    y45.B("mLrcView");
                    lrcViewNew2 = null;
                }
                lrcViewNew2.onLrcLoaded(lrcRows);
                HalfOpenAudioPlayerLayout.this.mIsLoadingLyric = false;
                if (HalfOpenAudioPlayerLayout.this.mIsLrcMode) {
                    HalfOpenAudioPlayerLayout.this.updateEmptyView(false);
                    HalfOpenAudioPlayerLayout.this.updateLoadingView();
                    LrcViewNew lrcViewNew4 = HalfOpenAudioPlayerLayout.this.mLrcView;
                    if (lrcViewNew4 == null) {
                        y45.B("mLrcView");
                    } else {
                        lrcViewNew3 = lrcViewNew4;
                    }
                    lrcViewNew3.updateTime(HalfOpenAudioPlayerLayout.this.playManager.Q(), false);
                }
            }
        });
    }

    public final void setBeingAnimation(boolean isAnimation) {
        Log.i(getTAG(), "scrollGestures beingAnimation=" + isAnimation);
        this.beingAnimation = isAnimation;
        AudioMotionLayout audioMotionLayout = this.audioMotionLayout;
        if (audioMotionLayout == null) {
            y45.B("audioMotionLayout");
            audioMotionLayout = null;
        }
        audioMotionLayout.setBeingAnimated(isAnimation);
    }

    private final void setCarousel() {
        if (this.playList.isEmpty()) {
            Log.d(getTAG(), "setCarousel found playList is empty");
        }
        AudioCarousel audioCarousel = this.carousel;
        AudioCarousel audioCarousel2 = null;
        if (audioCarousel == null) {
            y45.B("carousel");
            audioCarousel = null;
        }
        audioCarousel.setInfiniteCarousel(this.playList.size() > 1);
        AudioCarousel audioCarousel3 = this.carousel;
        if (audioCarousel3 == null) {
            y45.B("carousel");
        } else {
            audioCarousel2 = audioCarousel3;
        }
        audioCarousel2.setAdapter(this.audioCarouselAdapter);
        post(new Runnable() {
            @Override
            public final void run() {
                HalfOpenAudioPlayerLayout.setCarousel$lambda$14(this.b);
            }
        });
    }

    public static final void setCarousel$lambda$14(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout) {
        AudioItem audioItemP = halfOpenAudioPlayerLayout.playManager.P();
        Iterator<AudioItem> it = halfOpenAudioPlayerLayout.playList.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            AudioItem next = it.next();
            if (audioItemP != null && next.id == audioItemP.id) {
                break;
            } else {
                i++;
            }
        }
        AudioCarousel audioCarousel = halfOpenAudioPlayerLayout.carousel;
        if (audioCarousel == null) {
            y45.B("carousel");
            audioCarousel = null;
        }
        audioCarousel.jumpToIndex(i);
    }

    private final void setCurrentOffset(int offset) {
        float f = offset;
        if (this.mCurrentOffset != f) {
            TaskExecutor.c(new Runnable() {
                @Override
                public final void run() {
                    HalfOpenAudioPlayerLayout.setCurrentOffset$lambda$24(this.b);
                }
            });
        }
        this.mCurrentOffset = f;
        LrcViewNew lrcViewNew = this.mLrcView;
        if (lrcViewNew == null) {
            y45.B("mLrcView");
            lrcViewNew = null;
        }
        lrcViewNew.setDelayMs((int) this.mCurrentOffset);
    }

    public static final void setCurrentOffset$lambda$24(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout) {
        AudioItem audioItem = halfOpenAudioPlayerLayout.mCurrentMediaItem;
        if (audioItem != null) {
            ao.d.a().q0(audioItem.id, audioItem.data, (int) halfOpenAudioPlayerLayout.mCurrentOffset);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0040  */
    private final void switchToLrcView(boolean isLrcMode) {
        int i;
        this.mIsLrcMode = isLrcMode;
        Repository.INSTANCE.isLrcMode = isLrcMode;
        AppCompatCheckedTextView appCompatCheckedTextView = this.mSwitchView;
        LrcViewNew lrcViewNew = null;
        if (appCompatCheckedTextView == null) {
            y45.B("mSwitchView");
            appCompatCheckedTextView = null;
        }
        appCompatCheckedTextView.setChecked(this.mIsLrcMode);
        LrcViewNew lrcViewNew2 = this.mLrcView;
        if (lrcViewNew2 == null) {
            y45.B("mLrcView");
            lrcViewNew2 = null;
        }
        lrcViewNew2.setVisibility(isLrcMode ? 0 : 4);
        View view = this.mEmptyView;
        if (view != null) {
            if (isLrcMode) {
                LrcViewNew lrcViewNew3 = this.mLrcView;
                if (lrcViewNew3 == null) {
                    y45.B("mLrcView");
                    lrcViewNew3 = null;
                }
                if (lrcViewNew3.hasLrc()) {
                    i = 4;
                } else {
                    i = 0;
                }
            } else {
                i = 4;
            }
            view.setVisibility(i);
        }
        boolean z = !isNeedShowVisualizerView() || isLrcMode;
        MagicWaveView magicWaveView = this.audioVisualizerView;
        if (magicWaveView == null) {
            y45.B("audioVisualizerView");
            magicWaveView = null;
        }
        magicWaveView.setVisibility(z ? 4 : 0);
        View view2 = this.emptyPermission;
        if (view2 == null) {
            y45.B("emptyPermission");
            view2 = null;
        }
        view2.setVisibility((isLrcMode || isNeedShowVisualizerView()) ? 8 : 0);
        if (isLrcMode) {
            LrcViewNew lrcViewNew4 = this.mLrcView;
            if (lrcViewNew4 == null) {
                y45.B("mLrcView");
            } else {
                lrcViewNew = lrcViewNew4;
            }
            lrcViewNew.post(new Runnable() {
                @Override
                public final void run() {
                    HalfOpenAudioPlayerLayout.switchToLrcView$lambda$29(this.b);
                }
            });
        }
    }

    public static final void switchToLrcView$lambda$29(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout) {
        LrcViewNew lrcViewNew = halfOpenAudioPlayerLayout.mLrcView;
        if (lrcViewNew == null) {
            y45.B("mLrcView");
            lrcViewNew = null;
        }
        lrcViewNew.updateTime(halfOpenAudioPlayerLayout.playManager.Q(), false);
        halfOpenAudioPlayerLayout.searchLyrics();
    }

    private final void updateProgress(long position, long duration) {
        OSSeekbar oSSeekbar = null;
        if (this.mDuration != duration) {
            this.mDuration = duration;
            TextView textView = this.mTvTotalProgress;
            if (textView == null) {
                y45.B("mTvTotalProgress");
                textView = null;
            }
            textView.setText(wna.c(duration));
        }
        long j = this.mDuration;
        if (position > j) {
            position = j;
        }
        int iC = s86.c((((long) 100) * position) / duration);
        if (this.mTracking) {
            return;
        }
        TextView textView2 = this.mTvCurrentProgress;
        if (textView2 == null) {
            y45.B("mTvCurrentProgress");
            textView2 = null;
        }
        textView2.setText(wna.d(position));
        OSSeekbar oSSeekbar2 = this.mBottomSeekBar;
        if (oSSeekbar2 == null) {
            y45.B("mBottomSeekBar");
        } else {
            oSSeekbar = oSSeekbar2;
        }
        oSSeekbar.setProgress(iC * 1.0f);
    }

    public final void updateVolumeSeekBar() {
        AudioOpStatus audioOpStatus = this.mAudioOpStatus;
        AudioOpStatus audioOpStatus2 = null;
        if (audioOpStatus == null) {
            y45.B("mAudioOpStatus");
            audioOpStatus = null;
        }
        aw6.e(audioOpStatus);
        SeekBar seekBar = this.mVolumeSeekBar;
        if (seekBar == null) {
            y45.B("mVolumeSeekBar");
            seekBar = null;
        }
        AudioOpStatus audioOpStatus3 = this.mAudioOpStatus;
        if (audioOpStatus3 == null) {
            y45.B("mAudioOpStatus");
            audioOpStatus3 = null;
        }
        seekBar.setProgress((int) (audioOpStatus3.mAudioVolume * 100), true);
        ImageView imageView = this.mVolumeIcon;
        if (imageView == null) {
            y45.B("mVolumeIcon");
            imageView = null;
        }
        AudioOpStatus audioOpStatus4 = this.mAudioOpStatus;
        if (audioOpStatus4 == null) {
            y45.B("mAudioOpStatus");
        } else {
            audioOpStatus2 = audioOpStatus4;
        }
        imageView.setImageResource(audioOpStatus2.mMusicVolume != 0 ? R.drawable.ic_audio_flat_volume : R.drawable.ic_volume_off);
    }

    public void adaptLayout(woc windowOptions) {
        y45.j(windowOptions, "windowOptions");
        this.mWindowOptions = windowOptions;
        AppCompatCheckedTextView appCompatCheckedTextView = this.mSwitchView;
        View view = null;
        if (appCompatCheckedTextView == null) {
            y45.B("mSwitchView");
            appCompatCheckedTextView = null;
        }
        ViewGroup.LayoutParams layoutParams = appCompatCheckedTextView.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        woc wocVar = this.mWindowOptions;
        Integer numValueOf = wocVar != null ? Integer.valueOf(wocVar.a) : null;
        if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 0)) {
            Context context = getContext();
            y45.i(context, "getContext(...)");
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = com.transsion.audio.a.b(context, 20.0f);
            AppCompatCheckedTextView appCompatCheckedTextView2 = this.mSwitchView;
            if (appCompatCheckedTextView2 == null) {
                y45.B("mSwitchView");
                appCompatCheckedTextView2 = null;
            }
            appCompatCheckedTextView2.setLayoutParams(layoutParams2);
            Guideline guideline = this.topLine;
            if (guideline == null) {
                y45.B("topLine");
                guideline = null;
            }
            Context context2 = getContext();
            y45.i(context2, "getContext(...)");
            guideline.setGuidelineBegin(com.transsion.audio.a.b(context2, 100.0f));
            Guideline guideline2 = this.startMarginLine;
            if (guideline2 == null) {
                y45.B("startMarginLine");
                guideline2 = null;
            }
            guideline2.setGuidelinePercent(0.033f);
            Guideline guideline3 = this.endMarginLine;
            if (guideline3 == null) {
                y45.B("endMarginLine");
                guideline3 = null;
            }
            guideline3.setGuidelinePercent(0.967f);
            Guideline guideline4 = this.mBtmLine;
            if (guideline4 == null) {
                y45.B("mBtmLine");
                guideline4 = null;
            }
            Context context3 = getContext();
            y45.i(context3, "getContext(...)");
            guideline4.setGuidelineEnd(com.transsion.audio.a.b(context3, 60.0f));
        } else if ((numValueOf != null && numValueOf.intValue() == 3) || (numValueOf != null && numValueOf.intValue() == 2)) {
            Context context4 = getContext();
            y45.i(context4, "getContext(...)");
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = com.transsion.audio.a.b(context4, 5.0f);
            AppCompatCheckedTextView appCompatCheckedTextView3 = this.mSwitchView;
            if (appCompatCheckedTextView3 == null) {
                y45.B("mSwitchView");
                appCompatCheckedTextView3 = null;
            }
            appCompatCheckedTextView3.setLayoutParams(layoutParams2);
            Guideline guideline5 = this.topLine;
            if (guideline5 == null) {
                y45.B("topLine");
                guideline5 = null;
            }
            Context context5 = getContext();
            y45.i(context5, "getContext(...)");
            guideline5.setGuidelineBegin(com.transsion.audio.a.b(context5, 64.0f));
            Guideline guideline6 = this.startMarginLine;
            if (guideline6 == null) {
                y45.B("startMarginLine");
                guideline6 = null;
            }
            guideline6.setGuidelinePercent(0.136f);
            Guideline guideline7 = this.endMarginLine;
            if (guideline7 == null) {
                y45.B("endMarginLine");
                guideline7 = null;
            }
            guideline7.setGuidelinePercent(0.864f);
            Guideline guideline8 = this.mBtmLine;
            if (guideline8 == null) {
                y45.B("mBtmLine");
                guideline8 = null;
            }
            int i = this.mSafeInsetBottom;
            Context context6 = getContext();
            y45.i(context6, "getContext(...)");
            guideline8.setGuidelineEnd(i + com.transsion.audio.a.b(context6, 18.0f));
        }
        View view2 = this.emptyPermission;
        if (view2 == null) {
            y45.B("emptyPermission");
        } else {
            view = view2;
        }
        view.setVisibility(8);
        postDelayed(new Runnable() {
            @Override
            public final void run() {
                HalfOpenAudioPlayerLayout.adaptLayout$lambda$30(this.b);
            }
        }, 200L);
    }

    public String getTAG() {
        return this.TAG;
    }

    public final boolean isAudioPlaying() {
        return MusicPlayManager.S().b0() == 3;
    }

    @Override
    public void onAttachedToWindow() throws Throwable {
        super.onAttachedToWindow();
        this.playManager.f1(this.playerListener);
        runVideoProgressUpdate();
    }

    public final void onCallStartOrStop(boolean start) {
        this.mIsStart = start;
        if (start && getVisibility() == 0) {
            runVideoProgressUpdate();
        } else {
            ThreadUtils.o().removeCallbacks(this.progressUpdateRunnable);
        }
        pauseOrResumeAnim();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.playManager.F1(this.playerListener);
        ThreadUtils.o().removeCallbacks(this.progressUpdateRunnable);
        removeCallbacks(this.errorNextRunnable);
        AudioPlayerItemView audioPlayerItemView = this.audioItemView2;
        PlayListModel playListModel = null;
        if (audioPlayerItemView == null) {
            y45.B("audioItemView2");
            audioPlayerItemView = null;
        }
        audioPlayerItemView.cancelAlbumAnim();
        LiveEventBus.b().d("change_audio_cover").c();
        LiveEventBus.b().d("audio_switch_repeat_mode").c();
        PlayListModel playListModel2 = this.audioModel;
        if (playListModel2 == null) {
            y45.B("audioModel");
        } else {
            playListModel = playListModel2;
        }
        MutableLiveData mutableLiveData = playListModel.o;
        if (mutableLiveData != null) {
            Context context = getContext();
            y45.h(context, "null cannot be cast to non-null type com.transsion.audio.activities.AudioPlayerActivity");
            mutableLiveData.removeObservers((AudioPlayerActivity) context);
        }
    }

    public void onProgressUpdateError(long position, long duration, long bufferedPosition) {
        Log.w(getTAG(), "onProgressUpdateError:" + position + ",duration:" + duration + ", bufferedPosition:" + bufferedPosition);
        OSSeekbar oSSeekbar = this.mBottomSeekBar;
        TextView textView = null;
        if (oSSeekbar == null) {
            y45.B("mBottomSeekBar");
            oSSeekbar = null;
        }
        oSSeekbar.setProgress(0.0f);
        this.mDuration = 0L;
        TextView textView2 = this.mTvCurrentProgress;
        if (textView2 == null) {
            y45.B("mTvCurrentProgress");
            textView2 = null;
        }
        textView2.setText(wna.c(0L));
        TextView textView3 = this.mTvTotalProgress;
        if (textView3 == null) {
            y45.B("mTvTotalProgress");
        } else {
            textView = textView3;
        }
        textView.setText(wna.c(0L));
    }

    public final void onResume() {
        switchToLrcView(this.mIsLrcMode);
        if (this.mIsLrcMode && getVisibility() == 0) {
            markLrcView(true);
        }
    }

    @Override
    public void onVisibilityChanged(View changedView, int visibility) {
        y45.j(changedView, "changedView");
        super.onVisibilityChanged(changedView, visibility);
        if (changedView instanceof HalfOpenAudioPlayerLayout) {
            Log.d(getTAG(), "onVisibilityChanged " + visibility);
            pauseOrResumeAnim();
        }
    }

    public void onVolumeChange() {
        updateVolumeSeekBar();
    }

    public final void resetHalfOpenPlayerCurrentMusicAlbum() {
        AudioMotionLayout audioMotionLayout = this.audioMotionLayout;
        if (audioMotionLayout == null) {
            y45.B("audioMotionLayout");
            audioMotionLayout = null;
        }
        ((AudioPlayerItemView) audioMotionLayout.findViewById(R.id.audioItem2)).resetCover();
    }

    @Override
    public void setAlpha(float alpha) {
        super.setAlpha(alpha);
        Log.d(getTAG(), "setAlpha " + alpha);
    }

    @Override
    public void setVisibility(int visibility) {
        if (visibility != getVisibility()) {
            if (visibility == 0) {
                runVideoProgressUpdate();
            } else {
                ThreadUtils.o().removeCallbacks(this.progressUpdateRunnable);
            }
        }
        super.setVisibility(visibility);
        Log.d(getTAG(), "setVisibility " + visibility);
    }

    public void setVolume(boolean isUp) {
        AudioOpStatus audioOpStatus = this.mAudioOpStatus;
        SeekBar seekBar = null;
        if (audioOpStatus == null) {
            y45.B("mAudioOpStatus");
            audioOpStatus = null;
        }
        float fD = aw6.d(audioOpStatus, isUp, this.playManager);
        if (oa1.d()) {
            ThreadUtils.o().removeCallbacks(this.hideVolBarRunnable);
            updateVolumeSeekBar();
            return;
        }
        showVolume(true);
        int i = (int) (fD * 100);
        SeekBar seekBar2 = this.mVolumeSeekBar;
        if (seekBar2 == null) {
            y45.B("mVolumeSeekBar");
        } else {
            seekBar = seekBar2;
        }
        seekBar.setProgress(i, true);
        ThreadUtils.o().removeCallbacks(this.hideVolBarRunnable);
        ThreadUtils.o().postDelayed(this.hideVolBarRunnable, 2000L);
        wz5.N("gesture_volume");
    }

    public final void showVolume(boolean visible) {
        SeekBar seekBar = null;
        if (visible && oa1.d()) {
            ThreadUtils.o().removeCallbacks(this.hideVolBarRunnable);
            ImageView imageView = this.mVolumeIv;
            if (imageView == null) {
                y45.B("mVolumeIv");
                imageView = null;
            }
            imageView.setVisibility(0);
            SeekBar seekBar2 = this.mVolumeSeekBar;
            if (seekBar2 == null) {
                y45.B("mVolumeSeekBar");
            } else {
                seekBar = seekBar2;
            }
            seekBar.setVisibility(8);
            return;
        }
        if (visible) {
            SeekBar seekBar3 = this.mVolumeSeekBar;
            if (seekBar3 == null) {
                y45.B("mVolumeSeekBar");
                seekBar3 = null;
            }
            if (seekBar3.getVisibility() != 0) {
                ImageView imageView2 = this.mVolumeIv;
                if (imageView2 == null) {
                    y45.B("mVolumeIv");
                    imageView2 = null;
                }
                imageView2.setVisibility(8);
                SeekBar seekBar4 = this.mVolumeSeekBar;
                if (seekBar4 == null) {
                    y45.B("mVolumeSeekBar");
                    seekBar4 = null;
                }
                seekBar4.setVisibility(0);
                ImageView imageView3 = this.mVolumeIcon;
                if (imageView3 == null) {
                    y45.B("mVolumeIcon");
                    imageView3 = null;
                }
                ImageView imageView4 = this.mVolumeIv;
                if (imageView4 == null) {
                    y45.B("mVolumeIv");
                    imageView4 = null;
                }
                SeekBar seekBar5 = this.mVolumeSeekBar;
                if (seekBar5 == null) {
                    y45.B("mVolumeSeekBar");
                } else {
                    seekBar = seekBar5;
                }
                HalfOpenAudioAnimotionHelper.showVolumeWithAnimotion(imageView3, imageView4, seekBar, true);
                return;
            }
            return;
        }
        SeekBar seekBar6 = this.mVolumeSeekBar;
        if (seekBar6 == null) {
            y45.B("mVolumeSeekBar");
            seekBar6 = null;
        }
        if (seekBar6.getVisibility() != 8) {
            ImageView imageView5 = this.mVolumeIv;
            if (imageView5 == null) {
                y45.B("mVolumeIv");
                imageView5 = null;
            }
            imageView5.setVisibility(0);
            SeekBar seekBar7 = this.mVolumeSeekBar;
            if (seekBar7 == null) {
                y45.B("mVolumeSeekBar");
                seekBar7 = null;
            }
            seekBar7.setVisibility(8);
            ImageView imageView6 = this.mVolumeIcon;
            if (imageView6 == null) {
                y45.B("mVolumeIcon");
                imageView6 = null;
            }
            ImageView imageView7 = this.mVolumeIv;
            if (imageView7 == null) {
                y45.B("mVolumeIv");
                imageView7 = null;
            }
            SeekBar seekBar8 = this.mVolumeSeekBar;
            if (seekBar8 == null) {
                y45.B("mVolumeSeekBar");
            } else {
                seekBar = seekBar8;
            }
            HalfOpenAudioAnimotionHelper.showVolumeWithAnimotion(imageView6, imageView7, seekBar, false);
        }
    }

    public void updateEmptyView(boolean isEmpty) {
        if (this.mEmptyView == null) {
            View view = this.rootView;
            if (view == null) {
                y45.B("rootView");
                view = null;
            }
            View viewFindViewById = view.findViewById(R.id.lyrics_empty);
            y45.h(viewFindViewById, "null cannot be cast to non-null type android.view.ViewStub");
            this.mEmptyView = ((ViewStub) viewFindViewById).inflate();
        }
        View view2 = this.mEmptyView;
        if (view2 != null) {
            if (view2 != null) {
                view2.setVisibility(isEmpty ? 0 : 8);
            }
            View view3 = this.mEmptyView;
            if (view3 != null) {
            }
            View view4 = this.mEmptyView;
            TextView textView = view4 != null ? (TextView) view4.findViewById(R.id.tv_remote_lyric) : null;
            if (pp3.z || textView == null) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    public void updateLoadingView() {
        if (this.mLoadingView == null) {
            View view = this.rootView;
            if (view == null) {
                y45.B("rootView");
                view = null;
            }
            View viewFindViewById = view.findViewById(R.id.lyrics_loading);
            y45.h(viewFindViewById, "null cannot be cast to non-null type android.view.ViewStub");
            this.mLoadingView = ((ViewStub) viewFindViewById).inflate();
        }
        View view2 = this.mLoadingView;
        if (view2 == null || view2 == null) {
            return;
        }
        view2.setVisibility((this.mIsLoadingLyric && this.mIsLrcMode) ? 0 : 8);
    }

    public final void updatePermission() {
        boolean z = !isNeedShowVisualizerView() || this.mIsLrcMode;
        MagicWaveView magicWaveView = this.audioVisualizerView;
        View view = null;
        if (magicWaveView == null) {
            y45.B("audioVisualizerView");
            magicWaveView = null;
        }
        magicWaveView.setVisibility(z ? 4 : 0);
        View view2 = this.emptyPermission;
        if (view2 == null) {
            y45.B("emptyPermission");
        } else {
            view = view2;
        }
        view.setVisibility((this.mIsLrcMode || isNeedShowVisualizerView()) ? 8 : 0);
    }

    public final void updateUI(AudioItem audioItem) {
        TextView textView = this.mTvTitle;
        TextView textView2 = null;
        if (textView == null) {
            y45.B("mTvTitle");
            textView = null;
        }
        com.transsion.audio.a.e(textView, audioItem);
        TextView textView3 = this.mArtistName;
        if (textView3 == null) {
            y45.B("mArtistName");
        } else {
            textView2 = textView3;
        }
        com.transsion.audio.a.d(textView2, audioItem);
        this.mCurrentMediaItem = audioItem;
        if (this.mIsLrcMode) {
            searchLyrics();
        }
    }
}
