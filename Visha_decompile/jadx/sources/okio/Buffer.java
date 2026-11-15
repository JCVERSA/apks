package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.media3.muxer.MuxerUtil;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.socket.pkgdata.SocketData;
import defpackage.fi;
import defpackage.qv0;
import defpackage.y45;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javassist.compiler.ast.MethodDecl;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import okhttp3.internal.connection.RealConnection;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002Î\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001d\u0010\u0019J\u000f\u0010\u001e\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001e\u0010\u0019J\u000f\u0010\u001f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0001H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0007H\u0016¢\u0006\u0004\b'\u0010(J+\u0010+\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u001a2\b\b\u0002\u0010*\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b+\u0010,J'\u0010+\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u00002\b\b\u0002\u0010*\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b+\u0010-J\u001f\u0010+\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u00002\b\b\u0002\u0010*\u001a\u00020\t¢\u0006\u0004\b+\u0010.J!\u0010/\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u001a2\b\b\u0002\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b/\u00100J\u0015\u0010\u000e\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u00101J\u001d\u0010\u000e\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000e\u00102J\r\u00103\u001a\u00020\t¢\u0006\u0004\b3\u00104J\u000f\u00106\u001a\u000205H\u0016¢\u0006\u0004\b6\u00107J\u0018\u0010;\u001a\u0002052\u0006\u00108\u001a\u00020\tH\u0087\u0002¢\u0006\u0004\b9\u0010:J\u000f\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b=\u0010>J\u000f\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\tH\u0016¢\u0006\u0004\bB\u00104J\u000f\u0010C\u001a\u00020<H\u0016¢\u0006\u0004\bC\u0010>J\u000f\u0010D\u001a\u00020?H\u0016¢\u0006\u0004\bD\u0010AJ\u000f\u0010E\u001a\u00020\tH\u0016¢\u0006\u0004\bE\u00104J\u000f\u0010F\u001a\u00020\tH\u0016¢\u0006\u0004\bF\u00104J\u000f\u0010G\u001a\u00020\tH\u0016¢\u0006\u0004\bG\u00104J\u000f\u0010H\u001a\u00020\u0012H\u0016¢\u0006\u0004\bH\u0010IJ\u0017\u0010H\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\bH\u0010JJ\u0017\u0010M\u001a\u00020?2\u0006\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bM\u0010NJ\u001f\u0010P\u001a\u00020\r2\u0006\u0010O\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\bP\u0010QJ\u0017\u0010S\u001a\u00020\t2\u0006\u0010O\u001a\u00020RH\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\u0010H\u0016¢\u0006\u0004\bU\u0010VJ\u0017\u0010U\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\bU\u0010WJ\u0017\u0010Z\u001a\u00020\u00102\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bZ\u0010[J\u001f\u0010Z\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bZ\u0010\\J\u0011\u0010]\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b]\u0010VJ\u000f\u0010^\u001a\u00020\u0010H\u0016¢\u0006\u0004\b^\u0010VJ\u0017\u0010^\u001a\u00020\u00102\u0006\u0010_\u001a\u00020\tH\u0016¢\u0006\u0004\b^\u0010WJ\u000f\u0010`\u001a\u00020?H\u0016¢\u0006\u0004\b`\u0010AJ\u000f\u0010b\u001a\u00020aH\u0016¢\u0006\u0004\bb\u0010cJ\u0017\u0010b\u001a\u00020a2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\bb\u0010dJ\u0017\u0010e\u001a\u00020?2\u0006\u0010O\u001a\u00020aH\u0016¢\u0006\u0004\be\u0010fJ\u0017\u0010P\u001a\u00020\r2\u0006\u0010O\u001a\u00020aH\u0016¢\u0006\u0004\bP\u0010gJ'\u0010e\u001a\u00020?2\u0006\u0010O\u001a\u00020a2\u0006\u0010*\u001a\u00020?2\u0006\u0010\n\u001a\u00020?H\u0016¢\u0006\u0004\be\u0010hJ\u0017\u0010e\u001a\u00020?2\u0006\u0010O\u001a\u00020iH\u0016¢\u0006\u0004\be\u0010jJ\r\u0010k\u001a\u00020\r¢\u0006\u0004\bk\u0010\u0006J\u0017\u0010l\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\bl\u0010\"J\u0017\u0010n\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u0012H\u0016¢\u0006\u0004\bn\u0010oJ'\u0010n\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u00122\u0006\u0010*\u001a\u00020?2\u0006\u0010\n\u001a\u00020?H\u0016¢\u0006\u0004\bn\u0010pJ\u0017\u0010r\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u0010H\u0016¢\u0006\u0004\br\u0010sJ'\u0010r\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u00102\u0006\u0010t\u001a\u00020?2\u0006\u0010u\u001a\u00020?H\u0016¢\u0006\u0004\br\u0010vJ\u0017\u0010x\u001a\u00020\u00002\u0006\u0010w\u001a\u00020?H\u0016¢\u0006\u0004\bx\u0010yJ\u001f\u0010z\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u00102\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bz\u0010{J/\u0010z\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u00102\u0006\u0010t\u001a\u00020?2\u0006\u0010u\u001a\u00020?2\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bz\u0010|J\u0017\u0010n\u001a\u00020\u00002\u0006\u0010}\u001a\u00020aH\u0016¢\u0006\u0004\bn\u0010~J'\u0010n\u001a\u00020\u00002\u0006\u0010}\u001a\u00020a2\u0006\u0010*\u001a\u00020?2\u0006\u0010\n\u001a\u00020?H\u0016¢\u0006\u0004\bn\u0010\u007fJ\u0017\u0010n\u001a\u00020?2\u0006\u0010}\u001a\u00020iH\u0016¢\u0006\u0004\bn\u0010jJ\u001b\u0010\u0081\u0001\u001a\u00020\t2\u0007\u0010}\u001a\u00030\u0080\u0001H\u0016¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J!\u0010n\u001a\u00020\u00002\u0007\u0010}\u001a\u00030\u0080\u00012\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0005\bn\u0010\u0083\u0001J\u001a\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b\u0085\u0001\u0010yJ\u001a\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b\u0087\u0001\u0010yJ\u001a\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b\u0088\u0001\u0010yJ\u001a\u0010\u008a\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b\u008a\u0001\u0010yJ\u001a\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b\u008b\u0001\u0010yJ\u001b\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001J\u001b\u0010\u008f\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u008f\u0001\u0010\u008e\u0001J\u001b\u0010\u0090\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u0090\u0001\u0010\u008e\u0001J\u001b\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u0091\u0001\u0010\u008e\u0001J\u001c\u0010\u0096\u0001\u001a\u00030\u0093\u00012\u0007\u0010\u0092\u0001\u001a\u00020?H\u0000¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001J\u001f\u0010n\u001a\u00020\r2\u0006\u0010}\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\bn\u0010QJ \u0010e\u001a\u00020\t2\u0006\u0010O\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0005\be\u0010\u0097\u0001J\u001b\u0010\u0098\u0001\u001a\u00020\t2\u0007\u0010\u0084\u0001\u001a\u000205H\u0016¢\u0006\u0006\b\u0098\u0001\u0010\u0099\u0001J$\u0010\u0098\u0001\u001a\u00020\t2\u0007\u0010\u0084\u0001\u001a\u0002052\u0007\u0010\u009a\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u0098\u0001\u0010\u009b\u0001J-\u0010\u0098\u0001\u001a\u00020\t2\u0007\u0010\u0084\u0001\u001a\u0002052\u0007\u0010\u009a\u0001\u001a\u00020\t2\u0007\u0010\u009c\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u0098\u0001\u0010\u009d\u0001J\u001b\u0010\u0098\u0001\u001a\u00020\t2\u0007\u0010\u009e\u0001\u001a\u00020\u0012H\u0016¢\u0006\u0006\b\u0098\u0001\u0010\u009f\u0001J$\u0010\u0098\u0001\u001a\u00020\t2\u0007\u0010\u009e\u0001\u001a\u00020\u00122\u0007\u0010\u009a\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u0098\u0001\u0010 \u0001J\u001b\u0010¢\u0001\u001a\u00020\t2\u0007\u0010¡\u0001\u001a\u00020\u0012H\u0016¢\u0006\u0006\b¢\u0001\u0010\u009f\u0001J$\u0010¢\u0001\u001a\u00020\t2\u0007\u0010¡\u0001\u001a\u00020\u00122\u0007\u0010\u009a\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b¢\u0001\u0010 \u0001J#\u0010£\u0001\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\t2\u0007\u0010\u009e\u0001\u001a\u00020\u0012H\u0016¢\u0006\u0006\b£\u0001\u0010¤\u0001J4\u0010£\u0001\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\t2\u0007\u0010\u009e\u0001\u001a\u00020\u00122\u0007\u0010¥\u0001\u001a\u00020?2\u0006\u0010\n\u001a\u00020?H\u0016¢\u0006\u0006\b£\u0001\u0010¦\u0001J\u0011\u0010§\u0001\u001a\u00020\rH\u0016¢\u0006\u0005\b§\u0001\u0010\u0006J\u0011\u0010¨\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0005\b¨\u0001\u0010 J\u0011\u0010©\u0001\u001a\u00020\rH\u0016¢\u0006\u0005\b©\u0001\u0010\u0006J\u0013\u0010«\u0001\u001a\u00030ª\u0001H\u0016¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u000f\u0010\u00ad\u0001\u001a\u00020\u0012¢\u0006\u0005\b\u00ad\u0001\u0010IJ\u000f\u0010®\u0001\u001a\u00020\u0012¢\u0006\u0005\b®\u0001\u0010IJ\u000f\u0010¯\u0001\u001a\u00020\u0012¢\u0006\u0005\b¯\u0001\u0010IJ\u000f\u0010°\u0001\u001a\u00020\u0012¢\u0006\u0005\b°\u0001\u0010IJ\u0018\u0010±\u0001\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0006\b±\u0001\u0010²\u0001J\u0018\u0010³\u0001\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0006\b³\u0001\u0010²\u0001J\u0018\u0010´\u0001\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0006\b´\u0001\u0010²\u0001J\u001f\u0010·\u0001\u001a\u00020\u000b2\n\u0010¶\u0001\u001a\u0005\u0018\u00010µ\u0001H\u0096\u0002¢\u0006\u0006\b·\u0001\u0010¸\u0001J\u0011\u0010¹\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b¹\u0001\u0010AJ\u0011\u0010º\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bº\u0001\u0010VJ\u000f\u0010»\u0001\u001a\u00020\u0000¢\u0006\u0005\b»\u0001\u0010\u0019J\u0011\u0010¼\u0001\u001a\u00020\u0000H\u0016¢\u0006\u0005\b¼\u0001\u0010\u0019J\u000f\u0010½\u0001\u001a\u00020\u0012¢\u0006\u0005\b½\u0001\u0010IJ\u0018\u0010½\u0001\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020?¢\u0006\u0006\b½\u0001\u0010¾\u0001J\u001f\u0010Á\u0001\u001a\u00030¿\u00012\n\b\u0002\u0010À\u0001\u001a\u00030¿\u0001H\u0007¢\u0006\u0006\bÁ\u0001\u0010Â\u0001J\u001f\u0010Ã\u0001\u001a\u00030¿\u00012\n\b\u0002\u0010À\u0001\u001a\u00030¿\u0001H\u0007¢\u0006\u0006\bÃ\u0001\u0010Â\u0001J\u0019\u00109\u001a\u0002052\u0007\u0010Ä\u0001\u001a\u00020\tH\u0007¢\u0006\u0005\bÅ\u0001\u0010:J\u0011\u0010Ç\u0001\u001a\u00020\tH\u0007¢\u0006\u0005\bÆ\u0001\u00104R\u001c\u0010È\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010É\u0001R0\u0010Ç\u0001\u001a\u00020\t2\u0007\u0010Ê\u0001\u001a\u00020\t8G@@X\u0086\u000e¢\u0006\u0016\n\u0006\bÇ\u0001\u0010Ë\u0001\u001a\u0005\bÇ\u0001\u00104\"\u0005\bÌ\u0001\u0010\"R\u0015\u0010\u0018\u001a\u00020\u00008VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bÍ\u0001\u0010\u0019¨\u0006Ï\u0001"}, d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "", "Ljava/nio/channels/ByteChannel;", MethodDecl.initName, "()V", "Ljava/io/InputStream;", "input", "", "byteCount", "", "forever", "Lzfb;", "readFrom", "(Ljava/io/InputStream;JZ)V", "", "algorithm", "Lokio/ByteString;", "digest", "(Ljava/lang/String;)Lokio/ByteString;", "key", "hmac", "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;", "buffer", "()Lokio/Buffer;", "Ljava/io/OutputStream;", "outputStream", "()Ljava/io/OutputStream;", "emitCompleteSegments", "emit", "exhausted", "()Z", "require", "(J)V", Progress.REQUEST, "(J)Z", "peek", "()Lokio/BufferedSource;", "inputStream", "()Ljava/io/InputStream;", "out", TypedValues.CycleType.S_WAVE_OFFSET, "copyTo", "(Ljava/io/OutputStream;JJ)Lokio/Buffer;", "(Lokio/Buffer;JJ)Lokio/Buffer;", "(Lokio/Buffer;J)Lokio/Buffer;", "writeTo", "(Ljava/io/OutputStream;J)Lokio/Buffer;", "(Ljava/io/InputStream;)Lokio/Buffer;", "(Ljava/io/InputStream;J)Lokio/Buffer;", "completeSegmentByteCount", "()J", "", "readByte", "()B", "pos", "getByte", "(J)B", "get", "", "readShort", "()S", "", "readInt", "()I", "readLong", "readShortLe", "readIntLe", "readLongLe", "readDecimalLong", "readHexadecimalUnsignedLong", "readByteString", "()Lokio/ByteString;", "(J)Lokio/ByteString;", "Lokio/Options;", "options", "select", "(Lokio/Options;)I", "sink", "readFully", "(Lokio/Buffer;J)V", "Lokio/Sink;", "readAll", "(Lokio/Sink;)J", "readUtf8", "()Ljava/lang/String;", "(J)Ljava/lang/String;", "Ljava/nio/charset/Charset;", "charset", "readString", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "(JLjava/nio/charset/Charset;)Ljava/lang/String;", "readUtf8Line", "readUtf8LineStrict", "limit", "readUtf8CodePoint", "", "readByteArray", "()[B", "(J)[B", "read", "([B)I", "([B)V", "([BII)I", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)I", "clear", "skip", "byteString", "write", "(Lokio/ByteString;)Lokio/Buffer;", "(Lokio/ByteString;II)Lokio/Buffer;", "string", "writeUtf8", "(Ljava/lang/String;)Lokio/Buffer;", "beginIndex", "endIndex", "(Ljava/lang/String;II)Lokio/Buffer;", "codePoint", "writeUtf8CodePoint", "(I)Lokio/Buffer;", "writeString", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;", "(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;", "source", "([B)Lokio/Buffer;", "([BII)Lokio/Buffer;", "Lokio/Source;", "writeAll", "(Lokio/Source;)J", "(Lokio/Source;J)Lokio/Buffer;", "b", "writeByte", "s", "writeShort", "writeShortLe", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "writeInt", "writeIntLe", "v", "writeLong", "(J)Lokio/Buffer;", "writeLongLe", "writeDecimalLong", "writeHexadecimalUnsignedLong", "minimumCapacity", "Lokio/Segment;", "writableSegment$okio", "(I)Lokio/Segment;", "writableSegment", "(Lokio/Buffer;J)J", "indexOf", "(B)J", "fromIndex", "(BJ)J", "toIndex", "(BJJ)J", "bytes", "(Lokio/ByteString;)J", "(Lokio/ByteString;J)J", "targetBytes", "indexOfElement", "rangeEquals", "(JLokio/ByteString;)Z", "bytesOffset", "(JLokio/ByteString;II)Z", "flush", "isOpen", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "md5", "sha1", "sha256", "sha512", "hmacSha1", "(Lokio/ByteString;)Lokio/ByteString;", "hmacSha256", "hmacSha512", "", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "toString", "copy", "clone", "snapshot", "(I)Lokio/ByteString;", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "readUnsafe", "(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;", "readAndWriteUnsafe", "index", "-deprecated_getByte", "-deprecated_size", PlayAudioData.TAG_SIZE, "head", "Lokio/Segment;", "<set-?>", "J", "setSize$okio", "getBuffer", "UnsafeCursor", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {
    public Segment head;
    private long size;

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0012\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0003R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R$\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0016\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\b\u0010 R\u0018\u0010\"\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010$\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010&\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b&\u0010%¨\u0006'"}, d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", MethodDecl.initName, "()V", "", ES6Iterator.NEXT_METHOD, "()I", "", TypedValues.CycleType.S_WAVE_OFFSET, "seek", "(J)I", "newSize", "resizeBuffer", "(J)J", "minByteCount", "expandBuffer", "(I)J", "Lzfb;", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "Lokio/Buffer;", "buffer", "Lokio/Buffer;", "", "readWrite", "Z", "Lokio/Segment;", "segment", "Lokio/Segment;", "getSegment$okio", "()Lokio/Segment;", "setSegment$okio", "(Lokio/Segment;)V", "J", "", "data", "[B", TtmlNode.START, "I", TtmlNode.END, "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UnsafeCursor implements Closeable {
        public Buffer buffer;
        public byte[] data;
        public boolean readWrite;
        private Segment segment;
        public long offset = -1;
        public int start = -1;
        public int end = -1;

        @Override
        public void close() {
            if (this.buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            this.buffer = null;
            setSegment$okio(null);
            this.offset = -1L;
            this.data = null;
            this.start = -1;
            this.end = -1;
        }

        public final long expandBuffer(int minByteCount) {
            if (minByteCount <= 0) {
                throw new IllegalArgumentException(("minByteCount <= 0: " + minByteCount).toString());
            }
            if (minByteCount > 8192) {
                throw new IllegalArgumentException(("minByteCount > Segment.SIZE: " + minByteCount).toString());
            }
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.readWrite) {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
            }
            long size = buffer.size();
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(minByteCount);
            int i = 8192 - segmentWritableSegment$okio.limit;
            segmentWritableSegment$okio.limit = 8192;
            long j = i;
            buffer.setSize$okio(size + j);
            setSegment$okio(segmentWritableSegment$okio);
            this.offset = size;
            this.data = segmentWritableSegment$okio.data;
            this.start = 8192 - i;
            this.end = 8192;
            return j;
        }

        public final Segment getSegment() {
            return this.segment;
        }

        public final int next() {
            long j = this.offset;
            Buffer buffer = this.buffer;
            y45.g(buffer);
            if (j == buffer.size()) {
                throw new IllegalStateException("no more bytes");
            }
            long j2 = this.offset;
            return seek(j2 == -1 ? 0L : j2 + ((long) (this.end - this.start)));
        }

        public final long resizeBuffer(long newSize) {
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.readWrite) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            long size = buffer.size();
            if (newSize <= size) {
                if (newSize < 0) {
                    throw new IllegalArgumentException(("newSize < 0: " + newSize).toString());
                }
                long j = size - newSize;
                while (j > 0) {
                    Segment segment = buffer.head;
                    y45.g(segment);
                    Segment segment2 = segment.prev;
                    y45.g(segment2);
                    int i = segment2.limit;
                    long j2 = i - segment2.pos;
                    if (j2 > j) {
                        segment2.limit = i - ((int) j);
                        break;
                    }
                    buffer.head = segment2.pop();
                    SegmentPool.recycle(segment2);
                    j -= j2;
                }
                setSegment$okio(null);
                this.offset = newSize;
                this.data = null;
                this.start = -1;
                this.end = -1;
            } else if (newSize > size) {
                long j3 = newSize - size;
                boolean z = true;
                while (j3 > 0) {
                    Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                    int iMin = (int) Math.min(j3, 8192 - segmentWritableSegment$okio.limit);
                    segmentWritableSegment$okio.limit += iMin;
                    j3 -= (long) iMin;
                    if (z) {
                        setSegment$okio(segmentWritableSegment$okio);
                        this.offset = size;
                        this.data = segmentWritableSegment$okio.data;
                        int i2 = segmentWritableSegment$okio.limit;
                        this.start = i2 - iMin;
                        this.end = i2;
                        z = false;
                    }
                }
            }
            buffer.setSize$okio(newSize);
            return size;
        }

        public final int seek(long offset) {
            Segment segmentPush;
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (offset < -1 || offset > buffer.size()) {
                throw new ArrayIndexOutOfBoundsException("offset=" + offset + " > size=" + buffer.size());
            }
            if (offset == -1 || offset == buffer.size()) {
                setSegment$okio(null);
                this.offset = offset;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return -1;
            }
            long size = buffer.size();
            Segment segment = buffer.head;
            long j = 0;
            if (getSegment() != null) {
                long j2 = this.offset;
                int i = this.start;
                Segment segment2 = getSegment();
                y45.g(segment2);
                long j3 = j2 - ((long) (i - segment2.pos));
                if (j3 > offset) {
                    segmentPush = segment;
                    segment = getSegment();
                    size = j3;
                } else {
                    segmentPush = getSegment();
                    j = j3;
                }
            } else {
                segmentPush = segment;
            }
            if (size - offset > offset - j) {
                while (true) {
                    y45.g(segmentPush);
                    int i2 = segmentPush.limit;
                    int i3 = segmentPush.pos;
                    if (offset < ((long) (i2 - i3)) + j) {
                        break;
                    }
                    j += (long) (i2 - i3);
                    segmentPush = segmentPush.next;
                }
            } else {
                while (size > offset) {
                    y45.g(segment);
                    segment = segment.prev;
                    y45.g(segment);
                    size -= (long) (segment.limit - segment.pos);
                }
                j = size;
                segmentPush = segment;
            }
            if (this.readWrite) {
                y45.g(segmentPush);
                if (segmentPush.shared) {
                    Segment segmentUnsharedCopy = segmentPush.unsharedCopy();
                    if (buffer.head == segmentPush) {
                        buffer.head = segmentUnsharedCopy;
                    }
                    segmentPush = segmentPush.push(segmentUnsharedCopy);
                    Segment segment3 = segmentPush.prev;
                    y45.g(segment3);
                    segment3.pop();
                }
            }
            setSegment$okio(segmentPush);
            this.offset = offset;
            y45.g(segmentPush);
            this.data = segmentPush.data;
            int i4 = segmentPush.pos + ((int) (offset - j));
            this.start = i4;
            int i5 = segmentPush.limit;
            this.end = i5;
            return i5 - i4;
        }

        public final void setSegment$okio(Segment segment) {
            this.segment = segment;
        }
    }

    public static Buffer copyTo$default(Buffer buffer, OutputStream outputStream, long j, long j2, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            j = 0;
        }
        long j3 = j;
        if ((i & 4) != 0) {
            j2 = buffer.size - j3;
        }
        return buffer.copyTo(outputStream, j3, j2);
    }

    private final ByteString digest(String algorithm) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        Segment segment = this.head;
        if (segment != null) {
            byte[] bArr = segment.data;
            int i = segment.pos;
            messageDigest.update(bArr, i, segment.limit - i);
            Segment segment2 = segment.next;
            y45.g(segment2);
            while (segment2 != segment) {
                byte[] bArr2 = segment2.data;
                int i2 = segment2.pos;
                messageDigest.update(bArr2, i2, segment2.limit - i2);
                segment2 = segment2.next;
                y45.g(segment2);
            }
        }
        byte[] bArrDigest = messageDigest.digest();
        y45.i(bArrDigest, "digest(...)");
        return new ByteString(bArrDigest);
    }

    private final ByteString hmac(String algorithm, ByteString key) throws NoSuchAlgorithmException {
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.internalArray$okio(), algorithm));
            Segment segment = this.head;
            if (segment != null) {
                byte[] bArr = segment.data;
                int i = segment.pos;
                mac.update(bArr, i, segment.limit - i);
                Segment segment2 = segment.next;
                y45.g(segment2);
                while (segment2 != segment) {
                    byte[] bArr2 = segment2.data;
                    int i2 = segment2.pos;
                    mac.update(bArr2, i2, segment2.limit - i2);
                    segment2 = segment2.next;
                    y45.g(segment2);
                }
            }
            byte[] bArrDoFinal = mac.doFinal();
            y45.i(bArrDoFinal, "doFinal(...)");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static UnsafeCursor readAndWriteUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i, Object obj) {
        if ((i & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readAndWriteUnsafe(unsafeCursor);
    }

    public static UnsafeCursor readUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i, Object obj) {
        if ((i & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readUnsafe(unsafeCursor);
    }

    public static Buffer writeTo$default(Buffer buffer, OutputStream outputStream, long j, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            j = buffer.size;
        }
        return buffer.writeTo(outputStream, j);
    }

    public final byte m434deprecated_getByte(long index) {
        return getByte(index);
    }

    public final long getSize() {
        return this.size;
    }

    @Override
    public Buffer getBufferField() {
        return this;
    }

    public final void clear() throws EOFException {
        skip(size());
    }

    @Override
    public void close() {
    }

    public final long completeSegmentByteCount() {
        long size = size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = this.head;
        y45.g(segment);
        Segment segment2 = segment.prev;
        y45.g(segment2);
        int i = segment2.limit;
        if (i < 8192 && segment2.owner) {
            size -= (long) (i - segment2.pos);
        }
        return size;
    }

    public final Buffer copy() {
        Buffer buffer = new Buffer();
        if (size() != 0) {
            Segment segment = this.head;
            y45.g(segment);
            Segment segmentSharedCopy = segment.sharedCopy();
            buffer.head = segmentSharedCopy;
            segmentSharedCopy.prev = segmentSharedCopy;
            segmentSharedCopy.next = segmentSharedCopy;
            for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
                Segment segment3 = segmentSharedCopy.prev;
                y45.g(segment3);
                y45.g(segment2);
                segment3.push(segment2.sharedCopy());
            }
            buffer.setSize$okio(size());
        }
        return buffer;
    }

    public final Buffer copyTo(OutputStream outputStream) throws IOException {
        y45.j(outputStream, "out");
        return copyTo$default(this, outputStream, 0L, 0L, 6, (Object) null);
    }

    @Override
    public Buffer emit() {
        return this;
    }

    @Override
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof Buffer) {
            Buffer buffer = (Buffer) other;
            if (size() == buffer.size()) {
                if (size() == 0) {
                    return true;
                }
                Segment segment = this.head;
                y45.g(segment);
                Segment segment2 = buffer.head;
                y45.g(segment2);
                int i = segment.pos;
                int i2 = segment2.pos;
                long j = 0;
                while (j < size()) {
                    long jMin = Math.min(segment.limit - i, segment2.limit - i2);
                    long j2 = 0;
                    while (j2 < jMin) {
                        int i3 = i + 1;
                        int i4 = i2 + 1;
                        if (segment.data[i] == segment2.data[i2]) {
                            j2++;
                            i = i3;
                            i2 = i4;
                        }
                    }
                    if (i == segment.limit) {
                        segment = segment.next;
                        y45.g(segment);
                        i = segment.pos;
                    }
                    if (i2 == segment2.limit) {
                        segment2 = segment2.next;
                        y45.g(segment2);
                        i2 = segment2.pos;
                    }
                    j += jMin;
                }
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean exhausted() {
        return this.size == 0;
    }

    @Override
    public void flush() {
    }

    @Override
    public Buffer getBuffer() {
        return this;
    }

    public final byte getByte(long pos) {
        SegmentedByteString.checkOffsetAndCount(size(), pos, 1L);
        Segment segment = this.head;
        if (segment == null) {
            y45.g(null);
            throw null;
        }
        if (size() - pos < pos) {
            long size = size();
            while (size > pos) {
                segment = segment.prev;
                y45.g(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            y45.g(segment);
            return segment.data[(int) ((((long) segment.pos) + pos) - size)];
        }
        long j = 0;
        while (true) {
            long j2 = ((long) (segment.limit - segment.pos)) + j;
            if (j2 > pos) {
                y45.g(segment);
                return segment.data[(int) ((((long) segment.pos) + pos) - j)];
            }
            segment = segment.next;
            y45.g(segment);
            j = j2;
        }
    }

    public int hashCode() {
        Segment segment = this.head;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment.limit;
            for (int i3 = segment.pos; i3 < i2; i3++) {
                i = (i * 31) + segment.data[i3];
            }
            segment = segment.next;
            y45.g(segment);
        } while (segment != this.head);
        return i;
    }

    public final ByteString hmacSha1(ByteString key) {
        y45.j(key, "key");
        return hmac("HmacSHA1", key);
    }

    public final ByteString hmacSha256(ByteString key) {
        y45.j(key, "key");
        return hmac("HmacSHA256", key);
    }

    public final ByteString hmacSha512(ByteString key) {
        y45.j(key, "key");
        return hmac("HmacSHA512", key);
    }

    @Override
    public long indexOf(byte b) {
        return indexOf(b, 0L, Long.MAX_VALUE);
    }

    @Override
    public long indexOfElement(ByteString targetBytes) {
        y45.j(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    @Override
    public InputStream inputStream() {
        return new InputStream() {
            @Override
            public int available() {
                return (int) Math.min(Buffer.this.size(), Integer.MAX_VALUE);
            }

            @Override
            public void close() {
            }

            @Override
            public int read() {
                if (Buffer.this.size() > 0) {
                    return Buffer.this.readByte() & 255;
                }
                return -1;
            }

            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override
            public int read(byte[] sink, int offset, int byteCount) {
                y45.j(sink, "sink");
                return Buffer.this.read(sink, offset, byteCount);
            }
        };
    }

    @Override
    public boolean isOpen() {
        return true;
    }

    public final ByteString md5() {
        return digest("MD5");
    }

    @Override
    public OutputStream outputStream() {
        return new OutputStream() {
            @Override
            public void close() {
            }

            @Override
            public void flush() {
            }

            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override
            public void write(int b) {
                Buffer.this.writeByte(b);
            }

            @Override
            public void write(byte[] data, int offset, int byteCount) {
                y45.j(data, "data");
                Buffer.this.write(data, offset, byteCount);
            }
        };
    }

    @Override
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override
    public boolean rangeEquals(long offset, ByteString bytes) {
        y45.j(bytes, "bytes");
        return rangeEquals(offset, bytes, 0, bytes.size());
    }

    @Override
    public int read(ByteBuffer sink) throws IOException {
        y45.j(sink, "sink");
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(sink.remaining(), segment.limit - segment.pos);
        sink.put(segment.data, segment.pos, iMin);
        int i = segment.pos + iMin;
        segment.pos = i;
        this.size -= (long) iMin;
        if (i == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @Override
    public long readAll(Sink sink) throws IOException {
        y45.j(sink, "sink");
        long size = size();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe$default(this, null, 1, null);
    }

    @Override
    public byte readByte() throws EOFException {
        if (size() == 0) {
            throw new EOFException();
        }
        Segment segment = this.head;
        y45.g(segment);
        int i = segment.pos;
        int i2 = segment.limit;
        int i3 = i + 1;
        byte b = segment.data[i];
        setSize$okio(size() - 1);
        if (i3 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i3;
        }
        return b;
    }

    @Override
    public byte[] readByteArray() {
        return readByteArray(size());
    }

    @Override
    public ByteString readByteString() {
        return readByteString(size());
    }

    @Override
    public long readDecimalLong() throws EOFException {
        if (size() == 0) {
            throw new EOFException();
        }
        int i = 0;
        boolean z = false;
        long j = 0;
        long j2 = -7;
        boolean z2 = false;
        do {
            Segment segment = this.head;
            y45.g(segment);
            byte[] bArr = segment.data;
            int i2 = segment.pos;
            int i3 = segment.limit;
            while (i2 < i3) {
                byte b = bArr[i2];
                if (b >= 48 && b <= 57) {
                    int i4 = 48 - b;
                    if (j < okio.internal.Buffer.OVERFLOW_ZONE || (j == okio.internal.Buffer.OVERFLOW_ZONE && i4 < j2)) {
                        Buffer bufferWriteByte = new Buffer().writeDecimalLong(j).writeByte((int) b);
                        if (!z) {
                            bufferWriteByte.readByte();
                        }
                        throw new NumberFormatException("Number too large: " + bufferWriteByte.readUtf8());
                    }
                    j = (j * 10) + ((long) i4);
                } else {
                    if (b != 45 || i != 0) {
                        z2 = true;
                        break;
                    }
                    j2--;
                    z = true;
                }
                i2++;
                i++;
            }
            if (i2 == i3) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i2;
            }
            if (z2) {
                break;
            }
        } while (this.head != null);
        setSize$okio(size() - ((long) i));
        if (i >= (z ? 2 : 1)) {
            return z ? j : -j;
        }
        if (size() == 0) {
            throw new EOFException();
        }
        throw new NumberFormatException((z ? "Expected a digit" : "Expected a digit or '-'") + " but was 0x" + SegmentedByteString.toHexString(getByte(0L)));
    }

    public final Buffer readFrom(InputStream input) throws IOException {
        y45.j(input, "input");
        readFrom(input, Long.MAX_VALUE, true);
        return this;
    }

    @Override
    public void readFully(Buffer sink, long byteCount) throws EOFException {
        y45.j(sink, "sink");
        if (size() >= byteCount) {
            sink.write(this, byteCount);
        } else {
            sink.write(this, size());
            throw new EOFException();
        }
    }

    @Override
    public long readHexadecimalUnsignedLong() throws EOFException {
        int i;
        if (size() == 0) {
            throw new EOFException();
        }
        int i2 = 0;
        boolean z = false;
        long j = 0;
        do {
            Segment segment = this.head;
            y45.g(segment);
            byte[] bArr = segment.data;
            int i3 = segment.pos;
            int i4 = segment.limit;
            while (i3 < i4) {
                byte b = bArr[i3];
                if (b >= 48 && b <= 57) {
                    i = b - 48;
                } else if (b >= 97 && b <= 102) {
                    i = b - 87;
                } else {
                    if (b < 65 || b > 70) {
                        if (i2 != 0) {
                            z = true;
                            break;
                        }
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + SegmentedByteString.toHexString(b));
                    }
                    i = b - 55;
                }
                if (((-1152921504606846976L) & j) != 0) {
                    throw new NumberFormatException("Number too large: " + new Buffer().writeHexadecimalUnsignedLong(j).writeByte((int) b).readUtf8());
                }
                j = (j << 4) | ((long) i);
                i3++;
                i2++;
            }
            if (i3 == i4) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i3;
            }
            if (z) {
                break;
            }
        } while (this.head != null);
        setSize$okio(size() - ((long) i2));
        return j;
    }

    @Override
    public int readInt() throws EOFException {
        if (size() < 4) {
            throw new EOFException();
        }
        Segment segment = this.head;
        y45.g(segment);
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 4) {
            return (readByte() & 255) | ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8);
        }
        byte[] bArr = segment.data;
        int i3 = i + 3;
        int i4 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i + 2] & 255) << 8);
        int i5 = i + 4;
        int i6 = (bArr[i3] & 255) | i4;
        setSize$okio(size() - 4);
        if (i5 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i5;
        }
        return i6;
    }

    @Override
    public int readIntLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readInt());
    }

    @Override
    public long readLong() throws EOFException {
        if (size() < 8) {
            throw new EOFException();
        }
        Segment segment = this.head;
        y45.g(segment);
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 8) {
            return ((((long) readInt()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) readInt()));
        }
        byte[] bArr = segment.data;
        int i3 = i + 7;
        long j = ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
        int i4 = i + 8;
        long j2 = j | (((long) bArr[i3]) & 255);
        setSize$okio(size() - 8);
        if (i4 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i4;
        }
        return j2;
    }

    @Override
    public long readLongLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readLong());
    }

    @Override
    public short readShort() throws EOFException {
        if (size() < 2) {
            throw new EOFException();
        }
        Segment segment = this.head;
        y45.g(segment);
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 2) {
            return (short) ((readByte() & 255) | ((readByte() & 255) << 8));
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = (bArr[i] & 255) << 8;
        int i5 = i + 2;
        int i6 = (bArr[i3] & 255) | i4;
        setSize$okio(size() - 2);
        if (i5 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i5;
        }
        return (short) i6;
    }

    @Override
    public short readShortLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readShort());
    }

    @Override
    public String readString(Charset charset) {
        y45.j(charset, "charset");
        return readString(this.size, charset);
    }

    public final UnsafeCursor readUnsafe() {
        return readUnsafe$default(this, null, 1, null);
    }

    @Override
    public String readUtf8() {
        return readString(this.size, qv0.b);
    }

    @Override
    public int readUtf8CodePoint() throws EOFException {
        int i;
        int i2;
        int i3;
        if (size() == 0) {
            throw new EOFException();
        }
        byte b = getByte(0L);
        if ((b & SocketData.CLAZZ_TYPE_END_SOCKET) == 0) {
            i = b & 127;
            i3 = 0;
            i2 = 1;
        } else if ((b & 224) == 192) {
            i = b & 31;
            i2 = 2;
            i3 = 128;
        } else if ((b & 240) == 224) {
            i = b & 15;
            i2 = 3;
            i3 = 2048;
        } else {
            if ((b & 248) != 240) {
                skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i = b & 7;
            i2 = 4;
            i3 = 65536;
        }
        long j = i2;
        if (size() < j) {
            throw new EOFException("size < " + i2 + ": " + size() + " (to read code point prefixed 0x" + SegmentedByteString.toHexString(b) + ')');
        }
        for (int i4 = 1; i4 < i2; i4++) {
            long j2 = i4;
            byte b2 = getByte(j2);
            if ((b2 & 192) != 128) {
                skip(j2);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i = (i << 6) | (b2 & Utf8.REPLACEMENT_BYTE);
        }
        skip(j);
        if (i > 1114111) {
            return Utf8.REPLACEMENT_CODE_POINT;
        }
        return ((55296 > i || i >= 57344) && i >= i3) ? i : Utf8.REPLACEMENT_CODE_POINT;
    }

    @Override
    public String readUtf8Line() throws EOFException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(this, jIndexOf);
        }
        if (size() != 0) {
            return readUtf8(size());
        }
        return null;
    }

    @Override
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override
    public boolean request(long byteCount) {
        return this.size >= byteCount;
    }

    @Override
    public void require(long byteCount) throws EOFException {
        if (this.size < byteCount) {
            throw new EOFException();
        }
    }

    @Override
    public int select(Options options) throws EOFException {
        y45.j(options, "options");
        int iSelectPrefix$default = okio.internal.Buffer.selectPrefix$default(this, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        skip(options.getByteStrings()[iSelectPrefix$default].size());
        return iSelectPrefix$default;
    }

    public final void setSize$okio(long j) {
        this.size = j;
    }

    public final ByteString sha1() {
        return digest("SHA-1");
    }

    public final ByteString sha256() {
        return digest("SHA-256");
    }

    public final ByteString sha512() {
        return digest("SHA-512");
    }

    public final long size() {
        return this.size;
    }

    @Override
    public void skip(long byteCount) throws EOFException {
        while (byteCount > 0) {
            Segment segment = this.head;
            if (segment == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(byteCount, segment.limit - segment.pos);
            long j = iMin;
            setSize$okio(size() - j);
            byteCount -= j;
            int i = segment.pos + iMin;
            segment.pos = i;
            if (i == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    public final ByteString snapshot() {
        if (size() <= 2147483647L) {
            return snapshot((int) size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + size()).toString());
    }

    @Override
    public Timeout timeout() {
        return Timeout.NONE;
    }

    public String toString() {
        return snapshot().toString();
    }

    public final Segment writableSegment$okio(int minimumCapacity) {
        if (minimumCapacity < 1 || minimumCapacity > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        Segment segment = this.head;
        if (segment == null) {
            Segment segmentTake = SegmentPool.take();
            this.head = segmentTake;
            segmentTake.prev = segmentTake;
            segmentTake.next = segmentTake;
            return segmentTake;
        }
        y45.g(segment);
        Segment segmentPush = segment.prev;
        y45.g(segmentPush);
        if (segmentPush.limit + minimumCapacity > 8192 || !segmentPush.owner) {
            segmentPush = segmentPush.push(SegmentPool.take());
        }
        return segmentPush;
    }

    @Override
    public long writeAll(Source source) throws IOException {
        y45.j(source, "source");
        long j = 0;
        while (true) {
            long j2 = source.read(this, 8192L);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    public final Buffer writeTo(OutputStream outputStream) throws IOException {
        y45.j(outputStream, "out");
        return writeTo$default(this, outputStream, 0L, 2, null);
    }

    public Buffer clone() {
        return copy();
    }

    public final Buffer copyTo(OutputStream outputStream, long j) throws IOException {
        y45.j(outputStream, "out");
        return copyTo$default(this, outputStream, j, 0L, 4, (Object) null);
    }

    @Override
    public long indexOf(byte b, long fromIndex) {
        return indexOf(b, fromIndex, Long.MAX_VALUE);
    }

    @Override
    public long indexOfElement(ByteString targetBytes, long fromIndex) {
        int i;
        int i2;
        y45.j(targetBytes, "targetBytes");
        long size = 0;
        if (fromIndex < 0) {
            throw new IllegalArgumentException(("fromIndex < 0: " + fromIndex).toString());
        }
        Segment segment = this.head;
        if (segment == null) {
            return -1L;
        }
        if (size() - fromIndex < fromIndex) {
            size = size();
            while (size > fromIndex) {
                segment = segment.prev;
                y45.g(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            if (targetBytes.size() == 2) {
                byte b = targetBytes.getByte(0);
                byte b2 = targetBytes.getByte(1);
                while (size < size()) {
                    byte[] bArr = segment.data;
                    i = (int) ((((long) segment.pos) + fromIndex) - size);
                    int i3 = segment.limit;
                    while (true) {
                        if (i >= i3) {
                            size += (long) (segment.limit - segment.pos);
                            segment = segment.next;
                            y45.g(segment);
                            fromIndex = size;
                        } else {
                            byte b3 = bArr[i];
                            if (b3 == b || b3 == b2) {
                                i2 = segment.pos;
                            } else {
                                i++;
                            }
                        }
                    }
                }
                return -1L;
            }
            byte[] bArrInternalArray$okio = targetBytes.internalArray$okio();
            while (size < size()) {
                byte[] bArr2 = segment.data;
                i = (int) ((((long) segment.pos) + fromIndex) - size);
                int i4 = segment.limit;
                while (true) {
                    if (i < i4) {
                        byte b4 = bArr2[i];
                        int length = bArrInternalArray$okio.length;
                        int i5 = 0;
                        while (true) {
                            if (i5 >= length) {
                                i++;
                            } else if (b4 == bArrInternalArray$okio[i5]) {
                                i2 = segment.pos;
                            } else {
                                i5++;
                            }
                        }
                    } else {
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        y45.g(segment);
                        fromIndex = size;
                    }
                }
            }
            return -1L;
        }
        while (true) {
            long j = ((long) (segment.limit - segment.pos)) + size;
            if (j > fromIndex) {
                break;
            }
            segment = segment.next;
            y45.g(segment);
            size = j;
        }
        if (targetBytes.size() == 2) {
            byte b5 = targetBytes.getByte(0);
            byte b6 = targetBytes.getByte(1);
            while (size < size()) {
                byte[] bArr3 = segment.data;
                i = (int) ((((long) segment.pos) + fromIndex) - size);
                int i6 = segment.limit;
                while (true) {
                    if (i >= i6) {
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        y45.g(segment);
                        fromIndex = size;
                    } else {
                        byte b7 = bArr3[i];
                        if (b7 == b5 || b7 == b6) {
                            i2 = segment.pos;
                        } else {
                            i++;
                        }
                    }
                }
            }
            return -1L;
        }
        byte[] bArrInternalArray$okio2 = targetBytes.internalArray$okio();
        while (size < size()) {
            byte[] bArr4 = segment.data;
            i = (int) ((((long) segment.pos) + fromIndex) - size);
            int i7 = segment.limit;
            while (true) {
                if (i < i7) {
                    byte b8 = bArr4[i];
                    int length2 = bArrInternalArray$okio2.length;
                    int i8 = 0;
                    while (true) {
                        if (i8 >= length2) {
                            i++;
                        } else if (b8 == bArrInternalArray$okio2[i8]) {
                            i2 = segment.pos;
                        } else {
                            i8++;
                        }
                    }
                } else {
                    size += (long) (segment.limit - segment.pos);
                    segment = segment.next;
                    y45.g(segment);
                    fromIndex = size;
                }
            }
        }
        return -1L;
        return ((long) (i - i2)) + size;
    }

    @Override
    public boolean rangeEquals(long offset, ByteString bytes, int bytesOffset, int byteCount) {
        y45.j(bytes, "bytes");
        if (offset < 0 || bytesOffset < 0 || byteCount < 0 || size() - offset < byteCount || bytes.size() - bytesOffset < byteCount) {
            return false;
        }
        for (int i = 0; i < byteCount; i++) {
            if (getByte(((long) i) + offset) != bytes.getByte(bytesOffset + i)) {
                return false;
            }
        }
        return true;
    }

    public final UnsafeCursor readAndWriteUnsafe(UnsafeCursor unsafeCursor) {
        y45.j(unsafeCursor, "unsafeCursor");
        return okio.internal.Buffer.commonReadAndWriteUnsafe(this, unsafeCursor);
    }

    @Override
    public byte[] readByteArray(long byteCount) throws EOFException {
        if (byteCount < 0 || byteCount > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + byteCount).toString());
        }
        if (size() < byteCount) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) byteCount];
        readFully(bArr);
        return bArr;
    }

    @Override
    public ByteString readByteString(long byteCount) throws EOFException {
        if (byteCount < 0 || byteCount > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + byteCount).toString());
        }
        if (size() < byteCount) {
            throw new EOFException();
        }
        if (byteCount < 4096) {
            return new ByteString(readByteArray(byteCount));
        }
        ByteString byteStringSnapshot = snapshot((int) byteCount);
        skip(byteCount);
        return byteStringSnapshot;
    }

    public final Buffer readFrom(InputStream input, long byteCount) throws IOException {
        y45.j(input, "input");
        if (byteCount >= 0) {
            readFrom(input, byteCount, false);
            return this;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + byteCount).toString());
    }

    @Override
    public String readString(long byteCount, Charset charset) throws EOFException {
        y45.j(charset, "charset");
        if (byteCount < 0 || byteCount > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + byteCount).toString());
        }
        if (this.size < byteCount) {
            throw new EOFException();
        }
        if (byteCount == 0) {
            return "";
        }
        Segment segment = this.head;
        y45.g(segment);
        int i = segment.pos;
        if (((long) i) + byteCount > segment.limit) {
            return new String(readByteArray(byteCount), charset);
        }
        int i2 = (int) byteCount;
        String str = new String(segment.data, i, i2, charset);
        int i3 = segment.pos + i2;
        segment.pos = i3;
        this.size -= byteCount;
        if (i3 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return str;
    }

    public final UnsafeCursor readUnsafe(UnsafeCursor unsafeCursor) {
        y45.j(unsafeCursor, "unsafeCursor");
        return okio.internal.Buffer.commonReadUnsafe(this, unsafeCursor);
    }

    @Override
    public String readUtf8(long byteCount) throws EOFException {
        return readString(byteCount, qv0.b);
    }

    @Override
    public String readUtf8LineStrict(long limit) throws EOFException {
        if (limit < 0) {
            throw new IllegalArgumentException(("limit < 0: " + limit).toString());
        }
        long j = limit != Long.MAX_VALUE ? limit + 1 : Long.MAX_VALUE;
        long jIndexOf = indexOf((byte) 10, 0L, j);
        if (jIndexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(this, jIndexOf);
        }
        if (j < size() && getByte(j - 1) == 13 && getByte(j) == 10) {
            return okio.internal.Buffer.readUtf8Line(this, j);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0L, Math.min(32, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), limit) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    @Override
    public Buffer writeByte(int b) {
        Segment segmentWritableSegment$okio = writableSegment$okio(1);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i = segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = i + 1;
        bArr[i] = (byte) b;
        setSize$okio(size() + 1);
        return this;
    }

    @Override
    public Buffer writeDecimalLong(long v) {
        boolean z;
        if (v == 0) {
            return writeByte(48);
        }
        int i = 1;
        if (v < 0) {
            v = -v;
            if (v < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z = true;
        } else {
            z = false;
        }
        if (v < 100000000) {
            if (v < 10000) {
                if (v >= 100) {
                    i = v < 1000 ? 3 : 4;
                } else if (v >= 10) {
                    i = 2;
                }
            } else if (v < 1000000) {
                i = v < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US ? 5 : 6;
            } else {
                i = v < 10000000 ? 7 : 8;
            }
        } else if (v < MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US) {
            if (v < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                i = v < C.NANOS_PER_SECOND ? 9 : 10;
            } else {
                i = v < 100000000000L ? 11 : 12;
            }
        } else if (v < 1000000000000000L) {
            if (v < 10000000000000L) {
                i = 13;
            } else {
                i = v < 100000000000000L ? 14 : 15;
            }
        } else if (v < 100000000000000000L) {
            i = v < 10000000000000000L ? 16 : 17;
        } else {
            i = v < 1000000000000000000L ? 18 : 19;
        }
        if (z) {
            i++;
        }
        Segment segmentWritableSegment$okio = writableSegment$okio(i);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit + i;
        while (v != 0) {
            long j = 10;
            i2--;
            bArr[i2] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (v % j)];
            v /= j;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        segmentWritableSegment$okio.limit += i;
        setSize$okio(size() + ((long) i));
        return this;
    }

    @Override
    public Buffer writeHexadecimalUnsignedLong(long v) {
        if (v == 0) {
            return writeByte(48);
        }
        long j = (v >>> 1) | v;
        long j2 = j | (j >>> 2);
        long j3 = j2 | (j2 >>> 4);
        long j4 = j3 | (j3 >>> 8);
        long j5 = j4 | (j4 >>> 16);
        long j6 = j5 | (j5 >>> 32);
        long j7 = j6 - ((j6 >>> 1) & 6148914691236517205L);
        long j8 = ((j7 >>> 2) & 3689348814741910323L) + (j7 & 3689348814741910323L);
        long j9 = ((j8 >>> 4) + j8) & 1085102592571150095L;
        long j10 = j9 + (j9 >>> 8);
        long j11 = j10 + (j10 >>> 16);
        int i = (int) ((((j11 & 63) + ((j11 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
        Segment segmentWritableSegment$okio = writableSegment$okio(i);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (15 & v)];
            v >>>= 4;
        }
        segmentWritableSegment$okio.limit += i;
        setSize$okio(size() + ((long) i));
        return this;
    }

    @Override
    public Buffer writeInt(int i) {
        Segment segmentWritableSegment$okio = writableSegment$okio(4);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        segmentWritableSegment$okio.limit = i2 + 4;
        setSize$okio(size() + 4);
        return this;
    }

    @Override
    public Buffer writeIntLe(int i) {
        return writeInt(SegmentedByteString.reverseBytes(i));
    }

    @Override
    public Buffer writeLong(long v) {
        Segment segmentWritableSegment$okio = writableSegment$okio(8);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i = segmentWritableSegment$okio.limit;
        bArr[i] = (byte) ((v >>> 56) & 255);
        bArr[i + 1] = (byte) ((v >>> 48) & 255);
        bArr[i + 2] = (byte) ((v >>> 40) & 255);
        bArr[i + 3] = (byte) ((v >>> 32) & 255);
        bArr[i + 4] = (byte) ((v >>> 24) & 255);
        bArr[i + 5] = (byte) ((v >>> 16) & 255);
        bArr[i + 6] = (byte) ((v >>> 8) & 255);
        bArr[i + 7] = (byte) (v & 255);
        segmentWritableSegment$okio.limit = i + 8;
        setSize$okio(size() + 8);
        return this;
    }

    @Override
    public Buffer writeLongLe(long v) {
        return writeLong(SegmentedByteString.reverseBytes(v));
    }

    @Override
    public Buffer writeShort(int s) {
        Segment segmentWritableSegment$okio = writableSegment$okio(2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i = segmentWritableSegment$okio.limit;
        bArr[i] = (byte) ((s >>> 8) & 255);
        bArr[i + 1] = (byte) (s & 255);
        segmentWritableSegment$okio.limit = i + 2;
        setSize$okio(size() + 2);
        return this;
    }

    @Override
    public Buffer writeShortLe(int s) {
        return writeShort((int) SegmentedByteString.reverseBytes((short) s));
    }

    public final Buffer writeTo(OutputStream out, long byteCount) throws IOException {
        y45.j(out, "out");
        SegmentedByteString.checkOffsetAndCount(this.size, 0L, byteCount);
        Segment segment = this.head;
        while (byteCount > 0) {
            y45.g(segment);
            int iMin = (int) Math.min(byteCount, segment.limit - segment.pos);
            out.write(segment.data, segment.pos, iMin);
            int i = segment.pos + iMin;
            segment.pos = i;
            long j = iMin;
            this.size -= j;
            byteCount -= j;
            if (i == segment.limit) {
                Segment segmentPop = segment.pop();
                this.head = segmentPop;
                SegmentPool.recycle(segment);
                segment = segmentPop;
            }
        }
        return this;
    }

    @Override
    public Buffer writeUtf8CodePoint(int codePoint) {
        if (codePoint < 128) {
            writeByte(codePoint);
        } else if (codePoint < 2048) {
            Segment segmentWritableSegment$okio = writableSegment$okio(2);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i = segmentWritableSegment$okio.limit;
            bArr[i] = (byte) ((codePoint >> 6) | 192);
            bArr[i + 1] = (byte) ((codePoint & 63) | 128);
            segmentWritableSegment$okio.limit = i + 2;
            setSize$okio(size() + 2);
        } else if (55296 <= codePoint && codePoint < 57344) {
            writeByte(63);
        } else if (codePoint < 65536) {
            Segment segmentWritableSegment$okio2 = writableSegment$okio(3);
            byte[] bArr2 = segmentWritableSegment$okio2.data;
            int i2 = segmentWritableSegment$okio2.limit;
            bArr2[i2] = (byte) ((codePoint >> 12) | 224);
            bArr2[i2 + 1] = (byte) (((codePoint >> 6) & 63) | 128);
            bArr2[i2 + 2] = (byte) ((codePoint & 63) | 128);
            segmentWritableSegment$okio2.limit = i2 + 3;
            setSize$okio(size() + 3);
        } else {
            if (codePoint > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: 0x" + SegmentedByteString.toHexString(codePoint));
            }
            Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
            byte[] bArr3 = segmentWritableSegment$okio3.data;
            int i3 = segmentWritableSegment$okio3.limit;
            bArr3[i3] = (byte) ((codePoint >> 18) | 240);
            bArr3[i3 + 1] = (byte) (((codePoint >> 12) & 63) | 128);
            bArr3[i3 + 2] = (byte) (((codePoint >> 6) & 63) | 128);
            bArr3[i3 + 3] = (byte) ((codePoint & 63) | 128);
            segmentWritableSegment$okio3.limit = i3 + 4;
            setSize$okio(size() + 4);
        }
        return this;
    }

    public static Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j, long j2, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return buffer.copyTo(buffer2, j, j2);
    }

    public final Buffer copyTo(OutputStream out, long offset, long byteCount) throws IOException {
        y45.j(out, "out");
        SegmentedByteString.checkOffsetAndCount(this.size, offset, byteCount);
        if (byteCount == 0) {
            return this;
        }
        Segment segment = this.head;
        while (true) {
            y45.g(segment);
            int i = segment.limit;
            int i2 = segment.pos;
            if (offset < i - i2) {
                break;
            }
            offset -= (long) (i - i2);
            segment = segment.next;
        }
        while (byteCount > 0) {
            y45.g(segment);
            int i3 = (int) (((long) segment.pos) + offset);
            int iMin = (int) Math.min(segment.limit - i3, byteCount);
            out.write(segment.data, i3, iMin);
            byteCount -= (long) iMin;
            segment = segment.next;
            offset = 0;
        }
        return this;
    }

    @Override
    public long indexOf(ByteString bytes) throws IOException {
        y45.j(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override
    public Buffer writeString(String string, Charset charset) {
        y45.j(string, "string");
        y45.j(charset, "charset");
        return writeString(string, 0, string.length(), charset);
    }

    @Override
    public Buffer writeUtf8(String string) {
        y45.j(string, "string");
        return writeUtf8(string, 0, string.length());
    }

    public static Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return buffer.copyTo(buffer2, j);
    }

    private final void readFrom(InputStream input, long byteCount, boolean forever) throws IOException {
        while (true) {
            if (byteCount <= 0 && !forever) {
                return;
            }
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int i = input.read(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, (int) Math.min(byteCount, 8192 - segmentWritableSegment$okio.limit));
            if (i == -1) {
                if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
                    this.head = segmentWritableSegment$okio.pop();
                    SegmentPool.recycle(segmentWritableSegment$okio);
                }
                if (!forever) {
                    throw new EOFException();
                }
                return;
            }
            segmentWritableSegment$okio.limit += i;
            long j = i;
            this.size += j;
            byteCount -= j;
        }
    }

    @Override
    public long indexOf(byte b, long fromIndex, long toIndex) {
        Segment segment;
        int i;
        long size = 0;
        if (0 > fromIndex || fromIndex > toIndex) {
            throw new IllegalArgumentException(("size=" + size() + " fromIndex=" + fromIndex + " toIndex=" + toIndex).toString());
        }
        if (toIndex > size()) {
            toIndex = size();
        }
        if (fromIndex == toIndex || (segment = this.head) == null) {
            return -1L;
        }
        if (size() - fromIndex < fromIndex) {
            size = size();
            while (size > fromIndex) {
                segment = segment.prev;
                y45.g(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            while (size < toIndex) {
                byte[] bArr = segment.data;
                int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + toIndex) - size);
                i = (int) ((((long) segment.pos) + fromIndex) - size);
                while (i < iMin) {
                    if (bArr[i] != b) {
                        i++;
                    }
                }
                size += (long) (segment.limit - segment.pos);
                segment = segment.next;
                y45.g(segment);
                fromIndex = size;
            }
            return -1L;
        }
        while (true) {
            long j = ((long) (segment.limit - segment.pos)) + size;
            if (j > fromIndex) {
                break;
            }
            segment = segment.next;
            y45.g(segment);
            size = j;
        }
        while (size < toIndex) {
            byte[] bArr2 = segment.data;
            int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + toIndex) - size);
            i = (int) ((((long) segment.pos) + fromIndex) - size);
            while (i < iMin2) {
                if (bArr2[i] != b) {
                    i++;
                }
            }
            size += (long) (segment.limit - segment.pos);
            segment = segment.next;
            y45.g(segment);
            fromIndex = size;
        }
        return -1L;
        return ((long) (i - segment.pos)) + size;
    }

    public final ByteString snapshot(int byteCount) {
        if (byteCount == 0) {
            return ByteString.EMPTY;
        }
        SegmentedByteString.checkOffsetAndCount(size(), 0L, byteCount);
        Segment segment = this.head;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < byteCount) {
            y45.g(segment);
            int i4 = segment.limit;
            int i5 = segment.pos;
            if (i4 != i5) {
                i2 += i4 - i5;
                i3++;
                segment = segment.next;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i3][];
        int[] iArr = new int[i3 * 2];
        Segment segment2 = this.head;
        int i6 = 0;
        while (i < byteCount) {
            y45.g(segment2);
            bArr[i6] = segment2.data;
            i += segment2.limit - segment2.pos;
            iArr[i6] = Math.min(i, byteCount);
            iArr[i6 + i3] = segment2.pos;
            segment2.shared = true;
            i6++;
            segment2 = segment2.next;
        }
        return new C3052SegmentedByteString(bArr, iArr);
    }

    @Override
    public Buffer writeUtf8(String string, int beginIndex, int endIndex) {
        char cCharAt;
        y45.j(string, "string");
        if (beginIndex < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + beginIndex).toString());
        }
        if (endIndex >= beginIndex) {
            if (endIndex > string.length()) {
                throw new IllegalArgumentException(("endIndex > string.length: " + endIndex + " > " + string.length()).toString());
            }
            while (beginIndex < endIndex) {
                char cCharAt2 = string.charAt(beginIndex);
                if (cCharAt2 < 128) {
                    Segment segmentWritableSegment$okio = writableSegment$okio(1);
                    byte[] bArr = segmentWritableSegment$okio.data;
                    int i = segmentWritableSegment$okio.limit - beginIndex;
                    int iMin = Math.min(endIndex, 8192 - i);
                    int i2 = beginIndex + 1;
                    bArr[beginIndex + i] = (byte) cCharAt2;
                    while (true) {
                        beginIndex = i2;
                        if (beginIndex >= iMin || (cCharAt = string.charAt(beginIndex)) >= 128) {
                            break;
                        }
                        i2 = beginIndex + 1;
                        bArr[beginIndex + i] = (byte) cCharAt;
                    }
                    int i3 = segmentWritableSegment$okio.limit;
                    int i4 = (i + beginIndex) - i3;
                    segmentWritableSegment$okio.limit = i3 + i4;
                    setSize$okio(size() + ((long) i4));
                } else {
                    if (cCharAt2 < 2048) {
                        Segment segmentWritableSegment$okio2 = writableSegment$okio(2);
                        byte[] bArr2 = segmentWritableSegment$okio2.data;
                        int i5 = segmentWritableSegment$okio2.limit;
                        bArr2[i5] = (byte) ((cCharAt2 >> 6) | 192);
                        bArr2[i5 + 1] = (byte) ((cCharAt2 & '?') | 128);
                        segmentWritableSegment$okio2.limit = i5 + 2;
                        setSize$okio(size() + 2);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i6 = beginIndex + 1;
                        char cCharAt3 = i6 < endIndex ? string.charAt(i6) : (char) 0;
                        if (cCharAt2 <= 56319 && 56320 <= cCharAt3 && cCharAt3 < 57344) {
                            int i7 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                            Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
                            byte[] bArr3 = segmentWritableSegment$okio3.data;
                            int i8 = segmentWritableSegment$okio3.limit;
                            bArr3[i8] = (byte) ((i7 >> 18) | 240);
                            bArr3[i8 + 1] = (byte) (((i7 >> 12) & 63) | 128);
                            bArr3[i8 + 2] = (byte) (((i7 >> 6) & 63) | 128);
                            bArr3[i8 + 3] = (byte) ((i7 & 63) | 128);
                            segmentWritableSegment$okio3.limit = i8 + 4;
                            setSize$okio(size() + 4);
                            beginIndex += 2;
                        } else {
                            writeByte(63);
                            beginIndex = i6;
                        }
                    } else {
                        Segment segmentWritableSegment$okio4 = writableSegment$okio(3);
                        byte[] bArr4 = segmentWritableSegment$okio4.data;
                        int i9 = segmentWritableSegment$okio4.limit;
                        bArr4[i9] = (byte) ((cCharAt2 >> '\f') | 224);
                        bArr4[i9 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                        bArr4[i9 + 2] = (byte) ((cCharAt2 & '?') | 128);
                        segmentWritableSegment$okio4.limit = i9 + 3;
                        setSize$okio(size() + 3);
                    }
                    beginIndex++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + endIndex + " < " + beginIndex).toString());
    }

    @Override
    public void readFully(byte[] sink) throws EOFException {
        y45.j(sink, "sink");
        int i = 0;
        while (i < sink.length) {
            int i2 = read(sink, i, sink.length - i);
            if (i2 == -1) {
                throw new EOFException();
            }
            i += i2;
        }
    }

    @Override
    public Buffer writeString(String string, int beginIndex, int endIndex, Charset charset) {
        y45.j(string, "string");
        y45.j(charset, "charset");
        if (beginIndex < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + beginIndex).toString());
        }
        if (endIndex >= beginIndex) {
            if (endIndex <= string.length()) {
                if (y45.e(charset, qv0.b)) {
                    return writeUtf8(string, beginIndex, endIndex);
                }
                String strSubstring = string.substring(beginIndex, endIndex);
                y45.i(strSubstring, "substring(...)");
                byte[] bytes = strSubstring.getBytes(charset);
                y45.i(bytes, "getBytes(...)");
                return write(bytes, 0, bytes.length);
            }
            throw new IllegalArgumentException(("endIndex > string.length: " + endIndex + " > " + string.length()).toString());
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + endIndex + " < " + beginIndex).toString());
    }

    @Override
    public int write(ByteBuffer source) throws IOException {
        y45.j(source, "source");
        int iRemaining = source.remaining();
        int i = iRemaining;
        while (i > 0) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i, 8192 - segmentWritableSegment$okio.limit);
            source.get(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, iMin);
            i -= iMin;
            segmentWritableSegment$okio.limit += iMin;
        }
        this.size += (long) iRemaining;
        return iRemaining;
    }

    @Override
    public int read(byte[] sink) {
        y45.j(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @Override
    public int read(byte[] sink, int offset, int byteCount) {
        y45.j(sink, "sink");
        SegmentedByteString.checkOffsetAndCount(sink.length, offset, byteCount);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(byteCount, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i = segment.pos;
        fi.g(bArr, sink, offset, i, i + iMin);
        segment.pos += iMin;
        setSize$okio(size() - ((long) iMin));
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    public final Buffer copyTo(Buffer out, long offset) {
        y45.j(out, "out");
        return copyTo(out, offset, this.size - offset);
    }

    @Override
    public Buffer write(ByteString byteString) {
        y45.j(byteString, "byteString");
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    public final Buffer copyTo(Buffer out, long offset, long byteCount) {
        y45.j(out, "out");
        SegmentedByteString.checkOffsetAndCount(size(), offset, byteCount);
        if (byteCount != 0) {
            out.setSize$okio(out.size() + byteCount);
            Segment segment = this.head;
            while (true) {
                y45.g(segment);
                int i = segment.limit;
                int i2 = segment.pos;
                if (offset < i - i2) {
                    break;
                }
                offset -= (long) (i - i2);
                segment = segment.next;
            }
            while (byteCount > 0) {
                y45.g(segment);
                Segment segmentSharedCopy = segment.sharedCopy();
                int i3 = segmentSharedCopy.pos + ((int) offset);
                segmentSharedCopy.pos = i3;
                segmentSharedCopy.limit = Math.min(i3 + ((int) byteCount), segmentSharedCopy.limit);
                Segment segment2 = out.head;
                if (segment2 == null) {
                    segmentSharedCopy.prev = segmentSharedCopy;
                    segmentSharedCopy.next = segmentSharedCopy;
                    out.head = segmentSharedCopy;
                } else {
                    y45.g(segment2);
                    Segment segment3 = segment2.prev;
                    y45.g(segment3);
                    segment3.push(segmentSharedCopy);
                }
                byteCount -= (long) (segmentSharedCopy.limit - segmentSharedCopy.pos);
                segment = segment.next;
                offset = 0;
            }
        }
        return this;
    }

    @Override
    public Buffer write(ByteString byteString, int offset, int byteCount) {
        y45.j(byteString, "byteString");
        byteString.write$okio(this, offset, byteCount);
        return this;
    }

    @Override
    public Buffer write(byte[] source) {
        y45.j(source, "source");
        return write(source, 0, source.length);
    }

    @Override
    public Buffer write(byte[] source, int offset, int byteCount) {
        y45.j(source, "source");
        long j = byteCount;
        SegmentedByteString.checkOffsetAndCount(source.length, offset, j);
        int i = byteCount + offset;
        while (offset < i) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i - offset, 8192 - segmentWritableSegment$okio.limit);
            int i2 = offset + iMin;
            fi.g(source, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, offset, i2);
            segmentWritableSegment$okio.limit += iMin;
            offset = i2;
        }
        setSize$okio(size() + j);
        return this;
    }

    @Override
    public long read(Buffer sink, long byteCount) {
        y45.j(sink, "sink");
        if (byteCount < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + byteCount).toString());
        }
        if (size() == 0) {
            return -1L;
        }
        if (byteCount > size()) {
            byteCount = size();
        }
        sink.write(this, byteCount);
        return byteCount;
    }

    @Override
    public Buffer write(Source source, long byteCount) throws IOException {
        y45.j(source, "source");
        while (byteCount > 0) {
            long j = source.read(this, byteCount);
            if (j == -1) {
                throw new EOFException();
            }
            byteCount -= j;
        }
        return this;
    }

    @Override
    public long indexOf(ByteString bytes, long fromIndex) throws IOException {
        long size;
        int i;
        long j = fromIndex;
        y45.j(bytes, "bytes");
        if (bytes.size() <= 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long j2 = 0;
        if (j >= 0) {
            Segment segment = this.head;
            if (segment != null) {
                if (size() - j < j) {
                    size = size();
                    while (size > j) {
                        segment = segment.prev;
                        y45.g(segment);
                        size -= (long) (segment.limit - segment.pos);
                    }
                    byte[] bArrInternalArray$okio = bytes.internalArray$okio();
                    byte b = bArrInternalArray$okio[0];
                    int size2 = bytes.size();
                    long size3 = (size() - ((long) size2)) + 1;
                    while (size < size3) {
                        byte[] bArr = segment.data;
                        int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + size3) - size);
                        i = (int) ((((long) segment.pos) + j) - size);
                        while (i < iMin) {
                            if (bArr[i] == b && okio.internal.Buffer.rangeEquals(segment, i + 1, bArrInternalArray$okio, 1, size2)) {
                                return ((long) (i - segment.pos)) + size;
                            }
                            i++;
                        }
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        y45.g(segment);
                        j = size;
                    }
                } else {
                    while (true) {
                        long j3 = ((long) (segment.limit - segment.pos)) + j2;
                        if (j3 > j) {
                            break;
                        }
                        segment = segment.next;
                        y45.g(segment);
                        j2 = j3;
                    }
                    byte[] bArrInternalArray$okio2 = bytes.internalArray$okio();
                    byte b2 = bArrInternalArray$okio2[0];
                    int size4 = bytes.size();
                    long size5 = (size() - ((long) size4)) + 1;
                    size = j2;
                    while (size < size5) {
                        byte[] bArr2 = segment.data;
                        long j4 = size5;
                        int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + size5) - size);
                        i = (int) ((((long) segment.pos) + j) - size);
                        while (i < iMin2) {
                            if (bArr2[i] == b2 && okio.internal.Buffer.rangeEquals(segment, i + 1, bArrInternalArray$okio2, 1, size4)) {
                                return ((long) (i - segment.pos)) + size;
                            }
                            i++;
                        }
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        y45.g(segment);
                        size5 = j4;
                        j = size;
                    }
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(("fromIndex < 0: " + j).toString());
    }

    @Override
    public void write(Buffer source, long byteCount) {
        Segment segment;
        y45.j(source, "source");
        if (source != this) {
            SegmentedByteString.checkOffsetAndCount(source.size(), 0L, byteCount);
            while (byteCount > 0) {
                Segment segment2 = source.head;
                y45.g(segment2);
                int i = segment2.limit;
                Segment segment3 = source.head;
                y45.g(segment3);
                if (byteCount < i - segment3.pos) {
                    Segment segment4 = this.head;
                    if (segment4 != null) {
                        y45.g(segment4);
                        segment = segment4.prev;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.owner) {
                        if ((((long) segment.limit) + byteCount) - ((long) (segment.shared ? 0 : segment.pos)) <= 8192) {
                            Segment segment5 = source.head;
                            y45.g(segment5);
                            segment5.writeTo(segment, (int) byteCount);
                            source.setSize$okio(source.size() - byteCount);
                            setSize$okio(size() + byteCount);
                            return;
                        }
                    }
                    Segment segment6 = source.head;
                    y45.g(segment6);
                    source.head = segment6.split((int) byteCount);
                }
                Segment segment7 = source.head;
                y45.g(segment7);
                long j = segment7.limit - segment7.pos;
                source.head = segment7.pop();
                Segment segment8 = this.head;
                if (segment8 == null) {
                    this.head = segment7;
                    segment7.prev = segment7;
                    segment7.next = segment7;
                } else {
                    y45.g(segment8);
                    Segment segment9 = segment8.prev;
                    y45.g(segment9);
                    segment9.push(segment7).compact();
                }
                source.setSize$okio(source.size() - j);
                setSize$okio(size() + j);
                byteCount -= j;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }
}
