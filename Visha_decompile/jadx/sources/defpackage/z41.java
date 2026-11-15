package defpackage;

import android.os.ParcelFileDescriptor;
import android.util.Base64DataException;
import android.util.MalformedJsonException;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import java.io.CharConversionException;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.SyncFailedException;
import java.io.UTFDataFormatException;
import java.io.UnsupportedEncodingException;
import java.net.BindException;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.AsynchronousCloseException;
import java.nio.channels.FileLockInterruptionException;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import java.util.InvalidPropertiesFormatException;
import java.util.jar.JarException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import kotlin.io.FileSystemException;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.StreamResetException;
import org.apache.http.conn.ConnectTimeoutException;
import org.chromium.net.NetworkException;

public final class z41 {
    public static final z41 a = new z41();

    public final int a(int i, IOException iOException) {
        int i2 = 480;
        if (i != 480) {
            return i;
        }
        if (iOException instanceof SocketTimeoutException) {
            i2 = 1008;
        } else if (iOException instanceof UnknownHostException) {
            i2 = 1005;
        } else if (iOException instanceof NoRouteToHostException) {
            i2 = 1006;
        } else if (iOException instanceof ProtocolException) {
            i2 = 1007;
        } else if (iOException instanceof SSLHandshakeException) {
            i2 = 1009;
        } else if (iOException instanceof ConnectException) {
            i2 = 1011;
        } else if (iOException instanceof BindException) {
            i2 = 1045;
        } else if (iOException instanceof PortUnreachableException) {
            i2 = 1012;
        } else if (iOException instanceof ConnectTimeoutException) {
            i2 = 1013;
        } else if (iOException instanceof SSLKeyException) {
            i2 = 1014;
        } else if (iOException instanceof SSLPeerUnverifiedException) {
            i2 = 1015;
        } else if (iOException instanceof SSLProtocolException) {
            i2 = 1016;
        } else if (iOException instanceof FileSystemException) {
            i2 = 1017;
        } else if (iOException instanceof ObjectStreamException) {
            i2 = 1018;
        } else if (iOException instanceof AsynchronousCloseException) {
            i2 = 1019;
        } else if (iOException instanceof MalformedInputException) {
            i2 = 1043;
        } else if (iOException instanceof UnmappableCharacterException) {
            i2 = 1044;
        } else if (iOException instanceof JarException) {
            i2 = AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED;
        } else if (iOException instanceof CharConversionException) {
            i2 = AnalyticsListener.EVENT_DRM_KEYS_LOADED;
        } else if (iOException instanceof Base64DataException) {
            i2 = 1024;
        } else if (iOException instanceof ConnectionShutdownException) {
            i2 = 1025;
        } else if (iOException instanceof EOFException) {
            i2 = AnalyticsListener.EVENT_DRM_SESSION_RELEASED;
        } else if (iOException instanceof ParcelFileDescriptor.FileDescriptorDetachedException) {
            i2 = AnalyticsListener.EVENT_PLAYER_RELEASED;
        } else if (iOException instanceof FileLockInterruptionException) {
            i2 = AnalyticsListener.EVENT_AUDIO_CODEC_ERROR;
        } else if (iOException instanceof FileNotFoundException) {
            i2 = AnalyticsListener.EVENT_VIDEO_CODEC_ERROR;
        } else if (iOException instanceof HttpRetryException) {
            i2 = AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED;
        } else if (iOException instanceof InvalidPropertiesFormatException) {
            i2 = AnalyticsListener.EVENT_RENDERER_READY_CHANGED;
        } else if (iOException instanceof MalformedJsonException) {
            i2 = 1034;
        } else if (iOException instanceof MalformedURLException) {
            i2 = 1035;
        } else if (iOException instanceof StreamResetException) {
            i2 = 1037;
        } else if (iOException instanceof SyncFailedException) {
            i2 = 1038;
        } else if (iOException instanceof UTFDataFormatException) {
            i2 = 1039;
        } else if (iOException instanceof UnknownServiceException) {
            i2 = 1040;
        } else if (iOException instanceof UnsupportedEncodingException) {
            i2 = 1042;
        } else {
            if (y45.e(iOException != null ? iOException.getMessage() : null, "Canceled")) {
                i2 = 1050;
            }
        }
        return i2;
    }

    public final int b(int i, NetworkException networkException, boolean z) {
        int i2 = 480;
        if (i != 480) {
            return i;
        }
        Integer numValueOf = networkException != null ? Integer.valueOf(networkException.getErrorCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 1) {
            i2 = 1005;
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            i2 = 1020;
        } else if (numValueOf != null && numValueOf.intValue() == 4) {
            i2 = 1008;
        } else if (numValueOf != null && numValueOf.intValue() == 6) {
            i2 = 1013;
        } else if (numValueOf != null && numValueOf.intValue() == 3) {
            i2 = 1049;
        } else if (numValueOf != null && numValueOf.intValue() == 5) {
            i2 = 1046;
        } else if (numValueOf != null && numValueOf.intValue() == 7) {
            i2 = 1047;
        } else if (numValueOf != null && numValueOf.intValue() == 8) {
            i2 = 1048;
        } else if (numValueOf != null && numValueOf.intValue() == 9) {
            i2 = 1006;
        } else if (numValueOf != null && numValueOf.intValue() == 10) {
            i2 = 1007;
        } else if (z) {
            i2 = 1050;
        }
        return i2;
    }
}
