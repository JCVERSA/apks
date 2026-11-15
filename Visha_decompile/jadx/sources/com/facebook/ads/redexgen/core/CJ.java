package com.facebook.ads.redexgen.core;

import android.app.Activity;
import android.content.res.AssetFileDescriptor;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.MediaController;
import androidx.media3.exoplayer.RendererCapabilities;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.io.IOException;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class CJ extends TextureView implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, MediaPlayer.OnSeekCompleteListener, TextureView.SurfaceTextureListener, InterfaceC1703eS {
    public static byte[] A0O;
    public static String[] A0P = {"8kg0gsxxraVcY9760AfDDdqqLp5YK9AT", "N8j2Ddyx", "HVNw4PtkXrEg8LlUN7XWbo", "maxPy5SeUtgOYTWaW", "FkAKyJNQQf2eCz2ilXM7tuAli1jbjSs3", "vA9Mb9Xk6BXUb", "TQHC", "vy65DpAohCvDmaIHVnToJ2EB52e80kqi"};
    public static final String A0Q;
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public MediaPlayer A06;
    public Uri A07;
    public Surface A08;
    public View A09;
    public MediaController A0A;
    public EnumC1651db A0B;
    public EnumC1705eU A0C;
    public EnumC1705eU A0D;
    public InterfaceC1706eV A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public boolean A0K;
    public final long A0L;
    public final MediaController.MediaPlayerControl A0M;
    public final C1635dL A0N;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0O, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0O = new byte[]{115, 125, 113, 115, -74, -55, -59, -61, -78, 115, 113, SocketData.CLAZZ_TYPE_STRING, 113, 115, -54, 37, SocketData.CLAZZ_TYPE_ERROR_CODE, -85, -72, -72, -71, -66, 106, -70, -68, -81, -70, -85, -68, -81, 106, -73, -81, -82, -77, -85, 106, -70, -74, -85, -61, -81, -68, 106, -63, -77, -66, -78, 106, -99, -65, -68, -80, -85, -83, -81, -98, -81, -62, -66, -65, -68, -81, -124, 106, -70, -26, -20, -29, -37, -27, -98, -21, -105, -23, -36, -21, -23, -32, -36, -19, -36, -105, -19, -32, -37, -36, -26, -105, -32, -27, -35, -26, -23, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -40, -21, -32, -26, -27, -47, -20, -12, -9, -16, -17, -85, -1, -6, -85, -6, -5, -16, -7, -85, -20, -2, -2, -16, -1, -2, -104, -64, -64, -72, -67, -74, 113, -78, -67, -56, -78, -54, -60, 113, -59, -71, -61, -64, -56, 113, -78, -65, 113, -74, -55, -76, -74, -63, -59, -70, -64, -65, 113, -56, -70, -59, -71, 113, -60, -74, -59, -109, -78, -76, -68, -72, -61, -64, -58, -65, -75, -107, -61, -78, -56, -78, -77, -67, -74, 113, -64, -65, 113, -97, -64, -58, -72, -78, -59, 113, -78, -77, -64, -57, -74, 127, 113, -60, -64, 113, -56, -74, 113, -60, -70, -67, -74, -65, -59, -67, -54, 113, -70, -72, -65, -64, -61, -74, 113, -70, -59, 127, -23, 17, 17, 9, 14, 7, -62, 3, 14, 25, 3, 27, 21, -62, 22, 10, 20, 17, 25, -62, 3, 16, -62, 7, 26, 5, 7, 18, 22, ByteCode.T_LONG, 17, 16, -62, 25, ByteCode.T_LONG, 22, 10, -62, 21, 7, 22, -24, 17, 20, 7, 9, 20, 17, 23, 16, 6, -62, 17, 16, -62, -16, 17, 23, 9, 3, 22, -62, 3, 4, 17, 24, 7, -48, -62, 21, 17, -62, 25, 7, -62, 21, ByteCode.T_LONG, 14, 7, 16, 22, 14, 27, -62, ByteCode.T_LONG, 9, 16, 17, 20, 7, -62, ByteCode.T_LONG, 22, -48, -47, -22, -35, -34, -24, -31, -100, -16, -21, -100, -33, -24, -21, -17, -31, -13, 16, 7, -66, 17, 6, 13, 19, 10, 2, -66, 12, 13, 18, -66, 0, 3, -66, 3, ByteCode.T_LONG, 14, 18, 23, -52, -4, 15, 10, ByteCode.T_LONG, 21, -58, 25, 26, 7, 26, ByteCode.T_LONG, -58, 9, 14, 7, 20, 13, ByteCode.T_LONG, 10, -58, 26, 21, -58, -97, -79, -79, -93, -78, 26, 22, ByteCode.T_LONG, 35, 15, 28, 12, -77, 8, -7, -14, 5, -77, -79, -53, -79, -77};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 14 out of bounds for length 13
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    @Override
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        if (U7.A1v(this.A0N)) {
            MediaPlayer mediaPlayer = this.A06;
            if (A0P[4].charAt(10) != '2') {
                throw new RuntimeException();
            }
            A0P[4] = "ZKmo0lxTtT2mJSQRRhI8B7lsvNxlt9ka";
            if (mediaPlayer == null || !A07()) {
                return;
            }
            if (!this.A0I) {
                this.A0I = true;
                this.A0N.A0F().AIJ();
            }
            long currentPosition = getCurrentPosition();
            long currentPosition2 = getCurrentPosition();
            long jCurrentTimeMillis = System.currentTimeMillis();
            float volume = getVolume();
            if (this.A0E != null) {
                this.A0E.ADK(currentPosition, currentPosition2, jCurrentTimeMillis, volume);
            }
        }
    }

    static {
        A04();
        A0Q = CJ.class.getSimpleName();
    }

    public CJ(C1635dL c1635dL) {
        super(c1635dL);
        this.A0C = EnumC1705eU.A04;
        this.A0D = EnumC1705eU.A04;
        this.A0J = false;
        this.A03 = 0;
        this.A05 = 0;
        this.A04 = 0;
        this.A00 = 1.0f;
        this.A0H = false;
        this.A01 = 3;
        this.A0F = false;
        this.A0K = false;
        this.A02 = 0;
        this.A0G = false;
        this.A0B = EnumC1651db.A03;
        this.A0M = new C1700eP(this);
        this.A0I = false;
        this.A0N = c1635dL;
    }

    public CJ(C1635dL c1635dL, AttributeSet attributeSet) {
        super(c1635dL, attributeSet);
        this.A0C = EnumC1705eU.A04;
        this.A0D = EnumC1705eU.A04;
        this.A0J = false;
        this.A03 = 0;
        this.A05 = 0;
        this.A04 = 0;
        this.A00 = 1.0f;
        this.A0H = false;
        this.A01 = 3;
        this.A0F = false;
        this.A0K = false;
        this.A02 = 0;
        this.A0G = false;
        this.A0B = EnumC1651db.A03;
        this.A0M = new C1700eP(this);
        this.A0I = false;
        this.A0N = c1635dL;
    }

    public CJ(C1635dL c1635dL, AttributeSet attributeSet, int i) {
        super(c1635dL, attributeSet, i);
        this.A0C = EnumC1705eU.A04;
        this.A0D = EnumC1705eU.A04;
        this.A0J = false;
        this.A03 = 0;
        this.A05 = 0;
        this.A04 = 0;
        this.A00 = 1.0f;
        this.A0H = false;
        this.A01 = 3;
        this.A0F = false;
        this.A0K = false;
        this.A02 = 0;
        this.A0G = false;
        this.A0B = EnumC1651db.A03;
        this.A0M = new C1700eP(this);
        this.A0I = false;
        this.A0N = c1635dL;
    }

    private final void A05(MediaPlayer mediaPlayer, Uri uri) {
        String strA03 = A03(317, 15, 64);
        AssetFileDescriptor assetFileDescriptor = null;
        try {
            try {
                try {
                    String uriPath = uri.getPath();
                    if (!TextUtils.isEmpty(uriPath)) {
                        AssetFileDescriptor assetFileDescriptorOpenFd = getContext().getAssets().openFd(uriPath.substring(1));
                        mediaPlayer.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getLength());
                        if (assetFileDescriptorOpenFd != null) {
                            assetFileDescriptorOpenFd.close();
                            return;
                        }
                        return;
                    }
                    throw new IOException(A03(332, 24, 98));
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            assetFileDescriptor.close();
                        } catch (IOException e) {
                            Log.w(A0Q, strA03, e);
                        }
                    }
                    throw th;
                }
            } catch (IOException | SecurityException e2) {
                Log.w(A0Q, A03(100, 21, 79), e2);
                setVideoState(EnumC1705eU.A03);
                this.A0N.A0F().A3a(2);
                if (0 != 0) {
                    assetFileDescriptor.close();
                }
            }
        } catch (IOException e3) {
            String str = A0Q;
            if (A0P[6].length() != 4) {
                throw new RuntimeException();
            }
            A0P[3] = "IDdSaYeoVr3R4FZ1u";
            Log.w(str, strA03, e3);
        }
    }

    private boolean A06() {
        return (this.A0C == EnumC1705eU.A08 || this.A0C == EnumC1705eU.A07) ? false : true;
    }

    private boolean A07() {
        return this.A0C == EnumC1705eU.A07 || this.A0C == EnumC1705eU.A0A || this.A0C == EnumC1705eU.A05 || this.A0C == EnumC1705eU.A06;
    }

    private boolean A08() {
        return (this.A0C == EnumC1705eU.A08 || this.A0C == EnumC1705eU.A07) ? false : true;
    }

    private boolean A09() {
        if (this.A06 == null) {
            return false;
        }
        try {
            this.A06.reset();
            return true;
        } catch (IllegalStateException e) {
            this.A0N.A08().AAy(A03(RendererCapabilities.DECODER_SUPPORT_MASK, 6, 110), AbstractC1248Sv.A2H, new C1249Sw(e));
            return false;
        }
    }

    private boolean A0A(Surface surface) {
        if (this.A06 == null) {
            return false;
        }
        try {
            this.A06.setSurface(surface);
            return true;
        } catch (IllegalStateException e) {
            this.A0N.A08().AAy(A03(RendererCapabilities.DECODER_SUPPORT_MASK, 6, 110), AbstractC1248Sv.A2I, new C1249Sw(e));
            return false;
        }
    }

    public final void A0C() {
        Activity activity = this.A0N.A0E();
        if (activity != null && activity.isInMultiWindowMode()) {
            return;
        }
        A9V();
    }

    @Override
    public final void A9V() {
        if (!this.A0F) {
            AG7(false, 3);
        }
    }

    @Override
    public final boolean A9i() {
        if (this.A06 == null) {
            return false;
        }
        try {
            for (MediaPlayer.TrackInfo trackInfo : this.A06.getTrackInfo()) {
                if (trackInfo.getTrackType() == 2) {
                    return true;
                }
            }
            return false;
        } catch (RuntimeException e) {
            Log.e(A0Q, A03(65, 35, 59), e);
            return true;
        }
    }

    @Override
    public final boolean A9j() {
        return this.A0K;
    }

    @Override
    public final boolean AAT() {
        return this.A0J;
    }

    @Override
    public final void AG7(boolean z, int i) {
        this.A0N.A0F().A3W(i);
        this.A0D = EnumC1705eU.A05;
        if (this.A06 != null) {
            if (!A06()) {
                return;
            }
            this.A0J = z;
            this.A06.pause();
            if (this.A0C != EnumC1705eU.A06) {
                setVideoState(EnumC1705eU.A05);
                return;
            }
            return;
        }
        setVideoState(EnumC1705eU.A04);
    }

    @Override
    public final void AJH(int i) {
        this.A0N.A0F().ABy(i);
        setVideoState(EnumC1705eU.A09);
        AJU(5);
        this.A03 = 0;
    }

    @Override
    public final void AJM(EnumC1651db enumC1651db, int i) {
        this.A0N.A0F().A3h(i);
        this.A0J = false;
        this.A0D = EnumC1705eU.A0A;
        this.A0B = enumC1651db;
        if (this.A0C == EnumC1705eU.A0A || this.A0C == EnumC1705eU.A07 || this.A0C == EnumC1705eU.A04 || this.A0C == EnumC1705eU.A05 || this.A0C == EnumC1705eU.A06) {
            if (this.A06 == null) {
                setup(this.A07);
            } else {
                if (this.A03 > 0) {
                    this.A06.seekTo(this.A03);
                }
                this.A06.start();
                if (this.A0C != EnumC1705eU.A07 || this.A0K) {
                    setVideoState(EnumC1705eU.A0A);
                }
            }
        }
        if (isAvailable()) {
            onSurfaceTextureAvailable(getSurfaceTexture(), 0, 0);
        }
    }

    @Override
    public final void AJU(int i) {
        this.A0N.A0F().A3j(i);
        this.A0D = EnumC1705eU.A04;
        if (this.A06 != null) {
            int currentPosition = this.A06.getCurrentPosition();
            if (currentPosition > 0) {
                this.A03 = currentPosition;
            }
            this.A06.stop();
            A09();
            this.A06.release();
            this.A06 = null;
            if (this.A0A != null) {
                this.A0A.hide();
                this.A0A.setEnabled(false);
            }
        }
        setVideoState(EnumC1705eU.A04);
    }

    @Override
    public final void destroy() {
        if (this.A06 != null) {
            A0A(null);
            this.A06.setOnBufferingUpdateListener(null);
            this.A06.setOnCompletionListener(null);
            this.A06.setOnErrorListener(null);
            MediaPlayer mediaPlayer = this.A06;
            if (A0P[1].length() == 0) {
                throw new RuntimeException();
            }
            A0P[3] = "r7bVcQo0vwDc4SuX1";
            mediaPlayer.setOnInfoListener(null);
            this.A06.setOnPreparedListener(null);
            this.A06.setOnVideoSizeChangedListener(null);
            this.A06.setOnSeekCompleteListener(null);
            A09();
            this.A06 = null;
            setVideoState(EnumC1705eU.A04);
        }
    }

    @Override
    public int getCurrentPosition() {
        if (this.A06 == null || !A07()) {
            return 0;
        }
        return this.A06.getCurrentPosition();
    }

    @Override
    public int getDuration() {
        if (this.A06 == null || !A07()) {
            return 0;
        }
        return this.A06.getDuration();
    }

    @Override
    public long getInitialBufferTime() {
        return this.A0L;
    }

    @Override
    public EnumC1651db getStartReason() {
        return this.A0B;
    }

    @Override
    public EnumC1705eU getState() {
        return this.A0C;
    }

    public EnumC1705eU getTargetState() {
        return this.A0D;
    }

    @Override
    public int getVideoHeight() {
        return this.A04;
    }

    @Override
    public int getVideoWidth() {
        return this.A05;
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    public float getVolume() {
        return this.A00;
    }

    @Override
    public final boolean isHardwareAccelerated() {
        return super.isHardwareAccelerated();
    }

    @Override
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isHardwareAccelerated()) {
            setVideoState(EnumC1705eU.A03);
            this.A0N.A0F().A3a(5);
            AJU(8);
        }
    }

    @Override
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
    }

    @Override
    public final void onCompletion(MediaPlayer mediaPlayer) {
        if (this.A06 != null) {
            this.A06.pause();
        }
        setVideoState(EnumC1705eU.A06);
        seekTo(0);
        this.A03 = 0;
    }

    @Override
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this.A0N.A0F().ABx(A03(390, 11, 85) + i + A03(0, 14, 21) + i2 + A03(14, 2, 108));
        if (this.A01 > 0 && getState() == EnumC1705eU.A0A) {
            this.A01--;
            AJU(6);
            AJM(this.A0B, 10);
        } else {
            setVideoState(EnumC1705eU.A03);
            this.A0N.A0F().A3a(1);
            AJU(7);
        }
        return true;
    }

    @Override
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        switch (i) {
            case 3:
                this.A0K = true;
                if (this.A0D == EnumC1705eU.A0A) {
                    setVideoState(EnumC1705eU.A0A);
                }
                return true;
            case 701:
                setVideoState(EnumC1705eU.A02);
                return false;
            case 702:
                if (!A08()) {
                    return false;
                }
                setVideoState(EnumC1705eU.A0A);
                return false;
            default:
                return false;
        }
    }

    @Override
    public final void onPrepared(MediaPlayer mediaPlayer) {
        setVideoState(EnumC1705eU.A07);
        if (this.A0H && !this.A0G) {
            Activity activityA0E = this.A0N.A0E();
            if (activityA0E != null) {
                this.A0A = new MediaController(activityA0E);
                this.A0A.setAnchorView(this.A09 == null ? this : this.A09);
                this.A0A.setMediaPlayer(this.A0M);
                this.A0A.setEnabled(true);
            } else {
                this.A0A = null;
            }
        }
        setRequestedVolume(this.A00);
        this.A05 = mediaPlayer.getVideoWidth();
        this.A04 = mediaPlayer.getVideoHeight();
        if (this.A03 > 0) {
            int i = this.A03;
            int duration = ((MediaPlayer) AbstractC1812gF.A00(this.A06)).getDuration();
            if (A0P[3].length() != 17) {
                throw new RuntimeException();
            }
            A0P[5] = "vYKpudhGuKF00mC0lqJEZv1Z";
            if (i >= duration) {
                this.A03 = 0;
            }
            this.A06.seekTo(this.A03);
            this.A03 = 0;
        }
        if (this.A0D == EnumC1705eU.A0A) {
            AJM(this.A0B, 8);
        }
    }

    @Override
    public final void onSeekComplete(MediaPlayer mediaPlayer) {
        if (this.A0E == null) {
            return;
        }
        this.A0E.AF9(this.A02, this.A03);
        this.A03 = 0;
    }

    @Override
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.A08 == null) {
            this.A08 = new Surface(surfaceTexture);
        }
        if (!A0A(this.A08)) {
            setVideoState(EnumC1705eU.A03);
            this.A0N.A0F().A3a(4);
            destroy();
        } else if (this.A0C == EnumC1705eU.A05 && !this.A0J) {
            AJM(this.A0B, 7);
        }
    }

    @Override
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        A0A(null);
        if (this.A08 != null) {
            this.A08.release();
            this.A08 = null;
        }
        if (this.A0C != EnumC1705eU.A05) {
            AG7(false, 5);
            return true;
        }
        return true;
    }

    @Override
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        this.A05 = mediaPlayer.getVideoWidth();
        this.A04 = mediaPlayer.getVideoHeight();
        if (this.A05 != 0 && this.A04 != 0) {
            requestLayout();
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x008d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0093  */
    @Override
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.A06 == null) {
            return;
        }
        if (this.A0A != null && this.A0A.isShowing()) {
            return;
        }
        if (!z) {
            if (this.A0C != EnumC1705eU.A05) {
                if (!this.A0N.A0H().A01()) {
                    boolean zA1z = U7.A1z(this.A0N);
                    if (A0P[2].length() != 22) {
                        throw new RuntimeException();
                    }
                    A0P[5] = "q2iXdwHPhxMMYJm8CrOmbfqNZQSE";
                    if (zA1z) {
                        if (Build.VERSION.SDK_INT >= 24) {
                            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                                @Override
                                public final void run() {
                                    this.A00.A0C();
                                }
                            }, 1000L);
                            return;
                        }
                    }
                } else if (Build.VERSION.SDK_INT >= 24) {
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            this.A00.A0C();
                        }
                    }, 1000L);
                    return;
                }
                A9V();
                return;
            }
            return;
        }
        EnumC1705eU enumC1705eU = this.A0C;
        EnumC1705eU enumC1705eU2 = EnumC1705eU.A05;
        if (A0P[6].length() == 4) {
            A0P[6] = "r8oy";
            if (enumC1705eU != enumC1705eU2) {
                return;
            }
        } else if (enumC1705eU != enumC1705eU2) {
            return;
        }
        if (!this.A0J) {
            EnumC1651db enumC1651db = this.A0B;
            if (A0P[3].length() != 17) {
                throw new RuntimeException();
            }
            A0P[1] = "grk6xKjGgtFswoEyrqXB";
            AJM(enumC1651db, 9);
        }
    }

    @Override
    public final void seekTo(int i) {
        if (this.A06 != null && A07()) {
            if (i < getDuration() && i > 0) {
                this.A02 = getCurrentPosition();
                this.A03 = i;
                this.A06.seekTo(i);
                return;
            }
            return;
        }
        this.A03 = i;
    }

    @Override
    public void setBackgroundDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 24) {
            super.setBackgroundDrawable(drawable);
        } else {
            if (!AdInternalSettings.isDebugBuild()) {
                return;
            }
            Log.w(A0Q, A03(121, 102, 21));
        }
    }

    @Override
    public void setBackgroundPlaybackEnabled(boolean z) {
        this.A0F = z;
    }

    @Override
    public void setControlsAnchorView(View view) {
        this.A09 = view;
        view.setOnTouchListener(new ViewOnTouchListenerC1702eR(this));
    }

    @Override
    public void setForeground(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 24) {
            super.setForeground(drawable);
        } else {
            if (!AdInternalSettings.isDebugBuild()) {
                return;
            }
            Log.w(A0Q, A03(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 94, 102));
        }
    }

    @Override
    public void setFullScreen(boolean z) {
        this.A0H = z;
        if (this.A0H && !this.A0G) {
            setOnTouchListener(new ViewOnTouchListenerC1701eQ(this));
        }
    }

    @Override
    public void setRequestedVolume(float f) {
        this.A00 = f;
        if (this.A06 == null || this.A0C == EnumC1705eU.A08) {
            return;
        }
        EnumC1705eU enumC1705eU = this.A0C;
        String[] strArr = A0P;
        if (strArr[0].charAt(16) == strArr[7].charAt(16)) {
            throw new RuntimeException();
        }
        A0P[3] = "xC5rxgqNbqLUjjPrr";
        if (enumC1705eU != EnumC1705eU.A04) {
            this.A06.setVolume(f, f);
        }
    }

    @Override
    public void setVideoMPD(String str) {
    }

    private void setVideoState(EnumC1705eU enumC1705eU) {
        if (enumC1705eU != this.A0C) {
            if (this.A0N.A05().AAF()) {
                String str = A03(TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_5, 23, 106) + enumC1705eU;
            }
            this.A0C = enumC1705eU;
            if (this.A0E != null) {
                this.A0E.AFt(enumC1705eU);
            }
        }
    }

    @Override
    public void setVideoStateChangeListener(InterfaceC1706eV interfaceC1706eV) {
        this.A0E = interfaceC1706eV;
    }

    @Override
    public void setup(Uri uri) {
        MediaPlayer mediaPlayer;
        this.A0N.A0F().A3Z();
        this.A0K = false;
        this.A07 = uri;
        if (this.A06 != null) {
            A09();
            A0A(null);
            mediaPlayer = this.A06;
            setVideoState(EnumC1705eU.A04);
        } else {
            mediaPlayer = new MediaPlayer();
        }
        try {
            if (((String) AbstractC1812gF.A00(uri.getScheme())).equals(A03(379, 5, 2))) {
                A05(mediaPlayer, uri);
            } else {
                mediaPlayer.setDataSource(uri.toString());
            }
            mediaPlayer.setLooping(false);
            mediaPlayer.setOnBufferingUpdateListener(this);
            mediaPlayer.setOnCompletionListener(this);
            mediaPlayer.setOnErrorListener(this);
            mediaPlayer.setOnInfoListener(this);
            mediaPlayer.setOnPreparedListener(this);
            mediaPlayer.setOnVideoSizeChangedListener(this);
            mediaPlayer.setOnSeekCompleteListener(this);
            mediaPlayer.prepareAsync();
            this.A06 = mediaPlayer;
            setVideoState(EnumC1705eU.A08);
        } catch (Exception e) {
            setVideoState(EnumC1705eU.A03);
            this.A0N.A0F().A3a(3);
            mediaPlayer.release();
            Log.e(A0Q, A03(16, 49, 14) + e);
        }
        setSurfaceTextureListener(this);
        if (isAvailable()) {
            onSurfaceTextureAvailable(getSurfaceTexture(), 0, 0);
        }
    }
}
