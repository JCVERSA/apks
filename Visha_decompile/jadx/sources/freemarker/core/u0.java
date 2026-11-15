package freemarker.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.rtsp.RtspMessageChannel;
import com.alibaba.android.arouter.utils.Consts;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.hunantv.media.drm.IDrmSession;
import com.hunantv.media.report.ReportParams;
import com.just.agentweb.AgentActionFragment;
import com.just.agentweb.WebIndicator;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.apiinvoke.invoke.RspCode;
import com.transsion.audiotagger.audio.mp3.MPEGFrameHeader;
import com.transsion.audiotagger.audio.ogg.util.OggPageHeader;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.letswitch.service.api.internal.manager.MediaFile;
import com.transsion.tranplayer.MediaPlayer;
import defpackage.d0d;
import defpackage.d1d;
import defpackage.n0a;
import defpackage.xe1;
import defpackage.xl9;
import defpackage.yk3;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.io.PrintStream;
import java.util.StringTokenizer;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.text.StringSubstitutor;
import org.mozilla.classfile.ByteCode;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;
import org.slf4j.Marker;

public class u0 implements yk3 {
    public static final long[] F = {-2, -1, -1, -1};
    public static final long[] G = {0, 0, -1, -1};
    public static final long[] H = {-4503595332403202L, -8193, -17386027614209L, 1585267068842803199L};
    public static final long[] I = {0, 0, 297241973452963840L, -36028797027352577L};
    public static final long[] J = {0, -9222809086901354496L, 536805376, 0};
    public static final long[] K = {-864764451093480316L, 17376, 24, 0};
    public static final long[] L = {-140737488355329L, -2147483649L, -1, 3509778554814463L};
    public static final long[] M = {-245465970900993L, 141836999983103L, 9187201948305063935L, 2139062143};
    public static final long[] N = {140737488355328L, 0, 0, 0};
    public static final long[] O = {1746833705466331232L, -1, -1, -1};
    public static final long[] P = {-1, -1, 576460748008521727L, -281474976710656L};
    public static final long[] Q = {-1, -1, 0, 0};
    public static final long[] R = {-1, -1, 18014398509481983L, 0};
    public static final long[] S = {-1, -1, 8191, 4611686018427322368L};
    public static final long[] T = {17592185987071L, -9223231299366420481L, -4278190081L, 274877906943L};
    public static final long[] U = {-12893290496L, -1, 8791799069183L, -72057594037927936L};
    public static final long[] V = {34359736251L, 4503599627370495L, 4503599627370492L, 647392446501552128L};
    public static final long[] W = {-281200098803713L, 2305843004918726783L, 2251799813685232L, 67076096};
    public static final long[] X = {2199023255551L, 324259168942755831L, 4495436853045886975L, 7890092085477381L};
    public static final long[] Y = {140183445864062L, 0, 0, 287948935534739455L};
    public static final long[] Z = {-1, -1, -281406257233921L, 1152921504606845055L};
    public static final long[] a0 = {6881498030004502655L, -37, 1125899906842623L, -524288};
    public static final long[] b0 = {4611686018427387903L, -65536, -196609, 1152640029630136575L};
    public static final long[] c0 = {0, -9288674231451648L, -1, 2305843009213693951L};
    public static final long[] d0 = {576460743780532224L, -274743689218L, Long.MAX_VALUE, 486341884};
    public static final int[] e0 = {10, 12, 4, 5, 3, 4, 5, 593, TypedValues.MotionType.TYPE_DRAW_PATH, TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_GODLIKE, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY, TranSceneConfig.SCENE_TYPE_GAME_MLBB_VICTORY, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_1, TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_2, TranSceneConfig.SCENE_TYPE_GAME_HOK_DOMINATE, TranSceneConfig.SCENE_TYPE_GAME_HOK_LEGENDARY, 371, 372, 379, 380, 391, 392, 403, 404, 415, TypedValues.CycleType.TYPE_PATH_ROTATE, TypedValues.CycleType.TYPE_WAVE_PHASE, 426, 436, 437, 447, 448, 460, 461, 470, 471, 483, 484, 497, 498, TypedValues.PositionType.TYPE_CURVE_FIT, 509, TypedValues.PositionType.TYPE_POSITION_TYPE, FrameMetricsAggregator.EVERY_DURATION, 512, InputDeviceCompat.SOURCE_DPAD, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 535, 536, 537, 549, 550, 555, 561, 562, 564, 12, 21, 24, 31, 36, 45, 50, 58, 65, 70, 77, 84, 90, 98, 105, 114, 120, 130, 136, 141, 148, 153, 161, ByteCode.LOOKUPSWITCH, 180, 189, 196, IDrmSession.ERROR_SESSION_DRM_NULL, IDrmSession.ERROR_SESSION_PROVISION_ERROR, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT, 228, 229, 237, 242, 247, 256, 265, 272, OggPageHeader.MAXIMUM_PAGE_HEADER_SIZE, MediaPlayer.Event.Prepared, 301, 308, 318, 5, 6, 14, 15, 38, 41, 47, 48, 163, 164, ByteCode.LRETURN, ByteCode.FRETURN, 184, 185, ByteCode.ATHROW, 192, 193, 198, 199, 200, IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY, IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY, IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR, IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID, IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 224, 230, 231, 232, 234, 235, 236, 239, 240, 241, 244, 245, 246, 249, 250, 258, 259, 260, 274, 275, 276, MediaPlayer.Event.SubtitleLoad, MediaPlayer.Event.EofPaused, MediaPlayer.Event.DisableVideo, 312, 313, 348, 349, TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_4, TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_5, TranSceneConfig.SCENE_TYPE_GAME_HOK_UNRIVALED, TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY, 374, 375, 382, 383, MediaFile.FILE_TYPE_OGM, MediaFile.FILE_TYPE_RV, 408, RspCode.ERROR_CHANNEL_NOT_REGISTER, 418, 419, 428, 429, 439, TranSceneConfig.SCENE_TYPE_GAME_FF, WebIndicator.MAX_DECELERATE_SPEED_DURATION, 451, 463, 464, 473, 474, 486, 487, 500, 501, 527, 528, 541, 542, AgentActionFragment.REQUEST_CODE, 597, 599, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 600, TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO, 599, 601, TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_GODLIKE, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY, TranSceneConfig.SCENE_TYPE_GAME_MLBB_VICTORY, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 509, TypedValues.PositionType.TYPE_POSITION_TYPE, FrameMetricsAggregator.EVERY_DURATION, 512, InputDeviceCompat.SOURCE_DPAD, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 581, 536, 582, 550, 585, 588, 562, 589, 557, 558, 595, TypedValues.MotionType.TYPE_PATHMOTION_ARC, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 50, 51, 52, 70, 73, 76, 80, 81, 46, 48, 42, 43, 13, 14, 17, 6, 7, 10, 59, 61, 63, 66, 20, 23, 8, 11, 15, 18, 21, 22, 24, 25, 47, 48, 49, 67, 70, 73, 77, 78, 43, 45, 56, 58, 60, 63, 3, 5, 46, 47, 48, 66, 69, 72, 76, 77, 42, 44, 38, 39, 8, 9, 12, 1, 2, 5, 55, 57, 59, 62, 3, 6, 10, 13, 16, 17, 19, 20, 52, 53, 54, 72, 75, 78, 82, 83, 48, 50, 44, 45, 61, 63, 65, 68};
    public static final String[] f0 = {"", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, StringSubstitutor.DEFAULT_VAR_START, "#{", null, null, null, null, null, null, null, null, null, null, BooleanUtils.FALSE, BooleanUtils.TRUE, null, null, Consts.DOT, FileTree.PARENT_DIR, null, "..*", "?", "??", "=", "==", "!=", "+=", "-=", "*=", "/=", "%=", "++", "--", null, null, null, null, Marker.ANY_NON_NULL_MARKER, "-", "*", "**", "...", "/", "%", null, null, "!", StringUtils.COMMA, ProcessInfo.SPLIT_NEW_VERSION, StringUtils.PROCESS_POSTFIX_DELIMITER, "[", "]", "(", ")", "{", StringSubstitutor.DEFAULT_VAR_END, "in", "as", "using", null, null, null, null, null, null, ">", null, ">", ">=", null, null, null, null, null, null};
    public static final String[] g0 = {"DEFAULT", "NODIRECTIVE", "FM_EXPRESSION", "IN_PAREN", "NAMED_PARAMETER_EXPRESSION", "EXPRESSION_COMMENT", "NO_SPACE_EXPRESSION", "NO_PARSE"};
    public static final int[] h0 = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2, 2, -1, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2, 2, -1, -1, -1, -1};
    public static final long[] i0 = {-63, -2088961, 2095231};
    public static final long[] j0 = {0, 1040384, 0};
    public int B;
    public int C;
    public int D;
    public int E;
    public String b;
    public FMParser c;
    public int d;
    public int e;
    public int f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;
    public int o;
    public Token p;
    public int q;
    public xl9 s;
    public StringBuffer v;
    public int w;
    public int x;
    public char y;
    public PrintStream r = System.out;
    public final int[] t = new int[TypedValues.MotionType.TYPE_POLAR_RELATIVETO];
    public final int[] u = new int[1218];
    public int z = 0;
    public int A = 0;

    public u0(xl9 xl9Var) {
        this.s = xl9Var;
    }

    public static char k(Token token, int i) {
        String str = token.image;
        int i2 = 0;
        while (true) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != '<' && cCharAt != '[' && cCharAt != '/' && cCharAt != '#') {
                return str.charAt(i2 + i);
            }
            i2++;
        }
    }

    public static int l(Token token, int i) {
        return d0d.c(k(token, i)) ? 12 : 11;
    }

    public static final boolean o(int i, int i2, int i3, long j, long j2) {
        if (i != 0) {
            return (F[i2] & j) != 0;
        }
        return (G[i3] & j2) != 0;
    }

    public static final boolean p(int i, int i2, int i3, long j, long j2) {
        if (i == 0) {
            return (I[i3] & j2) != 0;
        }
        if (i == 51) {
            return (Q[i3] & j2) != 0;
        }
        if (i == 77) {
            return (R[i3] & j2) != 0;
        }
        if (i == 164) {
            return (S[i3] & j2) != 0;
        }
        if (i == 215) {
            return (Z[i3] & j2) != 0;
        }
        if (i == 251) {
            return (a0[i3] & j2) != 0;
        }
        if (i == 32) {
            return (J[i3] & j2) != 0;
        }
        if (i == 33) {
            return (K[i3] & j2) != 0;
        }
        if (i == 48) {
            return (O[i3] & j2) != 0;
        }
        if (i == 49) {
            return (P[i3] & j2) != 0;
        }
        switch (i) {
            case 44:
                return (L[i3] & j2) != 0;
            case 45:
                return (M[i3] & j2) != 0;
            case 46:
                return (N[i3] & j2) != 0;
            default:
                switch (i) {
                    case 166:
                        return (T[i3] & j2) != 0;
                    case 167:
                        return (U[i3] & j2) != 0;
                    case ByteCode.JSR:
                        return (V[i3] & j2) != 0;
                    case 169:
                        return (W[i3] & j2) != 0;
                    case 170:
                        return (X[i3] & j2) != 0;
                    case ByteCode.LOOKUPSWITCH:
                        return (Y[i3] & j2) != 0;
                    default:
                        switch (i) {
                            case 253:
                                return (b0[i3] & j2) != 0;
                            case ByteCode.IMPDEP1:
                                return (c0[i3] & j2) != 0;
                            case 255:
                                return (d0[i3] & j2) != 0;
                            default:
                                return (H[i2] & j) != 0;
                        }
                }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:119:0x018f  */
    /* JADX WARN: Code duplicated, block: B:186:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:187:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:189:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:210:0x0302 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:211:0x0304  */
    /* JADX WARN: Code duplicated, block: B:277:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ec  */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x019b, code lost:
    
        if (r4 > 86) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x019d, code lost:
    
        r2 = 86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x01cb, code lost:
    
        if (r4 > 86) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x020d, code lost:
    
        if (r4 > 85) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x020f, code lost:
    
        r2 = 85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0261, code lost:
    
        if (r4 > 85) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x02bb, code lost:
    
        if (r4 > 118) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x02bd, code lost:
    
        r2 = 118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x03bf, code lost:
    
        if (r4 > 118) goto L191;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int A(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        this.B = 80;
        this.u[0] = i;
        int i7 = 1;
        int i8 = 1;
        int i9 = Integer.MAX_VALUE;
        int i10 = 0;
        int i11 = i2;
        while (true) {
            int i12 = this.C + i7;
            this.C = i12;
            if (i12 == Integer.MAX_VALUE) {
                a();
            }
            char c = this.y;
            int i13 = 60;
            if (c < '@') {
                long j = 1 << c;
                while (true) {
                    int[] iArr = this.u;
                    i8--;
                    int i14 = iArr[i8];
                    if (i14 == 0) {
                        if ((j & 287948901175001088L) != 0) {
                            if (i9 > 89) {
                                i9 = 89;
                            }
                            r(TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_2, TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_4);
                        } else if ((j & 4294977024L) != 0) {
                            if (i9 > 143) {
                                i9 = 143;
                            }
                            q(36);
                        } else {
                            char c2 = this.y;
                            if (c2 == '&') {
                                n(TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_5, TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL);
                            } else if (c2 == '.') {
                                n(TranSceneConfig.SCENE_TYPE_GAME_HOK_DOMINATE, TranSceneConfig.SCENE_TYPE_GAME_HOK_LEGENDARY);
                            } else if (c2 == '/') {
                                n(TranSceneConfig.SCENE_TYPE_GAME_HOK_SWEEP, TranSceneConfig.SCENE_TYPE_GAME_HOK_UNRIVALED);
                            } else if (c2 == '#' || c2 == '$') {
                                q(33);
                            } else if (c2 == '<') {
                                q(22);
                            } else if (c2 == '\'') {
                                r(TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY, 367);
                            } else if (c2 == '\"') {
                                r(368, 370);
                            }
                        }
                        char c3 = this.y;
                        if (c3 == '$') {
                            if (i9 > 133) {
                                i9 = 133;
                            }
                            s(29, 30);
                        } else if (c3 != '&') {
                            if (c3 == '<' && i9 > 107) {
                                i9 = 107;
                            }
                        }
                    } else if (i14 != i7) {
                        if (i14 != 28) {
                            if (i14 == 29) {
                                if ((j & 287948969894477824L) != 0) {
                                    if (i9 > 133) {
                                        i9 = 133;
                                    }
                                    s(29, 30);
                                }
                            } else if (i14 != 31) {
                                if (i14 != 67) {
                                    if (i14 != 70) {
                                        if (i14 == 77) {
                                            if (this.y == '&') {
                                            }
                                        } else if (i14 != 80) {
                                            if (i14 != 63) {
                                                if (i14 != 64) {
                                                    if (i14 != 73) {
                                                        if (i14 != 74) {
                                                            switch (i14) {
                                                                case 4:
                                                                    if ((j & 287948901175001088L) != 0) {
                                                                        r(368, 370);
                                                                    }
                                                                    break;
                                                                case 5:
                                                                    if (this.y == '\"') {
                                                                    }
                                                                    break;
                                                                case 6:
                                                                    if ((j & 635655159808L) != 0) {
                                                                        r(368, 370);
                                                                    }
                                                                    break;
                                                                case 7:
                                                                    if (this.y == '\'') {
                                                                        r(TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY, 367);
                                                                    }
                                                                    break;
                                                                case 8:
                                                                    if ((j & (-549755813889L)) != 0) {
                                                                        r(TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY, 367);
                                                                    }
                                                                    break;
                                                                default:
                                                                    switch (i14) {
                                                                        case 11:
                                                                            if ((j & 287948901175001088L) != 0) {
                                                                                r(TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY, 367);
                                                                            }
                                                                            break;
                                                                        case 12:
                                                                            if (this.y == '\'') {
                                                                            }
                                                                            break;
                                                                        case 13:
                                                                            if ((j & 635655159808L) != 0) {
                                                                                r(TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY, 367);
                                                                            }
                                                                            break;
                                                                        default:
                                                                            switch (i14) {
                                                                                case 15:
                                                                                    if (this.y == '\"') {
                                                                                        s(16, 17);
                                                                                    }
                                                                                    break;
                                                                                case 16:
                                                                                    if ((j & (-17179869185L)) != 0) {
                                                                                        s(16, 17);
                                                                                    }
                                                                                    break;
                                                                                case 17:
                                                                                    if (this.y == '\"') {
                                                                                    }
                                                                                    break;
                                                                                case 18:
                                                                                    if (this.y == '\'') {
                                                                                        s(19, 20);
                                                                                    }
                                                                                    break;
                                                                                case 19:
                                                                                    if ((j & (-549755813889L)) != 0) {
                                                                                        s(19, 20);
                                                                                    }
                                                                                    break;
                                                                                case 20:
                                                                                    if (this.y == '\'') {
                                                                                    }
                                                                                    break;
                                                                                case 21:
                                                                                    if (this.y == '<' && i9 > 107) {
                                                                                        i9 = 107;
                                                                                    }
                                                                                    break;
                                                                                case 22:
                                                                                    if (this.y == '=' && i9 > 108) {
                                                                                        i9 = 108;
                                                                                    }
                                                                                    break;
                                                                                case 23:
                                                                                    if (this.y == '<') {
                                                                                        q(22);
                                                                                    }
                                                                                    break;
                                                                                case 24:
                                                                                    if (this.y == '&') {
                                                                                    }
                                                                                    break;
                                                                                default:
                                                                                    switch (i14) {
                                                                                        case 34:
                                                                                            if (this.y == '$') {
                                                                                                q(33);
                                                                                            }
                                                                                            break;
                                                                                        case 35:
                                                                                            if (this.y == '#') {
                                                                                                q(33);
                                                                                            }
                                                                                            break;
                                                                                        case 36:
                                                                                            if ((j & 4294977024L) != 0) {
                                                                                                if (i9 > 143) {
                                                                                                    i9 = 143;
                                                                                                }
                                                                                                q(36);
                                                                                            }
                                                                                            break;
                                                                                        case 37:
                                                                                            if (this.y == '/') {
                                                                                                n(TranSceneConfig.SCENE_TYPE_GAME_HOK_SWEEP, TranSceneConfig.SCENE_TYPE_GAME_HOK_UNRIVALED);
                                                                                            }
                                                                                            break;
                                                                                        case 38:
                                                                                            if (this.y == '>' && i9 > 140) {
                                                                                                i6 = 140;
                                                                                                i9 = i6;
                                                                                            }
                                                                                            break;
                                                                                        default:
                                                                                            switch (i14) {
                                                                                                case 40:
                                                                                                    if (this.y == '.') {
                                                                                                        n(TranSceneConfig.SCENE_TYPE_GAME_HOK_DOMINATE, TranSceneConfig.SCENE_TYPE_GAME_HOK_LEGENDARY);
                                                                                                    }
                                                                                                    break;
                                                                                                case 41:
                                                                                                    char c4 = this.y;
                                                                                                    if (c4 != '!' ? !(c4 != '<' || i9 <= 93) : i9 > 93) {
                                                                                                        i9 = 93;
                                                                                                    }
                                                                                                    break;
                                                                                                case 42:
                                                                                                    char c5 = this.y;
                                                                                                    if (c5 == '.') {
                                                                                                        int i15 = this.B;
                                                                                                        this.B = i15 + 1;
                                                                                                        iArr[i15] = 43;
                                                                                                    }
                                                                                                    if (c5 == '.') {
                                                                                                        int i16 = this.B;
                                                                                                        this.B = i16 + 1;
                                                                                                        iArr[i16] = 41;
                                                                                                    }
                                                                                                    break;
                                                                                                case 43:
                                                                                                    if (this.y == '!' && i9 > 93) {
                                                                                                        i9 = 93;
                                                                                                    }
                                                                                                    break;
                                                                                                case 44:
                                                                                                    if (this.y == '.') {
                                                                                                        int i17 = this.B;
                                                                                                        this.B = i17 + 1;
                                                                                                        iArr[i17] = 43;
                                                                                                    }
                                                                                                    break;
                                                                                                case 45:
                                                                                                    if ((j & 287948901175001088L) != 0) {
                                                                                                        if (i9 > 89) {
                                                                                                            i9 = 89;
                                                                                                        }
                                                                                                        r(TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_2, TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_4);
                                                                                                    }
                                                                                                    break;
                                                                                                case 46:
                                                                                                    if ((j & 287948901175001088L) != 0) {
                                                                                                        if (i9 > 89) {
                                                                                                            i9 = 89;
                                                                                                        }
                                                                                                        q(46);
                                                                                                    }
                                                                                                    break;
                                                                                                case 47:
                                                                                                    if ((j & 287948901175001088L) != 0) {
                                                                                                        s(47, 48);
                                                                                                    }
                                                                                                    break;
                                                                                                case 48:
                                                                                                    if (this.y == '.') {
                                                                                                        q(49);
                                                                                                    }
                                                                                                    break;
                                                                                                case 49:
                                                                                                    if ((j & 287948901175001088L) != 0) {
                                                                                                        if (i9 > 90) {
                                                                                                            i9 = 90;
                                                                                                        }
                                                                                                        q(49);
                                                                                                    }
                                                                                                    break;
                                                                                            }
                                                                                            break;
                                                                                    }
                                                                                    break;
                                                                            }
                                                                            break;
                                                                    }
                                                                    break;
                                                            }
                                                        } else if (this.y == ';') {
                                                            int i18 = this.B;
                                                            this.B = i18 + 1;
                                                            iArr[i18] = 73;
                                                        }
                                                    } else if (this.y == '=' && i9 > 110) {
                                                        i6 = 110;
                                                        i9 = i6;
                                                    }
                                                } else if (this.y == ';' && i9 > 107) {
                                                    i9 = 107;
                                                }
                                            } else if (this.y == '&') {
                                                n(TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_5, TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL);
                                            }
                                        } else if ((j & 287948969894477824L) != 0) {
                                            if (i9 > 133) {
                                                i9 = 133;
                                            }
                                            s(29, 30);
                                        }
                                    } else if (this.y == ';' && i9 > 109) {
                                        i6 = 109;
                                        i9 = i6;
                                    }
                                } else if (this.y == ';') {
                                    q(22);
                                }
                            } else if ((j & 288335929267978240L) != 0) {
                                if (i9 > 133) {
                                    i9 = 133;
                                }
                                s(29, 30);
                            }
                        } else if (this.y == '$') {
                            if (i9 > 133) {
                                i9 = 133;
                            }
                            s(29, 30);
                        }
                    } else if ((j & (-17179869185L)) != 0) {
                        r(368, 370);
                    }
                    if (i8 != i10) {
                        i7 = 1;
                    }
                }
            } else if (c < 128) {
                long j2 = 1 << (c & '?');
                while (true) {
                    int[] iArr2 = this.u;
                    i8--;
                    switch (iArr2[i8]) {
                        case 0:
                            if ((j2 & 576460745995190271L) != 0) {
                                if (i9 > 133) {
                                    i9 = 133;
                                }
                                s(29, 30);
                            } else {
                                char c6 = this.y;
                                if (c6 == '\\') {
                                    n(371, 374);
                                } else if (c6 == '|') {
                                    int i19 = this.B;
                                    this.B = i19 + 1;
                                    iArr2[i19] = 26;
                                }
                            }
                            char c7 = this.y;
                            if (c7 == 'g') {
                                s(58, 79);
                            } else if (c7 == 'l') {
                                s(51, 53);
                            } else if (c7 == '\\') {
                                q(31);
                            } else if (c7 != '|') {
                                if (c7 == 'r') {
                                    n(331, 332);
                                }
                            } else if (i9 > 119) {
                                i9 = 119;
                            }
                            break;
                        case 1:
                            if (((-268435457) & j2) != 0) {
                                r(368, 370);
                            }
                            break;
                        case 2:
                            if (this.y == '\\') {
                                n(375, 376);
                            }
                            break;
                        case 3:
                            if (this.y == 'x') {
                                int i20 = this.B;
                                this.B = i20 + 1;
                                iArr2[i20] = 4;
                            }
                            break;
                        case 4:
                            if ((j2 & 541165879422L) != 0) {
                                r(368, 370);
                            }
                            break;
                        case 5:
                        case 7:
                        case 12:
                        case 15:
                        case 17:
                        case 18:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 31:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 63:
                        case 64:
                        case 67:
                        case 70:
                        case 73:
                        case 74:
                        case 77:
                        default:
                            break;
                        case 6:
                            if ((582179063439818752L & j2) != 0) {
                                r(368, 370);
                            }
                            break;
                        case 8:
                            if (((-268435457) & j2) != 0) {
                                r(TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY, 367);
                            }
                            break;
                        case 9:
                            if (this.y == '\\') {
                                n(377, 378);
                            }
                            break;
                        case 10:
                            if (this.y == 'x') {
                                int i21 = this.B;
                                this.B = i21 + 1;
                                iArr2[i21] = 11;
                            }
                            break;
                        case 11:
                            if ((j2 & 541165879422L) != 0) {
                                r(TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY, 367);
                            }
                            break;
                        case 13:
                            if ((582179063439818752L & j2) != 0) {
                                r(TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY, 367);
                            }
                            break;
                        case 14:
                            if (this.y == 'r') {
                                n(331, 332);
                            }
                            break;
                        case 16:
                            n(379, 380);
                            break;
                        case 19:
                            n(381, 382);
                            break;
                        case 25:
                        case 26:
                            if (this.y == '|' && i9 > 119) {
                                i3 = 119;
                                i9 = i3;
                            }
                            break;
                        case 27:
                            if (this.y == '|') {
                                int i22 = this.B;
                                this.B = i22 + 1;
                                iArr2[i22] = 26;
                            }
                            break;
                        case 28:
                            if ((576460745995190271L & j2) != 0) {
                                if (i9 > 133) {
                                    i9 = 133;
                                }
                                s(29, 30);
                            }
                            break;
                        case 29:
                            if ((576460745995190271L & j2) != 0) {
                                int i23 = i9 > 133 ? 133 : i9;
                                s(29, 30);
                                i9 = i23;
                            }
                            break;
                        case 30:
                            if (this.y == '\\') {
                                q(31);
                            }
                            break;
                        case 32:
                            if (this.y == '\\') {
                                q(31);
                            }
                            break;
                        case 33:
                            if (this.y == '{' && i9 > 134) {
                                i3 = 134;
                                i9 = i3;
                            }
                            break;
                        case 38:
                            if (this.y == ']' && i9 > 140) {
                                i3 = 140;
                                i9 = i3;
                            }
                            break;
                        case 50:
                            if (this.y == 'l') {
                                s(51, 53);
                            }
                            break;
                        case 51:
                            if (this.y == 't') {
                                if (i9 > 107) {
                                    i9 = 107;
                                }
                                break;
                            }
                            break;
                        case 52:
                            if (this.y == 'e' && i9 > 108) {
                                i9 = 108;
                            }
                            break;
                        case 53:
                        case 56:
                            if (this.y == 't') {
                                q(52);
                            }
                            break;
                        case 54:
                            if (this.y == '\\') {
                                n(371, 374);
                            }
                            break;
                        case 55:
                            if (this.y == 'l') {
                                q(51);
                            }
                            break;
                        case 57:
                            if (this.y == 'l') {
                                int i24 = this.B;
                                this.B = i24 + 1;
                                iArr2[i24] = 56;
                            }
                            break;
                        case 58:
                            if (this.y == 't' && i9 > 109) {
                                i4 = 109;
                                i9 = i4;
                            }
                            break;
                        case 59:
                            if (this.y == 'g') {
                                q(58);
                            }
                            break;
                        case 60:
                            if (this.y == 'e' && i9 > 110) {
                                i4 = 110;
                                i9 = i4;
                            }
                            break;
                        case 61:
                        case 79:
                            if (this.y == 't') {
                                q(i13);
                            }
                            break;
                        case 62:
                            if (this.y == 'g') {
                                int i25 = this.B;
                                this.B = i25 + 1;
                                iArr2[i25] = 61;
                            }
                            break;
                        case 65:
                            if (this.y == 't') {
                                int i26 = this.B;
                                this.B = i26 + 1;
                                iArr2[i26] = 64;
                            }
                            break;
                        case 66:
                            if (this.y == 'l') {
                                int i27 = this.B;
                                this.B = i27 + 1;
                                iArr2[i27] = 65;
                            }
                            break;
                        case 68:
                            if (this.y == 't') {
                                int i28 = this.B;
                                this.B = i28 + 1;
                                iArr2[i28] = 67;
                            }
                            break;
                        case 69:
                            if (this.y == 'l') {
                                int i29 = this.B;
                                this.B = i29 + 1;
                                iArr2[i29] = 68;
                            }
                            break;
                        case 71:
                            if (this.y == 't') {
                                int i30 = this.B;
                                this.B = i30 + 1;
                                iArr2[i30] = 70;
                            }
                            break;
                        case 72:
                            if (this.y == 'g') {
                                int i31 = this.B;
                                this.B = i31 + 1;
                                iArr2[i31] = 71;
                            }
                            break;
                        case 75:
                            if (this.y == 't') {
                                int i32 = this.B;
                                this.B = i32 + 1;
                                iArr2[i32] = 74;
                            }
                            break;
                        case 76:
                            if (this.y == 'g') {
                                int i33 = this.B;
                                this.B = i33 + 1;
                                iArr2[i33] = 75;
                            }
                            break;
                        case 78:
                            if (this.y == 'g') {
                                s(58, 79);
                            }
                            break;
                        case 80:
                            if ((576460745995190271L & j2) != 0) {
                                if (i9 > 133) {
                                    i5 = 30;
                                    i9 = 133;
                                } else {
                                    i5 = 30;
                                }
                                s(29, i5);
                            } else if (this.y == '\\') {
                                q(31);
                            }
                            break;
                    }
                    if (i8 != i10) {
                        i13 = 60;
                    }
                }
            } else {
                int i34 = c >> '\b';
                int i35 = c >> 14;
                long j3 = 1 << (i34 & 63);
                int i36 = (c & 255) >> 6;
                long j4 = 1 << (c & '?');
                do {
                    i8--;
                    int i37 = this.u[i8];
                    if (i37 != 0) {
                        if (i37 != 1) {
                            if (i37 != 8) {
                                if (i37 != 16) {
                                    if (i37 != 19) {
                                        if ((i37 == 29 || i37 == 80) && p(i34, i35, i36, j3, j4)) {
                                            if (i9 > 133) {
                                                i9 = 133;
                                            }
                                            s(29, 30);
                                        }
                                    } else if (o(i34, i35, i36, j3, j4)) {
                                        n(381, 382);
                                    }
                                } else if (o(i34, i35, i36, j3, j4)) {
                                    n(379, 380);
                                }
                            } else if (o(i34, i35, i36, j3, j4)) {
                                n(TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY, 367);
                            }
                        } else if (o(i34, i35, i36, j3, j4)) {
                            n(368, 370);
                        }
                    } else if (p(i34, i35, i36, j3, j4)) {
                        if (i9 > 133) {
                            i9 = 133;
                        }
                        s(29, 30);
                    }
                } while (i8 != i10);
            }
            if (i9 != Integer.MAX_VALUE) {
                this.E = i9;
                this.D = i11;
                i9 = Integer.MAX_VALUE;
            }
            i11++;
            i8 = this.B;
            this.B = i10;
            i10 = 80 - i10;
            if (i8 == i10) {
                return i11;
            }
            try {
                this.y = this.s.l();
                i7 = 1;
            } catch (IOException unused) {
                return i11;
            }
        }
    }

    public final int B(int i, int i2) {
        this.B = 13;
        int i3 = 0;
        this.u[0] = i;
        int i4 = Integer.MAX_VALUE;
        int i5 = i2;
        int i6 = 1;
        int i7 = 0;
        int i8 = Integer.MAX_VALUE;
        while (true) {
            int i9 = this.C + 1;
            this.C = i9;
            if (i9 == i4) {
                a();
            }
            char c = this.y;
            if (c < '@') {
                long j = 1 << c;
                do {
                    int[] iArr = this.u;
                    i6--;
                    switch (iArr[i6]) {
                        case 0:
                            if ((j & (-1152956688978935809L)) != 0) {
                                if (i8 > 147) {
                                    i8 = 147;
                                }
                                q(6);
                            } else if ((j & 1152956688978935808L) != 0 && i8 > 148) {
                                i8 = 148;
                            }
                            char c2 = this.y;
                            if (c2 == '-') {
                                n(i3, 1);
                            } else if (c2 == '<') {
                                int[] iArr2 = this.u;
                                int i10 = this.B;
                                this.B = i10 + 1;
                                iArr2[i10] = 1;
                            }
                            break;
                        case 1:
                            if (this.y == '/') {
                                s(2, 3);
                            }
                            break;
                        case 2:
                            if (this.y == '#') {
                                q(3);
                            }
                            break;
                        case 4:
                            if ((j & 4294977024L) != 0) {
                                n(2, 3);
                            }
                            break;
                        case 5:
                            if (this.y == '>' && i8 > 146) {
                                i8 = 146;
                            }
                            break;
                        case 6:
                            if ((j & (-1152956688978935809L)) != 0) {
                                if (i8 > 147) {
                                    i8 = 147;
                                }
                                q(6);
                            }
                            break;
                        case 7:
                            if ((j & 1152956688978935808L) != 0 && i8 > 148) {
                                i8 = 148;
                            }
                            break;
                        case 8:
                            if (this.y == '-') {
                                n(i3, 1);
                            }
                            break;
                        case 9:
                            if (this.y == '>' && i8 > 145) {
                                i8 = 145;
                            }
                            break;
                        case 10:
                            if (this.y == '-') {
                                int i11 = this.B;
                                this.B = i11 + 1;
                                iArr[i11] = 9;
                            }
                            break;
                        case 12:
                            if (this.y == '-') {
                                int i12 = this.B;
                                this.B = i12 + 1;
                                iArr[i12] = 11;
                            }
                            break;
                    }
                } while (i6 != i7);
            } else if (c < 128) {
                long j2 = 1 << (c & '?');
                do {
                    i6--;
                    int i13 = this.u[i6];
                    if (i13 == 0) {
                        if ((j2 & (-134217729)) != 0) {
                            if (i8 > 147) {
                                i8 = 147;
                            }
                            q(6);
                        } else if (this.y == '[' && i8 > 148) {
                            i8 = 148;
                        }
                        if (this.y == '[') {
                            int[] iArr3 = this.u;
                            int i14 = this.B;
                            this.B = i14 + 1;
                            iArr3[i14] = 1;
                        }
                    } else if (i13 != 3) {
                        if (i13 != 11) {
                            if (i13 != 5) {
                                if (i13 != 6) {
                                    if (i13 == 7 && this.y == '[' && i8 > 148) {
                                        i8 = 148;
                                    }
                                } else if ((j2 & (-134217729)) != 0) {
                                    if (i8 > 147) {
                                        i8 = 147;
                                    }
                                    q(6);
                                }
                            } else if (this.y == ']') {
                                if (i8 > 146) {
                                    i8 = 146;
                                }
                            }
                        } else if (this.y == ']' && i8 > 145) {
                            i8 = 145;
                        }
                    } else if ((j2 & 576460743847706622L) != 0) {
                        n(4, 6);
                    }
                } while (i6 != i7);
            } else {
                int i15 = c >> '\b';
                int i16 = c >> 14;
                long j3 = 1 << (i15 & 63);
                int i17 = (c & 255) >> 6;
                long j4 = 1 << (c & '?');
                do {
                    i6--;
                    int i18 = this.u[i6];
                    if ((i18 == 0 || i18 == 6) && o(i15, i16, i17, j3, j4)) {
                        if (i8 > 147) {
                            i8 = 147;
                        }
                        q(6);
                    }
                } while (i6 != i7);
            }
            if (i8 != Integer.MAX_VALUE) {
                this.E = i8;
                this.D = i5;
                i8 = Integer.MAX_VALUE;
            }
            i5++;
            i6 = this.B;
            this.B = i7;
            i7 = 13 - i7;
            if (i6 == i7) {
                return i5;
            }
            try {
                this.y = this.s.l();
                i4 = Integer.MAX_VALUE;
                i3 = 0;
            } catch (IOException unused) {
                return i5;
            }
        }
    }

    public final int C() {
        char c = this.y;
        if (c != '#') {
            return c != '$' ? u(2, 0) : K(2048L);
        }
        return K(4096L);
    }

    public final int D() {
        char c = this.y;
        if (c != '#') {
            return c != '$' ? v(2, 0) : L(2048L);
        }
        return L(4096L);
    }

    public final int E() {
        char c = this.y;
        if (c == '!') {
            this.E = 120;
            return M(34359738368L, 0L);
        }
        if (c == '%') {
            this.E = 117;
            return M(FileUtils.ONE_TB, 0L);
        }
        if (c == '[') {
            return c0(0, 124, 2);
        }
        if (c == ']') {
            return n0(0, 125);
        }
        if (c == 'a') {
            return M(0L, 8L);
        }
        if (c == 'f') {
            return M(8388608L, 0L);
        }
        if (c == 'i') {
            return M(0L, 4L);
        }
        if (c == '{') {
            return n0(0, 128);
        }
        if (c == '}') {
            return n0(0, 129);
        }
        if (c == ':') {
            return n0(0, 123);
        }
        if (c == ';') {
            return n0(0, 122);
        }
        if (c == 't') {
            return M(16777216L, 0L);
        }
        if (c == 'u') {
            return M(0L, 16L);
        }
        switch (c) {
            case '(':
                return n0(0, 126);
            case ')':
                return n0(0, 127);
            case '*':
                this.E = 113;
                return M(1126174784749568L, 0L);
            case '+':
                this.E = 111;
                return M(2267742732288L, 0L);
            case ',':
                return n0(0, 121);
            case '-':
                this.E = 112;
                return M(4535485464576L, 0L);
            case '.':
                this.E = 91;
                return M(2251801155862528L, 0L);
            case '/':
                this.E = 116;
                return M(549755813888L, 0L);
            default:
                switch (c) {
                    case '=':
                        this.E = 97;
                        return M(17179869184L, 0L);
                    case '>':
                        return n0(0, 139);
                    case '?':
                        this.E = 95;
                        return M(4294967296L, 0L);
                    default:
                        return w(1, 0);
                }
        }
    }

    public final int F() {
        char c = this.y;
        if (c == '!') {
            this.E = 120;
            return N(34359738368L, 0L);
        }
        if (c == '%') {
            this.E = 117;
            return N(FileUtils.ONE_TB, 0L);
        }
        if (c == '[') {
            return d0(0, 124, 2);
        }
        if (c == ']') {
            return n0(0, 125);
        }
        if (c == 'a') {
            return N(0L, 8L);
        }
        if (c == 'f') {
            return N(8388608L, 0L);
        }
        if (c == 'i') {
            return N(0L, 4L);
        }
        if (c == '{') {
            return n0(0, 128);
        }
        if (c == '}') {
            return n0(0, 129);
        }
        if (c == ':') {
            return n0(0, 123);
        }
        if (c == ';') {
            return n0(0, 122);
        }
        if (c == 't') {
            return N(16777216L, 0L);
        }
        if (c == 'u') {
            return N(0L, 16L);
        }
        switch (c) {
            case '(':
                return n0(0, 126);
            case ')':
                return n0(0, 127);
            case '*':
                this.E = 113;
                return N(1126174784749568L, 0L);
            case '+':
                this.E = 111;
                return N(2267742732288L, 0L);
            case ',':
                return n0(0, 121);
            case '-':
                this.E = 112;
                return N(4535485464576L, 0L);
            case '.':
                this.E = 91;
                return N(2251801155862528L, 0L);
            case '/':
                this.E = 116;
                return N(549755813888L, 0L);
            default:
                switch (c) {
                    case '=':
                        this.E = 97;
                        return N(17179869184L, 0L);
                    case '>':
                        this.E = 141;
                        return N(0L, 16384L);
                    case '?':
                        this.E = 95;
                        return N(4294967296L, 0L);
                    default:
                        return x(1, 0);
                }
        }
    }

    public final int G() {
        char c = this.y;
        if (c == '!') {
            this.E = 120;
            return O(34359738368L, 0L);
        }
        if (c == '%') {
            this.E = 117;
            return O(FileUtils.ONE_TB, 0L);
        }
        if (c == '[') {
            return e0(0, 124, 2);
        }
        if (c == ']') {
            return n0(0, 125);
        }
        if (c == 'a') {
            return O(0L, 8L);
        }
        if (c == 'f') {
            return O(8388608L, 0L);
        }
        if (c == 'i') {
            return O(0L, 4L);
        }
        if (c == '{') {
            return n0(0, 128);
        }
        if (c == '}') {
            return n0(0, 129);
        }
        if (c == ':') {
            return n0(0, 123);
        }
        if (c == ';') {
            return n0(0, 122);
        }
        if (c == 't') {
            return O(16777216L, 0L);
        }
        if (c == 'u') {
            return O(0L, 16L);
        }
        switch (c) {
            case '(':
                return n0(0, 126);
            case ')':
                return n0(0, 127);
            case '*':
                this.E = 113;
                return O(1126174784749568L, 0L);
            case '+':
                this.E = 111;
                return O(2267742732288L, 0L);
            case ',':
                return n0(0, 121);
            case '-':
                this.E = 112;
                return O(4535485464576L, 0L);
            case '.':
                this.E = 91;
                return O(2251801155862528L, 0L);
            case '/':
                this.E = 116;
                return O(549755813888L, 0L);
            default:
                switch (c) {
                    case '=':
                        this.E = 97;
                        return O(17179869184L, 0L);
                    case '>':
                        return n0(0, 139);
                    case '?':
                        this.E = 95;
                        return O(4294967296L, 0L);
                    default:
                        return y(1, 0);
                }
        }
    }

    public final int H() {
        return this.y != '-' ? z(1, 0) : f0(0, 82, 3);
    }

    public final int I() {
        char c = this.y;
        if (c == '!') {
            this.E = 120;
            return P(34359738368L, 0L);
        }
        if (c == '%') {
            this.E = 117;
            return P(FileUtils.ONE_TB, 0L);
        }
        if (c == '[') {
            return n0(0, 124);
        }
        if (c == ']') {
            return n0(0, 125);
        }
        if (c == 'a') {
            return P(0L, 8L);
        }
        if (c == 'f') {
            return P(8388608L, 0L);
        }
        if (c == 'i') {
            return P(0L, 4L);
        }
        if (c == '{') {
            return n0(0, 128);
        }
        if (c == '}') {
            return n0(0, 129);
        }
        if (c == ':') {
            return n0(0, 123);
        }
        if (c == ';') {
            return n0(0, 122);
        }
        if (c == 't') {
            return P(16777216L, 0L);
        }
        if (c == 'u') {
            return P(0L, 16L);
        }
        switch (c) {
            case '(':
                return n0(0, 126);
            case ')':
                return n0(0, 127);
            case '*':
                this.E = 113;
                return P(1126174784749568L, 0L);
            case '+':
                this.E = 111;
                return P(2267742732288L, 0L);
            case ',':
                return n0(0, 121);
            case '-':
                this.E = 112;
                return P(4535485464576L, 0L);
            case '.':
                this.E = 91;
                return P(2251801155862528L, 0L);
            case '/':
                this.E = 116;
                return P(549755813888L, 0L);
            default:
                switch (c) {
                    case '=':
                        this.E = 97;
                        return P(17179869184L, 0L);
                    case '>':
                        return n0(0, 139);
                    case '?':
                        this.E = 95;
                        return P(4294967296L, 0L);
                    default:
                        return A(0, 0);
                }
        }
    }

    public final int J() {
        return B(0, 0);
    }

    public final int K(long j) {
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL == '{') {
                if ((2048 & j) != 0) {
                    return n0(1, 75);
                }
                if ((4096 & j) != 0) {
                    return n0(1, 76);
                }
            }
            return h0(0, 0L, j);
        } catch (IOException unused) {
            o0(0, 0L, j);
            return 1;
        }
    }

    public final int L(long j) {
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL == '{') {
                if ((2048 & j) != 0) {
                    return n0(1, 75);
                }
                if ((4096 & j) != 0) {
                    return n0(1, 76);
                }
            }
            return i0(0, 0L, j);
        } catch (IOException unused) {
            p0(0, 0L, j);
            return 1;
        }
    }

    public final int M(long j, long j2) {
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != '*') {
                if (cL != '+') {
                    if (cL != '-') {
                        if (cL == '.') {
                            if ((268435456 & j) != 0) {
                                this.E = 92;
                                this.D = 1;
                            }
                            return Q(j, 2251800887427072L, j2, 0L);
                        }
                        if (cL != '=') {
                            if (cL != '?') {
                                if (cL == 'a') {
                                    return Q(j, 8388608L, j2, 0L);
                                }
                                if (cL != 'n') {
                                    if (cL == 'r') {
                                        return Q(j, 16777216L, j2, 0L);
                                    }
                                    if (cL == 's') {
                                        return (8 & j2) != 0 ? c0(1, 131, 84) : Q(j, 0L, j2, 16L);
                                    }
                                } else if ((4 & j2) != 0) {
                                    return c0(1, 130, 84);
                                }
                            } else if ((4294967296L & j) != 0) {
                                return n0(1, 96);
                            }
                        } else {
                            if ((17179869184L & j) != 0) {
                                return n0(1, 98);
                            }
                            if ((34359738368L & j) != 0) {
                                return n0(1, 99);
                            }
                            if ((68719476736L & j) != 0) {
                                return n0(1, 100);
                            }
                            if ((137438953472L & j) != 0) {
                                return n0(1, 101);
                            }
                            if ((274877906944L & j) != 0) {
                                return n0(1, 102);
                            }
                            if ((549755813888L & j) != 0) {
                                return n0(1, 103);
                            }
                            if ((FileUtils.ONE_TB & j) != 0) {
                                return n0(1, 104);
                            }
                        }
                    } else if ((4398046511104L & j) != 0) {
                        return n0(1, 106);
                    }
                } else if ((2199023255552L & j) != 0) {
                    return n0(1, 105);
                }
            } else if ((FileUtils.ONE_PB & j) != 0) {
                return n0(1, 114);
            }
            return j0(0, 0L, j, j2);
        } catch (IOException unused) {
            q0(0, 0L, j, j2);
            return 1;
        }
    }

    public final int N(long j, long j2) {
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != '*') {
                if (cL != '+') {
                    if (cL != '-') {
                        if (cL == '.') {
                            if ((268435456 & j) != 0) {
                                this.E = 92;
                                this.D = 1;
                            }
                            return R(j, 2251800887427072L, j2, 0L);
                        }
                        if (cL != '=') {
                            if (cL != '?') {
                                if (cL == 'a') {
                                    return R(j, 8388608L, j2, 0L);
                                }
                                if (cL != 'n') {
                                    if (cL == 'r') {
                                        return R(j, 16777216L, j2, 0L);
                                    }
                                    if (cL == 's') {
                                        return (8 & j2) != 0 ? d0(1, 131, 81) : R(j, 0L, j2, 16L);
                                    }
                                } else if ((4 & j2) != 0) {
                                    return d0(1, 130, 81);
                                }
                            } else if ((4294967296L & j) != 0) {
                                return n0(1, 96);
                            }
                        } else {
                            if ((17179869184L & j) != 0) {
                                return n0(1, 98);
                            }
                            if ((34359738368L & j) != 0) {
                                return n0(1, 99);
                            }
                            if ((68719476736L & j) != 0) {
                                return n0(1, 100);
                            }
                            if ((137438953472L & j) != 0) {
                                return n0(1, 101);
                            }
                            if ((274877906944L & j) != 0) {
                                return n0(1, 102);
                            }
                            if ((549755813888L & j) != 0) {
                                return n0(1, 103);
                            }
                            if ((FileUtils.ONE_TB & j) != 0) {
                                return n0(1, 104);
                            }
                            if ((16384 & j2) != 0) {
                                return n0(1, 142);
                            }
                        }
                    } else if ((4398046511104L & j) != 0) {
                        return n0(1, 106);
                    }
                } else if ((2199023255552L & j) != 0) {
                    return n0(1, 105);
                }
            } else if ((FileUtils.ONE_PB & j) != 0) {
                return n0(1, 114);
            }
            return k0(0, 0L, j, j2);
        } catch (IOException unused) {
            r0(0, 0L, j, j2);
            return 1;
        }
    }

    public final int O(long j, long j2) {
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != '*') {
                if (cL != '+') {
                    if (cL != '-') {
                        if (cL == '.') {
                            if ((268435456 & j) != 0) {
                                this.E = 92;
                                this.D = 1;
                            }
                            return S(j, 2251800887427072L, j2, 0L);
                        }
                        if (cL != '=') {
                            if (cL != '?') {
                                if (cL == 'a') {
                                    return S(j, 8388608L, j2, 0L);
                                }
                                if (cL != 'n') {
                                    if (cL == 'r') {
                                        return S(j, 16777216L, j2, 0L);
                                    }
                                    if (cL == 's') {
                                        return (8 & j2) != 0 ? e0(1, 131, 86) : S(j, 0L, j2, 16L);
                                    }
                                } else if ((4 & j2) != 0) {
                                    return e0(1, 130, 86);
                                }
                            } else if ((4294967296L & j) != 0) {
                                return n0(1, 96);
                            }
                        } else {
                            if ((17179869184L & j) != 0) {
                                return n0(1, 98);
                            }
                            if ((34359738368L & j) != 0) {
                                return n0(1, 99);
                            }
                            if ((68719476736L & j) != 0) {
                                return n0(1, 100);
                            }
                            if ((137438953472L & j) != 0) {
                                return n0(1, 101);
                            }
                            if ((274877906944L & j) != 0) {
                                return n0(1, 102);
                            }
                            if ((549755813888L & j) != 0) {
                                return n0(1, 103);
                            }
                            if ((FileUtils.ONE_TB & j) != 0) {
                                return n0(1, 104);
                            }
                        }
                    } else if ((4398046511104L & j) != 0) {
                        return n0(1, 106);
                    }
                } else if ((2199023255552L & j) != 0) {
                    return n0(1, 105);
                }
            } else if ((FileUtils.ONE_PB & j) != 0) {
                return n0(1, 114);
            }
            return l0(0, 0L, j, j2);
        } catch (IOException unused) {
            s0(0, 0L, j, j2);
            return 1;
        }
    }

    public final int P(long j, long j2) {
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != '*') {
                if (cL != '+') {
                    if (cL != '-') {
                        if (cL == '.') {
                            if ((268435456 & j) != 0) {
                                this.E = 92;
                                this.D = 1;
                            }
                            return T(j, 2251800887427072L, j2, 0L);
                        }
                        if (cL != '=') {
                            if (cL != '?') {
                                if (cL == 'a') {
                                    return T(j, 8388608L, j2, 0L);
                                }
                                if (cL != 'n') {
                                    if (cL == 'r') {
                                        return T(j, 16777216L, j2, 0L);
                                    }
                                    if (cL == 's') {
                                        return (8 & j2) != 0 ? g0(1, 131, 80) : T(j, 0L, j2, 16L);
                                    }
                                } else if ((4 & j2) != 0) {
                                    return g0(1, 130, 80);
                                }
                            } else if ((4294967296L & j) != 0) {
                                return n0(1, 96);
                            }
                        } else {
                            if ((17179869184L & j) != 0) {
                                return n0(1, 98);
                            }
                            if ((34359738368L & j) != 0) {
                                return n0(1, 99);
                            }
                            if ((68719476736L & j) != 0) {
                                return n0(1, 100);
                            }
                            if ((137438953472L & j) != 0) {
                                return n0(1, 101);
                            }
                            if ((274877906944L & j) != 0) {
                                return n0(1, 102);
                            }
                            if ((549755813888L & j) != 0) {
                                return n0(1, 103);
                            }
                            if ((FileUtils.ONE_TB & j) != 0) {
                                return n0(1, 104);
                            }
                        }
                    } else if ((4398046511104L & j) != 0) {
                        return n0(1, 106);
                    }
                } else if ((2199023255552L & j) != 0) {
                    return n0(1, 105);
                }
            } else if ((FileUtils.ONE_PB & j) != 0) {
                return n0(1, 114);
            }
            return m0(0, 0L, j, j2);
        } catch (IOException unused) {
            t0(0, 0L, j, j2);
            return 1;
        }
    }

    public final int Q(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return j0(0, 0L, j, j3);
        }
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != '*') {
                if (cL != '.') {
                    if (cL == 'i') {
                        return U(j5, 0L, j6, 16L);
                    }
                    if (cL == 'l') {
                        return U(j5, 8388608L, j6, 0L);
                    }
                    if (cL == 'u') {
                        return U(j5, 16777216L, j6, 0L);
                    }
                } else if ((2251799813685248L & j5) != 0) {
                    return n0(2, 115);
                }
            } else if ((1073741824 & j5) != 0) {
                return n0(2, 94);
            }
            return j0(1, 0L, j5, j6);
        } catch (IOException unused) {
            q0(1, 0L, j5, j6);
            return 2;
        }
    }

    public final int R(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return k0(0, 0L, j, j3);
        }
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != '*') {
                if (cL != '.') {
                    if (cL == 'i') {
                        return V(j5, 0L, j6, 16L);
                    }
                    if (cL == 'l') {
                        return V(j5, 8388608L, j6, 0L);
                    }
                    if (cL == 'u') {
                        return V(j5, 16777216L, j6, 0L);
                    }
                } else if ((2251799813685248L & j5) != 0) {
                    return n0(2, 115);
                }
            } else if ((1073741824 & j5) != 0) {
                return n0(2, 94);
            }
            return k0(1, 0L, j5, j6);
        } catch (IOException unused) {
            r0(1, 0L, j5, j6);
            return 2;
        }
    }

    public final int S(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return l0(0, 0L, j, j3);
        }
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != '*') {
                if (cL != '.') {
                    if (cL == 'i') {
                        return W(j5, 0L, j6, 16L);
                    }
                    if (cL == 'l') {
                        return W(j5, 8388608L, j6, 0L);
                    }
                    if (cL == 'u') {
                        return W(j5, 16777216L, j6, 0L);
                    }
                } else if ((2251799813685248L & j5) != 0) {
                    return n0(2, 115);
                }
            } else if ((1073741824 & j5) != 0) {
                return n0(2, 94);
            }
            return l0(1, 0L, j5, j6);
        } catch (IOException unused) {
            s0(1, 0L, j5, j6);
            return 2;
        }
    }

    public final int T(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return m0(0, 0L, j, j3);
        }
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != '*') {
                if (cL != '.') {
                    if (cL == 'i') {
                        return X(j5, 0L, j6, 16L);
                    }
                    if (cL == 'l') {
                        return X(j5, 8388608L, j6, 0L);
                    }
                    if (cL == 'u') {
                        return X(j5, 16777216L, j6, 0L);
                    }
                } else if ((2251799813685248L & j5) != 0) {
                    return n0(2, 115);
                }
            } else if ((1073741824 & j5) != 0) {
                return n0(2, 94);
            }
            return m0(1, 0L, j5, j6);
        } catch (IOException unused) {
            t0(1, 0L, j5, j6);
            return 2;
        }
    }

    public final int U(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return j0(1, 0L, j, j3);
        }
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != 'e') {
                if (cL == 'n') {
                    return Y(j5, 0L, j6, 16L);
                }
                if (cL == 's') {
                    return Y(j5, 8388608L, j6, 0L);
                }
            } else if ((16777216 & j5) != 0) {
                return c0(3, 88, 84);
            }
            return j0(2, 0L, j5, j6);
        } catch (IOException unused) {
            q0(2, 0L, j5, j6);
            return 3;
        }
    }

    public final int V(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return k0(1, 0L, j, j3);
        }
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != 'e') {
                if (cL == 'n') {
                    return Z(j5, 0L, j6, 16L);
                }
                if (cL == 's') {
                    return Z(j5, 8388608L, j6, 0L);
                }
            } else if ((16777216 & j5) != 0) {
                return d0(3, 88, 81);
            }
            return k0(2, 0L, j5, j6);
        } catch (IOException unused) {
            r0(2, 0L, j5, j6);
            return 3;
        }
    }

    public final int W(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return l0(1, 0L, j, j3);
        }
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != 'e') {
                if (cL == 'n') {
                    return a0(j5, 0L, j6, 16L);
                }
                if (cL == 's') {
                    return a0(j5, 8388608L, j6, 0L);
                }
            } else if ((16777216 & j5) != 0) {
                return e0(3, 88, 86);
            }
            return l0(2, 0L, j5, j6);
        } catch (IOException unused) {
            s0(2, 0L, j5, j6);
            return 3;
        }
    }

    public final int X(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return m0(1, 0L, j, j3);
        }
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != 'e') {
                if (cL == 'n') {
                    return b0(j5, 0L, j6, 16L);
                }
                if (cL == 's') {
                    return b0(j5, 8388608L, j6, 0L);
                }
            } else if ((16777216 & j5) != 0) {
                return g0(3, 88, 80);
            }
            return m0(2, 0L, j5, j6);
        } catch (IOException unused) {
            t0(2, 0L, j5, j6);
            return 3;
        }
    }

    public final int Y(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return j0(2, 0L, j, j3);
        }
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != 'e') {
                if (cL == 'g' && (16 & j6) != 0) {
                    return c0(4, 132, 84);
                }
            } else if ((8388608 & j5) != 0) {
                return c0(4, 87, 84);
            }
            return j0(3, 0L, j5, j6);
        } catch (IOException unused) {
            q0(3, 0L, j5, j6);
            return 4;
        }
    }

    public final int Z(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return k0(2, 0L, j, j3);
        }
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != 'e') {
                if (cL == 'g' && (16 & j6) != 0) {
                    return d0(4, 132, 81);
                }
            } else if ((8388608 & j5) != 0) {
                return d0(4, 87, 81);
            }
            return k0(3, 0L, j5, j6);
        } catch (IOException unused) {
            r0(3, 0L, j5, j6);
            return 4;
        }
    }

    public final void a() {
        this.C = C.RATE_UNSET_INT;
        int i = TypedValues.MotionType.TYPE_POLAR_RELATIVETO;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                return;
            }
            this.t[i2] = Integer.MIN_VALUE;
            i = i2;
        }
    }

    public final int a0(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return l0(2, 0L, j, j3);
        }
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != 'e') {
                if (cL == 'g' && (16 & j6) != 0) {
                    return e0(4, 132, 86);
                }
            } else if ((8388608 & j5) != 0) {
                return e0(4, 87, 86);
            }
            return l0(3, 0L, j5, j6);
        } catch (IOException unused) {
            s0(3, 0L, j5, j6);
            return 4;
        }
    }

    public void b(Token token) {
        if (this.E != 83) {
            return;
        }
        StringBuffer stringBuffer = this.v;
        if (stringBuffer == null) {
            xl9 xl9Var = this.s;
            int i = this.w;
            int i2 = this.D + 1;
            this.x = i2;
            this.v = new StringBuffer(new String(xl9Var.e(i + i2)));
        } else {
            xl9 xl9Var2 = this.s;
            int i3 = this.w;
            int i4 = this.D + 1;
            this.x = i4;
            stringBuffer.append(new String(xl9Var2.e(i3 + i4)));
        }
        if (this.e > 0) {
            c(3);
        } else if (this.m) {
            c(4);
        } else {
            c(2);
        }
    }

    public final int b0(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return m0(2, 0L, j, j3);
        }
        try {
            char cL = this.s.l();
            this.y = cL;
            if (cL != 'e') {
                if (cL == 'g' && (16 & j6) != 0) {
                    return g0(4, 132, 80);
                }
            } else if ((8388608 & j5) != 0) {
                return g0(4, 87, 80);
            }
            return m0(3, 0L, j5, j6);
        } catch (IOException unused) {
            t0(3, 0L, j5, j6);
            return 4;
        }
    }

    public void c(int i) {
        if (i < 8 && i >= 0) {
            this.z = i;
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Error: Ignoring invalid lexical state : ");
        stringBuffer.append(i);
        stringBuffer.append(". State unchanged.");
        throw new TokenMgrError(stringBuffer.toString(), 2);
    }

    public final int c0(int i, int i2, int i3) {
        this.E = i2;
        this.D = i;
        try {
            this.y = this.s.l();
            return w(i3, i + 1);
        } catch (IOException unused) {
            return i + 1;
        }
    }

    public void d(Token token) {
        String string;
        String string2;
        int i = this.E;
        if (i == 133) {
            StringBuffer stringBuffer = this.v;
            if (stringBuffer == null) {
                xl9 xl9Var = this.s;
                int i2 = this.w;
                int i3 = this.D + 1;
                this.x = i3;
                this.v = new StringBuffer(new String(xl9Var.e(i2 + i3)));
            } else {
                xl9 xl9Var2 = this.s;
                int i4 = this.w;
                int i5 = this.D + 1;
                this.x = i5;
                stringBuffer.append(new String(xl9Var2.e(i4 + i5)));
            }
            String str = token.image;
            if (str.indexOf(92) != -1) {
                int length = str.length();
                char[] cArr = new char[length - 1];
                int i6 = 0;
                for (int i7 = 0; i7 < length; i7++) {
                    char cCharAt = str.charAt(i7);
                    if (cCharAt != '\\') {
                        cArr[i6] = cCharAt;
                        i6++;
                    }
                }
                token.image = new String(cArr, 0, i6);
                return;
            }
            return;
        }
        if (i == 134) {
            StringBuffer stringBuffer2 = this.v;
            if (stringBuffer2 == null) {
                xl9 xl9Var3 = this.s;
                int i8 = this.w;
                int i9 = this.D + 1;
                this.x = i9;
                this.v = new StringBuffer(new String(xl9Var3.e(i8 + i9)));
            } else {
                xl9 xl9Var4 = this.s;
                int i10 = this.w;
                int i11 = this.D + 1;
                this.x = i11;
                stringBuffer2.append(new String(xl9Var4.e(i10 + i11)));
            }
            char cCharAt2 = token.image.charAt(0);
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("You can't use \"");
            stringBuffer3.append(cCharAt2);
            stringBuffer3.append("{\" here as you are already in FreeMarker-expression-mode. Thus, instead ");
            stringBuffer3.append("of ");
            stringBuffer3.append(cCharAt2);
            stringBuffer3.append("{myExpression}, just write myExpression. ");
            stringBuffer3.append("(");
            stringBuffer3.append(cCharAt2);
            stringBuffer3.append("{...} is only needed where otherwise static text is expected, i.e, outside ");
            stringBuffer3.append("FreeMarker tags and ${...}-s.)");
            throw new TokenMgrError(stringBuffer3.toString(), 0, token.beginLine, token.beginColumn, token.endLine, token.endColumn);
        }
        if (i == 139) {
            StringBuffer stringBuffer4 = this.v;
            if (stringBuffer4 == null) {
                this.v = new StringBuffer(f0[139]);
            } else {
                stringBuffer4.append(f0[139]);
            }
            if (this.g) {
                h();
            }
            this.g = false;
            if (this.j) {
                token.kind = 141;
                return;
            } else {
                c(0);
                return;
            }
        }
        if (i == 140) {
            StringBuffer stringBuffer5 = this.v;
            if (stringBuffer5 == null) {
                xl9 xl9Var5 = this.s;
                int i12 = this.w;
                int i13 = this.D + 1;
                this.x = i13;
                this.v = new StringBuffer(new String(xl9Var5.e(i12 + i13)));
            } else {
                xl9 xl9Var6 = this.s;
                int i14 = this.w;
                int i15 = this.D + 1;
                this.x = i15;
                stringBuffer5.append(new String(xl9Var6.e(i14 + i15)));
            }
            if (this.g) {
                h();
            }
            this.g = false;
            c(0);
            return;
        }
        if (i == 145) {
            StringBuffer stringBuffer6 = this.v;
            if (stringBuffer6 == null) {
                xl9 xl9Var7 = this.s;
                int i16 = this.w;
                int i17 = this.D + 1;
                this.x = i17;
                this.v = new StringBuffer(new String(xl9Var7.e(i16 + i17)));
            } else {
                xl9 xl9Var8 = this.s;
                int i18 = this.w;
                int i19 = this.D + 1;
                this.x = i19;
                stringBuffer6.append(new String(xl9Var8.e(i18 + i19)));
            }
            if (this.b.equals("-->")) {
                boolean zEndsWith = token.image.endsWith("]");
                boolean z = this.j;
                if (!(z && zEndsWith) && (z || zEndsWith)) {
                    return;
                }
                StringBuffer stringBuffer7 = new StringBuffer();
                stringBuffer7.append(token.image);
                stringBuffer7.append(ProcessInfo.SPLIT_NEW_VERSION);
                token.image = stringBuffer7.toString();
                c(0);
                return;
            }
            return;
        }
        if (i == 146) {
            StringBuffer stringBuffer8 = this.v;
            if (stringBuffer8 == null) {
                xl9 xl9Var9 = this.s;
                int i20 = this.w;
                int i21 = this.D + 1;
                this.x = i21;
                this.v = new StringBuffer(new String(xl9Var9.e(i20 + i21)));
            } else {
                xl9 xl9Var10 = this.s;
                int i22 = this.w;
                int i23 = this.D + 1;
                this.x = i23;
                stringBuffer8.append(new String(xl9Var10.e(i22 + i23)));
            }
            if (new StringTokenizer(this.v.toString(), " \t\n\r<>[]/#", false).nextToken().equals(this.b)) {
                StringBuffer stringBuffer9 = new StringBuffer();
                stringBuffer9.append(token.image);
                stringBuffer9.append(ProcessInfo.SPLIT_NEW_VERSION);
                token.image = stringBuffer9.toString();
                c(0);
                return;
            }
            return;
        }
        switch (i) {
            case 6:
                StringBuffer stringBuffer10 = this.v;
                if (stringBuffer10 == null) {
                    xl9 xl9Var11 = this.s;
                    int i24 = this.w;
                    int i25 = this.D + 1;
                    this.x = i25;
                    this.v = new StringBuffer(new String(xl9Var11.e(i24 + i25)));
                } else {
                    xl9 xl9Var12 = this.s;
                    int i26 = this.w;
                    int i27 = this.D + 1;
                    this.x = i27;
                    stringBuffer10.append(new String(xl9Var12.e(i26 + i27)));
                }
                w0(token, 0);
                return;
            case 7:
                StringBuffer stringBuffer11 = this.v;
                if (stringBuffer11 == null) {
                    xl9 xl9Var13 = this.s;
                    int i28 = this.w;
                    int i29 = this.D + 1;
                    this.x = i29;
                    this.v = new StringBuffer(new String(xl9Var13.e(i28 + i29)));
                } else {
                    xl9 xl9Var14 = this.s;
                    int i30 = this.w;
                    int i31 = this.D + 1;
                    this.x = i31;
                    stringBuffer11.append(new String(xl9Var14.e(i30 + i31)));
                }
                w0(token, 0);
                return;
            case 8:
                StringBuffer stringBuffer12 = this.v;
                if (stringBuffer12 == null) {
                    xl9 xl9Var15 = this.s;
                    int i32 = this.w;
                    int i33 = this.D + 1;
                    this.x = i33;
                    this.v = new StringBuffer(new String(xl9Var15.e(i32 + i33)));
                } else {
                    xl9 xl9Var16 = this.s;
                    int i34 = this.w;
                    int i35 = this.D + 1;
                    this.x = i35;
                    stringBuffer12.append(new String(xl9Var16.e(i34 + i35)));
                }
                w0(token, 2);
                return;
            case 9:
                StringBuffer stringBuffer13 = this.v;
                if (stringBuffer13 == null) {
                    xl9 xl9Var17 = this.s;
                    int i36 = this.w;
                    int i37 = this.D + 1;
                    this.x = i37;
                    this.v = new StringBuffer(new String(xl9Var17.e(i36 + i37)));
                } else {
                    xl9 xl9Var18 = this.s;
                    int i38 = this.w;
                    int i39 = this.D + 1;
                    this.x = i39;
                    stringBuffer13.append(new String(xl9Var18.e(i38 + i39)));
                }
                x0(token, l(token, 4), 2);
                return;
            case 10:
                StringBuffer stringBuffer14 = this.v;
                if (stringBuffer14 == null) {
                    xl9 xl9Var19 = this.s;
                    int i40 = this.w;
                    int i41 = this.D + 1;
                    this.x = i41;
                    this.v = new StringBuffer(new String(xl9Var19.e(i40 + i41)));
                } else {
                    xl9 xl9Var20 = this.s;
                    int i42 = this.w;
                    int i43 = this.D + 1;
                    this.x = i43;
                    stringBuffer14.append(new String(xl9Var20.e(i42 + i43)));
                }
                w0(token, 2);
                return;
            case 11:
                StringBuffer stringBuffer15 = this.v;
                if (stringBuffer15 == null) {
                    xl9 xl9Var21 = this.s;
                    int i44 = this.w;
                    int i45 = this.D + 1;
                    this.x = i45;
                    this.v = new StringBuffer(new String(xl9Var21.e(i44 + i45)));
                } else {
                    xl9 xl9Var22 = this.s;
                    int i46 = this.w;
                    int i47 = this.D + 1;
                    this.x = i47;
                    stringBuffer15.append(new String(xl9Var22.e(i46 + i47)));
                }
                w0(token, 2);
                return;
            default:
                switch (i) {
                    case 13:
                        StringBuffer stringBuffer16 = this.v;
                        if (stringBuffer16 == null) {
                            xl9 xl9Var23 = this.s;
                            int i48 = this.w;
                            int i49 = this.D + 1;
                            this.x = i49;
                            this.v = new StringBuffer(new String(xl9Var23.e(i48 + i49)));
                        } else {
                            xl9 xl9Var24 = this.s;
                            int i50 = this.w;
                            int i51 = this.D + 1;
                            this.x = i51;
                            stringBuffer16.append(new String(xl9Var24.e(i50 + i51)));
                        }
                        x0(token, l(token, 3), 2);
                        return;
                    case 14:
                        StringBuffer stringBuffer17 = this.v;
                        if (stringBuffer17 == null) {
                            xl9 xl9Var25 = this.s;
                            int i52 = this.w;
                            int i53 = this.D + 1;
                            this.x = i53;
                            this.v = new StringBuffer(new String(xl9Var25.e(i52 + i53)));
                        } else {
                            xl9 xl9Var26 = this.s;
                            int i54 = this.w;
                            int i55 = this.D + 1;
                            this.x = i55;
                            stringBuffer17.append(new String(xl9Var26.e(i54 + i55)));
                        }
                        w0(token, 2);
                        return;
                    case 15:
                        StringBuffer stringBuffer18 = this.v;
                        if (stringBuffer18 == null) {
                            xl9 xl9Var27 = this.s;
                            int i56 = this.w;
                            int i57 = this.D + 1;
                            this.x = i57;
                            this.v = new StringBuffer(new String(xl9Var27.e(i56 + i57)));
                        } else {
                            xl9 xl9Var28 = this.s;
                            int i58 = this.w;
                            int i59 = this.D + 1;
                            this.x = i59;
                            stringBuffer18.append(new String(xl9Var28.e(i58 + i59)));
                        }
                        w0(token, 2);
                        return;
                    case 16:
                        StringBuffer stringBuffer19 = this.v;
                        if (stringBuffer19 == null) {
                            xl9 xl9Var29 = this.s;
                            int i60 = this.w;
                            int i61 = this.D + 1;
                            this.x = i61;
                            this.v = new StringBuffer(new String(xl9Var29.e(i60 + i61)));
                        } else {
                            xl9 xl9Var30 = this.s;
                            int i62 = this.w;
                            int i63 = this.D + 1;
                            this.x = i63;
                            stringBuffer19.append(new String(xl9Var30.e(i62 + i63)));
                        }
                        w0(token, 2);
                        return;
                    case 17:
                        StringBuffer stringBuffer20 = this.v;
                        if (stringBuffer20 == null) {
                            xl9 xl9Var31 = this.s;
                            int i64 = this.w;
                            int i65 = this.D + 1;
                            this.x = i65;
                            this.v = new StringBuffer(new String(xl9Var31.e(i64 + i65)));
                        } else {
                            xl9 xl9Var32 = this.s;
                            int i66 = this.w;
                            int i67 = this.D + 1;
                            this.x = i67;
                            stringBuffer20.append(new String(xl9Var32.e(i66 + i67)));
                        }
                        w0(token, 2);
                        return;
                    case 18:
                        StringBuffer stringBuffer21 = this.v;
                        if (stringBuffer21 == null) {
                            xl9 xl9Var33 = this.s;
                            int i68 = this.w;
                            int i69 = this.D + 1;
                            this.x = i69;
                            this.v = new StringBuffer(new String(xl9Var33.e(i68 + i69)));
                        } else {
                            xl9 xl9Var34 = this.s;
                            int i70 = this.w;
                            int i71 = this.D + 1;
                            this.x = i71;
                            stringBuffer21.append(new String(xl9Var34.e(i70 + i71)));
                        }
                        w0(token, 2);
                        return;
                    case 19:
                        StringBuffer stringBuffer22 = this.v;
                        if (stringBuffer22 == null) {
                            xl9 xl9Var35 = this.s;
                            int i72 = this.w;
                            int i73 = this.D + 1;
                            this.x = i73;
                            this.v = new StringBuffer(new String(xl9Var35.e(i72 + i73)));
                        } else {
                            xl9 xl9Var36 = this.s;
                            int i74 = this.w;
                            int i75 = this.D + 1;
                            this.x = i75;
                            stringBuffer22.append(new String(xl9Var36.e(i74 + i75)));
                        }
                        w0(token, 2);
                        return;
                    case 20:
                        StringBuffer stringBuffer23 = this.v;
                        if (stringBuffer23 == null) {
                            xl9 xl9Var37 = this.s;
                            int i76 = this.w;
                            int i77 = this.D + 1;
                            this.x = i77;
                            this.v = new StringBuffer(new String(xl9Var37.e(i76 + i77)));
                        } else {
                            xl9 xl9Var38 = this.s;
                            int i78 = this.w;
                            int i79 = this.D + 1;
                            this.x = i79;
                            stringBuffer23.append(new String(xl9Var38.e(i78 + i79)));
                        }
                        w0(token, 2);
                        return;
                    case 21:
                        StringBuffer stringBuffer24 = this.v;
                        if (stringBuffer24 == null) {
                            xl9 xl9Var39 = this.s;
                            int i80 = this.w;
                            int i81 = this.D + 1;
                            this.x = i81;
                            this.v = new StringBuffer(new String(xl9Var39.e(i80 + i81)));
                        } else {
                            xl9 xl9Var40 = this.s;
                            int i82 = this.w;
                            int i83 = this.D + 1;
                            this.x = i83;
                            stringBuffer24.append(new String(xl9Var40.e(i82 + i83)));
                        }
                        w0(token, 2);
                        return;
                    case 22:
                        StringBuffer stringBuffer25 = this.v;
                        if (stringBuffer25 == null) {
                            xl9 xl9Var41 = this.s;
                            int i84 = this.w;
                            int i85 = this.D + 1;
                            this.x = i85;
                            this.v = new StringBuffer(new String(xl9Var41.e(i84 + i85)));
                        } else {
                            xl9 xl9Var42 = this.s;
                            int i86 = this.w;
                            int i87 = this.D + 1;
                            this.x = i87;
                            stringBuffer25.append(new String(xl9Var42.e(i86 + i87)));
                        }
                        w0(token, 2);
                        return;
                    case 23:
                        StringBuffer stringBuffer26 = this.v;
                        if (stringBuffer26 == null) {
                            xl9 xl9Var43 = this.s;
                            int i88 = this.w;
                            int i89 = this.D + 1;
                            this.x = i89;
                            this.v = new StringBuffer(new String(xl9Var43.e(i88 + i89)));
                        } else {
                            xl9 xl9Var44 = this.s;
                            int i90 = this.w;
                            int i91 = this.D + 1;
                            this.x = i91;
                            stringBuffer26.append(new String(xl9Var44.e(i90 + i91)));
                        }
                        w0(token, 2);
                        return;
                    case 24:
                        StringBuffer stringBuffer27 = this.v;
                        if (stringBuffer27 == null) {
                            xl9 xl9Var45 = this.s;
                            int i92 = this.w;
                            int i93 = this.D + 1;
                            this.x = i93;
                            this.v = new StringBuffer(new String(xl9Var45.e(i92 + i93)));
                        } else {
                            xl9 xl9Var46 = this.s;
                            int i94 = this.w;
                            int i95 = this.D + 1;
                            this.x = i95;
                            stringBuffer27.append(new String(xl9Var46.e(i94 + i95)));
                        }
                        w0(token, 2);
                        return;
                    case 25:
                        StringBuffer stringBuffer28 = this.v;
                        if (stringBuffer28 == null) {
                            xl9 xl9Var47 = this.s;
                            int i96 = this.w;
                            int i97 = this.D + 1;
                            this.x = i97;
                            this.v = new StringBuffer(new String(xl9Var47.e(i96 + i97)));
                        } else {
                            xl9 xl9Var48 = this.s;
                            int i98 = this.w;
                            int i99 = this.D + 1;
                            this.x = i99;
                            stringBuffer28.append(new String(xl9Var48.e(i98 + i99)));
                        }
                        w0(token, 2);
                        return;
                    case 26:
                        StringBuffer stringBuffer29 = this.v;
                        if (stringBuffer29 == null) {
                            xl9 xl9Var49 = this.s;
                            int i100 = this.w;
                            int i101 = this.D + 1;
                            this.x = i101;
                            this.v = new StringBuffer(new String(xl9Var49.e(i100 + i101)));
                        } else {
                            xl9 xl9Var50 = this.s;
                            int i102 = this.w;
                            int i103 = this.D + 1;
                            this.x = i103;
                            stringBuffer29.append(new String(xl9Var50.e(i102 + i103)));
                        }
                        w0(token, 2);
                        return;
                    case 27:
                        StringBuffer stringBuffer30 = this.v;
                        if (stringBuffer30 == null) {
                            xl9 xl9Var51 = this.s;
                            int i104 = this.w;
                            int i105 = this.D + 1;
                            this.x = i105;
                            this.v = new StringBuffer(new String(xl9Var51.e(i104 + i105)));
                        } else {
                            xl9 xl9Var52 = this.s;
                            int i106 = this.w;
                            int i107 = this.D + 1;
                            this.x = i107;
                            stringBuffer30.append(new String(xl9Var52.e(i106 + i107)));
                        }
                        w0(token, 2);
                        return;
                    case 28:
                        StringBuffer stringBuffer31 = this.v;
                        if (stringBuffer31 == null) {
                            xl9 xl9Var53 = this.s;
                            int i108 = this.w;
                            int i109 = this.D + 1;
                            this.x = i109;
                            this.v = new StringBuffer(new String(xl9Var53.e(i108 + i109)));
                        } else {
                            xl9 xl9Var54 = this.s;
                            int i110 = this.w;
                            int i111 = this.D + 1;
                            this.x = i111;
                            stringBuffer31.append(new String(xl9Var54.e(i110 + i111)));
                        }
                        w0(token, 2);
                        return;
                    case 29:
                        StringBuffer stringBuffer32 = this.v;
                        if (stringBuffer32 == null) {
                            xl9 xl9Var55 = this.s;
                            int i112 = this.w;
                            int i113 = this.D + 1;
                            this.x = i113;
                            this.v = new StringBuffer(new String(xl9Var55.e(i112 + i113)));
                        } else {
                            xl9 xl9Var56 = this.s;
                            int i114 = this.w;
                            int i115 = this.D + 1;
                            this.x = i115;
                            stringBuffer32.append(new String(xl9Var56.e(i114 + i115)));
                        }
                        w0(token, 0);
                        return;
                    case 30:
                        StringBuffer stringBuffer33 = this.v;
                        if (stringBuffer33 == null) {
                            xl9 xl9Var57 = this.s;
                            int i116 = this.w;
                            int i117 = this.D + 1;
                            this.x = i117;
                            this.v = new StringBuffer(new String(xl9Var57.e(i116 + i117)));
                        } else {
                            xl9 xl9Var58 = this.s;
                            int i118 = this.w;
                            int i119 = this.D + 1;
                            this.x = i119;
                            stringBuffer33.append(new String(xl9Var58.e(i118 + i119)));
                        }
                        w0(token, 7);
                        this.b = "comment";
                        return;
                    case 31:
                        StringBuffer stringBuffer34 = this.v;
                        if (stringBuffer34 == null) {
                            xl9 xl9Var59 = this.s;
                            int i120 = this.w;
                            int i121 = this.D + 1;
                            this.x = i121;
                            this.v = new StringBuffer(new String(xl9Var59.e(i120 + i121)));
                        } else {
                            xl9 xl9Var60 = this.s;
                            int i122 = this.w;
                            int i123 = this.D + 1;
                            this.x = i123;
                            stringBuffer34.append(new String(xl9Var60.e(i122 + i123)));
                        }
                        this.b = "-->";
                        w0(token, 7);
                        return;
                    case 32:
                        StringBuffer stringBuffer35 = this.v;
                        if (stringBuffer35 == null) {
                            xl9 xl9Var61 = this.s;
                            int i124 = this.w;
                            int i125 = this.D + 1;
                            this.x = i125;
                            this.v = new StringBuffer(new String(xl9Var61.e(i124 + i125)));
                        } else {
                            xl9 xl9Var62 = this.s;
                            int i126 = this.w;
                            int i127 = this.D + 1;
                            this.x = i127;
                            stringBuffer35.append(new String(xl9Var62.e(i126 + i127)));
                        }
                        int iL = l(token, 2);
                        x0(token, iL, 7);
                        this.b = iL == 12 ? "noParse" : "noparse";
                        return;
                    case 33:
                        StringBuffer stringBuffer36 = this.v;
                        if (stringBuffer36 == null) {
                            xl9 xl9Var63 = this.s;
                            int i128 = this.w;
                            int i129 = this.D + 1;
                            this.x = i129;
                            this.v = new StringBuffer(new String(xl9Var63.e(i128 + i129)));
                        } else {
                            xl9 xl9Var64 = this.s;
                            int i130 = this.w;
                            int i131 = this.D + 1;
                            this.x = i131;
                            stringBuffer36.append(new String(xl9Var64.e(i130 + i131)));
                        }
                        w0(token, 0);
                        return;
                    case 34:
                        StringBuffer stringBuffer37 = this.v;
                        if (stringBuffer37 == null) {
                            xl9 xl9Var65 = this.s;
                            int i132 = this.w;
                            int i133 = this.D + 1;
                            this.x = i133;
                            this.v = new StringBuffer(new String(xl9Var65.e(i132 + i133)));
                        } else {
                            xl9 xl9Var66 = this.s;
                            int i134 = this.w;
                            int i135 = this.D + 1;
                            this.x = i135;
                            stringBuffer37.append(new String(xl9Var66.e(i134 + i135)));
                        }
                        w0(token, 0);
                        return;
                    case 35:
                        StringBuffer stringBuffer38 = this.v;
                        if (stringBuffer38 == null) {
                            xl9 xl9Var67 = this.s;
                            int i136 = this.w;
                            int i137 = this.D + 1;
                            this.x = i137;
                            this.v = new StringBuffer(new String(xl9Var67.e(i136 + i137)));
                        } else {
                            xl9 xl9Var68 = this.s;
                            int i138 = this.w;
                            int i139 = this.D + 1;
                            this.x = i139;
                            stringBuffer38.append(new String(xl9Var68.e(i138 + i139)));
                        }
                        w0(token, 0);
                        return;
                    case 36:
                        StringBuffer stringBuffer39 = this.v;
                        if (stringBuffer39 == null) {
                            xl9 xl9Var69 = this.s;
                            int i140 = this.w;
                            int i141 = this.D + 1;
                            this.x = i141;
                            this.v = new StringBuffer(new String(xl9Var69.e(i140 + i141)));
                        } else {
                            xl9 xl9Var70 = this.s;
                            int i142 = this.w;
                            int i143 = this.D + 1;
                            this.x = i143;
                            stringBuffer39.append(new String(xl9Var70.e(i142 + i143)));
                        }
                        w0(token, 0);
                        return;
                    case 37:
                        StringBuffer stringBuffer40 = this.v;
                        if (stringBuffer40 == null) {
                            xl9 xl9Var71 = this.s;
                            int i144 = this.w;
                            int i145 = this.D + 1;
                            this.x = i145;
                            this.v = new StringBuffer(new String(xl9Var71.e(i144 + i145)));
                        } else {
                            xl9 xl9Var72 = this.s;
                            int i146 = this.w;
                            int i147 = this.D + 1;
                            this.x = i147;
                            stringBuffer40.append(new String(xl9Var72.e(i146 + i147)));
                        }
                        w0(token, 0);
                        return;
                    case 38:
                        StringBuffer stringBuffer41 = this.v;
                        if (stringBuffer41 == null) {
                            xl9 xl9Var73 = this.s;
                            int i148 = this.w;
                            int i149 = this.D + 1;
                            this.x = i149;
                            this.v = new StringBuffer(new String(xl9Var73.e(i148 + i149)));
                        } else {
                            xl9 xl9Var74 = this.s;
                            int i150 = this.w;
                            int i151 = this.D + 1;
                            this.x = i151;
                            stringBuffer41.append(new String(xl9Var74.e(i150 + i151)));
                        }
                        w0(token, 0);
                        return;
                    case 39:
                        StringBuffer stringBuffer42 = this.v;
                        if (stringBuffer42 == null) {
                            xl9 xl9Var75 = this.s;
                            int i152 = this.w;
                            int i153 = this.D + 1;
                            this.x = i153;
                            this.v = new StringBuffer(new String(xl9Var75.e(i152 + i153)));
                        } else {
                            xl9 xl9Var76 = this.s;
                            int i154 = this.w;
                            int i155 = this.D + 1;
                            this.x = i155;
                            stringBuffer42.append(new String(xl9Var76.e(i154 + i155)));
                        }
                        x0(token, l(token, 3), 0);
                        return;
                    case 40:
                        StringBuffer stringBuffer43 = this.v;
                        if (stringBuffer43 == null) {
                            xl9 xl9Var77 = this.s;
                            int i156 = this.w;
                            int i157 = this.D + 1;
                            this.x = i157;
                            this.v = new StringBuffer(new String(xl9Var77.e(i156 + i157)));
                        } else {
                            xl9 xl9Var78 = this.s;
                            int i158 = this.w;
                            int i159 = this.D + 1;
                            this.x = i159;
                            stringBuffer43.append(new String(xl9Var78.e(i158 + i159)));
                        }
                        w0(token, 0);
                        return;
                    case 41:
                        StringBuffer stringBuffer44 = this.v;
                        if (stringBuffer44 == null) {
                            xl9 xl9Var79 = this.s;
                            int i160 = this.w;
                            int i161 = this.D + 1;
                            this.x = i161;
                            this.v = new StringBuffer(new String(xl9Var79.e(i160 + i161)));
                        } else {
                            xl9 xl9Var80 = this.s;
                            int i162 = this.w;
                            int i163 = this.D + 1;
                            this.x = i163;
                            stringBuffer44.append(new String(xl9Var80.e(i162 + i163)));
                        }
                        w0(token, 0);
                        return;
                    case 42:
                        StringBuffer stringBuffer45 = this.v;
                        if (stringBuffer45 == null) {
                            xl9 xl9Var81 = this.s;
                            int i164 = this.w;
                            int i165 = this.D + 1;
                            this.x = i165;
                            this.v = new StringBuffer(new String(xl9Var81.e(i164 + i165)));
                        } else {
                            xl9 xl9Var82 = this.s;
                            int i166 = this.w;
                            int i167 = this.D + 1;
                            this.x = i167;
                            stringBuffer45.append(new String(xl9Var82.e(i166 + i167)));
                        }
                        w0(token, 0);
                        return;
                    case 43:
                        StringBuffer stringBuffer46 = this.v;
                        if (stringBuffer46 == null) {
                            xl9 xl9Var83 = this.s;
                            int i168 = this.w;
                            int i169 = this.D + 1;
                            this.x = i169;
                            this.v = new StringBuffer(new String(xl9Var83.e(i168 + i169)));
                        } else {
                            xl9 xl9Var84 = this.s;
                            int i170 = this.w;
                            int i171 = this.D + 1;
                            this.x = i171;
                            stringBuffer46.append(new String(xl9Var84.e(i170 + i171)));
                        }
                        w0(token, 0);
                        return;
                    case 44:
                        StringBuffer stringBuffer47 = this.v;
                        if (stringBuffer47 == null) {
                            xl9 xl9Var85 = this.s;
                            int i172 = this.w;
                            int i173 = this.D + 1;
                            this.x = i173;
                            this.v = new StringBuffer(new String(xl9Var85.e(i172 + i173)));
                        } else {
                            xl9 xl9Var86 = this.s;
                            int i174 = this.w;
                            int i175 = this.D + 1;
                            this.x = i175;
                            stringBuffer47.append(new String(xl9Var86.e(i174 + i175)));
                        }
                        w0(token, 0);
                        return;
                    case 45:
                        StringBuffer stringBuffer48 = this.v;
                        if (stringBuffer48 == null) {
                            xl9 xl9Var87 = this.s;
                            int i176 = this.w;
                            int i177 = this.D + 1;
                            this.x = i177;
                            this.v = new StringBuffer(new String(xl9Var87.e(i176 + i177)));
                        } else {
                            xl9 xl9Var88 = this.s;
                            int i178 = this.w;
                            int i179 = this.D + 1;
                            this.x = i179;
                            stringBuffer48.append(new String(xl9Var88.e(i178 + i179)));
                        }
                        w0(token, 0);
                        return;
                    case 46:
                        StringBuffer stringBuffer49 = this.v;
                        if (stringBuffer49 == null) {
                            xl9 xl9Var89 = this.s;
                            int i180 = this.w;
                            int i181 = this.D + 1;
                            this.x = i181;
                            this.v = new StringBuffer(new String(xl9Var89.e(i180 + i181)));
                        } else {
                            xl9 xl9Var90 = this.s;
                            int i182 = this.w;
                            int i183 = this.D + 1;
                            this.x = i183;
                            stringBuffer49.append(new String(xl9Var90.e(i182 + i183)));
                        }
                        w0(token, 0);
                        return;
                    case 47:
                        StringBuffer stringBuffer50 = this.v;
                        if (stringBuffer50 == null) {
                            xl9 xl9Var91 = this.s;
                            int i184 = this.w;
                            int i185 = this.D + 1;
                            this.x = i185;
                            this.v = new StringBuffer(new String(xl9Var91.e(i184 + i185)));
                        } else {
                            xl9 xl9Var92 = this.s;
                            int i186 = this.w;
                            int i187 = this.D + 1;
                            this.x = i187;
                            stringBuffer50.append(new String(xl9Var92.e(i186 + i187)));
                        }
                        w0(token, 0);
                        return;
                    case 48:
                        StringBuffer stringBuffer51 = this.v;
                        if (stringBuffer51 == null) {
                            xl9 xl9Var93 = this.s;
                            int i188 = this.w;
                            int i189 = this.D + 1;
                            this.x = i189;
                            this.v = new StringBuffer(new String(xl9Var93.e(i188 + i189)));
                        } else {
                            xl9 xl9Var94 = this.s;
                            int i190 = this.w;
                            int i191 = this.D + 1;
                            this.x = i191;
                            stringBuffer51.append(new String(xl9Var94.e(i190 + i191)));
                        }
                        w0(token, 0);
                        return;
                    case 49:
                        StringBuffer stringBuffer52 = this.v;
                        if (stringBuffer52 == null) {
                            xl9 xl9Var95 = this.s;
                            int i192 = this.w;
                            int i193 = this.D + 1;
                            this.x = i193;
                            this.v = new StringBuffer(new String(xl9Var95.e(i192 + i193)));
                        } else {
                            xl9 xl9Var96 = this.s;
                            int i194 = this.w;
                            int i195 = this.D + 1;
                            this.x = i195;
                            stringBuffer52.append(new String(xl9Var96.e(i194 + i195)));
                        }
                        w0(token, 0);
                        return;
                    case 50:
                        StringBuffer stringBuffer53 = this.v;
                        if (stringBuffer53 == null) {
                            xl9 xl9Var97 = this.s;
                            int i196 = this.w;
                            int i197 = this.D + 1;
                            this.x = i197;
                            this.v = new StringBuffer(new String(xl9Var97.e(i196 + i197)));
                        } else {
                            xl9 xl9Var98 = this.s;
                            int i198 = this.w;
                            int i199 = this.D + 1;
                            this.x = i199;
                            stringBuffer53.append(new String(xl9Var98.e(i198 + i199)));
                        }
                        w0(token, 0);
                        return;
                    case 51:
                        StringBuffer stringBuffer54 = this.v;
                        if (stringBuffer54 == null) {
                            xl9 xl9Var99 = this.s;
                            int i200 = this.w;
                            int i201 = this.D + 1;
                            this.x = i201;
                            this.v = new StringBuffer(new String(xl9Var99.e(i200 + i201)));
                        } else {
                            xl9 xl9Var100 = this.s;
                            int i202 = this.w;
                            int i203 = this.D + 1;
                            this.x = i203;
                            stringBuffer54.append(new String(xl9Var100.e(i202 + i203)));
                        }
                        w0(token, 0);
                        return;
                    case 52:
                        StringBuffer stringBuffer55 = this.v;
                        if (stringBuffer55 == null) {
                            xl9 xl9Var101 = this.s;
                            int i204 = this.w;
                            int i205 = this.D + 1;
                            this.x = i205;
                            this.v = new StringBuffer(new String(xl9Var101.e(i204 + i205)));
                        } else {
                            xl9 xl9Var102 = this.s;
                            int i206 = this.w;
                            int i207 = this.D + 1;
                            this.x = i207;
                            stringBuffer55.append(new String(xl9Var102.e(i206 + i207)));
                        }
                        w0(token, 0);
                        return;
                    case 53:
                        StringBuffer stringBuffer56 = this.v;
                        if (stringBuffer56 == null) {
                            xl9 xl9Var103 = this.s;
                            int i208 = this.w;
                            int i209 = this.D + 1;
                            this.x = i209;
                            this.v = new StringBuffer(new String(xl9Var103.e(i208 + i209)));
                        } else {
                            xl9 xl9Var104 = this.s;
                            int i210 = this.w;
                            int i211 = this.D + 1;
                            this.x = i211;
                            stringBuffer56.append(new String(xl9Var104.e(i210 + i211)));
                        }
                        w0(token, 0);
                        return;
                    case 54:
                        StringBuffer stringBuffer57 = this.v;
                        if (stringBuffer57 == null) {
                            xl9 xl9Var105 = this.s;
                            int i212 = this.w;
                            int i213 = this.D + 1;
                            this.x = i213;
                            this.v = new StringBuffer(new String(xl9Var105.e(i212 + i213)));
                        } else {
                            xl9 xl9Var106 = this.s;
                            int i214 = this.w;
                            int i215 = this.D + 1;
                            this.x = i215;
                            stringBuffer57.append(new String(xl9Var106.e(i214 + i215)));
                        }
                        w0(token, 0);
                        return;
                    case 55:
                        StringBuffer stringBuffer58 = this.v;
                        if (stringBuffer58 == null) {
                            xl9 xl9Var107 = this.s;
                            int i216 = this.w;
                            int i217 = this.D + 1;
                            this.x = i217;
                            this.v = new StringBuffer(new String(xl9Var107.e(i216 + i217)));
                        } else {
                            xl9 xl9Var108 = this.s;
                            int i218 = this.w;
                            int i219 = this.D + 1;
                            this.x = i219;
                            stringBuffer58.append(new String(xl9Var108.e(i218 + i219)));
                        }
                        w0(token, 0);
                        return;
                    case 56:
                        StringBuffer stringBuffer59 = this.v;
                        if (stringBuffer59 == null) {
                            xl9 xl9Var109 = this.s;
                            int i220 = this.w;
                            int i221 = this.D + 1;
                            this.x = i221;
                            this.v = new StringBuffer(new String(xl9Var109.e(i220 + i221)));
                        } else {
                            xl9 xl9Var110 = this.s;
                            int i222 = this.w;
                            int i223 = this.D + 1;
                            this.x = i223;
                            stringBuffer59.append(new String(xl9Var110.e(i222 + i223)));
                        }
                        w0(token, 0);
                        return;
                    case 57:
                        StringBuffer stringBuffer60 = this.v;
                        if (stringBuffer60 == null) {
                            xl9 xl9Var111 = this.s;
                            int i224 = this.w;
                            int i225 = this.D + 1;
                            this.x = i225;
                            this.v = new StringBuffer(new String(xl9Var111.e(i224 + i225)));
                        } else {
                            xl9 xl9Var112 = this.s;
                            int i226 = this.w;
                            int i227 = this.D + 1;
                            this.x = i227;
                            stringBuffer60.append(new String(xl9Var112.e(i226 + i227)));
                        }
                        w0(token, 0);
                        return;
                    case 58:
                        StringBuffer stringBuffer61 = this.v;
                        if (stringBuffer61 == null) {
                            xl9 xl9Var113 = this.s;
                            int i228 = this.w;
                            int i229 = this.D + 1;
                            this.x = i229;
                            this.v = new StringBuffer(new String(xl9Var113.e(i228 + i229)));
                        } else {
                            xl9 xl9Var114 = this.s;
                            int i230 = this.w;
                            int i231 = this.D + 1;
                            this.x = i231;
                            stringBuffer61.append(new String(xl9Var114.e(i230 + i231)));
                        }
                        w0(token, 0);
                        return;
                    case 59:
                        StringBuffer stringBuffer62 = this.v;
                        if (stringBuffer62 == null) {
                            xl9 xl9Var115 = this.s;
                            int i232 = this.w;
                            int i233 = this.D + 1;
                            this.x = i233;
                            this.v = new StringBuffer(new String(xl9Var115.e(i232 + i233)));
                        } else {
                            xl9 xl9Var116 = this.s;
                            int i234 = this.w;
                            int i235 = this.D + 1;
                            this.x = i235;
                            stringBuffer62.append(new String(xl9Var116.e(i234 + i235)));
                        }
                        w0(token, 2);
                        return;
                    case 60:
                        StringBuffer stringBuffer63 = this.v;
                        if (stringBuffer63 == null) {
                            xl9 xl9Var117 = this.s;
                            int i236 = this.w;
                            int i237 = this.D + 1;
                            this.x = i237;
                            this.v = new StringBuffer(new String(xl9Var117.e(i236 + i237)));
                        } else {
                            xl9 xl9Var118 = this.s;
                            int i238 = this.w;
                            int i239 = this.D + 1;
                            this.x = i239;
                            stringBuffer63.append(new String(xl9Var118.e(i238 + i239)));
                        }
                        w0(token, 0);
                        return;
                    case 61:
                        StringBuffer stringBuffer64 = this.v;
                        if (stringBuffer64 == null) {
                            xl9 xl9Var119 = this.s;
                            int i240 = this.w;
                            int i241 = this.D + 1;
                            this.x = i241;
                            this.v = new StringBuffer(new String(xl9Var119.e(i240 + i241)));
                        } else {
                            xl9 xl9Var120 = this.s;
                            int i242 = this.w;
                            int i243 = this.D + 1;
                            this.x = i243;
                            stringBuffer64.append(new String(xl9Var120.e(i242 + i243)));
                        }
                        w0(token, 2);
                        return;
                    case 62:
                        StringBuffer stringBuffer65 = this.v;
                        if (stringBuffer65 == null) {
                            xl9 xl9Var121 = this.s;
                            int i244 = this.w;
                            int i245 = this.D + 1;
                            this.x = i245;
                            this.v = new StringBuffer(new String(xl9Var121.e(i244 + i245)));
                        } else {
                            xl9 xl9Var122 = this.s;
                            int i246 = this.w;
                            int i247 = this.D + 1;
                            this.x = i247;
                            stringBuffer65.append(new String(xl9Var122.e(i246 + i247)));
                        }
                        w0(token, 0);
                        return;
                    case 63:
                        StringBuffer stringBuffer66 = this.v;
                        if (stringBuffer66 == null) {
                            xl9 xl9Var123 = this.s;
                            int i248 = this.w;
                            int i249 = this.D + 1;
                            this.x = i249;
                            this.v = new StringBuffer(new String(xl9Var123.e(i248 + i249)));
                        } else {
                            xl9 xl9Var124 = this.s;
                            int i250 = this.w;
                            int i251 = this.D + 1;
                            this.x = i251;
                            stringBuffer66.append(new String(xl9Var124.e(i250 + i251)));
                        }
                        w0(token, 2);
                        return;
                    case 64:
                        StringBuffer stringBuffer67 = this.v;
                        if (stringBuffer67 == null) {
                            xl9 xl9Var125 = this.s;
                            int i252 = this.w;
                            int i253 = this.D + 1;
                            this.x = i253;
                            this.v = new StringBuffer(new String(xl9Var125.e(i252 + i253)));
                        } else {
                            xl9 xl9Var126 = this.s;
                            int i254 = this.w;
                            int i255 = this.D + 1;
                            this.x = i255;
                            stringBuffer67.append(new String(xl9Var126.e(i254 + i255)));
                        }
                        w0(token, 0);
                        return;
                    case 65:
                        StringBuffer stringBuffer68 = this.v;
                        if (stringBuffer68 == null) {
                            xl9 xl9Var127 = this.s;
                            int i256 = this.w;
                            int i257 = this.D + 1;
                            this.x = i257;
                            this.v = new StringBuffer(new String(xl9Var127.e(i256 + i257)));
                        } else {
                            xl9 xl9Var128 = this.s;
                            int i258 = this.w;
                            int i259 = this.D + 1;
                            this.x = i259;
                            stringBuffer68.append(new String(xl9Var128.e(i258 + i259)));
                        }
                        x0(token, l(token, 2), 0);
                        return;
                    case 66:
                        StringBuffer stringBuffer69 = this.v;
                        if (stringBuffer69 == null) {
                            xl9 xl9Var129 = this.s;
                            int i260 = this.w;
                            int i261 = this.D + 1;
                            this.x = i261;
                            this.v = new StringBuffer(new String(xl9Var129.e(i260 + i261)));
                        } else {
                            xl9 xl9Var130 = this.s;
                            int i262 = this.w;
                            int i263 = this.D + 1;
                            this.x = i263;
                            stringBuffer69.append(new String(xl9Var130.e(i262 + i263)));
                        }
                        x0(token, l(token, 2), 0);
                        return;
                    case 67:
                        StringBuffer stringBuffer70 = this.v;
                        if (stringBuffer70 == null) {
                            xl9 xl9Var131 = this.s;
                            int i264 = this.w;
                            int i265 = this.D + 1;
                            this.x = i265;
                            this.v = new StringBuffer(new String(xl9Var131.e(i264 + i265)));
                        } else {
                            xl9 xl9Var132 = this.s;
                            int i266 = this.w;
                            int i267 = this.D + 1;
                            this.x = i267;
                            stringBuffer70.append(new String(xl9Var132.e(i266 + i267)));
                        }
                        y0(token);
                        return;
                    case 68:
                        StringBuffer stringBuffer71 = this.v;
                        if (stringBuffer71 == null) {
                            xl9 xl9Var133 = this.s;
                            int i268 = this.w;
                            int i269 = this.D + 1;
                            this.x = i269;
                            this.v = new StringBuffer(new String(xl9Var133.e(i268 + i269)));
                        } else {
                            xl9 xl9Var134 = this.s;
                            int i270 = this.w;
                            int i271 = this.D + 1;
                            this.x = i271;
                            stringBuffer71.append(new String(xl9Var134.e(i270 + i271)));
                        }
                        z0(token);
                        return;
                    case 69:
                        StringBuffer stringBuffer72 = this.v;
                        if (stringBuffer72 == null) {
                            xl9 xl9Var135 = this.s;
                            int i272 = this.w;
                            int i273 = this.D + 1;
                            this.x = i273;
                            this.v = new StringBuffer(new String(xl9Var135.e(i272 + i273)));
                        } else {
                            xl9 xl9Var136 = this.s;
                            int i274 = this.w;
                            int i275 = this.D + 1;
                            this.x = i275;
                            stringBuffer72.append(new String(xl9Var136.e(i274 + i275)));
                        }
                        i(token);
                        return;
                    case 70:
                        StringBuffer stringBuffer73 = this.v;
                        if (stringBuffer73 == null) {
                            xl9 xl9Var137 = this.s;
                            int i276 = this.w;
                            int i277 = this.D + 1;
                            this.x = i277;
                            this.v = new StringBuffer(new String(xl9Var137.e(i276 + i277)));
                        } else {
                            xl9 xl9Var138 = this.s;
                            int i278 = this.w;
                            int i279 = this.D + 1;
                            this.x = i279;
                            stringBuffer73.append(new String(xl9Var138.e(i278 + i279)));
                        }
                        i(token);
                        return;
                    case 71:
                        StringBuffer stringBuffer74 = this.v;
                        if (stringBuffer74 == null) {
                            xl9 xl9Var139 = this.s;
                            int i280 = this.w;
                            int i281 = this.D + 1;
                            this.x = i281;
                            this.v = new StringBuffer(new String(xl9Var139.e(i280 + i281)));
                        } else {
                            xl9 xl9Var140 = this.s;
                            int i282 = this.w;
                            int i283 = this.D + 1;
                            this.x = i283;
                            stringBuffer74.append(new String(xl9Var140.e(i282 + i283)));
                        }
                        if (!this.l && this.q < d1d.b) {
                            token.kind = 73;
                            return;
                        }
                        char cCharAt3 = token.image.charAt(0);
                        if (!this.l && this.k) {
                            this.j = cCharAt3 == '[';
                            this.l = true;
                        }
                        if (cCharAt3 == '<' && this.j) {
                            token.kind = 73;
                            return;
                        }
                        if (cCharAt3 == '[' && !this.j) {
                            token.kind = 73;
                            return;
                        }
                        if (this.h) {
                            String str2 = token.image;
                            String strSubstring = str2.substring(str2.indexOf(35) + 1);
                            if (x1.a.contains(strSubstring)) {
                                StringBuffer stringBuffer75 = new StringBuffer();
                                stringBuffer75.append("#");
                                stringBuffer75.append(strSubstring);
                                stringBuffer75.append(" is an existing directive, but the tag is malformed. ");
                                stringBuffer75.append(" (See FreeMarker Manual / Directive Reference.)");
                                throw new TokenMgrError(stringBuffer75.toString(), 0, token.beginLine, token.beginColumn + 1, token.endLine, token.endColumn);
                            }
                            if (strSubstring.equals("set") || strSubstring.equals("var")) {
                                string = "Use #assign or #local or #global, depending on the intented scope (#assign is template-scope). (If you have seen this directive in use elsewhere, this was a planned directive, so maybe you need to upgrade FreeMarker.)";
                            } else if (strSubstring.equals("else_if") || strSubstring.equals("elif")) {
                                string = "Use #elseif.";
                            } else if (strSubstring.equals("no_escape")) {
                                string = "Use #noescape instead.";
                            } else if (strSubstring.equals("method")) {
                                string = "Use #function instead.";
                            } else if (strSubstring.equals("head") || strSubstring.equals("template") || strSubstring.equals("fm")) {
                                string = "You may meant #ftl.";
                            } else if (strSubstring.equals("try") || strSubstring.equals("atempt")) {
                                string = "You may meant #attempt.";
                            } else if (strSubstring.equals("for") || strSubstring.equals("each") || strSubstring.equals("iterate") || strSubstring.equals("iterator")) {
                                string = "You may meant #list (http://freemarker.org/docs/ref_directive_list.html).";
                            } else if (strSubstring.equals("prefix")) {
                                string = "You may meant #import. (If you have seen this directive in use elsewhere, this was a planned directive, so maybe you need to upgrade FreeMarker.)";
                            } else if ((strSubstring.equals("item") || strSubstring.equals("row")) || strSubstring.equals("rows")) {
                                string = "You may meant #items.";
                            } else if ((strSubstring.equals("separator") || strSubstring.equals("separate")) || strSubstring.equals("separ")) {
                                string = "You may meant #sep.";
                            } else {
                                StringBuffer stringBuffer76 = new StringBuffer();
                                stringBuffer76.append("Help (latest version): http://freemarker.org/docs/ref_directive_alphaidx.html; you're using FreeMarker ");
                                stringBuffer76.append(xe1.S0());
                                stringBuffer76.append(Consts.DOT);
                                string = stringBuffer76.toString();
                            }
                            StringBuffer stringBuffer77 = new StringBuffer();
                            stringBuffer77.append("Unknown directive: #");
                            stringBuffer77.append(strSubstring);
                            if (string != null) {
                                StringBuffer stringBuffer78 = new StringBuffer();
                                stringBuffer78.append(". ");
                                stringBuffer78.append(string);
                                string2 = stringBuffer78.toString();
                            } else {
                                string2 = "";
                            }
                            stringBuffer77.append(string2);
                            throw new TokenMgrError(stringBuffer77.toString(), 0, token.beginLine, token.beginColumn + 1, token.endLine, token.endColumn);
                        }
                        return;
                    default:
                        switch (i) {
                            case 124:
                                StringBuffer stringBuffer79 = this.v;
                                if (stringBuffer79 == null) {
                                    this.v = new StringBuffer(f0[124]);
                                } else {
                                    stringBuffer79.append(f0[124]);
                                }
                                this.f++;
                                return;
                            case 125:
                                StringBuffer stringBuffer80 = this.v;
                                if (stringBuffer80 == null) {
                                    this.v = new StringBuffer(f0[125]);
                                } else {
                                    stringBuffer80.append(f0[125]);
                                }
                                g(token);
                                return;
                            case 126:
                                StringBuffer stringBuffer81 = this.v;
                                if (stringBuffer81 == null) {
                                    this.v = new StringBuffer(f0[126]);
                                } else {
                                    stringBuffer81.append(f0[126]);
                                }
                                int i284 = this.e + 1;
                                this.e = i284;
                                if (i284 == 1) {
                                    c(3);
                                    return;
                                }
                                return;
                            case 127:
                                StringBuffer stringBuffer82 = this.v;
                                if (stringBuffer82 == null) {
                                    this.v = new StringBuffer(f0[127]);
                                } else {
                                    stringBuffer82.append(f0[127]);
                                }
                                int i285 = this.e - 1;
                                this.e = i285;
                                if (i285 == 0) {
                                    if (this.m) {
                                        c(4);
                                        return;
                                    } else {
                                        c(2);
                                        return;
                                    }
                                }
                                return;
                            case 128:
                                StringBuffer stringBuffer83 = this.v;
                                if (stringBuffer83 == null) {
                                    this.v = new StringBuffer(f0[128]);
                                } else {
                                    stringBuffer83.append(f0[128]);
                                }
                                this.d++;
                                return;
                            case 129:
                                StringBuffer stringBuffer84 = this.v;
                                if (stringBuffer84 == null) {
                                    this.v = new StringBuffer(f0[129]);
                                } else {
                                    stringBuffer84.append(f0[129]);
                                }
                                int i286 = this.d;
                                if (i286 == 0) {
                                    c(0);
                                    return;
                                } else {
                                    this.d = i286 - 1;
                                    return;
                                }
                            default:
                                return;
                        }
                }
        }
    }

    public final int d0(int i, int i2, int i3) {
        this.E = i2;
        this.D = i;
        try {
            this.y = this.s.l();
            return x(i3, i + 1);
        } catch (IOException unused) {
            return i + 1;
        }
    }

    public void e(Token token) {
        f(token, d0d.b(token.image));
    }

    public final int e0(int i, int i2, int i3) {
        this.E = i2;
        this.D = i;
        try {
            this.y = this.s.l();
            return y(i3, i + 1);
        } catch (IOException unused) {
            return i + 1;
        }
    }

    public void f(Token token, int i) {
        if (i != 10) {
            int i2 = this.o;
            if (i2 == 10) {
                this.o = i;
                this.p = token;
            } else if (i2 != i) {
                throw u0(token);
            }
        }
    }

    public final int f0(int i, int i2, int i3) {
        this.E = i2;
        this.D = i;
        try {
            this.y = this.s.l();
            return z(i3, i + 1);
        } catch (IOException unused) {
            return i + 1;
        }
    }

    public final void g(Token token) {
        int i = this.f;
        if (i > 0) {
            this.f = i - 1;
            return;
        }
        token.kind = 139;
        if (this.g) {
            h();
            this.g = false;
        }
        c(0);
    }

    public final int g0(int i, int i2, int i3) {
        this.E = i2;
        this.D = i;
        try {
            this.y = this.s.l();
            return A(i3, i + 1);
        } catch (IOException unused) {
            return i + 1;
        }
    }

    public final void h() {
        int i = 0;
        while (true) {
            try {
                char cL = this.s.l();
                int i2 = i + 1;
                try {
                    if (!Character.isWhitespace(cL)) {
                        this.s.g(i2);
                        return;
                    }
                    if (cL == '\r') {
                        i += 2;
                        if (this.s.l() != '\n') {
                            this.s.g(1);
                            return;
                        }
                        return;
                    }
                    if (cL == '\n') {
                        return;
                    } else {
                        i = i2;
                    }
                } catch (IOException unused) {
                    i = i2;
                }
            } catch (IOException unused2) {
            }
            this.s.g(i);
            return;
        }
    }

    public final int h0(int i, long j, long j2) {
        return u(o0(i, j, j2), i + 1);
    }

    public final void i(Token token) {
        if (!this.l) {
            this.j = token.image.charAt(0) == '[';
            this.l = true;
            this.k = false;
        }
        String str = token.image;
        char cCharAt = str.charAt(0);
        char cCharAt2 = str.charAt(str.length() - 1);
        if ((cCharAt == '[' && !this.j) || (cCharAt == '<' && this.j)) {
            token.kind = 73;
        }
        if (token.kind != 73) {
            if (cCharAt2 == '>' || cCharAt2 == ']') {
                h();
            } else {
                c(2);
                this.g = true;
            }
        }
    }

    public final int i0(int i, long j, long j2) {
        return v(p0(i, j, j2), i + 1);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x009b  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:37:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:55:0x0117  */
    /* JADX WARN: Code duplicated, block: B:58:0x011f  */
    /* JADX WARN: Code duplicated, block: B:60:0x0128  */
    /* JADX WARN: Code duplicated, block: B:72:0x00db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x0006 A[SYNTHETIC] */
    public Token j() {
        int iK;
        int iJ;
        int i;
        int i2;
        boolean z;
        String strD;
        int i3;
        long[] jArr;
        int i4;
        int i5;
        int i6;
        int i7 = 0;
        int iC = 0;
        while (true) {
            try {
                this.y = this.s.a();
                String strD2 = null;
                this.v = null;
                this.w = 0;
                switch (this.z) {
                    case 0:
                        this.E = Integer.MAX_VALUE;
                        this.D = 0;
                        iC = C();
                        if (this.E == Integer.MAX_VALUE) {
                            iK = this.s.k();
                            iJ = this.s.j();
                            try {
                                this.s.l();
                                this.s.g(1);
                                z = false;
                                i2 = iK;
                                i = iJ;
                            } catch (IOException unused) {
                                strD2 = iC <= 1 ? "" : this.s.d();
                                char c = this.y;
                                if (c == '\n' || c == '\r') {
                                    iK++;
                                } else {
                                    i7 = iJ + 1;
                                }
                                i = i7;
                                i2 = iK;
                                z = true;
                            }
                            if (z) {
                                strD = strD2;
                            } else {
                                this.s.g(1);
                                strD = iC > 1 ? this.s.d() : "";
                            }
                            throw new TokenMgrError(z, this.z, i2, i, strD, this.y, 0);
                        }
                        i3 = this.D;
                        if (i3 + 1 < iC) {
                            this.s.g((iC - i3) - 1);
                        }
                        jArr = i0;
                        i4 = this.E;
                        if (((1 << (i4 & 63)) & jArr[i4 >> 6]) != 0) {
                            Token tokenT = t();
                            d(tokenT);
                            i5 = h0[this.E];
                            if (i5 != -1) {
                                this.z = i5;
                            }
                            return tokenT;
                        }
                        b(null);
                        i6 = h0[this.E];
                        if (i6 != -1) {
                            this.z = i6;
                        }
                        break;
                        break;
                    case 1:
                        this.E = Integer.MAX_VALUE;
                        this.D = 0;
                        iC = D();
                        if (this.E == Integer.MAX_VALUE) {
                            iK = this.s.k();
                            iJ = this.s.j();
                            this.s.l();
                            this.s.g(1);
                            z = false;
                            i2 = iK;
                            i = iJ;
                            if (z) {
                                this.s.g(1);
                                strD = iC > 1 ? this.s.d() : "";
                            } else {
                                strD = strD2;
                            }
                            throw new TokenMgrError(z, this.z, i2, i, strD, this.y, 0);
                        }
                        i3 = this.D;
                        if (i3 + 1 < iC) {
                            this.s.g((iC - i3) - 1);
                        }
                        jArr = i0;
                        i4 = this.E;
                        if (((1 << (i4 & 63)) & jArr[i4 >> 6]) != 0) {
                            Token tokenT2 = t();
                            d(tokenT2);
                            i5 = h0[this.E];
                            if (i5 != -1) {
                                this.z = i5;
                            }
                            return tokenT2;
                        }
                        b(null);
                        i6 = h0[this.E];
                        if (i6 != -1) {
                            this.z = i6;
                        }
                        break;
                        break;
                    case 2:
                        this.E = Integer.MAX_VALUE;
                        this.D = 0;
                        iC = E();
                        if (this.E == Integer.MAX_VALUE) {
                            iK = this.s.k();
                            iJ = this.s.j();
                            this.s.l();
                            this.s.g(1);
                            z = false;
                            i2 = iK;
                            i = iJ;
                            if (z) {
                                this.s.g(1);
                                strD = iC > 1 ? this.s.d() : "";
                            } else {
                                strD = strD2;
                            }
                            throw new TokenMgrError(z, this.z, i2, i, strD, this.y, 0);
                        }
                        i3 = this.D;
                        if (i3 + 1 < iC) {
                            this.s.g((iC - i3) - 1);
                        }
                        jArr = i0;
                        i4 = this.E;
                        if (((1 << (i4 & 63)) & jArr[i4 >> 6]) != 0) {
                            Token tokenT3 = t();
                            d(tokenT3);
                            i5 = h0[this.E];
                            if (i5 != -1) {
                                this.z = i5;
                            }
                            return tokenT3;
                        }
                        b(null);
                        i6 = h0[this.E];
                        if (i6 != -1) {
                            this.z = i6;
                        }
                        break;
                        break;
                    case 3:
                        this.E = Integer.MAX_VALUE;
                        this.D = 0;
                        iC = F();
                        if (this.E == Integer.MAX_VALUE) {
                            iK = this.s.k();
                            iJ = this.s.j();
                            this.s.l();
                            this.s.g(1);
                            z = false;
                            i2 = iK;
                            i = iJ;
                            if (z) {
                                this.s.g(1);
                                strD = iC > 1 ? this.s.d() : "";
                            } else {
                                strD = strD2;
                            }
                            throw new TokenMgrError(z, this.z, i2, i, strD, this.y, 0);
                        }
                        i3 = this.D;
                        if (i3 + 1 < iC) {
                            this.s.g((iC - i3) - 1);
                        }
                        jArr = i0;
                        i4 = this.E;
                        if (((1 << (i4 & 63)) & jArr[i4 >> 6]) != 0) {
                            Token tokenT4 = t();
                            d(tokenT4);
                            i5 = h0[this.E];
                            if (i5 != -1) {
                                this.z = i5;
                            }
                            return tokenT4;
                        }
                        b(null);
                        i6 = h0[this.E];
                        if (i6 != -1) {
                            this.z = i6;
                        }
                        break;
                        break;
                    case 4:
                        this.E = Integer.MAX_VALUE;
                        this.D = 0;
                        iC = G();
                        if (this.E == Integer.MAX_VALUE) {
                            iK = this.s.k();
                            iJ = this.s.j();
                            this.s.l();
                            this.s.g(1);
                            z = false;
                            i2 = iK;
                            i = iJ;
                            if (z) {
                                this.s.g(1);
                                strD = iC > 1 ? this.s.d() : "";
                            } else {
                                strD = strD2;
                            }
                            throw new TokenMgrError(z, this.z, i2, i, strD, this.y, 0);
                        }
                        i3 = this.D;
                        if (i3 + 1 < iC) {
                            this.s.g((iC - i3) - 1);
                        }
                        jArr = i0;
                        i4 = this.E;
                        if (((1 << (i4 & 63)) & jArr[i4 >> 6]) != 0) {
                            Token tokenT5 = t();
                            d(tokenT5);
                            i5 = h0[this.E];
                            if (i5 != -1) {
                                this.z = i5;
                            }
                            return tokenT5;
                        }
                        b(null);
                        i6 = h0[this.E];
                        if (i6 != -1) {
                            this.z = i6;
                        }
                        break;
                        break;
                    case 5:
                        try {
                            this.s.g(0);
                            while (true) {
                                char c2 = this.y;
                                if ((c2 < '@' && ((1 << c2) & 4611686018427387904L) != 0) || ((c2 >> 6) == 1 && ((1 << (c2 & '?')) & 536870912) != 0)) {
                                    this.y = this.s.a();
                                }
                            }
                            this.E = Integer.MAX_VALUE;
                            this.D = 0;
                            iC = H();
                            if (this.E == Integer.MAX_VALUE) {
                                iK = this.s.k();
                                iJ = this.s.j();
                                this.s.l();
                                this.s.g(1);
                                z = false;
                                i2 = iK;
                                i = iJ;
                                if (z) {
                                    this.s.g(1);
                                    strD = iC > 1 ? this.s.d() : "";
                                } else {
                                    strD = strD2;
                                }
                                throw new TokenMgrError(z, this.z, i2, i, strD, this.y, 0);
                            }
                            i3 = this.D;
                            if (i3 + 1 < iC) {
                                this.s.g((iC - i3) - 1);
                            }
                            jArr = i0;
                            i4 = this.E;
                            if (((1 << (i4 & 63)) & jArr[i4 >> 6]) != 0) {
                                Token tokenT6 = t();
                                d(tokenT6);
                                i5 = h0[this.E];
                                if (i5 != -1) {
                                    this.z = i5;
                                }
                                return tokenT6;
                            }
                            b(null);
                            i6 = h0[this.E];
                            if (i6 != -1) {
                                this.z = i6;
                            }
                        } catch (IOException unused2) {
                            continue;
                        }
                        break;
                    case 6:
                        this.E = Integer.MAX_VALUE;
                        this.D = 0;
                        iC = I();
                        if (this.E == Integer.MAX_VALUE) {
                            iK = this.s.k();
                            iJ = this.s.j();
                            this.s.l();
                            this.s.g(1);
                            z = false;
                            i2 = iK;
                            i = iJ;
                            if (z) {
                                this.s.g(1);
                                strD = iC > 1 ? this.s.d() : "";
                            } else {
                                strD = strD2;
                            }
                            throw new TokenMgrError(z, this.z, i2, i, strD, this.y, 0);
                        }
                        i3 = this.D;
                        if (i3 + 1 < iC) {
                            this.s.g((iC - i3) - 1);
                        }
                        jArr = i0;
                        i4 = this.E;
                        if (((1 << (i4 & 63)) & jArr[i4 >> 6]) != 0) {
                            Token tokenT7 = t();
                            d(tokenT7);
                            i5 = h0[this.E];
                            if (i5 != -1) {
                                this.z = i5;
                            }
                            return tokenT7;
                        }
                        b(null);
                        i6 = h0[this.E];
                        if (i6 != -1) {
                            this.z = i6;
                        }
                        break;
                        break;
                    case 7:
                        this.E = Integer.MAX_VALUE;
                        this.D = 0;
                        iC = J();
                        if (this.E == Integer.MAX_VALUE) {
                            iK = this.s.k();
                            iJ = this.s.j();
                            this.s.l();
                            this.s.g(1);
                            z = false;
                            i2 = iK;
                            i = iJ;
                            if (z) {
                                this.s.g(1);
                                strD = iC > 1 ? this.s.d() : "";
                            } else {
                                strD = strD2;
                            }
                            throw new TokenMgrError(z, this.z, i2, i, strD, this.y, 0);
                        }
                        i3 = this.D;
                        if (i3 + 1 < iC) {
                            this.s.g((iC - i3) - 1);
                        }
                        jArr = i0;
                        i4 = this.E;
                        if (((1 << (i4 & 63)) & jArr[i4 >> 6]) != 0) {
                            Token tokenT8 = t();
                            d(tokenT8);
                            i5 = h0[this.E];
                            if (i5 != -1) {
                                this.z = i5;
                            }
                            return tokenT8;
                        }
                        b(null);
                        i6 = h0[this.E];
                        if (i6 != -1) {
                            this.z = i6;
                        }
                        break;
                        break;
                    default:
                        if (this.E == Integer.MAX_VALUE) {
                            iK = this.s.k();
                            iJ = this.s.j();
                            this.s.l();
                            this.s.g(1);
                            z = false;
                            i2 = iK;
                            i = iJ;
                            if (z) {
                                this.s.g(1);
                                strD = iC > 1 ? this.s.d() : "";
                            } else {
                                strD = strD2;
                            }
                            throw new TokenMgrError(z, this.z, i2, i, strD, this.y, 0);
                        }
                        i3 = this.D;
                        if (i3 + 1 < iC) {
                            this.s.g((iC - i3) - 1);
                        }
                        jArr = i0;
                        i4 = this.E;
                        if (((1 << (i4 & 63)) & jArr[i4 >> 6]) != 0) {
                            Token tokenT9 = t();
                            d(tokenT9);
                            i5 = h0[this.E];
                            if (i5 != -1) {
                                this.z = i5;
                            }
                            return tokenT9;
                        }
                        b(null);
                        i6 = h0[this.E];
                        if (i6 != -1) {
                            this.z = i6;
                        }
                        break;
                        break;
                }
            } catch (IOException unused3) {
                this.E = 0;
                return t();
            }
        }
    }

    public final int j0(int i, long j, long j2, long j3) {
        return w(q0(i, j, j2, j3), i + 1);
    }

    public final int k0(int i, long j, long j2, long j3) {
        return x(r0(i, j, j2, j3), i + 1);
    }

    public final int l0(int i, long j, long j2, long j3) {
        return y(s0(i, j, j2, j3), i + 1);
    }

    public final boolean m(String str) {
        return str.length() > 2 && (str.charAt(1) == '#' || str.charAt(2) == '#');
    }

    public final int m0(int i, long j, long j2, long j3) {
        return A(t0(i, j, j2, j3), i + 1);
    }

    public final void n(int i, int i2) {
        while (true) {
            int[] iArr = this.u;
            int i3 = this.B;
            this.B = i3 + 1;
            iArr[i3] = e0[i];
            int i4 = i + 1;
            if (i == i2) {
                return;
            } else {
                i = i4;
            }
        }
    }

    public final int n0(int i, int i2) {
        this.E = i2;
        this.D = i;
        return i + 1;
    }

    public final int o0(int i, long j, long j2) {
        if (i == 0 && (j2 & 6144) != 0) {
            this.E = 74;
        }
        return -1;
    }

    public final int p0(int i, long j, long j2) {
        if (i == 0 && (j2 & 6144) != 0) {
            this.E = 74;
        }
        return -1;
    }

    public final void q(int i) {
        int[] iArr = this.t;
        int i2 = iArr[i];
        int i3 = this.C;
        if (i2 != i3) {
            int[] iArr2 = this.u;
            int i4 = this.B;
            this.B = i4 + 1;
            iArr2[i4] = i;
            iArr[i] = i3;
        }
    }

    public final int q0(int i, long j, long j2, long j3) {
        if (i == 0) {
            if ((j2 & FileUtils.ONE_EB) != 0) {
                return 2;
            }
            if ((j2 & 25165824) != 0 || (j3 & 28) != 0) {
                this.E = 133;
                return 84;
            }
            if ((j2 & 4504149383184384L) != 0) {
                return 42;
            }
            return (j2 & 2251801290080256L) != 0 ? 46 : -1;
        }
        if (i == 1) {
            if ((j3 & 12) != 0) {
                return 84;
            }
            if ((j2 & 2251801155862528L) != 0) {
                return 45;
            }
            if ((j2 & 25165824) == 0 && (j3 & 16) == 0) {
                return -1;
            }
            if (this.D != 1) {
                this.E = 133;
                this.D = 1;
            }
            return 84;
        }
        if (i == 2) {
            if ((j2 & 25165824) == 0 && (j3 & 16) == 0) {
                return -1;
            }
            this.E = 133;
            this.D = 2;
            return 84;
        }
        if (i != 3) {
            return -1;
        }
        if ((j2 & 8388608) == 0 && (j3 & 16) == 0) {
            return (j2 & 16777216) != 0 ? 84 : -1;
        }
        this.E = 133;
        this.D = 3;
        return 84;
    }

    public final void r(int i, int i2) {
        while (true) {
            q(e0[i]);
            int i3 = i + 1;
            if (i == i2) {
                return;
            } else {
                i = i3;
            }
        }
    }

    public final int r0(int i, long j, long j2, long j3) {
        if (i == 0) {
            if ((j2 & FileUtils.ONE_EB) != 0) {
                return 2;
            }
            if ((j2 & 25165824) == 0 && (j3 & 28) == 0) {
                return (j2 & 2251801290080256L) != 0 ? 43 : -1;
            }
            this.E = 133;
            return 81;
        }
        if (i == 1) {
            if ((j3 & 12) != 0) {
                return 81;
            }
            if ((j2 & 2251801155862528L) != 0) {
                return 42;
            }
            if ((j2 & 25165824) == 0 && (j3 & 16) == 0) {
                return -1;
            }
            if (this.D != 1) {
                this.E = 133;
                this.D = 1;
            }
            return 81;
        }
        if (i == 2) {
            if ((j2 & 25165824) == 0 && (j3 & 16) == 0) {
                return -1;
            }
            this.E = 133;
            this.D = 2;
            return 81;
        }
        if (i != 3) {
            return -1;
        }
        if ((j2 & 8388608) == 0 && (j3 & 16) == 0) {
            return (j2 & 16777216) != 0 ? 81 : -1;
        }
        this.E = 133;
        this.D = 3;
        return 81;
    }

    public final void s(int i, int i2) {
        q(i);
        q(i2);
    }

    public final int s0(int i, long j, long j2, long j3) {
        if (i == 0) {
            if ((j2 & FileUtils.ONE_EB) != 0) {
                return 2;
            }
            if ((j2 & 25165824) != 0 || (j3 & 28) != 0) {
                this.E = 133;
                return 86;
            }
            if ((j2 & 4504149383184384L) != 0) {
                return 44;
            }
            if ((j2 & 2251801290080256L) != 0) {
                return 48;
            }
            return (j2 & 72057628397666304L) != 0 ? 42 : -1;
        }
        if (i == 1) {
            if ((j3 & 12) != 0) {
                return 86;
            }
            if ((j2 & 2251801155862528L) != 0) {
                return 47;
            }
            if ((j2 & 25165824) == 0 && (j3 & 16) == 0) {
                return -1;
            }
            if (this.D != 1) {
                this.E = 133;
                this.D = 1;
            }
            return 86;
        }
        if (i == 2) {
            if ((j2 & 25165824) == 0 && (j3 & 16) == 0) {
                return -1;
            }
            this.E = 133;
            this.D = 2;
            return 86;
        }
        if (i != 3) {
            return -1;
        }
        if ((j2 & 8388608) == 0 && (j3 & 16) == 0) {
            return (j2 & 16777216) != 0 ? 86 : -1;
        }
        this.E = 133;
        this.D = 3;
        return 86;
    }

    public Token t() {
        Token tokenNewToken = Token.newToken(this.E);
        int i = this.E;
        tokenNewToken.kind = i;
        String strD = f0[i];
        if (strD == null) {
            strD = this.s.d();
        }
        tokenNewToken.image = strD;
        tokenNewToken.beginLine = this.s.i();
        tokenNewToken.beginColumn = this.s.h();
        tokenNewToken.endLine = this.s.k();
        tokenNewToken.endColumn = this.s.j();
        return tokenNewToken;
    }

    public final int t0(int i, long j, long j2, long j3) {
        if (i == 0) {
            if ((j2 & 25165824) != 0 || (j3 & 28) != 0) {
                this.E = 133;
                return 80;
            }
            if ((j2 & 4504149383184384L) != 0) {
                return 38;
            }
            return (j2 & 2251801290080256L) != 0 ? 42 : -1;
        }
        if (i == 1) {
            if ((j3 & 12) != 0) {
                return 80;
            }
            if ((j2 & 2251801155862528L) != 0) {
                return 41;
            }
            if ((j2 & 25165824) == 0 && (j3 & 16) == 0) {
                return -1;
            }
            if (this.D != 1) {
                this.E = 133;
                this.D = 1;
            }
            return 80;
        }
        if (i == 2) {
            if ((j2 & 25165824) == 0 && (j3 & 16) == 0) {
                return -1;
            }
            this.E = 133;
            this.D = 2;
            return 80;
        }
        if (i != 3) {
            return -1;
        }
        if ((j2 & 8388608) == 0 && (j3 & 16) == 0) {
            return (j2 & 16777216) != 0 ? 80 : -1;
        }
        this.E = 133;
        this.D = 3;
        return 80;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:1028:0x0ef9 A[PHI: r6 r8
      0x0ef9: PHI (r6v378 char) = 
      (r6v102 char)
      (r6v121 char)
      (r6v127 char)
      (r6v139 char)
      (r6v143 char)
      (r6v159 char)
      (r6v177 char)
      (r6v189 char)
      (r6v193 char)
      (r6v197 char)
      (r6v216 char)
      (r6v245 char)
      (r6v249 char)
      (r6v252 char)
      (r6v256 char)
      (r6v307 char)
      (r6v316 char)
      (r6v356 char)
      (r6v364 char)
      (r6v372 char)
      (r6v379 char)
     binds: [B:1912:0x2250, B:1854:0x20e9, B:1836:0x2079, B:1800:0x1f95, B:1788:0x1f47, B:1738:0x1e24, B:1680:0x1cd3, B:1640:0x1bff, B:1626:0x1bba, B:1614:0x1b6c, B:1547:0x1a2f, B:1454:0x1835, B:1442:0x17e7, B:1433:0x17ad, B:1421:0x175f, B:1254:0x13ca, B:1225:0x1327, B:1095:0x106f, B:1069:0x0fe0, B:1045:0x0f5e, B:1026:0x0eeb] A[DONT_GENERATE, DONT_INLINE]
      0x0ef9: PHI (r8v739 char) = 
      (r8v197 char)
      (r8v241 char)
      (r8v256 char)
      (r8v288 char)
      (r8v299 char)
      (r8v334 char)
      (r8v372 char)
      (r8v392 char)
      (r8v398 char)
      (r8v409 char)
      (r8v432 char)
      (r8v484 char)
      (r8v495 char)
      (r8v504 char)
      (r8v515 char)
      (r8v608 char)
      (r8v626 char)
      (r8v694 char)
      (r8v710 char)
      (r8v724 char)
      (r8v740 char)
     binds: [B:1912:0x2250, B:1854:0x20e9, B:1836:0x2079, B:1800:0x1f95, B:1788:0x1f47, B:1738:0x1e24, B:1680:0x1cd3, B:1640:0x1bff, B:1626:0x1bba, B:1614:0x1b6c, B:1547:0x1a2f, B:1454:0x1835, B:1442:0x17e7, B:1433:0x17ad, B:1421:0x175f, B:1254:0x13ca, B:1225:0x1327, B:1095:0x106f, B:1069:0x0fe0, B:1045:0x0f5e, B:1026:0x0eeb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:2233:0x2a86  */
    /* JADX WARN: Code duplicated, block: B:2240:0x2a99 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:2242:0x2a98 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:877:0x0c34 A[PHI: r4
      0x0c34: PHI (r4v7 int) = 
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v31 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v33 int)
      (r4v6 int)
      (r4v6 int)
     binds: [B:869:0x0c25, B:1015:0x0eb9, B:1012:0x0ea9, B:1013:0x0eab, B:1009:0x0e99, B:1010:0x0e9b, B:1005:0x0e82, B:1001:0x0e6e, B:1002:0x0e70, B:998:0x0e5c, B:999:0x0e5e, B:995:0x0e4f, B:996:0x0e51, B:990:0x0e41, B:992:0x0e45, B:987:0x0e31, B:988:0x0e33, B:984:0x0e1f, B:985:0x0e21, B:981:0x0e0f, B:982:0x0e11, B:978:0x0dff, B:979:0x0e01, B:975:0x0def, B:976:0x0df1, B:972:0x0ddd, B:973:0x0ddf, B:969:0x0dcb, B:970:0x0dcd, B:966:0x0db7, B:967:0x0db9, B:961:0x0da9, B:963:0x0dad, B:958:0x0d99, B:959:0x0d9b, B:955:0x0d87, B:956:0x0d89, B:952:0x0d77, B:953:0x0d79, B:949:0x0d67, B:950:0x0d69, B:946:0x0d57, B:947:0x0d59, B:941:0x0d4b, B:943:0x0d4f, B:938:0x0d39, B:939:0x0d3b, B:935:0x0d2e, B:936:0x0d30, B:932:0x0d1e, B:933:0x0d20, B:929:0x0d11, B:930:0x0d13, B:924:0x0d05, B:926:0x0d09, B:921:0x0cfa, B:922:0x0cfc, B:918:0x0cea, B:919:0x0cec, B:911:0x0cd2, B:916:0x0cdc, B:908:0x0cbe, B:909:0x0cc0, B:905:0x0cac, B:906:0x0cae, B:902:0x0c9d, B:903:0x0c9f, B:899:0x0c92, B:900:0x0c94, B:896:0x0c84, B:897:0x0c86, B:893:0x0c76, B:894:0x0c78, B:890:0x0c65, B:891:0x0c67, B:887:0x0c57, B:888:0x0c59, B:884:0x0c46, B:885:0x0c48, B:876:0x0c33, B:872:0x0c2b, B:874:0x0c2f] A[DONT_GENERATE, DONT_INLINE]] */
    public final int u(int i, int i2) {
        int i3;
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        int i4;
        int i5;
        char c6;
        char c7;
        int i6;
        int i7;
        int i8;
        this.B = TypedValues.MotionType.TYPE_POLAR_RELATIVETO;
        this.u[0] = i;
        int i9 = 1;
        int i10 = 1;
        int i11 = Integer.MAX_VALUE;
        int i12 = 0;
        int i13 = i2;
        while (true) {
            int i14 = this.C + i9;
            this.C = i14;
            if (i14 == Integer.MAX_VALUE) {
                a();
            }
            char c8 = this.y;
            if (c8 < '@') {
                long j = 1 << c8;
                do {
                    int[] iArr = this.u;
                    i10--;
                    switch (iArr[i10]) {
                        case 0:
                            if ((j & 4294977024L) != 0) {
                                if (i11 > 72) {
                                    i11 = 72;
                                }
                                q(0);
                            }
                            break;
                        case 1:
                            if ((j & (-1152921611981039105L)) != 0) {
                                if (i11 > 73) {
                                    i11 = 73;
                                }
                                q(1);
                            }
                            break;
                        case 2:
                            if ((j & (-1152921611981039105L)) != 0) {
                                if (i11 > 73) {
                                    i11 = 73;
                                }
                                q(1);
                            } else if ((j & 4294977024L) != 0) {
                                if (i11 > 72) {
                                    i11 = 72;
                                }
                                q(0);
                            } else if ((j & 1152921607686062080L) != 0 && i11 > 74) {
                                i11 = 74;
                            }
                            if (this.y == '<') {
                                n(7, 8);
                            }
                            if (this.y == '<') {
                                r(9, 90);
                            }
                            if (this.y == '<') {
                                r(91, 133);
                            }
                            break;
                        case 3:
                            if (this.y == '<') {
                                r(91, 133);
                            }
                            break;
                        case 5:
                            if ((j & 4294977024L) != 0) {
                                n(134, 135);
                            }
                            break;
                        case 6:
                            if (this.y == '>' && i11 > 6) {
                                i8 = 6;
                                i11 = i8;
                            }
                            break;
                        case 14:
                            if ((j & 4294977024L) != 0) {
                                n(136, 137);
                            }
                            break;
                        case 15:
                            if (this.y == '>' && i11 > 7) {
                                i8 = 7;
                                i11 = i8;
                            }
                            break;
                        case 23:
                            if ((j & 4294977024L) != 0 && i11 > 8) {
                                i8 = 8;
                                i11 = i8;
                            }
                            break;
                        case 28:
                            if ((j & 4294977024L) != 0 && i11 > 9) {
                                i8 = 9;
                                i11 = i8;
                            }
                            break;
                        case 33:
                            if ((j & 4294977024L) != 0 && i11 > 10) {
                                i8 = 10;
                                i11 = i8;
                            }
                            break;
                        case 38:
                            if ((j & 4294977024L) != 0) {
                                n(138, 139);
                            }
                            break;
                        case 40:
                            if ((j & 4294977024L) != 0 && i11 > 11) {
                                i8 = 11;
                                i11 = i8;
                            }
                            break;
                        case 47:
                            if ((j & 4294977024L) != 0) {
                                n(140, 141);
                            }
                            break;
                        case 48:
                            if (this.y == '>' && i11 > 12) {
                                i8 = 12;
                                i11 = i8;
                            }
                            break;
                        case 54:
                            if ((j & 4294977024L) != 0 && i11 > 13) {
                                i8 = 13;
                                i11 = i8;
                            }
                            break;
                        case 60:
                            if ((j & 4294977024L) != 0 && i11 > 14) {
                                i8 = 14;
                                i11 = i8;
                            }
                            break;
                        case 67:
                            if ((j & 4294977024L) != 0 && i11 > 15) {
                                i8 = 15;
                                i11 = i8;
                            }
                            break;
                        case 72:
                            if ((j & 4294977024L) != 0 && i11 > 16) {
                                i8 = 16;
                                i11 = i8;
                            }
                            break;
                        case 79:
                            if ((j & 4294977024L) != 0 && i11 > 17) {
                                i8 = 17;
                                i11 = i8;
                            }
                            break;
                        case 86:
                            if ((j & 4294977024L) != 0 && i11 > 18) {
                                i8 = 18;
                                i11 = i8;
                            }
                            break;
                        case 92:
                            if ((j & 4294977024L) != 0 && i11 > 19) {
                                i8 = 19;
                                i11 = i8;
                            }
                            break;
                        case 100:
                            if ((j & 4294977024L) != 0 && i11 > 20) {
                                i8 = 20;
                                i11 = i8;
                            }
                            break;
                        case 107:
                            if ((j & 4294977024L) != 0 && i11 > 21) {
                                i8 = 21;
                                i11 = i8;
                            }
                            break;
                        case 116:
                            if ((j & 4294977024L) != 0 && i11 > 22) {
                                i8 = 22;
                                i11 = i8;
                            }
                            break;
                        case 122:
                            if ((j & 4294977024L) != 0 && i11 > 23) {
                                i8 = 23;
                                i11 = i8;
                            }
                            break;
                        case 132:
                            if ((j & 4294977024L) != 0 && i11 > 24) {
                                i8 = 24;
                                i11 = i8;
                            }
                            break;
                        case 138:
                            if ((j & 4294977024L) != 0 && i11 > 25) {
                                i8 = 25;
                                i11 = i8;
                            }
                            break;
                        case 143:
                            if ((j & 4294977024L) != 0 && i11 > 26) {
                                i8 = 26;
                                i11 = i8;
                            }
                            break;
                        case 150:
                            if ((j & 4294977024L) != 0 && i11 > 27) {
                                i8 = 27;
                                i11 = i8;
                            }
                            break;
                        case 155:
                            if ((j & 4294977024L) != 0 && i11 > 28) {
                                i8 = 28;
                                i11 = i8;
                            }
                            break;
                        case 163:
                            if ((j & 4294977024L) != 0) {
                                n(142, 143);
                            }
                            break;
                        case 164:
                            if (this.y == '>' && i11 > 29) {
                                i8 = 29;
                                i11 = i8;
                            }
                            break;
                        case ByteCode.LRETURN:
                            if ((j & 4294977024L) != 0) {
                                n(144, 145);
                            }
                            break;
                        case ByteCode.FRETURN:
                            if (this.y == '>' && i11 > 30) {
                                i8 = 30;
                                i11 = i8;
                            }
                            break;
                        case 184:
                            if ((j & 4294977024L) != 0) {
                                n(146, 147);
                            }
                            break;
                        case 185:
                            if (this.y == '>' && i11 > 32) {
                                i8 = 32;
                                i11 = i8;
                            }
                            break;
                        case ByteCode.ATHROW:
                            if ((j & 4294977024L) != 0) {
                                r(148, 150);
                            }
                            break;
                        case 192:
                            if (this.y == '/') {
                                q(193);
                            }
                            break;
                        case 193:
                            if (this.y == '>' && i11 > 48) {
                                i8 = 48;
                                i11 = i8;
                            }
                            break;
                        case 198:
                            if ((j & 4294977024L) != 0) {
                                r(151, 153);
                            }
                            break;
                        case 199:
                            if (this.y == '/') {
                                q(200);
                            }
                            break;
                        case 200:
                            if (this.y == '>' && i11 > 49) {
                                i8 = 49;
                                i11 = i8;
                            }
                            break;
                        case IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT:
                            if ((j & 4294977024L) != 0) {
                                r(154, 156);
                            }
                            break;
                        case IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY:
                            if (this.y == '/') {
                                q(IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY);
                            }
                            break;
                        case IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY:
                            if (this.y == '>' && i11 > 50) {
                                i8 = 50;
                                i11 = i8;
                            }
                            break;
                        case IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR:
                            if ((j & 4294977024L) != 0) {
                                r(157, 159);
                            }
                            break;
                        case IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID:
                            if (this.y == '/') {
                                q(IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY);
                            }
                            break;
                        case IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY:
                            if (this.y == '>' && i11 > 51) {
                                i8 = 51;
                                i11 = i8;
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY:
                            if ((j & 4294977024L) != 0) {
                                r(160, 162);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES:
                            if (this.y == '/') {
                                q(224);
                            }
                            break;
                        case 224:
                            if (this.y == '>' && i11 > 52) {
                                i8 = 52;
                                i11 = i8;
                            }
                            break;
                        case 230:
                            if ((j & 4294977024L) != 0) {
                                r(163, 165);
                            }
                            break;
                        case 231:
                            if (this.y == '/') {
                                q(232);
                            }
                            break;
                        case 232:
                            if (this.y == '>' && i11 > 53) {
                                i8 = 53;
                                i11 = i8;
                            }
                            break;
                        case 234:
                            if ((j & 4294977024L) != 0) {
                                r(166, ByteCode.JSR);
                            }
                            break;
                        case 235:
                            if (this.y == '/') {
                                q(236);
                            }
                            break;
                        case 236:
                            if (this.y == '>' && i11 > 54) {
                                i8 = 54;
                                i11 = i8;
                            }
                            break;
                        case 239:
                            if ((j & 4294977024L) != 0) {
                                r(169, ByteCode.LOOKUPSWITCH);
                            }
                            break;
                        case 240:
                            if (this.y == '/') {
                                q(241);
                            }
                            break;
                        case 241:
                            if (this.y == '>' && i11 > 55) {
                                i8 = 55;
                                i11 = i8;
                            }
                            break;
                        case 244:
                            if ((j & 4294977024L) != 0) {
                                r(172, ByteCode.FRETURN);
                            }
                            break;
                        case 245:
                            if (this.y == '/') {
                                q(246);
                            }
                            break;
                        case 246:
                            if (this.y == '>' && i11 > 56) {
                                i8 = 56;
                                i11 = i8;
                            }
                            break;
                        case 249:
                            if ((j & 4294977024L) != 0) {
                                n(ByteCode.DRETURN, 176);
                            }
                            break;
                        case 250:
                            if (this.y == '>' && i11 > 57) {
                                i8 = 57;
                                i11 = i8;
                            }
                            break;
                        case 258:
                            if ((j & 4294977024L) != 0) {
                                r(177, ByteCode.PUTSTATIC);
                            }
                            break;
                        case 259:
                            if (this.y == '/') {
                                q(260);
                            }
                            break;
                        case 260:
                            if (this.y == '>' && i11 > 58) {
                                i8 = 58;
                                i11 = i8;
                            }
                            break;
                        case 267:
                            if ((j & 4294977024L) != 0 && i11 > 59) {
                                i8 = 59;
                                i11 = i8;
                            }
                            break;
                        case 274:
                            if ((j & 4294977024L) != 0) {
                                r(180, 182);
                            }
                            break;
                        case 275:
                            if (this.y == '/') {
                                q(276);
                            }
                            break;
                        case 276:
                            if (this.y == '>' && i11 > 60) {
                                i11 = 60;
                            }
                            break;
                        case 284:
                            if ((j & 4294977024L) != 0 && i11 > 61) {
                                i8 = 61;
                                i11 = i8;
                            }
                            break;
                        case MediaPlayer.Event.SubtitleLoad:
                            if ((j & 4294977024L) != 0) {
                                r(183, 185);
                            }
                            break;
                        case MediaPlayer.Event.EofPaused:
                            if (this.y == '/') {
                                q(MediaPlayer.Event.DisableVideo);
                            }
                            break;
                        case MediaPlayer.Event.DisableVideo:
                            if (this.y == '>' && i11 > 62) {
                                i11 = 62;
                            }
                            break;
                        case 303:
                            if ((j & 4294977024L) != 0 && i11 > 63) {
                                i8 = 63;
                                i11 = i8;
                            }
                            break;
                        case 312:
                            if ((j & 4294977024L) != 0) {
                                n(ByteCode.INVOKEDYNAMIC, 187);
                            }
                            break;
                        case 313:
                            if (this.y == '>' && i11 > 65) {
                                i8 = 65;
                                i11 = i8;
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE:
                            if (this.y == '<') {
                                r(9, 90);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL:
                            if (this.y == '#') {
                                q(12);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_MLBB_GODLIKE:
                            if (this.y == '#') {
                                q(21);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY:
                            if (this.y == '#') {
                                q(24);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_MLBB_VICTORY:
                            if (this.y == '#') {
                                q(31);
                            }
                            break;
                        case 324:
                            if (this.y == '#') {
                                q(36);
                            }
                            break;
                        case 325:
                            if (this.y == '#') {
                                q(45);
                            }
                            break;
                        case 326:
                            if (this.y == '#') {
                                q(50);
                            }
                            break;
                        case 327:
                            if (this.y == '#') {
                                q(58);
                            }
                            break;
                        case 328:
                            if (this.y == '#') {
                                q(65);
                            }
                            break;
                        case 329:
                            if (this.y == '#') {
                                q(70);
                            }
                            break;
                        case 330:
                            if (this.y == '#') {
                                q(77);
                            }
                            break;
                        case 331:
                            if (this.y == '#') {
                                q(84);
                            }
                            break;
                        case 332:
                            if (this.y == '#') {
                                q(90);
                            }
                            break;
                        case 333:
                            if (this.y == '#') {
                                q(98);
                            }
                            break;
                        case 334:
                            if (this.y == '#') {
                                q(105);
                            }
                            break;
                        case 335:
                            if (this.y == '#') {
                                q(114);
                            }
                            break;
                        case 336:
                            if (this.y == '#') {
                                q(120);
                            }
                            break;
                        case 337:
                            if (this.y == '#') {
                                q(130);
                            }
                            break;
                        case 338:
                            if (this.y == '#') {
                                q(136);
                            }
                            break;
                        case 339:
                            if (this.y == '#') {
                                q(141);
                            }
                            break;
                        case 340:
                            if (this.y == '#') {
                                q(148);
                            }
                            break;
                        case 341:
                            if (this.y == '#') {
                                q(153);
                            }
                            break;
                        case 342:
                            if (this.y == '#') {
                                q(161);
                            }
                            break;
                        case 343:
                            if (this.y == '#') {
                                q(ByteCode.LOOKUPSWITCH);
                            }
                            break;
                        case 344:
                            if (this.y == '#') {
                                q(180);
                            }
                            break;
                        case 345:
                            if (this.y == '#') {
                                q(189);
                            }
                            break;
                        case 346:
                            if (this.y == '/') {
                                q(350);
                            }
                            break;
                        case 348:
                            if ((j & 4294977024L) != 0) {
                                n(188, 189);
                            }
                            break;
                        case 349:
                            if (this.y == '>' && i11 > 33) {
                                i8 = 33;
                                i11 = i8;
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_HOK_FIRST_BLOOD:
                            if (this.y == '#') {
                                q(350);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_1:
                        case 566:
                            if (this.y == '/') {
                                q(TranSceneConfig.SCENE_TYPE_GAME_HOK_FIRST_BLOOD);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_2:
                            if (this.y == '/') {
                                q(TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_8);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_4:
                            if ((j & 4294977024L) != 0) {
                                n(ByteCode.ARRAYLENGTH, ByteCode.ATHROW);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_5:
                            if (this.y == '>' && i11 > 34) {
                                i8 = 34;
                                i11 = i8;
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL:
                            if (this.y == '#') {
                                q(TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_8);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_HOK_DOMINATE:
                        case 567:
                            if (this.y == '/') {
                                q(TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_HOK_LEGENDARY:
                            if (this.y == '/') {
                                q(369);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_HOK_UNRIVALED:
                            if ((j & 4294977024L) != 0) {
                                n(192, 193);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY:
                            if (this.y == '>' && i11 > 35) {
                                i11 = 35;
                            }
                            break;
                        case 370:
                            if (this.y == '#') {
                                q(369);
                            }
                            break;
                        case 371:
                        case 568:
                            if (this.y == '/') {
                                q(370);
                            }
                            break;
                        case 372:
                            if (this.y == '/') {
                                q(377);
                            }
                            break;
                        case 374:
                            if ((j & 4294977024L) != 0) {
                                n(194, ByteCode.MONITOREXIT);
                            }
                            break;
                        case 375:
                            if (this.y == '>' && i11 > 36) {
                                i8 = 36;
                                i11 = i8;
                            }
                            break;
                        case 378:
                            if (this.y == '#') {
                                q(377);
                            }
                            break;
                        case 379:
                        case 569:
                            if (this.y == '/') {
                                q(378);
                            }
                            break;
                        case 380:
                            if (this.y == '/') {
                                q(389);
                            }
                            break;
                        case 382:
                            if ((j & 4294977024L) != 0) {
                                n(196, ByteCode.MULTIANEWARRAY);
                            }
                            break;
                        case 383:
                            if (this.y == '>' && i11 > 37) {
                                i8 = 37;
                                i11 = i8;
                            }
                            break;
                        case 390:
                            if (this.y == '#') {
                                q(389);
                            }
                            break;
                        case 391:
                        case 570:
                            if (this.y == '/') {
                                q(390);
                            }
                            break;
                        case 392:
                            if (this.y == '/') {
                                q(401);
                            }
                            break;
                        case MediaFile.FILE_TYPE_OGM:
                            if ((j & 4294977024L) != 0) {
                                n(198, 199);
                            }
                            break;
                        case MediaFile.FILE_TYPE_RV:
                            if (this.y == '>' && i11 > 38) {
                                i8 = 38;
                                i11 = i8;
                            }
                            break;
                        case 402:
                            if (this.y == '#') {
                                q(401);
                            }
                            break;
                        case 403:
                        case 571:
                            if (this.y == '/') {
                                q(402);
                            }
                            break;
                        case 404:
                            if (this.y == '/') {
                                q(413);
                            }
                            break;
                        case 408:
                            if ((j & 4294977024L) != 0) {
                                n(200, 201);
                            }
                            break;
                        case RspCode.ERROR_CHANNEL_NOT_REGISTER:
                            if (this.y == '>' && i11 > 39) {
                                i8 = 39;
                                i11 = i8;
                            }
                            break;
                        case 414:
                            if (this.y == '#') {
                                q(413);
                            }
                            break;
                        case 415:
                        case 572:
                            if (this.y == '/') {
                                q(414);
                            }
                            break;
                        case TypedValues.CycleType.TYPE_PATH_ROTATE:
                            if (this.y == '/') {
                                q(TypedValues.CycleType.TYPE_WAVE_PERIOD);
                            }
                            break;
                        case 418:
                            if ((j & 4294977024L) != 0) {
                                n(202, 203);
                            }
                            break;
                        case 419:
                            if (this.y == '>' && i11 > 40) {
                                i8 = 40;
                                i11 = i8;
                            }
                            break;
                        case TypedValues.CycleType.TYPE_WAVE_OFFSET:
                            if (this.y == '#') {
                                q(TypedValues.CycleType.TYPE_WAVE_PERIOD);
                            }
                            break;
                        case TypedValues.CycleType.TYPE_WAVE_PHASE:
                        case 573:
                            if (this.y == '/') {
                                q(TypedValues.CycleType.TYPE_WAVE_OFFSET);
                            }
                            break;
                        case 426:
                            if (this.y == '/') {
                                q(434);
                            }
                            break;
                        case 428:
                            if ((j & 4294977024L) != 0) {
                                n(IDrmSession.ERROR_SESSION_DRM_NULL, IDrmSession.ERROR_SESSION_KEY_REQUEST_NULL);
                            }
                            break;
                        case 429:
                            if (this.y == '>' && i11 > 41) {
                                i8 = 41;
                                i11 = i8;
                            }
                            break;
                        case 435:
                            if (this.y == '#') {
                                q(434);
                            }
                            break;
                        case 436:
                        case 574:
                            if (this.y == '/') {
                                q(435);
                            }
                            break;
                        case 437:
                            if (this.y == '/') {
                                q(445);
                            }
                            break;
                        case 439:
                            if ((j & 4294977024L) != 0) {
                                n(IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY);
                            }
                            break;
                        case TranSceneConfig.SCENE_TYPE_GAME_FF:
                            if (this.y == '>' && i11 > 42) {
                                i8 = 42;
                                i11 = i8;
                            }
                            break;
                        case 446:
                            if (this.y == '#') {
                                q(445);
                            }
                            break;
                        case 447:
                        case 575:
                            if (this.y == '/') {
                                q(446);
                            }
                            break;
                        case 448:
                            if (this.y == '/') {
                                q(458);
                            }
                            break;
                        case WebIndicator.MAX_DECELERATE_SPEED_DURATION:
                            if ((j & 4294977024L) != 0) {
                                n(IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY, IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT);
                            }
                            break;
                        case 451:
                            if (this.y == '>' && i11 > 43) {
                                i8 = 43;
                                i11 = i8;
                            }
                            break;
                        case 459:
                            if (this.y == '#') {
                                q(458);
                            }
                            break;
                        case 460:
                        case 576:
                            if (this.y == '/') {
                                q(459);
                            }
                            break;
                        case 461:
                            if (this.y == '/') {
                                q(468);
                            }
                            break;
                        case 463:
                            if ((j & 4294977024L) != 0) {
                                n(210, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_NONE);
                            }
                            break;
                        case 464:
                            if (this.y == '>' && i11 > 44) {
                                i8 = 44;
                                i11 = i8;
                            }
                            break;
                        case 469:
                            if (this.y == '#') {
                                q(468);
                            }
                            break;
                        case 470:
                        case 577:
                            if (this.y == '/') {
                                q(469);
                            }
                            break;
                        case 471:
                            if (this.y == '/') {
                                q(481);
                            }
                            break;
                        case 473:
                            if ((j & 4294977024L) != 0) {
                                n(IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_ERROR, IDrmSession.ERROR_SESSION_PROVISION_ERROR);
                            }
                            break;
                        case 474:
                            if (this.y == '>' && i11 > 45) {
                                i8 = 45;
                                i11 = i8;
                            }
                            break;
                        case 482:
                            if (this.y == '#') {
                                q(481);
                            }
                            break;
                        case 483:
                        case 578:
                            if (this.y == '/') {
                                q(482);
                            }
                            break;
                        case 484:
                            if (this.y == '/') {
                                q(495);
                            }
                            break;
                        case 486:
                            if ((j & 4294977024L) != 0) {
                                n(214, IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR);
                            }
                            break;
                        case 487:
                            if (this.y == '>' && i11 > 46) {
                                i8 = 46;
                                i11 = i8;
                            }
                            break;
                        case 496:
                            if (this.y == '#') {
                                q(495);
                            }
                            break;
                        case 497:
                        case 579:
                            if (this.y == '/') {
                                q(496);
                            }
                            break;
                        case 498:
                            if (this.y == '/') {
                                q(506);
                            }
                            break;
                        case 500:
                            if ((j & 4294977024L) != 0) {
                                n(IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID, IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY);
                            }
                            break;
                        case 501:
                            if (this.y == '>' && i11 > 47) {
                                i11 = 47;
                            }
                            break;
                        case TypedValues.PositionType.TYPE_PERCENT_Y:
                            if (this.y == '#') {
                                q(506);
                            }
                            break;
                        case TypedValues.PositionType.TYPE_CURVE_FIT:
                        case 580:
                            if (this.y == '/') {
                                q(TypedValues.PositionType.TYPE_PERCENT_Y);
                            }
                            break;
                        case 509:
                            if (this.y == '#') {
                                q(196);
                            }
                            break;
                        case TypedValues.PositionType.TYPE_POSITION_TYPE:
                            if (this.y == '#') {
                                q(IDrmSession.ERROR_SESSION_DRM_NULL);
                            }
                            break;
                        case FrameMetricsAggregator.EVERY_DURATION:
                            if (this.y == '#') {
                                q(IDrmSession.ERROR_SESSION_PROVISION_ERROR);
                            }
                            break;
                        case 512:
                            if (this.y == '#') {
                                q(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT);
                            }
                            break;
                        case InputDeviceCompat.SOURCE_DPAD:
                            if (this.y == '#') {
                                q(228);
                            }
                            break;
                        case 514:
                            if (this.y == '#') {
                                q(229);
                            }
                            break;
                        case 515:
                            if (this.y == '#') {
                                q(237);
                            }
                            break;
                        case 516:
                            if (this.y == '#') {
                                q(242);
                            }
                            break;
                        case 517:
                            if (this.y == '#') {
                                q(247);
                            }
                            break;
                        case 518:
                            if (this.y == '#') {
                                q(256);
                            }
                            break;
                        case 519:
                            if (this.y == '#') {
                                q(265);
                            }
                            break;
                        case 520:
                            if (this.y == '#') {
                                q(272);
                            }
                            break;
                        case 521:
                            if (this.y == '#') {
                                q(OggPageHeader.MAXIMUM_PAGE_HEADER_SIZE);
                            }
                            break;
                        case 522:
                            if (this.y == '#') {
                                q(MediaPlayer.Event.Prepared);
                            }
                            break;
                        case 523:
                            if (this.y == '#') {
                                q(301);
                            }
                            break;
                        case 524:
                            if (this.y == '#') {
                                q(308);
                            }
                            break;
                        case 525:
                            if (this.y == '/') {
                                q(533);
                            }
                            break;
                        case 527:
                            if ((j & 4294977024L) != 0) {
                                n(IDrmSession.ERROR_SESSION_DRM_INFO_INVALID, 219);
                            }
                            break;
                        case 528:
                            if (this.y == '>' && i11 > 64) {
                                i8 = 64;
                                i11 = i8;
                            }
                            break;
                        case 534:
                            if (this.y == '#') {
                                q(533);
                            }
                            break;
                        case 535:
                        case 581:
                            if (this.y == '/') {
                                q(534);
                            }
                            break;
                        case 536:
                            if (this.y == '#') {
                                q(318);
                            }
                            break;
                        case 537:
                            if (this.y == '/') {
                                q(547);
                            }
                            break;
                        case 541:
                            if ((j & 4294977024L) != 0) {
                                n(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_WAKE);
                            }
                            break;
                        case 542:
                            if (this.y == '>' && i11 > 66) {
                                i8 = 66;
                                i11 = i8;
                            }
                            break;
                        case 548:
                            if (this.y == '#') {
                                q(547);
                            }
                            break;
                        case 549:
                        case 582:
                            if (this.y == '/') {
                                q(548);
                            }
                            break;
                        case 552:
                            if ((j & 4294977024L) != 0 && i11 > 69) {
                                i8 = 69;
                                i11 = i8;
                            }
                            break;
                        case 555:
                            if (this.y == '#') {
                                int i15 = this.B;
                                this.B = i15 + 1;
                                iArr[i15] = 554;
                            }
                            break;
                        case 557:
                            if (this.y == '/') {
                                int i16 = this.B;
                                this.B = i16 + 1;
                                iArr[i16] = 558;
                            }
                            break;
                        case 558:
                            if (this.y == '>' && i11 > 70) {
                                i8 = 70;
                                i11 = i8;
                            }
                            break;
                        case 561:
                            if (this.y == '#') {
                                int i17 = this.B;
                                this.B = i17 + 1;
                                iArr[i17] = 560;
                            }
                            break;
                        case 562:
                            if (this.y == '#') {
                                int i18 = this.B;
                                this.B = i18 + 1;
                                iArr[i18] = 563;
                            }
                            break;
                        case 564:
                        case 589:
                            if (this.y == '/') {
                                q(562);
                            }
                            break;
                        case 585:
                            if (this.y == '#') {
                                int i19 = this.B;
                                this.B = i19 + 1;
                                iArr[i19] = 584;
                            }
                            break;
                        case 588:
                            if (this.y == '#') {
                                int i20 = this.B;
                                this.B = i20 + 1;
                                iArr[i20] = 587;
                            }
                            break;
                        case 590:
                            if (this.y == '<') {
                                n(7, 8);
                            }
                            break;
                        case 591:
                            if (this.y == '-' && i11 > 31) {
                                i8 = 31;
                                i11 = i8;
                            }
                            break;
                        case 592:
                            if (this.y == '-') {
                                int i21 = this.B;
                                this.B = i21 + 1;
                                iArr[i21] = 591;
                            }
                            break;
                        case 593:
                            if (this.y == '#') {
                                int i22 = this.B;
                                this.B = i22 + 1;
                                iArr[i22] = 592;
                            }
                            break;
                        case 595:
                            if (this.y == '$') {
                                r(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK);
                            }
                            break;
                        case AgentActionFragment.REQUEST_CODE:
                            if ((j & 287948969894477824L) != 0) {
                                r(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK);
                            }
                            break;
                        case 598:
                            if ((j & 288335929267978240L) != 0) {
                                r(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK);
                            }
                            break;
                        case 599:
                            if (this.y == '.') {
                                n(227, 228);
                            }
                            break;
                        case 600:
                            if (this.y == '$') {
                                r(229, 233);
                            }
                            break;
                        case 601:
                            if ((j & 287948969894477824L) != 0) {
                                r(229, 233);
                            }
                            break;
                        case TypedValues.MotionType.TYPE_EASING:
                            if ((j & 288335929267978240L) != 0) {
                                r(229, 233);
                            }
                            break;
                        case TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR:
                            if ((j & 4294977024L) != 0) {
                                s(TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO);
                            }
                            break;
                        case TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO:
                            if (this.y == '>' && i11 > 68) {
                                i8 = 68;
                                i11 = i8;
                            }
                            break;
                        case TypedValues.MotionType.TYPE_DRAW_PATH:
                            if (this.y == '/') {
                                int i23 = this.B;
                                this.B = i23 + 1;
                                iArr[i23] = 594;
                            }
                            break;
                    }
                } while (i10 != i12);
            } else {
                if (c8 < 128) {
                    long j2 = 1 << (c8 & '?');
                    do {
                        int[] iArr2 = this.u;
                        i10--;
                        switch (iArr2[i10]) {
                            case 1:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if ((j2 & (-576460752437641217L)) != 0) {
                                    if (i11 > 73) {
                                        i4 = 1;
                                        i11 = 73;
                                    } else {
                                        i4 = 1;
                                    }
                                    q(i4);
                                }
                                break;
                            case 2:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if ((j2 & (-576460752437641217L)) != 0) {
                                    if (i11 > 73) {
                                        i5 = 1;
                                        i11 = 73;
                                    } else {
                                        i5 = 1;
                                    }
                                    q(i5);
                                } else if ((j2 & 576460752437641216L) != 0 && i11 > 74) {
                                    i11 = 74;
                                }
                                if (this.y == '[') {
                                    n(7, 8);
                                }
                                if (this.y == '[') {
                                    n(234, MediaPlayer.Event.VideoFPS);
                                }
                                break;
                            case 3:
                            case 5:
                            case 14:
                            case 23:
                            case 28:
                            case 33:
                            case 38:
                            case 40:
                            case 47:
                            case 54:
                            case 60:
                            case 67:
                            case 72:
                            case 79:
                            case 86:
                            case 92:
                            case 100:
                            case 107:
                            case 116:
                            case 122:
                            case 132:
                            case 138:
                            case 143:
                            case 150:
                            case 155:
                            case 163:
                            case ByteCode.LRETURN:
                            case 184:
                            case ByteCode.ATHROW:
                            case 192:
                            case 198:
                            case 199:
                            case IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT:
                            case IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY:
                            case IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR:
                            case IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID:
                            case TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY:
                            case TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES:
                            case 230:
                            case 231:
                            case 234:
                            case 235:
                            case 239:
                            case 240:
                            case 244:
                            case 245:
                            case 249:
                            case 258:
                            case 259:
                            case 267:
                            case 274:
                            case 275:
                            case 284:
                            case MediaPlayer.Event.SubtitleLoad:
                            case MediaPlayer.Event.EofPaused:
                            case 303:
                            case 312:
                            case TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE:
                            case TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL:
                            case TranSceneConfig.SCENE_TYPE_GAME_MLBB_GODLIKE:
                            case TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY:
                            case TranSceneConfig.SCENE_TYPE_GAME_MLBB_VICTORY:
                            case 324:
                            case 325:
                            case 326:
                            case 327:
                            case 328:
                            case 329:
                            case 330:
                            case 331:
                            case 332:
                            case 333:
                            case 334:
                            case 335:
                            case 336:
                            case 337:
                            case 338:
                            case 339:
                            case 340:
                            case 341:
                            case 342:
                            case 343:
                            case 344:
                            case 345:
                            case 346:
                            case 348:
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_FIRST_BLOOD:
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_1:
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_2:
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_4:
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL:
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_DOMINATE:
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_LEGENDARY:
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_UNRIVALED:
                            case 370:
                            case 371:
                            case 372:
                            case 374:
                            case 378:
                            case 379:
                            case 380:
                            case 382:
                            case 390:
                            case 391:
                            case 392:
                            case MediaFile.FILE_TYPE_OGM:
                            case 402:
                            case 403:
                            case 404:
                            case 408:
                            case 414:
                            case 415:
                            case TypedValues.CycleType.TYPE_PATH_ROTATE:
                            case 418:
                            case TypedValues.CycleType.TYPE_WAVE_OFFSET:
                            case TypedValues.CycleType.TYPE_WAVE_PHASE:
                            case 426:
                            case 428:
                            case 435:
                            case 436:
                            case 437:
                            case 439:
                            case 446:
                            case 447:
                            case 448:
                            case WebIndicator.MAX_DECELERATE_SPEED_DURATION:
                            case 459:
                            case 460:
                            case 461:
                            case 463:
                            case 469:
                            case 470:
                            case 471:
                            case 473:
                            case 482:
                            case 483:
                            case 484:
                            case 486:
                            case 496:
                            case 497:
                            case 498:
                            case 500:
                            case TypedValues.PositionType.TYPE_PERCENT_Y:
                            case TypedValues.PositionType.TYPE_CURVE_FIT:
                            case 509:
                            case TypedValues.PositionType.TYPE_POSITION_TYPE:
                            case FrameMetricsAggregator.EVERY_DURATION:
                            case 512:
                            case InputDeviceCompat.SOURCE_DPAD:
                            case 514:
                            case 515:
                            case 516:
                            case 517:
                            case 518:
                            case 519:
                            case 520:
                            case 521:
                            case 522:
                            case 523:
                            case 524:
                            case 525:
                            case 527:
                            case 534:
                            case 535:
                            case 536:
                            case 537:
                            case 541:
                            case 548:
                            case 549:
                            case 552:
                            case 555:
                            case 557:
                            case 561:
                            case 562:
                            case 564:
                            case 566:
                            case 567:
                            case 568:
                            case 569:
                            case 570:
                            case 571:
                            case 572:
                            case 573:
                            case 574:
                            case 575:
                            case 576:
                            case 577:
                            case 578:
                            case 579:
                            case 580:
                            case 581:
                            case 582:
                            case 585:
                            case 588:
                            case 589:
                            case 591:
                            case 592:
                            case 593:
                            case 598:
                            case 599:
                            case TypedValues.MotionType.TYPE_EASING:
                            case TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR:
                            default:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 4:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 't') {
                                    n(134, 135);
                                }
                                break;
                            case 6:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == ']' && i11 > 6) {
                                    i11 = 6;
                                }
                                break;
                            case 7:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'p') {
                                    int i24 = this.B;
                                    this.B = i24 + 1;
                                    iArr2[i24] = 4;
                                }
                                break;
                            case 8:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'm') {
                                    int i25 = this.B;
                                    this.B = i25 + 1;
                                    iArr2[i25] = 7;
                                }
                                break;
                            case 9:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'e') {
                                    int i26 = this.B;
                                    this.B = i26 + 1;
                                    iArr2[i26] = 8;
                                }
                                break;
                            case 10:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 't') {
                                    int i27 = this.B;
                                    this.B = i27 + 1;
                                    iArr2[i27] = 9;
                                }
                                break;
                            case 11:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 't') {
                                    int i28 = this.B;
                                    this.B = i28 + 1;
                                    iArr2[i28] = 10;
                                }
                                break;
                            case 12:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'a') {
                                    int i29 = this.B;
                                    this.B = i29 + 1;
                                    iArr2[i29] = 11;
                                }
                                break;
                            case 13:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                c2 = 'r';
                                if (this.y == 'r') {
                                    n(136, 137);
                                }
                                break;
                            case 15:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == ']' && i11 > 7) {
                                    i11 = 7;
                                }
                                c2 = 'r';
                                break;
                            case 16:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'e') {
                                    int i30 = this.B;
                                    this.B = i30 + 1;
                                    iArr2[i30] = 13;
                                }
                                c2 = 'r';
                                break;
                            case 17:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'v') {
                                    int i31 = this.B;
                                    this.B = i31 + 1;
                                    iArr2[i31] = 16;
                                }
                                c2 = 'r';
                                break;
                            case 18:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'o') {
                                    int i32 = this.B;
                                    this.B = i32 + 1;
                                    iArr2[i32] = 17;
                                }
                                c2 = 'r';
                                break;
                            case 19:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'c') {
                                    int i33 = this.B;
                                    this.B = i33 + 1;
                                    iArr2[i33] = 18;
                                }
                                c2 = 'r';
                                break;
                            case 20:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'e') {
                                    int i34 = this.B;
                                    this.B = i34 + 1;
                                    iArr2[i34] = 19;
                                }
                                c2 = 'r';
                                break;
                            case 21:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y != 'r') {
                                    c2 = 'r';
                                } else {
                                    int i35 = this.B;
                                    this.B = i35 + 1;
                                    iArr2[i35] = 20;
                                    c2 = 'r';
                                }
                                break;
                            case 22:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'f') {
                                    int i36 = this.B;
                                    this.B = i36 + 1;
                                    iArr2[i36] = 23;
                                }
                                c2 = 'r';
                                break;
                            case 24:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                c5 = '#';
                                c3 = 'i';
                                if (this.y == 'i') {
                                    int i37 = this.B;
                                    this.B = i37 + 1;
                                    iArr2[i37] = 22;
                                }
                                c2 = 'r';
                                break;
                            case 25:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'e') {
                                    int i38 = this.B;
                                    this.B = i38 + 1;
                                    iArr2[i38] = 26;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                break;
                            case 26:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                c5 = '#';
                                if ((j2 & 2199023256064L) != 0) {
                                    int i39 = this.B;
                                    this.B = i39 + 1;
                                    iArr2[i39] = 27;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                break;
                            case 27:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'f') {
                                    int i40 = this.B;
                                    this.B = i40 + 1;
                                    iArr2[i40] = 28;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                break;
                            case 29:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 's') {
                                    int i41 = this.B;
                                    this.B = i41 + 1;
                                    iArr2[i41] = 25;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                break;
                            case 30:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'l') {
                                    int i42 = this.B;
                                    this.B = i42 + 1;
                                    iArr2[i42] = 29;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                break;
                            case 31:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 'e') {
                                    int i43 = this.B;
                                    this.B = i43 + 1;
                                    iArr2[i43] = 30;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                break;
                            case 32:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 't') {
                                    int i44 = this.B;
                                    this.B = i44 + 1;
                                    iArr2[i44] = 33;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                break;
                            case 34:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                c5 = '#';
                                if (this.y == 's') {
                                    int i45 = this.B;
                                    this.B = i45 + 1;
                                    iArr2[i45] = 32;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                break;
                            case 35:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                c5 = '#';
                                if (this.y != 'i') {
                                    c3 = 'i';
                                    c2 = 'r';
                                } else {
                                    int i46 = this.B;
                                    this.B = i46 + 1;
                                    iArr2[i46] = 34;
                                    c2 = 'r';
                                    c3 = 'i';
                                }
                                break;
                            case 36:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'l') {
                                    int i47 = this.B;
                                    this.B = i47 + 1;
                                    c5 = '#';
                                    iArr2[i47] = 35;
                                } else {
                                    c5 = '#';
                                }
                                c2 = 'r';
                                c3 = 'i';
                                break;
                            case 37:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 's') {
                                    int i48 = this.B;
                                    this.B = i48 + 1;
                                    iArr2[i48] = 38;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 39:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 's') {
                                    int i49 = this.B;
                                    this.B = i49 + 1;
                                    iArr2[i49] = 40;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 41:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'a') {
                                    int i50 = this.B;
                                    this.B = i50 + 1;
                                    iArr2[i50] = 39;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 42:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'm') {
                                    int i51 = this.B;
                                    this.B = i51 + 1;
                                    iArr2[i51] = 37;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 43:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'e') {
                                    int i52 = this.B;
                                    this.B = i52 + 1;
                                    iArr2[i52] = 42;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 44:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 't') {
                                    int i53 = this.B;
                                    this.B = i53 + 1;
                                    iArr2[i53] = 43;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 45:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'i') {
                                    int i54 = this.B;
                                    this.B = i54 + 1;
                                    iArr2[i54] = 44;
                                    c2 = 'r';
                                    c3 = 'i';
                                } else {
                                    c3 = 'i';
                                    c2 = 'r';
                                }
                                c5 = '#';
                                break;
                            case 46:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'p') {
                                    n(140, 141);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 48:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == ']' && i11 > 12) {
                                    i11 = 12;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 49:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'e') {
                                    int i55 = this.B;
                                    this.B = i55 + 1;
                                    iArr2[i55] = 46;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 50:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 's') {
                                    int i56 = this.B;
                                    this.B = i56 + 1;
                                    iArr2[i56] = 49;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 51:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'r') {
                                    int i57 = this.B;
                                    this.B = i57 + 1;
                                    iArr2[i57] = 52;
                                    c2 = 'r';
                                } else {
                                    c2 = 'r';
                                }
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 52:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if ((j2 & 137438953504L) != 0) {
                                    int i58 = this.B;
                                    this.B = i58 + 1;
                                    iArr2[i58] = 56;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 53:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'h') {
                                    int i59 = this.B;
                                    this.B = i59 + 1;
                                    iArr2[i59] = 54;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 55:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'c') {
                                    int i60 = this.B;
                                    this.B = i60 + 1;
                                    iArr2[i60] = 53;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 56:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'a') {
                                    int i61 = this.B;
                                    this.B = i61 + 1;
                                    iArr2[i61] = 55;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 57:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'o') {
                                    int i62 = this.B;
                                    this.B = i62 + 1;
                                    iArr2[i62] = 51;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 58:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c4 = '<';
                                if (this.y == 'f') {
                                    int i63 = this.B;
                                    this.B = i63 + 1;
                                    iArr2[i63] = 57;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 59:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'h') {
                                    int i64 = this.B;
                                    this.B = i64 + 1;
                                    c4 = '<';
                                    iArr2[i64] = 60;
                                } else {
                                    c4 = '<';
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c5 = '#';
                                break;
                            case 61:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i65 = this.B;
                                    this.B = i65 + 1;
                                    iArr2[i65] = 59;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 62:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i66 = this.B;
                                    this.B = i66 + 1;
                                    iArr2[i66] = 61;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 63:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'i') {
                                    int i67 = this.B;
                                    this.B = i67 + 1;
                                    iArr2[i67] = 62;
                                    c2 = 'r';
                                    c3 = 'i';
                                } else {
                                    c3 = 'i';
                                    c2 = 'r';
                                }
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 64:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'w') {
                                    int i68 = this.B;
                                    this.B = i68 + 1;
                                    iArr2[i68] = 63;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 65:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i69 = this.B;
                                    this.B = i69 + 1;
                                    iArr2[i69] = 64;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 66:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i70 = this.B;
                                    this.B = i70 + 1;
                                    iArr2[i70] = 67;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 68:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i71 = this.B;
                                    this.B = i71 + 1;
                                    iArr2[i71] = 66;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 69:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i72 = this.B;
                                    this.B = i72 + 1;
                                    iArr2[i72] = 68;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 70:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i73 = this.B;
                                    this.B = i73 + 1;
                                    iArr2[i73] = 69;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 71:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i74 = this.B;
                                    this.B = i74 + 1;
                                    iArr2[i74] = 72;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 73:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'g') {
                                    int i75 = this.B;
                                    this.B = i75 + 1;
                                    iArr2[i75] = 71;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 74:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c6 = 'i';
                                if (this.y == 'i') {
                                    int i76 = this.B;
                                    this.B = i76 + 1;
                                    iArr2[i76] = 73;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                c3 = c6;
                                c2 = 'r';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 75:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i77 = this.B;
                                    this.B = i77 + 1;
                                    iArr2[i77] = 74;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 76:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i78 = this.B;
                                    this.B = i78 + 1;
                                    iArr2[i78] = 75;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 77:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i79 = this.B;
                                    this.B = i79 + 1;
                                    iArr2[i79] = 76;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 78:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i80 = this.B;
                                    this.B = i80 + 1;
                                    iArr2[i80] = 79;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 80:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i81 = this.B;
                                    this.B = i81 + 1;
                                    iArr2[i81] = 78;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 81:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'b') {
                                    int i82 = this.B;
                                    this.B = i82 + 1;
                                    iArr2[i82] = 80;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 82:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i83 = this.B;
                                    this.B = i83 + 1;
                                    iArr2[i83] = 81;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 83:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i84 = this.B;
                                    this.B = i84 + 1;
                                    iArr2[i84] = 82;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 84:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'g') {
                                    int i85 = this.B;
                                    this.B = i85 + 1;
                                    iArr2[i85] = 83;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 85:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i86 = this.B;
                                    this.B = i86 + 1;
                                    iArr2[i86] = 86;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 87:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i87 = this.B;
                                    this.B = i87 + 1;
                                    iArr2[i87] = 85;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 88:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i88 = this.B;
                                    this.B = i88 + 1;
                                    iArr2[i88] = 87;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 89:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i89 = this.B;
                                    this.B = i89 + 1;
                                    iArr2[i89] = 88;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 90:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i90 = this.B;
                                    this.B = i90 + 1;
                                    iArr2[i90] = 89;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 91:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i91 = this.B;
                                    this.B = i91 + 1;
                                    iArr2[i91] = 92;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 93:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'd') {
                                    int i92 = this.B;
                                    this.B = i92 + 1;
                                    iArr2[i92] = 91;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 94:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'u') {
                                    int i93 = this.B;
                                    this.B = i93 + 1;
                                    iArr2[i93] = 93;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 95:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i94 = this.B;
                                    this.B = i94 + 1;
                                    iArr2[i94] = 94;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 96:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i95 = this.B;
                                    this.B = i95 + 1;
                                    iArr2[i95] = 95;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 97:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i96 = this.B;
                                    this.B = i96 + 1;
                                    iArr2[i96] = 96;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 98:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c6 = 'i';
                                if (this.y == 'i') {
                                    int i97 = this.B;
                                    this.B = i97 + 1;
                                    iArr2[i97] = 97;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                c3 = c6;
                                c2 = 'r';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 99:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i98 = this.B;
                                    this.B = i98 + 1;
                                    iArr2[i98] = 100;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 101:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i99 = this.B;
                                    this.B = i99 + 1;
                                    iArr2[i99] = 99;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 102:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i100 = this.B;
                                    this.B = i100 + 1;
                                    iArr2[i100] = 101;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 103:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'p') {
                                    int i101 = this.B;
                                    this.B = i101 + 1;
                                    iArr2[i101] = 102;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 104:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'm') {
                                    int i102 = this.B;
                                    this.B = i102 + 1;
                                    iArr2[i102] = 103;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 105:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c6 = 'i';
                                if (this.y == 'i') {
                                    int i103 = this.B;
                                    this.B = i103 + 1;
                                    iArr2[i103] = 104;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                c3 = c6;
                                c2 = 'r';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 106:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i104 = this.B;
                                    this.B = i104 + 1;
                                    iArr2[i104] = 107;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 108:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i105 = this.B;
                                    this.B = i105 + 1;
                                    iArr2[i105] = 106;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 109:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c6 = 'i';
                                if (this.y == 'i') {
                                    int i106 = this.B;
                                    this.B = i106 + 1;
                                    iArr2[i106] = 108;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                c3 = c6;
                                c2 = 'r';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 110:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i107 = this.B;
                                    this.B = i107 + 1;
                                    iArr2[i107] = 109;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 111:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i108 = this.B;
                                    this.B = i108 + 1;
                                    iArr2[i108] = 110;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 112:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i109 = this.B;
                                    this.B = i109 + 1;
                                    iArr2[i109] = 111;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 113:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'u') {
                                    int i110 = this.B;
                                    this.B = i110 + 1;
                                    iArr2[i110] = 112;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 114:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'f') {
                                    int i111 = this.B;
                                    this.B = i111 + 1;
                                    iArr2[i111] = 113;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 115:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i112 = this.B;
                                    this.B = i112 + 1;
                                    iArr2[i112] = 116;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 117:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'r') {
                                    int i113 = this.B;
                                    this.B = i113 + 1;
                                    iArr2[i113] = 115;
                                    c2 = 'r';
                                } else {
                                    c2 = 'r';
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 118:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i114 = this.B;
                                    this.B = i114 + 1;
                                    iArr2[i114] = 117;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 119:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i115 = this.B;
                                    this.B = i115 + 1;
                                    iArr2[i115] = 118;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 120:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'm') {
                                    int i116 = this.B;
                                    this.B = i116 + 1;
                                    iArr2[i116] = 119;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 121:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'm') {
                                    int i117 = this.B;
                                    this.B = i117 + 1;
                                    iArr2[i117] = 122;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 123:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i118 = this.B;
                                    this.B = i118 + 1;
                                    iArr2[i118] = 121;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 124:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i119 = this.B;
                                    this.B = i119 + 1;
                                    iArr2[i119] = 123;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 125:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'f') {
                                    int i120 = this.B;
                                    this.B = i120 + 1;
                                    iArr2[i120] = 124;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 126:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i121 = this.B;
                                    this.B = i121 + 1;
                                    iArr2[i121] = 125;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 127:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i122 = this.B;
                                    this.B = i122 + 1;
                                    iArr2[i122] = 126;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 128:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i123 = this.B;
                                    this.B = i123 + 1;
                                    iArr2[i123] = 127;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 129:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i124 = this.B;
                                    this.B = i124 + 1;
                                    iArr2[i124] = 128;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 130:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i125 = this.B;
                                    this.B = i125 + 1;
                                    iArr2[i125] = 129;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 131:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i126 = this.B;
                                    this.B = i126 + 1;
                                    iArr2[i126] = 132;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 133:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c6 = 'i';
                                if (this.y == 'i') {
                                    int i127 = this.B;
                                    this.B = i127 + 1;
                                    iArr2[i127] = 131;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                c3 = c6;
                                c2 = 'r';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 134:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i128 = this.B;
                                    this.B = i128 + 1;
                                    iArr2[i128] = 133;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 135:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c6 = 'i';
                                if (this.y == 'i') {
                                    int i129 = this.B;
                                    this.B = i129 + 1;
                                    iArr2[i129] = 134;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                c3 = c6;
                                c2 = 'r';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 136:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'v') {
                                    int i130 = this.B;
                                    this.B = i130 + 1;
                                    iArr2[i130] = 135;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 137:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'p') {
                                    int i131 = this.B;
                                    this.B = i131 + 1;
                                    iArr2[i131] = 138;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 139:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i132 = this.B;
                                    this.B = i132 + 1;
                                    iArr2[i132] = 137;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 140:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i133 = this.B;
                                    this.B = i133 + 1;
                                    iArr2[i133] = 139;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 141:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i134 = this.B;
                                    this.B = i134 + 1;
                                    iArr2[i134] = 140;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 142:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i135 = this.B;
                                    this.B = i135 + 1;
                                    iArr2[i135] = 143;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 144:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i136 = this.B;
                                    this.B = i136 + 1;
                                    iArr2[i136] = 142;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 145:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'u') {
                                    int i137 = this.B;
                                    this.B = i137 + 1;
                                    iArr2[i137] = 144;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 146:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i138 = this.B;
                                    this.B = i138 + 1;
                                    iArr2[i138] = 145;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 147:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i139 = this.B;
                                    this.B = i139 + 1;
                                    iArr2[i139] = 146;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 148:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i140 = this.B;
                                    this.B = i140 + 1;
                                    iArr2[i140] = 147;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 149:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i141 = this.B;
                                    this.B = i141 + 1;
                                    iArr2[i141] = 150;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 151:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i142 = this.B;
                                    this.B = i142 + 1;
                                    iArr2[i142] = 149;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 152:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i143 = this.B;
                                    this.B = i143 + 1;
                                    iArr2[i143] = 151;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 153:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i144 = this.B;
                                    this.B = i144 + 1;
                                    iArr2[i144] = 152;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 154:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'g') {
                                    int i145 = this.B;
                                    this.B = i145 + 1;
                                    iArr2[i145] = 155;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 156:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i146 = this.B;
                                    this.B = i146 + 1;
                                    iArr2[i146] = 154;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 157:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c6 = 'i';
                                if (this.y == 'i') {
                                    int i147 = this.B;
                                    this.B = i147 + 1;
                                    iArr2[i147] = 156;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                c3 = c6;
                                c2 = 'r';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 158:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i148 = this.B;
                                    this.B = i148 + 1;
                                    iArr2[i148] = 157;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 159:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i149 = this.B;
                                    this.B = i149 + 1;
                                    iArr2[i149] = 158;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 160:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i150 = this.B;
                                    this.B = i150 + 1;
                                    iArr2[i150] = 159;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 161:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i151 = this.B;
                                    this.B = i151 + 1;
                                    iArr2[i151] = 160;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 162:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    n(142, 143);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 164:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 29) {
                                    i6 = 29;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 165:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i152 = this.B;
                                    this.B = i152 + 1;
                                    iArr2[i152] = 162;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 166:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i153 = this.B;
                                    this.B = i153 + 1;
                                    iArr2[i153] = 165;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 167:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i154 = this.B;
                                    this.B = i154 + 1;
                                    iArr2[i154] = 166;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case ByteCode.JSR:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'p') {
                                    int i155 = this.B;
                                    this.B = i155 + 1;
                                    iArr2[i155] = 167;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 169:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'm') {
                                    int i156 = this.B;
                                    this.B = i156 + 1;
                                    iArr2[i156] = 168;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 170:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i157 = this.B;
                                    this.B = i157 + 1;
                                    iArr2[i157] = 169;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case ByteCode.LOOKUPSWITCH:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i158 = this.B;
                                    this.B = i158 + 1;
                                    iArr2[i158] = 170;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 172:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    n(144, 145);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case ByteCode.FRETURN:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 30) {
                                    i6 = 30;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case ByteCode.DRETURN:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i159 = this.B;
                                    this.B = i159 + 1;
                                    iArr2[i159] = 172;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 176:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i160 = this.B;
                                    this.B = i160 + 1;
                                    iArr2[i160] = 175;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 177:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'm') {
                                    int i161 = this.B;
                                    this.B = i161 + 1;
                                    iArr2[i161] = 176;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 178:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'm') {
                                    int i162 = this.B;
                                    this.B = i162 + 1;
                                    iArr2[i162] = 177;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case ByteCode.PUTSTATIC:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i163 = this.B;
                                    this.B = i163 + 1;
                                    iArr2[i163] = 178;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 180:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i164 = this.B;
                                    this.B = i164 + 1;
                                    iArr2[i164] = 179;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 181:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i165 = this.B;
                                    this.B = i165 + 1;
                                    iArr2[i165] = 182;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 182:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if ((j2 & 281474976776192L) != 0) {
                                    int i166 = this.B;
                                    this.B = i166 + 1;
                                    iArr2[i166] = 188;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 183:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    n(146, 147);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 185:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 32) {
                                    i6 = 32;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case ByteCode.INVOKEDYNAMIC:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i167 = this.B;
                                    this.B = i167 + 1;
                                    iArr2[i167] = 183;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 187:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i168 = this.B;
                                    this.B = i168 + 1;
                                    iArr2[i168] = 186;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 188:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i169 = this.B;
                                    this.B = i169 + 1;
                                    iArr2[i169] = 187;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 189:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i170 = this.B;
                                    this.B = i170 + 1;
                                    iArr2[i170] = 181;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case ByteCode.ARRAYLENGTH:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    n(148, 150);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 193:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 48) {
                                    i6 = 48;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 194:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i171 = this.B;
                                    this.B = i171 + 1;
                                    iArr2[i171] = 190;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case ByteCode.MONITOREXIT:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i172 = this.B;
                                    this.B = i172 + 1;
                                    iArr2[i172] = 194;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 196:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i173 = this.B;
                                    this.B = i173 + 1;
                                    iArr2[i173] = 195;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case ByteCode.MULTIANEWARRAY:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'k') {
                                    n(151, 153);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 200:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 49) {
                                    i6 = 49;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 201:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i174 = this.B;
                                    this.B = i174 + 1;
                                    iArr2[i174] = 197;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 202:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i175 = this.B;
                                    this.B = i175 + 1;
                                    iArr2[i175] = 201;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 203:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i176 = this.B;
                                    this.B = i176 + 1;
                                    iArr2[i176] = 202;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case IDrmSession.ERROR_SESSION_DRM_NULL:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'b') {
                                    int i177 = this.B;
                                    this.B = i177 + 1;
                                    iArr2[i177] = 203;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case IDrmSession.ERROR_SESSION_KEY_REQUEST_NULL:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    n(154, 156);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 50) {
                                    i6 = 50;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i178 = this.B;
                                    this.B = i178 + 1;
                                    iArr2[i178] = 205;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 210:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'u') {
                                    int i179 = this.B;
                                    this.B = i179 + 1;
                                    iArr2[i179] = 209;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_NONE:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i180 = this.B;
                                    this.B = i180 + 1;
                                    iArr2[i180] = 210;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_ERROR:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i181 = this.B;
                                    this.B = i181 + 1;
                                    iArr2[i181] = 211;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case IDrmSession.ERROR_SESSION_PROVISION_ERROR:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i182 = this.B;
                                    this.B = i182 + 1;
                                    iArr2[i182] = 212;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 214:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'p') {
                                    n(157, 159);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 51) {
                                    i6 = 51;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case IDrmSession.ERROR_SESSION_DRM_INFO_INVALID:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i183 = this.B;
                                    this.B = i183 + 1;
                                    iArr2[i183] = 214;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 219:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i184 = this.B;
                                    this.B = i184 + 1;
                                    iArr2[i184] = 218;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i185 = this.B;
                                    this.B = i185 + 1;
                                    iArr2[i185] = 219;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_WAKE:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'h') {
                                    n(160, 162);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 224:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 52) {
                                    i6 = 52;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.TSCENE_TYPE_VOICE_ASSISTANT_SMILE:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i186 = this.B;
                                    this.B = i186 + 1;
                                    iArr2[i186] = 221;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'u') {
                                    int i187 = this.B;
                                    this.B = i187 + 1;
                                    iArr2[i187] = 225;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 227:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i188 = this.B;
                                    this.B = i188 + 1;
                                    iArr2[i188] = 226;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 228:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'f') {
                                    int i189 = this.B;
                                    this.B = i189 + 1;
                                    iArr2[i189] = 227;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 229:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    n(163, 165);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 232:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 53) {
                                    i6 = 53;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 233:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    n(166, ByteCode.JSR);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 236:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 54) {
                                    i6 = 54;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 237:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i190 = this.B;
                                    this.B = i190 + 1;
                                    iArr2[i190] = 233;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 238:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    n(169, ByteCode.LOOKUPSWITCH);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 241:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 55) {
                                    i6 = 55;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 242:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i191 = this.B;
                                    this.B = i191 + 1;
                                    iArr2[i191] = 238;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 243:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    n(172, ByteCode.FRETURN);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 246:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 56) {
                                    i6 = 56;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 247:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i192 = this.B;
                                    this.B = i192 + 1;
                                    iArr2[i192] = 243;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 248:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    n(ByteCode.DRETURN, 176);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 250:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 57) {
                                    i6 = 57;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 251:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i193 = this.B;
                                    this.B = i193 + 1;
                                    iArr2[i193] = 248;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MPEGFrameHeader.SYNC_BIT_ANDSAMPING_BYTE3:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'u') {
                                    int i194 = this.B;
                                    this.B = i194 + 1;
                                    iArr2[i194] = 251;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 253:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i195 = this.B;
                                    this.B = i195 + 1;
                                    iArr2[i195] = 252;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case ByteCode.IMPDEP1:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'f') {
                                    int i196 = this.B;
                                    this.B = i196 + 1;
                                    iArr2[i196] = 253;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 255:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i197 = this.B;
                                    this.B = i197 + 1;
                                    iArr2[i197] = 254;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 256:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'd') {
                                    int i198 = this.B;
                                    this.B = i198 + 1;
                                    iArr2[i198] = 255;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 257:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'd') {
                                    n(177, ByteCode.PUTSTATIC);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 260:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 58) {
                                    i6 = 58;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 261:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i199 = this.B;
                                    this.B = i199 + 1;
                                    iArr2[i199] = 257;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 262:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i200 = this.B;
                                    this.B = i200 + 1;
                                    iArr2[i200] = 261;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 263:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i201 = this.B;
                                    this.B = i201 + 1;
                                    iArr2[i201] = 262;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 264:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i202 = this.B;
                                    this.B = i202 + 1;
                                    iArr2[i202] = 263;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 265:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i203 = this.B;
                                    this.B = i203 + 1;
                                    iArr2[i203] = 264;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 266:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'd') {
                                    int i204 = this.B;
                                    this.B = i204 + 1;
                                    iArr2[i204] = 267;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 268:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i205 = this.B;
                                    this.B = i205 + 1;
                                    iArr2[i205] = 266;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 269:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i206 = this.B;
                                    this.B = i206 + 1;
                                    iArr2[i206] = 268;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 270:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i207 = this.B;
                                    this.B = i207 + 1;
                                    iArr2[i207] = 269;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 271:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i208 = this.B;
                                    this.B = i208 + 1;
                                    iArr2[i208] = 270;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 272:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i209 = this.B;
                                    this.B = i209 + 1;
                                    iArr2[i209] = 271;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 273:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    n(180, 182);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 276:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']') {
                                    if (i11 <= 60) {
                                        c4 = '<';
                                        c2 = 'r';
                                        c3 = 'i';
                                        c5 = '#';
                                    } else {
                                        i11 = 60;
                                    }
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 277:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i210 = this.B;
                                    this.B = i210 + 1;
                                    iArr2[i210] = 273;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 278:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i211 = this.B;
                                    this.B = i211 + 1;
                                    iArr2[i211] = 277;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 279:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'u') {
                                    int i212 = this.B;
                                    this.B = i212 + 1;
                                    iArr2[i212] = 278;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 280:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i213 = this.B;
                                    this.B = i213 + 1;
                                    iArr2[i213] = 279;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 281:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i214 = this.B;
                                    this.B = i214 + 1;
                                    iArr2[i214] = 280;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case OggPageHeader.MAXIMUM_PAGE_HEADER_SIZE:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i215 = this.B;
                                    this.B = i215 + 1;
                                    iArr2[i215] = 281;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 283:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i216 = this.B;
                                    this.B = i216 + 1;
                                    iArr2[i216] = 284;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 285:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i217 = this.B;
                                    this.B = i217 + 1;
                                    iArr2[i217] = 283;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 286:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i218 = this.B;
                                    this.B = i218 + 1;
                                    iArr2[i218] = 285;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaPlayer.Event.VideoSize:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'u') {
                                    int i219 = this.B;
                                    this.B = i219 + 1;
                                    iArr2[i219] = 286;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaPlayer.Event.LosePicSerious:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i220 = this.B;
                                    this.B = i220 + 1;
                                    iArr2[i220] = 287;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaPlayer.Event.Unsupported:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i221 = this.B;
                                    this.B = i221 + 1;
                                    iArr2[i221] = 288;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaPlayer.Event.Prepared:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i222 = this.B;
                                    this.B = i222 + 1;
                                    iArr2[i222] = 289;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaPlayer.Event.Subtitle:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'k') {
                                    n(183, 185);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaPlayer.Event.DisableVideo:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']') {
                                    if (i11 <= 62) {
                                        c2 = 'r';
                                        c3 = 'i';
                                        c4 = '<';
                                        c5 = '#';
                                    } else {
                                        i11 = 62;
                                    }
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaPlayer.Event.DisableAudio:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i223 = this.B;
                                    this.B = i223 + 1;
                                    iArr2[i223] = 291;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaPlayer.Event.SubtitleType:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i224 = this.B;
                                    this.B = i224 + 1;
                                    iArr2[i224] = 295;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaPlayer.Event.VideoCodecDeleted:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'b') {
                                    int i225 = this.B;
                                    this.B = i225 + 1;
                                    iArr2[i225] = 296;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaPlayer.Event.VideoFPS:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i226 = this.B;
                                    this.B = i226 + 1;
                                    iArr2[i226] = 297;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaPlayer.Event.VideoCodecInfo:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i227 = this.B;
                                    this.B = i227 + 1;
                                    iArr2[i227] = 298;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 300:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i228 = this.B;
                                    this.B = i228 + 1;
                                    iArr2[i228] = 299;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 301:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'f') {
                                    int i229 = this.B;
                                    this.B = i229 + 1;
                                    iArr2[i229] = 300;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 302:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i230 = this.B;
                                    this.B = i230 + 1;
                                    iArr2[i230] = 303;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 304:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'p') {
                                    int i231 = this.B;
                                    this.B = i231 + 1;
                                    iArr2[i231] = 302;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 305:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i232 = this.B;
                                    this.B = i232 + 1;
                                    iArr2[i232] = 304;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 306:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i233 = this.B;
                                    this.B = i233 + 1;
                                    iArr2[i233] = 305;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 307:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i234 = this.B;
                                    this.B = i234 + 1;
                                    iArr2[i234] = 306;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 308:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i235 = this.B;
                                    this.B = i235 + 1;
                                    iArr2[i235] = 307;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 309:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i236 = this.B;
                                    this.B = i236 + 1;
                                    iArr2[i236] = 310;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 310:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if ((j2 & 137438953504L) != 0) {
                                    int i237 = this.B;
                                    this.B = i237 + 1;
                                    iArr2[i237] = 317;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 311:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    n(ByteCode.INVOKEDYNAMIC, 187);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 313:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 65) {
                                    i6 = 65;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 314:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'p') {
                                    int i238 = this.B;
                                    this.B = i238 + 1;
                                    iArr2[i238] = 311;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 315:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i239 = this.B;
                                    this.B = i239 + 1;
                                    iArr2[i239] = 314;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 316:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i240 = this.B;
                                    this.B = i240 + 1;
                                    iArr2[i240] = 315;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 317:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i241 = this.B;
                                    this.B = i241 + 1;
                                    iArr2[i241] = 316;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 318:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i242 = this.B;
                                    this.B = i242 + 1;
                                    iArr2[i242] = 309;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 347:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'f') {
                                    n(188, 189);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 349:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 33) {
                                    i6 = 33;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 350:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c6 = 'i';
                                if (this.y == 'i') {
                                    int i243 = this.B;
                                    this.B = i243 + 1;
                                    iArr2[i243] = 347;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                c3 = c6;
                                c2 = 'r';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_3:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    n(ByteCode.ARRAYLENGTH, ByteCode.ATHROW);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_5:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 34) {
                                    i6 = 34;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_6:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i244 = this.B;
                                    this.B = i244 + 1;
                                    iArr2[i244] = 354;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_7:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c6 = 'i';
                                if (this.y == 'i') {
                                    int i245 = this.B;
                                    this.B = i245 + 1;
                                    iArr2[i245] = 357;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                c3 = c6;
                                c2 = 'r';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_8:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i246 = this.B;
                                    this.B = i246 + 1;
                                    iArr2[i246] = 358;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_SWEEP:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    n(192, 193);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']') {
                                    if (i11 <= 35) {
                                        c5 = '#';
                                        c2 = 'r';
                                        c3 = 'i';
                                        c4 = '<';
                                    } else {
                                        i11 = 35;
                                    }
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 366:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'm') {
                                    int i247 = this.B;
                                    this.B = i247 + 1;
                                    iArr2[i247] = 363;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 367:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i248 = this.B;
                                    this.B = i248 + 1;
                                    iArr2[i248] = 366;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 368:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i249 = this.B;
                                    this.B = i249 + 1;
                                    iArr2[i249] = 367;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 369:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c6 = 'i';
                                if (this.y == 'i') {
                                    int i250 = this.B;
                                    this.B = i250 + 1;
                                    iArr2[i250] = 368;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                c3 = c6;
                                c2 = 'r';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 373:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'p') {
                                    n(194, ByteCode.MONITOREXIT);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 375:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 36) {
                                    i6 = 36;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 376:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i251 = this.B;
                                    this.B = i251 + 1;
                                    iArr2[i251] = 373;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 377:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i252 = this.B;
                                    this.B = i252 + 1;
                                    iArr2[i252] = 376;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 381:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                if (this.y == 'r') {
                                    n(196, ByteCode.MULTIANEWARRAY);
                                    c2 = 'r';
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 383:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 37) {
                                    i6 = 37;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case RendererCapabilities.DECODER_SUPPORT_MASK:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i253 = this.B;
                                    this.B = i253 + 1;
                                    iArr2[i253] = 381;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 385:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'v') {
                                    int i254 = this.B;
                                    this.B = i254 + 1;
                                    iArr2[i254] = 384;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 386:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i255 = this.B;
                                    this.B = i255 + 1;
                                    iArr2[i255] = 385;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 387:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i256 = this.B;
                                    this.B = i256 + 1;
                                    iArr2[i256] = 386;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 388:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i257 = this.B;
                                    this.B = i257 + 1;
                                    iArr2[i257] = 387;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 389:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i258 = this.B;
                                    this.B = i258 + 1;
                                    iArr2[i258] = 388;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaFile.FILE_TYPE_MP2PS:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    n(198, 199);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaFile.FILE_TYPE_RV:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 38) {
                                    i6 = 38;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaFile.FILE_TYPE_RMVB:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'p') {
                                    int i259 = this.B;
                                    this.B = i259 + 1;
                                    iArr2[i259] = 393;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaFile.FILE_TYPE_QUICKTIME_VIDEO:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'm') {
                                    int i260 = this.B;
                                    this.B = i260 + 1;
                                    iArr2[i260] = 396;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaFile.FILE_TYPE_FLV:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i261 = this.B;
                                    this.B = i261 + 1;
                                    iArr2[i261] = 397;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaFile.FILE_TYPE_RM:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i262 = this.B;
                                    this.B = i262 + 1;
                                    iArr2[i262] = 398;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 400:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i263 = this.B;
                                    this.B = i263 + 1;
                                    iArr2[i263] = 399;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 401:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i264 = this.B;
                                    this.B = i264 + 1;
                                    iArr2[i264] = 400;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 405:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i265 = this.B;
                                    this.B = i265 + 1;
                                    iArr2[i265] = 406;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 406:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if ((j2 & 137438953504L) != 0) {
                                    int i266 = this.B;
                                    this.B = i266 + 1;
                                    iArr2[i266] = 411;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 407:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'h') {
                                    n(200, 201);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case RspCode.ERROR_CHANNEL_NOT_REGISTER:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 39) {
                                    i6 = 39;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case RspCode.ERROR_SERVICE_PUBLISH_REMOTE:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i267 = this.B;
                                    this.B = i267 + 1;
                                    iArr2[i267] = 407;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case RspCode.ERROR_SERVICE_REMOTE_NOT_FOUND:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i268 = this.B;
                                    this.B = i268 + 1;
                                    iArr2[i268] = 410;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case RspCode.ERROR_INVALID_PUBLISH_TO_REMOTE:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i269 = this.B;
                                    this.B = i269 + 1;
                                    iArr2[i269] = 405;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 413:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'f') {
                                    int i270 = this.B;
                                    this.B = i270 + 1;
                                    iArr2[i270] = 412;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 417:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    n(202, 203);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 419:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 40) {
                                    i6 = 40;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TypedValues.CycleType.TYPE_EASING:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i271 = this.B;
                                    this.B = i271 + 1;
                                    iArr2[i271] = 417;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 421:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i272 = this.B;
                                    this.B = i272 + 1;
                                    iArr2[i272] = 420;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i273 = this.B;
                                    this.B = i273 + 1;
                                    iArr2[i273] = 421;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TypedValues.CycleType.TYPE_WAVE_PERIOD:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i274 = this.B;
                                    this.B = i274 + 1;
                                    iArr2[i274] = 422;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 427:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    n(IDrmSession.ERROR_SESSION_DRM_NULL, IDrmSession.ERROR_SESSION_KEY_REQUEST_NULL);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 429:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 41) {
                                    i6 = 41;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 430:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i275 = this.B;
                                    this.B = i275 + 1;
                                    iArr2[i275] = 427;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 431:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'b') {
                                    int i276 = this.B;
                                    this.B = i276 + 1;
                                    iArr2[i276] = 430;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 432:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i277 = this.B;
                                    this.B = i277 + 1;
                                    iArr2[i277] = 431;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 433:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'l') {
                                    int i278 = this.B;
                                    this.B = i278 + 1;
                                    iArr2[i278] = 432;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 434:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'g') {
                                    int i279 = this.B;
                                    this.B = i279 + 1;
                                    iArr2[i279] = 433;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 438:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    n(IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_GAME_FF:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 42) {
                                    i6 = 42;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_GAME_FF_FIRE:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'g') {
                                    int i280 = this.B;
                                    this.B = i280 + 1;
                                    iArr2[i280] = 438;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_GAME_FF_SCOPE_OPEN:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c6 = 'i';
                                if (this.y == 'i') {
                                    int i281 = this.B;
                                    this.B = i281 + 1;
                                    iArr2[i281] = 441;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                c3 = c6;
                                c2 = 'r';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TranSceneConfig.SCENE_TYPE_GAME_FF_KILL:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i282 = this.B;
                                    this.B = i282 + 1;
                                    iArr2[i282] = 442;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 444:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i283 = this.B;
                                    this.B = i283 + 1;
                                    iArr2[i283] = 443;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 445:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i284 = this.B;
                                    this.B = i284 + 1;
                                    iArr2[i284] = 444;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 449:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    n(IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY, IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 451:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 43) {
                                    i6 = 43;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 452:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i285 = this.B;
                                    this.B = i285 + 1;
                                    iArr2[i285] = 449;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 453:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c6 = 'i';
                                if (this.y == 'i') {
                                    int i286 = this.B;
                                    this.B = i286 + 1;
                                    iArr2[i286] = 452;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                c3 = c6;
                                c2 = 'r';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 454:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i287 = this.B;
                                    this.B = i287 + 1;
                                    iArr2[i287] = 453;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 455:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i288 = this.B;
                                    this.B = i288 + 1;
                                    iArr2[i288] = 454;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 456:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i289 = this.B;
                                    this.B = i289 + 1;
                                    iArr2[i289] = 455;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 457:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'u') {
                                    int i290 = this.B;
                                    this.B = i290 + 1;
                                    iArr2[i290] = 456;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 458:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'f') {
                                    int i291 = this.B;
                                    this.B = i291 + 1;
                                    iArr2[i291] = 457;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 462:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    n(210, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_NONE);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 464:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 44) {
                                    i6 = 44;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 465:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i292 = this.B;
                                    this.B = i292 + 1;
                                    iArr2[i292] = 462;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 466:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i293 = this.B;
                                    this.B = i293 + 1;
                                    iArr2[i293] = 465;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 467:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i294 = this.B;
                                    this.B = i294 + 1;
                                    iArr2[i294] = 466;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 468:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'm') {
                                    int i295 = this.B;
                                    this.B = i295 + 1;
                                    iArr2[i295] = 467;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 472:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    n(IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_ERROR, IDrmSession.ERROR_SESSION_PROVISION_ERROR);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 474:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 45) {
                                    i6 = 45;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 475:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i296 = this.B;
                                    this.B = i296 + 1;
                                    iArr2[i296] = 472;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 476:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'e') {
                                    int i297 = this.B;
                                    this.B = i297 + 1;
                                    iArr2[i297] = 475;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 477:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i298 = this.B;
                                    this.B = i298 + 1;
                                    iArr2[i298] = 476;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 478:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'p') {
                                    int i299 = this.B;
                                    this.B = i299 + 1;
                                    iArr2[i299] = 477;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 479:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'm') {
                                    int i300 = this.B;
                                    this.B = i300 + 1;
                                    iArr2[i300] = 478;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 480:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i301 = this.B;
                                    this.B = i301 + 1;
                                    iArr2[i301] = 479;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 481:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'c') {
                                    int i302 = this.B;
                                    this.B = i302 + 1;
                                    iArr2[i302] = 480;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 485:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'm') {
                                    n(214, IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 487:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == ']' && i11 > 46) {
                                    i6 = 46;
                                    i11 = i6;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 488:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i303 = this.B;
                                    this.B = i303 + 1;
                                    iArr2[i303] = 485;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 489:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'o') {
                                    int i304 = this.B;
                                    this.B = i304 + 1;
                                    iArr2[i304] = 488;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 490:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'f') {
                                    int i305 = this.B;
                                    this.B = i305 + 1;
                                    iArr2[i305] = 489;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 491:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 's') {
                                    int i306 = this.B;
                                    this.B = i306 + 1;
                                    iArr2[i306] = 490;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 492:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'n') {
                                    int i307 = this.B;
                                    this.B = i307 + 1;
                                    iArr2[i307] = 491;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 493:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'a') {
                                    int i308 = this.B;
                                    this.B = i308 + 1;
                                    iArr2[i308] = 492;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 494:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c7 = 'r';
                                if (this.y == 'r') {
                                    int i309 = this.B;
                                    this.B = i309 + 1;
                                    iArr2[i309] = 493;
                                    c2 = 'r';
                                } else {
                                    c2 = c7;
                                }
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 495:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 't') {
                                    int i310 = this.B;
                                    this.B = i310 + 1;
                                    iArr2[i310] = 494;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case MediaFile.FILE_TYPE_MPO:
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                if (this.y == 'h') {
                                    n(IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID, IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY);
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 501:
                                if (this.y == ']') {
                                    c = IOUtils.DIR_SEPARATOR_UNIX;
                                    if (i11 > 47) {
                                        i11 = 47;
                                    }
                                } else {
                                    c = IOUtils.DIR_SEPARATOR_UNIX;
                                }
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 502:
                                if (this.y == 'c') {
                                    int i311 = this.B;
                                    this.B = i311 + 1;
                                    iArr2[i311] = 499;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 503:
                                if (this.y == 't') {
                                    int i312 = this.B;
                                    this.B = i312 + 1;
                                    iArr2[i312] = 502;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 504:
                                if (this.y != 'i') {
                                    c3 = 'i';
                                    c = IOUtils.DIR_SEPARATOR_UNIX;
                                    c2 = 'r';
                                    c4 = '<';
                                    c5 = '#';
                                } else {
                                    int i313 = this.B;
                                    this.B = i313 + 1;
                                    iArr2[i313] = 503;
                                    c = IOUtils.DIR_SEPARATOR_UNIX;
                                    c2 = 'r';
                                    c3 = 'i';
                                    c4 = '<';
                                    c5 = '#';
                                }
                                break;
                            case 505:
                                if (this.y == 'w') {
                                    int i314 = this.B;
                                    this.B = i314 + 1;
                                    iArr2[i314] = 504;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 506:
                                if (this.y == 's') {
                                    int i315 = this.B;
                                    this.B = i315 + 1;
                                    iArr2[i315] = 505;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 526:
                                if (this.y == 'e') {
                                    n(IDrmSession.ERROR_SESSION_DRM_INFO_INVALID, 219);
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 528:
                                if (this.y == ']' && i11 > 64) {
                                    i7 = 64;
                                    i11 = i7;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 529:
                                if (this.y == 'p') {
                                    int i316 = this.B;
                                    this.B = i316 + 1;
                                    iArr2[i316] = 526;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 530:
                                if (this.y == 'a') {
                                    int i317 = this.B;
                                    this.B = i317 + 1;
                                    iArr2[i317] = 529;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 531:
                                if (this.y == 'c') {
                                    int i318 = this.B;
                                    this.B = i318 + 1;
                                    iArr2[i318] = 530;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 532:
                                if (this.y == 's') {
                                    int i319 = this.B;
                                    this.B = i319 + 1;
                                    iArr2[i319] = 531;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 533:
                                if (this.y == 'e') {
                                    int i320 = this.B;
                                    this.B = i320 + 1;
                                    iArr2[i320] = 532;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 538:
                                if (this.y == 'o') {
                                    int i321 = this.B;
                                    this.B = i321 + 1;
                                    iArr2[i321] = 539;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 539:
                                if ((j2 & 137438953504L) != 0) {
                                    int i322 = this.B;
                                    this.B = i322 + 1;
                                    iArr2[i322] = 546;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case ReportParams.MAX_LEAVE_VALID_TIME:
                                if (this.y == 'e') {
                                    n(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_WAKE);
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 542:
                                if (this.y == ']' && i11 > 66) {
                                    i7 = 66;
                                    i11 = i7;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 543:
                                if (this.y == 'p') {
                                    int i323 = this.B;
                                    this.B = i323 + 1;
                                    iArr2[i323] = 540;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 544:
                                if (this.y == 'a') {
                                    int i324 = this.B;
                                    this.B = i324 + 1;
                                    iArr2[i324] = 543;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 545:
                                if (this.y == 'c') {
                                    int i325 = this.B;
                                    this.B = i325 + 1;
                                    iArr2[i325] = 544;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case BaseQuickAdapter.LOADING_VIEW:
                                if (this.y == 's') {
                                    int i326 = this.B;
                                    this.B = i326 + 1;
                                    iArr2[i326] = 545;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 547:
                                if (this.y == 'n') {
                                    int i327 = this.B;
                                    this.B = i327 + 1;
                                    iArr2[i327] = 538;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 550:
                                if (this.y == '@' && i11 > 67) {
                                    i7 = 67;
                                    i11 = i7;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 551:
                                if (this.y == 'l') {
                                    int i328 = this.B;
                                    this.B = i328 + 1;
                                    iArr2[i328] = 552;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 553:
                            case 583:
                                if (this.y == 't') {
                                    q(551);
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case RtspMessageChannel.DEFAULT_RTSP_PORT:
                                if (this.y == 'f') {
                                    int i329 = this.B;
                                    this.B = i329 + 1;
                                    iArr2[i329] = 553;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 556:
                                if (this.y == 'l') {
                                    n(MediaPlayer.Event.VideoCodecInfo, 300);
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 558:
                                if (this.y == ']' && i11 > 70) {
                                    i7 = 70;
                                    i11 = i7;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 559:
                            case 586:
                                if (this.y == 't') {
                                    q(556);
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 560:
                                if (this.y == 'f') {
                                    int i330 = this.B;
                                    this.B = i330 + 1;
                                    iArr2[i330] = 559;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 563:
                                if ((j2 & 576460745995190270L) != 0) {
                                    if (i11 > 71) {
                                        i11 = 71;
                                    }
                                    int i331 = this.B;
                                    this.B = i331 + 1;
                                    iArr2[i331] = 563;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 565:
                                if (this.y == '[') {
                                    n(234, MediaPlayer.Event.VideoFPS);
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 584:
                                if (this.y == 'f') {
                                    int i332 = this.B;
                                    this.B = i332 + 1;
                                    iArr2[i332] = 583;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 587:
                                if (this.y == 'f') {
                                    int i333 = this.B;
                                    this.B = i333 + 1;
                                    iArr2[i333] = 586;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 590:
                                if (this.y == '[') {
                                    n(7, 8);
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 594:
                                if (this.y == '@') {
                                    r(301, 304);
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 595:
                            case AgentActionFragment.REQUEST_CODE:
                                if ((j2 & 576460745995190271L) != 0) {
                                    r(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK);
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 597:
                            case TypedValues.MotionType.TYPE_PATHMOTION_ARC:
                                if (this.y == '\\') {
                                    q(598);
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case 600:
                            case 601:
                                if ((j2 & 576460745995190271L) != 0) {
                                    r(229, 233);
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE:
                            case TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO:
                                if (this.y == '\\') {
                                    q(TypedValues.MotionType.TYPE_EASING);
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                            case TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO:
                                if (this.y == ']' && i11 > 68) {
                                    i7 = 68;
                                    i11 = i7;
                                }
                                c = IOUtils.DIR_SEPARATOR_UNIX;
                                c2 = 'r';
                                c3 = 'i';
                                c4 = '<';
                                c5 = '#';
                                break;
                        }
                    } while (i10 != i12);
                } else {
                    int i334 = c8 >> '\b';
                    int i335 = c8 >> 14;
                    long j3 = 1 << (i334 & 63);
                    int i336 = (c8 & 255) >> 6;
                    long j4 = 1 << (c8 & '?');
                    do {
                        i10--;
                        int i337 = this.u[i10];
                        if (i337 == 1 || i337 == 2) {
                            if (o(i334, i335, i336, j3, j4)) {
                                if (i11 > 73) {
                                    i11 = 73;
                                }
                                i3 = 1;
                                q(1);
                            }
                        } else if (i337 == 595 || i337 == 596) {
                            if (p(i334, i335, i336, j3, j4)) {
                                r(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK);
                            }
                        } else if ((i337 == 600 || i337 == 601) && p(i334, i335, i336, j3, j4)) {
                            r(229, 233);
                        }
                        i3 = 1;
                    } while (i10 != i12);
                }
                if (i11 != Integer.MAX_VALUE) {
                    this.E = i11;
                    this.D = i13;
                    i11 = Integer.MAX_VALUE;
                }
                i13++;
                i10 = this.B;
                this.B = i12;
                i12 = 609 - i12;
                if (i10 == i12) {
                    return i13;
                }
                try {
                    this.y = this.s.l();
                    i9 = i3;
                } catch (IOException unused) {
                    return i13;
                }
            }
            i3 = 1;
            if (i11 != Integer.MAX_VALUE) {
                this.E = i11;
                this.D = i13;
                i11 = Integer.MAX_VALUE;
            }
            i13++;
            i10 = this.B;
            this.B = i12;
            i12 = 609 - i12;
            if (i10 == i12) {
                return i13;
            }
            this.y = this.s.l();
            i9 = i3;
        }
    }

    public final TokenMgrError u0(Token token) {
        String str;
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ");
        stringBuffer.append(this.n == 10 ? "must consistently use the same naming convention within the same template. This template uses " : "must use the configured naming convention, which is the ");
        int i = this.o;
        if (i == 12) {
            str = "camel case naming convention (like: exampleName) ";
        } else {
            str = i == 11 ? "legacy naming convention (directive (tag) names are like examplename, everything else is like example_name) " : "??? (internal error)";
        }
        stringBuffer.append(str);
        if (this.p != null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("estabilished by auto-detection at ");
            Token token2 = this.p;
            stringBuffer2.append(f1.h(token2.beginLine, token2.beginColumn));
            stringBuffer2.append(" by token ");
            stringBuffer2.append(n0a.D(this.p.image.trim()));
            string = stringBuffer2.toString();
        } else {
            string = "";
        }
        stringBuffer.append(string);
        stringBuffer.append(", but the problematic token, ");
        stringBuffer.append(n0a.D(token.image.trim()));
        stringBuffer.append(", uses a different convention.");
        return new TokenMgrError(stringBuffer.toString(), 0, token.beginLine, token.beginColumn, token.endLine, token.endColumn);
    }

    public final int v(int i, int i2) {
        this.B = 3;
        int i3 = 0;
        this.u[0] = i;
        int i4 = i2;
        int i5 = 1;
        int i6 = 0;
        int i7 = Integer.MAX_VALUE;
        while (true) {
            int i8 = this.C + 1;
            this.C = i8;
            if (i8 == Integer.MAX_VALUE) {
                a();
            }
            char c = this.y;
            if (c < '@') {
                long j = 1 << c;
                do {
                    i5--;
                    int i9 = this.u[i5];
                    if (i9 != 0) {
                        if (i9 != 1) {
                            if (i9 == 2) {
                                if ((j & (-1152921611981039105L)) != 0) {
                                    if (i7 > 73) {
                                        i7 = 73;
                                    }
                                    q(1);
                                } else if ((j & 4294977024L) != 0) {
                                    if (i7 > 72) {
                                        i7 = 72;
                                    }
                                    q(i3);
                                } else if ((j & 1152921607686062080L) != 0 && i7 > 74) {
                                    i7 = 74;
                                }
                            }
                        } else if ((j & (-1152921611981039105L)) != 0) {
                            q(1);
                            i7 = 73;
                        }
                    } else if ((j & 4294977024L) != 0) {
                        q(i3);
                        i7 = 72;
                    }
                } while (i5 != i6);
            } else if (c < 128) {
                long j2 = 1 << (c & '?');
                do {
                    i5--;
                    int i10 = this.u[i5];
                    if (i10 != 1) {
                        if (i10 == 2) {
                            if ((j2 & (-576460752437641217L)) != 0) {
                                if (i7 > 73) {
                                    i7 = 73;
                                }
                                q(1);
                            } else if ((j2 & 576460752437641216L) != 0 && i7 > 74) {
                                i7 = 74;
                            }
                        }
                    } else if ((j2 & (-576460752437641217L)) != 0) {
                        q(1);
                        i7 = 73;
                    }
                } while (i5 != i6);
            } else {
                int i11 = c >> '\b';
                int i12 = c >> 14;
                long j3 = 1 << (i11 & 63);
                int i13 = (c & 255) >> 6;
                long j4 = 1 << (c & '?');
                do {
                    i5--;
                    int i14 = this.u[i5];
                    if ((i14 == 1 || i14 == 2) && o(i11, i12, i13, j3, j4)) {
                        if (i7 > 73) {
                            i7 = 73;
                        }
                        q(1);
                    }
                } while (i5 != i6);
            }
            if (i7 != Integer.MAX_VALUE) {
                this.E = i7;
                this.D = i4;
                i7 = Integer.MAX_VALUE;
            }
            i4++;
            i5 = this.B;
            this.B = i6;
            i6 = 3 - i6;
            if (i5 == i6) {
                return i4;
            }
            try {
                this.y = this.s.l();
                i3 = 0;
            } catch (IOException unused) {
                return i4;
            }
        }
    }

    public void v0(FMParser fMParser) {
        this.c = fMParser;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:108:0x0176  */
    /* JADX WARN: Code duplicated, block: B:113:0x0183  */
    /* JADX WARN: Code duplicated, block: B:139:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:212:0x0334  */
    /* JADX WARN: Code duplicated, block: B:214:0x0338  */
    /* JADX WARN: Code duplicated, block: B:216:0x033e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:217:0x0340  */
    /* JADX WARN: Code duplicated, block: B:219:0x0344  */
    /* JADX WARN: Code duplicated, block: B:220:0x0347  */
    /* JADX WARN: Code duplicated, block: B:225:0x0350  */
    /* JADX WARN: Code duplicated, block: B:248:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:249:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:272:0x03fa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:273:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:289:0x0430  */
    /* JADX WARN: Code duplicated, block: B:408:0x0613  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f1  */
    public final int w(int i, int i2) {
        int i3;
        int i4;
        char c;
        this.B = 84;
        this.u[0] = i;
        int i5 = 1;
        int i6 = 1;
        int i7 = Integer.MAX_VALUE;
        int i8 = 0;
        int i9 = i2;
        while (true) {
            int i10 = this.C + i5;
            this.C = i10;
            if (i10 == Integer.MAX_VALUE) {
                a();
            }
            char c2 = this.y;
            int i11 = 60;
            int i12 = 34;
            if (c2 < '@') {
                long j = 1 << c2;
                while (true) {
                    int[] iArr = this.u;
                    i6--;
                    int i13 = iArr[i6];
                    if (i13 == 33) {
                        int i14 = i12;
                        if (this.y == '$') {
                            if (i7 > 133) {
                                i7 = 133;
                            }
                            s(i14, 35);
                        }
                    } else if (i13 == i12) {
                        i3 = i12;
                        if ((j & 287948969894477824L) != 0) {
                            if (i7 > 133) {
                                i7 = 133;
                            }
                            s(i3, 35);
                        }
                    } else if (i13 != 36) {
                        if (i13 != 71) {
                            if (i13 != 74) {
                                if (i13 == 81) {
                                    if (this.y != '&' && i7 > 118) {
                                        i7 = 118;
                                    }
                                } else if (i13 == 84) {
                                    i3 = i12;
                                    if ((j & 287948969894477824L) != 0) {
                                        if (i7 > 133) {
                                            i7 = 133;
                                        }
                                        s(i3, 35);
                                    }
                                } else if (i13 != 67) {
                                    if (i13 != 68) {
                                        if (i13 != 77) {
                                            if (i13 != 78) {
                                                switch (i13) {
                                                    case 0:
                                                        if ((j & 4294977024L) != 0) {
                                                            if (i7 > 77) {
                                                                i7 = 77;
                                                            }
                                                            q(0);
                                                            break;
                                                        }
                                                        break;
                                                    case 1:
                                                        if ((j & 287948901175001088L) != 0) {
                                                            if (i7 > 89) {
                                                                i7 = 89;
                                                            }
                                                            r(305, 307);
                                                        } else if ((j & 4294977024L) != 0) {
                                                            if (i7 > 77) {
                                                                i7 = 77;
                                                            }
                                                            q(0);
                                                        } else {
                                                            char c3 = this.y;
                                                            if (c3 == '&') {
                                                                n(308, 312);
                                                            } else if (c3 == '.') {
                                                                n(313, 314);
                                                            } else if (c3 == '/') {
                                                                n(315, 316);
                                                            } else if (c3 == '#' || c3 == '$') {
                                                                q(38);
                                                            } else if (c3 != '<') {
                                                                if (c3 == '\'') {
                                                                    r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                } else {
                                                                    i4 = 34;
                                                                    if (c3 == '\"') {
                                                                        r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                                    }
                                                                }
                                                                c = this.y;
                                                                if (c == '$') {
                                                                    if (i7 > 133) {
                                                                        i7 = 133;
                                                                    }
                                                                    s(i4, 35);
                                                                } else if (c == '&') {
                                                                    if (i7 > 118) {
                                                                        i7 = 118;
                                                                    }
                                                                } else if (c == '<' && i7 > 107) {
                                                                    i7 = 107;
                                                                }
                                                                if (this.y == '<') {
                                                                    int[] iArr2 = this.u;
                                                                    int i15 = this.B;
                                                                    this.B = i15 + 1;
                                                                    iArr2[i15] = 2;
                                                                }
                                                            } else {
                                                                q(27);
                                                            }
                                                        }
                                                        i4 = 34;
                                                        c = this.y;
                                                        if (c == '$') {
                                                            if (i7 > 133) {
                                                                i7 = 133;
                                                            }
                                                            s(i4, 35);
                                                        } else if (c == '&') {
                                                            if (i7 > 118) {
                                                                i7 = 118;
                                                            }
                                                        } else if (c == '<') {
                                                            i7 = 107;
                                                        }
                                                        if (this.y == '<') {
                                                            int[] iArr3 = this.u;
                                                            int i16 = this.B;
                                                            this.B = i16 + 1;
                                                            iArr3[i16] = 2;
                                                        }
                                                        break;
                                                    case 2:
                                                        if ((j & 42949672960L) != 0) {
                                                            int i17 = this.B;
                                                            this.B = i17 + 1;
                                                            iArr[i17] = 4;
                                                        }
                                                        break;
                                                    case 3:
                                                        if (this.y == '-' && i7 > 78) {
                                                            i7 = 78;
                                                            break;
                                                        }
                                                        break;
                                                    case 4:
                                                        if (this.y == '-') {
                                                            int i18 = this.B;
                                                            this.B = i18 + 1;
                                                            iArr[i18] = 3;
                                                        }
                                                        break;
                                                    case 5:
                                                        if (this.y == '\"') {
                                                            r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                        }
                                                        break;
                                                    case 6:
                                                        if ((j & (-17179869185L)) != 0) {
                                                            r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                        }
                                                        break;
                                                    default:
                                                        switch (i13) {
                                                            case 9:
                                                                if ((j & 287948901175001088L) != 0) {
                                                                    r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                                }
                                                                break;
                                                            case 10:
                                                                if (this.y == '\"' && i7 > 85) {
                                                                    i7 = 85;
                                                                    break;
                                                                }
                                                                break;
                                                            case 11:
                                                                if ((j & 635655159808L) != 0) {
                                                                    r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                                }
                                                                break;
                                                            case 12:
                                                                if (this.y == '\'') {
                                                                    r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                }
                                                                break;
                                                            case 13:
                                                                if ((j & (-549755813889L)) != 0) {
                                                                    r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                }
                                                                break;
                                                            default:
                                                                switch (i13) {
                                                                    case 16:
                                                                        if ((j & 287948901175001088L) != 0) {
                                                                            r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                        }
                                                                        break;
                                                                    case 17:
                                                                        if (this.y == '\'' && i7 > 85) {
                                                                            i7 = 85;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 18:
                                                                        if ((j & 635655159808L) != 0) {
                                                                            r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                        }
                                                                        break;
                                                                    default:
                                                                        switch (i13) {
                                                                            case 20:
                                                                                if (this.y == '\"') {
                                                                                    s(21, 22);
                                                                                }
                                                                                break;
                                                                            case 21:
                                                                                if ((j & (-17179869185L)) != 0) {
                                                                                    s(21, 22);
                                                                                }
                                                                                break;
                                                                            case 22:
                                                                                if (this.y == '\"' && i7 > 86) {
                                                                                    i7 = 86;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 23:
                                                                                if (this.y == '\'') {
                                                                                    s(24, 25);
                                                                                }
                                                                                break;
                                                                            case 24:
                                                                                if ((j & (-549755813889L)) != 0) {
                                                                                    s(24, 25);
                                                                                }
                                                                                break;
                                                                            case 25:
                                                                                if (this.y == '\'' && i7 > 86) {
                                                                                    i7 = 86;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 26:
                                                                                if (this.y == '<' && i7 > 107) {
                                                                                    i7 = 107;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 27:
                                                                                if (this.y == '=' && i7 > 108) {
                                                                                    i7 = 108;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 28:
                                                                                if (this.y == '<') {
                                                                                    q(27);
                                                                                }
                                                                                break;
                                                                            case 29:
                                                                                if (this.y != '&') {
                                                                                }
                                                                                break;
                                                                            default:
                                                                                switch (i13) {
                                                                                    case 39:
                                                                                        if (this.y == '$') {
                                                                                            q(38);
                                                                                        }
                                                                                        break;
                                                                                    case 40:
                                                                                        if (this.y == '#') {
                                                                                            q(38);
                                                                                        }
                                                                                        break;
                                                                                    case 41:
                                                                                        if (this.y == '/') {
                                                                                            n(315, 316);
                                                                                        }
                                                                                        break;
                                                                                    case 42:
                                                                                        if (this.y == '>' && i7 > 140) {
                                                                                            i7 = 140;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    default:
                                                                                        switch (i13) {
                                                                                            case 44:
                                                                                                if (this.y == '.') {
                                                                                                    n(313, 314);
                                                                                                }
                                                                                                break;
                                                                                            case 45:
                                                                                                char c4 = this.y;
                                                                                                if (c4 != '!' ? !(c4 != '<' || i7 <= 93) : i7 > 93) {
                                                                                                    i7 = 93;
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            case 46:
                                                                                                char c5 = this.y;
                                                                                                if (c5 == '.') {
                                                                                                    int i19 = this.B;
                                                                                                    this.B = i19 + 1;
                                                                                                    iArr[i19] = 47;
                                                                                                }
                                                                                                if (c5 == '.') {
                                                                                                    int i20 = this.B;
                                                                                                    this.B = i20 + 1;
                                                                                                    iArr[i20] = 45;
                                                                                                }
                                                                                                break;
                                                                                            case 47:
                                                                                                if (this.y == '!' && i7 > 93) {
                                                                                                    i7 = 93;
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            case 48:
                                                                                                if (this.y == '.') {
                                                                                                    int i21 = this.B;
                                                                                                    this.B = i21 + 1;
                                                                                                    iArr[i21] = 47;
                                                                                                }
                                                                                                break;
                                                                                            case 49:
                                                                                                if ((j & 287948901175001088L) != 0) {
                                                                                                    if (i7 > 89) {
                                                                                                        i7 = 89;
                                                                                                    }
                                                                                                    r(305, 307);
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            case 50:
                                                                                                if ((j & 287948901175001088L) != 0) {
                                                                                                    if (i7 > 89) {
                                                                                                        i7 = 89;
                                                                                                    }
                                                                                                    q(50);
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            case 51:
                                                                                                if ((j & 287948901175001088L) != 0) {
                                                                                                    s(51, 52);
                                                                                                }
                                                                                                break;
                                                                                            case 52:
                                                                                                if (this.y == '.') {
                                                                                                    q(53);
                                                                                                }
                                                                                                break;
                                                                                            case 53:
                                                                                                if ((j & 287948901175001088L) != 0) {
                                                                                                    if (i7 > 90) {
                                                                                                        i7 = 90;
                                                                                                    }
                                                                                                    q(53);
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                        }
                                                                                        break;
                                                                                }
                                                                                break;
                                                                        }
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                            } else if (this.y == ';') {
                                                int i22 = this.B;
                                                this.B = i22 + 1;
                                                iArr[i22] = 77;
                                            }
                                        } else if (this.y == '=' && i7 > 110) {
                                            i7 = 110;
                                        }
                                    } else if (this.y == ';' && i7 > 107) {
                                        i7 = 107;
                                    }
                                } else if (this.y == '&') {
                                    n(308, 312);
                                }
                            } else if (this.y == ';' && i7 > 109) {
                                i7 = 109;
                            }
                        } else if (this.y == ';') {
                            q(27);
                        }
                    } else if ((j & 288335929267978240L) != 0) {
                        if (i7 > 133) {
                            i7 = 133;
                        }
                        s(34, 35);
                    }
                    if (i6 != i8) {
                        i12 = 34;
                    }
                }
            } else if (c2 < 128) {
                long j2 = 1 << (c2 & '?');
                while (true) {
                    int[] iArr4 = this.u;
                    i6--;
                    switch (iArr4[i6]) {
                        case 1:
                            if ((j2 & 576460745995190271L) != 0) {
                                if (i7 > 133) {
                                    i7 = 133;
                                }
                                s(34, 35);
                            } else {
                                char c6 = this.y;
                                if (c6 == '\\') {
                                    n(TranSceneConfig.SCENE_TYPE_GAME_MLBB_VICTORY, 326);
                                } else if (c6 == '|') {
                                    int i23 = this.B;
                                    this.B = i23 + 1;
                                    iArr4[i23] = 31;
                                } else if (c6 == '[') {
                                    int i24 = this.B;
                                    this.B = i24 + 1;
                                    iArr4[i24] = 2;
                                }
                            }
                            char c7 = this.y;
                            if (c7 == 'g') {
                                s(62, 83);
                            } else if (c7 == 'l') {
                                s(55, 57);
                            } else if (c7 == '\\') {
                                q(36);
                            } else if (c7 != '|') {
                                if (c7 == 'r') {
                                    n(327, 328);
                                }
                            } else if (i7 > 119) {
                                i7 = 119;
                            }
                            break;
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 10:
                        case 12:
                        case 17:
                        case 20:
                        case 22:
                        case 23:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 36:
                        case 39:
                        case 40:
                        case 41:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                        case 67:
                        case 68:
                        case 71:
                        case 74:
                        case 77:
                        case 78:
                        case 81:
                        default:
                            break;
                        case 6:
                            if ((j2 & (-268435457)) != 0) {
                                r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                            }
                            break;
                        case 7:
                            if (this.y == '\\') {
                                n(329, 330);
                            }
                            break;
                        case 8:
                            if (this.y == 'x') {
                                int i25 = this.B;
                                this.B = i25 + 1;
                                iArr4[i25] = 9;
                            }
                            break;
                        case 9:
                            if ((j2 & 541165879422L) != 0) {
                                r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                            }
                            break;
                        case 11:
                            if ((j2 & 582179063439818752L) != 0) {
                                r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                            }
                            break;
                        case 13:
                            if ((j2 & (-268435457)) != 0) {
                                r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                            }
                            break;
                        case 14:
                            if (this.y == '\\') {
                                n(331, 332);
                            }
                            break;
                        case 15:
                            if (this.y == 'x') {
                                int i26 = this.B;
                                this.B = i26 + 1;
                                iArr4[i26] = 16;
                            }
                            break;
                        case 16:
                            if ((j2 & 541165879422L) != 0) {
                                r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                            }
                            break;
                        case 18:
                            if ((j2 & 582179063439818752L) != 0) {
                                r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                            }
                            break;
                        case 19:
                            if (this.y == 'r') {
                                n(327, 328);
                            }
                            break;
                        case 21:
                            n(333, 334);
                            break;
                        case 24:
                            n(335, 336);
                            break;
                        case 30:
                        case 31:
                            if (this.y == '|' && i7 > 119) {
                                i7 = 119;
                            }
                            break;
                        case 32:
                            if (this.y == '|') {
                                int i27 = this.B;
                                this.B = i27 + 1;
                                iArr4[i27] = 31;
                            }
                            break;
                        case 33:
                            if ((j2 & 576460745995190271L) != 0) {
                                if (i7 > 133) {
                                    i7 = 133;
                                }
                                s(34, 35);
                            }
                            break;
                        case 34:
                            if ((j2 & 576460745995190271L) != 0) {
                                int i28 = i7 > 133 ? 133 : i7;
                                s(34, 35);
                                i7 = i28;
                            }
                            break;
                        case 35:
                            if (this.y == '\\') {
                                q(36);
                            }
                            break;
                        case 37:
                            if (this.y == '\\') {
                                q(36);
                            }
                            break;
                        case 38:
                            if (this.y == '{' && i7 > 134) {
                                i7 = 134;
                            }
                            break;
                        case 42:
                            if (this.y == ']' && i7 > 140) {
                                i7 = 140;
                            }
                            break;
                        case 54:
                            if (this.y == 'l') {
                                s(55, 57);
                            }
                            break;
                        case 55:
                            if (this.y == 't') {
                                if (i7 > 107) {
                                    i7 = 107;
                                }
                            }
                            break;
                        case 56:
                            if (this.y == 'e' && i7 > 108) {
                                i7 = 108;
                            }
                            break;
                        case 57:
                        case 60:
                            if (this.y == 't') {
                                q(56);
                            }
                            break;
                        case 58:
                            if (this.y == '\\') {
                                n(TranSceneConfig.SCENE_TYPE_GAME_MLBB_VICTORY, 326);
                            }
                            break;
                        case 59:
                            if (this.y == 'l') {
                                q(55);
                            }
                            break;
                        case 61:
                            if (this.y == 'l') {
                                int i29 = this.B;
                                this.B = i29 + 1;
                                iArr4[i29] = i11;
                            }
                            break;
                        case 62:
                            if (this.y == 't' && i7 > 109) {
                                i7 = 109;
                            }
                            break;
                        case 63:
                            if (this.y == 'g') {
                                q(62);
                            }
                            break;
                        case 64:
                            if (this.y == 'e' && i7 > 110) {
                                i7 = 110;
                            }
                            break;
                        case 65:
                        case 83:
                            if (this.y == 't') {
                                q(64);
                            }
                            break;
                        case 66:
                            if (this.y == 'g') {
                                int i30 = this.B;
                                this.B = i30 + 1;
                                iArr4[i30] = 65;
                            }
                            break;
                        case 69:
                            if (this.y == 't') {
                                int i31 = this.B;
                                this.B = i31 + 1;
                                iArr4[i31] = 68;
                            }
                            break;
                        case 70:
                            if (this.y == 'l') {
                                int i32 = this.B;
                                this.B = i32 + 1;
                                iArr4[i32] = 69;
                            }
                            break;
                        case 72:
                            if (this.y == 't') {
                                int i33 = this.B;
                                this.B = i33 + 1;
                                iArr4[i33] = 71;
                            }
                            break;
                        case 73:
                            if (this.y == 'l') {
                                int i34 = this.B;
                                this.B = i34 + 1;
                                iArr4[i34] = 72;
                            }
                            break;
                        case 75:
                            if (this.y == 't') {
                                int i35 = this.B;
                                this.B = i35 + 1;
                                iArr4[i35] = 74;
                            }
                            break;
                        case 76:
                            if (this.y == 'g') {
                                int i36 = this.B;
                                this.B = i36 + 1;
                                iArr4[i36] = 75;
                            }
                            break;
                        case 79:
                            if (this.y == 't') {
                                int i37 = this.B;
                                this.B = i37 + 1;
                                iArr4[i37] = 78;
                            }
                            break;
                        case 80:
                            if (this.y == 'g') {
                                int i38 = this.B;
                                this.B = i38 + 1;
                                iArr4[i38] = 79;
                            }
                            break;
                        case 82:
                            if (this.y == 'g') {
                                s(62, 83);
                            }
                            break;
                        case 84:
                            if ((576460745995190271L & j2) != 0) {
                                if (i7 > 133) {
                                    i7 = 133;
                                }
                                s(34, 35);
                            } else if (this.y == '\\') {
                                q(36);
                            }
                            break;
                    }
                    if (i6 != i8) {
                        i11 = 60;
                    }
                }
            } else {
                int i39 = c2 >> '\b';
                int i40 = c2 >> 14;
                long j3 = 1 << (i39 & 63);
                int i41 = (c2 & 255) >> 6;
                long j4 = 1 << (c2 & '?');
                do {
                    i6--;
                    int i42 = this.u[i6];
                    if (i42 != 1) {
                        if (i42 != 6) {
                            if (i42 != 13) {
                                if (i42 != 21) {
                                    if (i42 != 24) {
                                        if ((i42 == 34 || i42 == 84) && p(i39, i40, i41, j3, j4)) {
                                            if (i7 > 133) {
                                                i7 = 133;
                                            }
                                            s(34, 35);
                                        }
                                    } else if (o(i39, i40, i41, j3, j4)) {
                                        n(335, 336);
                                    }
                                } else if (o(i39, i40, i41, j3, j4)) {
                                    n(333, 334);
                                }
                            } else if (o(i39, i40, i41, j3, j4)) {
                                n(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                            }
                        } else if (o(i39, i40, i41, j3, j4)) {
                            n(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                        }
                    } else if (p(i39, i40, i41, j3, j4)) {
                        if (i7 > 133) {
                            i7 = 133;
                        }
                        s(34, 35);
                    }
                } while (i6 != i8);
            }
            if (i7 != Integer.MAX_VALUE) {
                this.E = i7;
                this.D = i9;
                i7 = Integer.MAX_VALUE;
            }
            i9++;
            i6 = this.B;
            this.B = i8;
            i8 = 84 - i8;
            if (i6 == i8) {
                return i9;
            }
            try {
                this.y = this.s.l();
                i5 = 1;
            } catch (IOException unused) {
                return i9;
            }
        }
    }

    public final void w0(Token token, int i) {
        x0(token, 10, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:100:0x0156  */
    /* JADX WARN: Code duplicated, block: B:105:0x0163  */
    /* JADX WARN: Code duplicated, block: B:131:0x01da  */
    /* JADX WARN: Code duplicated, block: B:201:0x0307  */
    /* JADX WARN: Code duplicated, block: B:203:0x030b  */
    /* JADX WARN: Code duplicated, block: B:205:0x0311 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:206:0x0313  */
    /* JADX WARN: Code duplicated, block: B:208:0x0317  */
    /* JADX WARN: Code duplicated, block: B:209:0x031a  */
    /* JADX WARN: Code duplicated, block: B:214:0x0323  */
    /* JADX WARN: Code duplicated, block: B:237:0x0380  */
    /* JADX WARN: Code duplicated, block: B:238:0x0384  */
    /* JADX WARN: Code duplicated, block: B:261:0x03cd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:262:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ee  */
    public final int x(int i, int i2) {
        int i3;
        int i4;
        char c;
        this.B = 81;
        this.u[0] = i;
        int i5 = 1;
        int i6 = 1;
        int i7 = Integer.MAX_VALUE;
        int i8 = 0;
        int i9 = i2;
        while (true) {
            int i10 = this.C + i5;
            this.C = i10;
            if (i10 == Integer.MAX_VALUE) {
                a();
            }
            char c2 = this.y;
            int i11 = 34;
            if (c2 < '@') {
                long j = 1 << c2;
                while (true) {
                    int[] iArr = this.u;
                    i6--;
                    int i12 = iArr[i6];
                    if (i12 == 33) {
                        int i13 = i11;
                        if (this.y == '$') {
                            if (i7 > 133) {
                                i7 = 133;
                            }
                            s(i13, 35);
                        }
                    } else if (i12 == i11) {
                        i3 = i11;
                        if ((j & 287948969894477824L) != 0) {
                            if (i7 > 133) {
                                i7 = 133;
                            }
                            s(i3, 35);
                        }
                    } else if (i12 != 36) {
                        if (i12 != 68) {
                            if (i12 != 71) {
                                if (i12 == 78) {
                                    if (this.y != '&' && i7 > 118) {
                                        i7 = 118;
                                    }
                                } else if (i12 == 81) {
                                    i3 = i11;
                                    if ((j & 287948969894477824L) != 0) {
                                        if (i7 > 133) {
                                            i7 = 133;
                                        }
                                        s(i3, 35);
                                    }
                                } else if (i12 != 64) {
                                    if (i12 != 65) {
                                        if (i12 != 74) {
                                            if (i12 != 75) {
                                                switch (i12) {
                                                    case 0:
                                                        if ((j & 4294977024L) != 0) {
                                                            if (i7 > 77) {
                                                                i7 = 77;
                                                            }
                                                            q(0);
                                                            break;
                                                        }
                                                        break;
                                                    case 1:
                                                        if ((j & 287948901175001088L) != 0) {
                                                            if (i7 > 89) {
                                                                i7 = 89;
                                                            }
                                                            r(337, 339);
                                                        } else if ((j & 4294977024L) != 0) {
                                                            if (i7 > 77) {
                                                                i7 = 77;
                                                            }
                                                            q(0);
                                                        } else {
                                                            char c3 = this.y;
                                                            if (c3 == '&') {
                                                                n(340, 344);
                                                            } else if (c3 == '.') {
                                                                n(345, 346);
                                                            } else if (c3 == '#' || c3 == '$') {
                                                                q(38);
                                                            } else if (c3 != '<') {
                                                                if (c3 == '\'') {
                                                                    r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                } else {
                                                                    i4 = 34;
                                                                    if (c3 == '\"') {
                                                                        r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                                    }
                                                                }
                                                                c = this.y;
                                                                if (c == '$') {
                                                                    if (i7 > 133) {
                                                                        i7 = 133;
                                                                    }
                                                                    s(i4, 35);
                                                                } else if (c == '&') {
                                                                    if (i7 > 118) {
                                                                        i7 = 118;
                                                                    }
                                                                } else if (c == '<' && i7 > 107) {
                                                                    i7 = 107;
                                                                }
                                                                if (this.y == '<') {
                                                                    int[] iArr2 = this.u;
                                                                    int i14 = this.B;
                                                                    this.B = i14 + 1;
                                                                    iArr2[i14] = 2;
                                                                }
                                                            } else {
                                                                q(27);
                                                            }
                                                        }
                                                        i4 = 34;
                                                        c = this.y;
                                                        if (c == '$') {
                                                            if (i7 > 133) {
                                                                i7 = 133;
                                                            }
                                                            s(i4, 35);
                                                        } else if (c == '&') {
                                                            if (i7 > 118) {
                                                                i7 = 118;
                                                            }
                                                        } else if (c == '<') {
                                                            i7 = 107;
                                                        }
                                                        if (this.y == '<') {
                                                            int[] iArr3 = this.u;
                                                            int i15 = this.B;
                                                            this.B = i15 + 1;
                                                            iArr3[i15] = 2;
                                                        }
                                                        break;
                                                    case 2:
                                                        if ((j & 42949672960L) != 0) {
                                                            int i16 = this.B;
                                                            this.B = i16 + 1;
                                                            iArr[i16] = 4;
                                                        }
                                                        break;
                                                    case 3:
                                                        if (this.y == '-' && i7 > 78) {
                                                            i7 = 78;
                                                            break;
                                                        }
                                                        break;
                                                    case 4:
                                                        if (this.y == '-') {
                                                            int i17 = this.B;
                                                            this.B = i17 + 1;
                                                            iArr[i17] = 3;
                                                        }
                                                        break;
                                                    case 5:
                                                        if (this.y == '\"') {
                                                            r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                        }
                                                        break;
                                                    case 6:
                                                        if ((j & (-17179869185L)) != 0) {
                                                            r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                        }
                                                        break;
                                                    default:
                                                        switch (i12) {
                                                            case 9:
                                                                if ((j & 287948901175001088L) != 0) {
                                                                    r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                                }
                                                                break;
                                                            case 10:
                                                                if (this.y == '\"' && i7 > 85) {
                                                                    i7 = 85;
                                                                    break;
                                                                }
                                                                break;
                                                            case 11:
                                                                if ((j & 635655159808L) != 0) {
                                                                    r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                                }
                                                                break;
                                                            case 12:
                                                                if (this.y == '\'') {
                                                                    r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                }
                                                                break;
                                                            case 13:
                                                                if ((j & (-549755813889L)) != 0) {
                                                                    r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                }
                                                                break;
                                                            default:
                                                                switch (i12) {
                                                                    case 16:
                                                                        if ((j & 287948901175001088L) != 0) {
                                                                            r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                        }
                                                                        break;
                                                                    case 17:
                                                                        if (this.y == '\'' && i7 > 85) {
                                                                            i7 = 85;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 18:
                                                                        if ((j & 635655159808L) != 0) {
                                                                            r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                        }
                                                                        break;
                                                                    default:
                                                                        switch (i12) {
                                                                            case 20:
                                                                                if (this.y == '\"') {
                                                                                    s(21, 22);
                                                                                }
                                                                                break;
                                                                            case 21:
                                                                                if ((j & (-17179869185L)) != 0) {
                                                                                    s(21, 22);
                                                                                }
                                                                                break;
                                                                            case 22:
                                                                                if (this.y == '\"' && i7 > 86) {
                                                                                    i7 = 86;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 23:
                                                                                if (this.y == '\'') {
                                                                                    s(24, 25);
                                                                                }
                                                                                break;
                                                                            case 24:
                                                                                if ((j & (-549755813889L)) != 0) {
                                                                                    s(24, 25);
                                                                                }
                                                                                break;
                                                                            case 25:
                                                                                if (this.y == '\'' && i7 > 86) {
                                                                                    i7 = 86;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 26:
                                                                                if (this.y == '<' && i7 > 107) {
                                                                                    i7 = 107;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 27:
                                                                                if (this.y == '=' && i7 > 108) {
                                                                                    i7 = 108;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 28:
                                                                                if (this.y == '<') {
                                                                                    q(27);
                                                                                }
                                                                                break;
                                                                            case 29:
                                                                                if (this.y != '&') {
                                                                                }
                                                                                break;
                                                                            default:
                                                                                switch (i12) {
                                                                                    case 39:
                                                                                        if (this.y == '$') {
                                                                                            q(38);
                                                                                        }
                                                                                        break;
                                                                                    case 40:
                                                                                        if (this.y == '#') {
                                                                                            q(38);
                                                                                        }
                                                                                        break;
                                                                                    case 41:
                                                                                        if (this.y == '.') {
                                                                                            n(345, 346);
                                                                                        }
                                                                                        break;
                                                                                    case 42:
                                                                                        char c4 = this.y;
                                                                                        if (c4 != '!' ? !(c4 != '<' || i7 <= 93) : i7 > 93) {
                                                                                            i7 = 93;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 43:
                                                                                        char c5 = this.y;
                                                                                        if (c5 == '.') {
                                                                                            int i18 = this.B;
                                                                                            this.B = i18 + 1;
                                                                                            iArr[i18] = 44;
                                                                                        }
                                                                                        if (c5 == '.') {
                                                                                            int i19 = this.B;
                                                                                            this.B = i19 + 1;
                                                                                            iArr[i19] = 42;
                                                                                        }
                                                                                        break;
                                                                                    case 44:
                                                                                        if (this.y == '!' && i7 > 93) {
                                                                                            i7 = 93;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 45:
                                                                                        if (this.y == '.') {
                                                                                            int i20 = this.B;
                                                                                            this.B = i20 + 1;
                                                                                            iArr[i20] = 44;
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        if ((j & 287948901175001088L) != 0) {
                                                                                            if (i7 > 89) {
                                                                                                i7 = 89;
                                                                                            }
                                                                                            r(337, 339);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 47:
                                                                                        if ((j & 287948901175001088L) != 0) {
                                                                                            if (i7 > 89) {
                                                                                                i7 = 89;
                                                                                            }
                                                                                            q(47);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 48:
                                                                                        if ((j & 287948901175001088L) != 0) {
                                                                                            s(48, 49);
                                                                                        }
                                                                                        break;
                                                                                    case 49:
                                                                                        if (this.y == '.') {
                                                                                            q(50);
                                                                                        }
                                                                                        break;
                                                                                    case 50:
                                                                                        if ((j & 287948901175001088L) != 0) {
                                                                                            if (i7 > 90) {
                                                                                                i7 = 90;
                                                                                            }
                                                                                            q(50);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                }
                                                                                break;
                                                                        }
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                            } else if (this.y == ';') {
                                                int i21 = this.B;
                                                this.B = i21 + 1;
                                                iArr[i21] = 74;
                                            }
                                        } else if (this.y == '=' && i7 > 110) {
                                            i7 = 110;
                                        }
                                    } else if (this.y == ';' && i7 > 107) {
                                        i7 = 107;
                                    }
                                } else if (this.y == '&') {
                                    n(340, 344);
                                }
                            } else if (this.y == ';' && i7 > 109) {
                                i7 = 109;
                            }
                        } else if (this.y == ';') {
                            q(27);
                        }
                    } else if ((j & 288335929267978240L) != 0) {
                        if (i7 > 133) {
                            i7 = 133;
                        }
                        s(34, 35);
                    }
                    if (i6 != i8) {
                        i11 = 34;
                    }
                }
            } else if (c2 < 128) {
                long j2 = 1 << (c2 & '?');
                do {
                    int[] iArr4 = this.u;
                    i6--;
                    switch (iArr4[i6]) {
                        case 1:
                            if ((j2 & 576460745995190271L) != 0) {
                                if (i7 > 133) {
                                    i7 = 133;
                                }
                                s(34, 35);
                            } else {
                                char c6 = this.y;
                                if (c6 == '\\') {
                                    n(347, 350);
                                } else if (c6 == '|') {
                                    int i22 = this.B;
                                    this.B = i22 + 1;
                                    iArr4[i22] = 31;
                                } else if (c6 == '[') {
                                    int i23 = this.B;
                                    this.B = i23 + 1;
                                    iArr4[i23] = 2;
                                }
                            }
                            char c7 = this.y;
                            if (c7 == 'g') {
                                s(59, 80);
                            } else if (c7 == 'l') {
                                s(52, 54);
                            } else if (c7 == '\\') {
                                q(36);
                            } else if (c7 != '|') {
                                if (c7 == 'r') {
                                    n(327, 328);
                                }
                            } else if (i7 > 119) {
                                i7 = 119;
                            }
                            break;
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 10:
                        case 12:
                        case 17:
                        case 20:
                        case 22:
                        case 23:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 36:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                        case 64:
                        case 65:
                        case 68:
                        case 71:
                        case 74:
                        case 75:
                        case 78:
                        default:
                            break;
                        case 6:
                            if (((-268435457) & j2) != 0) {
                                r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                            }
                            break;
                        case 7:
                            if (this.y == '\\') {
                                n(329, 330);
                            }
                            break;
                        case 8:
                            if (this.y == 'x') {
                                int i24 = this.B;
                                this.B = i24 + 1;
                                iArr4[i24] = 9;
                            }
                            break;
                        case 9:
                            if ((541165879422L & j2) != 0) {
                                r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                            }
                            break;
                        case 11:
                            if ((582179063439818752L & j2) != 0) {
                                r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                            }
                            break;
                        case 13:
                            if (((-268435457) & j2) != 0) {
                                r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                            }
                            break;
                        case 14:
                            if (this.y == '\\') {
                                n(331, 332);
                            }
                            break;
                        case 15:
                            if (this.y == 'x') {
                                int i25 = this.B;
                                this.B = i25 + 1;
                                iArr4[i25] = 16;
                            }
                            break;
                        case 16:
                            if ((541165879422L & j2) != 0) {
                                r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                            }
                            break;
                        case 18:
                            if ((582179063439818752L & j2) != 0) {
                                r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                            }
                            break;
                        case 19:
                            if (this.y == 'r') {
                                n(327, 328);
                            }
                            break;
                        case 21:
                            n(333, 334);
                            break;
                        case 24:
                            n(335, 336);
                            break;
                        case 30:
                        case 31:
                            if (this.y == '|' && i7 > 119) {
                                i7 = 119;
                            }
                            break;
                        case 32:
                            if (this.y == '|') {
                                int i26 = this.B;
                                this.B = i26 + 1;
                                iArr4[i26] = 31;
                            }
                            break;
                        case 33:
                            if ((576460745995190271L & j2) != 0) {
                                if (i7 > 133) {
                                    i7 = 133;
                                }
                                s(34, 35);
                            }
                            break;
                        case 34:
                            if ((576460745995190271L & j2) != 0) {
                                int i27 = i7 > 133 ? 133 : i7;
                                s(34, 35);
                                i7 = i27;
                            }
                            break;
                        case 35:
                            if (this.y == '\\') {
                                q(36);
                            }
                            break;
                        case 37:
                            if (this.y == '\\') {
                                q(36);
                            }
                            break;
                        case 38:
                            if (this.y == '{' && i7 > 134) {
                                i7 = 134;
                            }
                            break;
                        case 51:
                            if (this.y == 'l') {
                                s(52, 54);
                            }
                            break;
                        case 52:
                            if (this.y == 't' && i7 > 107) {
                                i7 = 107;
                            }
                            break;
                        case 53:
                            if (this.y == 'e' && i7 > 108) {
                                i7 = 108;
                            }
                            break;
                        case 54:
                        case 57:
                            if (this.y == 't') {
                                q(53);
                            }
                            break;
                        case 55:
                            if (this.y == '\\') {
                                n(347, 350);
                            }
                            break;
                        case 56:
                            if (this.y == 'l') {
                                q(52);
                            }
                            break;
                        case 58:
                            if (this.y == 'l') {
                                int i28 = this.B;
                                this.B = i28 + 1;
                                iArr4[i28] = 57;
                            }
                            break;
                        case 59:
                            if (this.y == 't' && i7 > 109) {
                                i7 = 109;
                            }
                            break;
                        case 60:
                            if (this.y == 'g') {
                                q(59);
                            }
                            break;
                        case 61:
                            if (this.y == 'e' && i7 > 110) {
                                i7 = 110;
                            }
                            break;
                        case 62:
                        case 80:
                            if (this.y == 't') {
                                q(61);
                            }
                            break;
                        case 63:
                            if (this.y == 'g') {
                                int i29 = this.B;
                                this.B = i29 + 1;
                                iArr4[i29] = 62;
                            }
                            break;
                        case 66:
                            if (this.y == 't') {
                                int i30 = this.B;
                                this.B = i30 + 1;
                                iArr4[i30] = 65;
                            }
                            break;
                        case 67:
                            if (this.y == 'l') {
                                int i31 = this.B;
                                this.B = i31 + 1;
                                iArr4[i31] = 66;
                            }
                            break;
                        case 69:
                            if (this.y == 't') {
                                int i32 = this.B;
                                this.B = i32 + 1;
                                iArr4[i32] = 68;
                            }
                            break;
                        case 70:
                            if (this.y == 'l') {
                                int i33 = this.B;
                                this.B = i33 + 1;
                                iArr4[i33] = 69;
                            }
                            break;
                        case 72:
                            if (this.y == 't') {
                                int i34 = this.B;
                                this.B = i34 + 1;
                                iArr4[i34] = 71;
                            }
                            break;
                        case 73:
                            if (this.y == 'g') {
                                int i35 = this.B;
                                this.B = i35 + 1;
                                iArr4[i35] = 72;
                            }
                            break;
                        case 76:
                            if (this.y == 't') {
                                int i36 = this.B;
                                this.B = i36 + 1;
                                iArr4[i36] = 75;
                            }
                            break;
                        case 77:
                            if (this.y == 'g') {
                                int i37 = this.B;
                                this.B = i37 + 1;
                                iArr4[i37] = 76;
                            }
                            break;
                        case 79:
                            if (this.y == 'g') {
                                s(59, 80);
                            }
                            break;
                        case 81:
                            if ((576460745995190271L & j2) != 0) {
                                if (i7 > 133) {
                                    i7 = 133;
                                }
                                s(34, 35);
                            } else if (this.y == '\\') {
                                q(36);
                            }
                            break;
                    }
                } while (i6 != i8);
            } else {
                int i38 = c2 >> '\b';
                int i39 = c2 >> 14;
                long j3 = 1 << (i38 & 63);
                int i40 = (c2 & 255) >> 6;
                long j4 = 1 << (c2 & '?');
                do {
                    i6--;
                    int i41 = this.u[i6];
                    if (i41 != 1) {
                        if (i41 != 6) {
                            if (i41 != 13) {
                                if (i41 != 21) {
                                    if (i41 != 24) {
                                        if ((i41 == 34 || i41 == 81) && p(i38, i39, i40, j3, j4)) {
                                            if (i7 > 133) {
                                                i7 = 133;
                                            }
                                            s(34, 35);
                                        }
                                    } else if (o(i38, i39, i40, j3, j4)) {
                                        n(335, 336);
                                    }
                                } else if (o(i38, i39, i40, j3, j4)) {
                                    n(333, 334);
                                }
                            } else if (o(i38, i39, i40, j3, j4)) {
                                n(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                            }
                        } else if (o(i38, i39, i40, j3, j4)) {
                            n(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                        }
                    } else if (p(i38, i39, i40, j3, j4)) {
                        if (i7 > 133) {
                            i7 = 133;
                        }
                        s(34, 35);
                    }
                } while (i6 != i8);
            }
            if (i7 != Integer.MAX_VALUE) {
                this.E = i7;
                this.D = i9;
                i7 = Integer.MAX_VALUE;
            }
            i9++;
            i6 = this.B;
            this.B = i8;
            i8 = 81 - i8;
            if (i6 == i8) {
                return i9;
            }
            try {
                this.y = this.s.l();
                i5 = 1;
            } catch (IOException unused) {
                return i9;
            }
        }
    }

    public final void x0(Token token, int i, int i2) {
        if (this.i) {
            token.kind = 73;
            return;
        }
        String str = token.image;
        if (!this.h && i == 12 && !m(str)) {
            token.kind = 73;
            return;
        }
        char cCharAt = str.charAt(0);
        if (this.k && !this.l) {
            this.j = cCharAt == '[';
        }
        if ((cCharAt == '[' && !this.j) || (cCharAt == '<' && this.j)) {
            token.kind = 73;
            return;
        }
        if (!this.h) {
            f(token, i);
            c(i2);
        } else {
            if (!this.j && !m(str)) {
                token.kind = 73;
                return;
            }
            this.l = true;
            f(token, i);
            c(i2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:118:0x019c  */
    /* JADX WARN: Code duplicated, block: B:123:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:149:0x0220  */
    /* JADX WARN: Code duplicated, block: B:225:0x0364  */
    /* JADX WARN: Code duplicated, block: B:227:0x0368  */
    /* JADX WARN: Code duplicated, block: B:229:0x036e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:230:0x0370  */
    /* JADX WARN: Code duplicated, block: B:232:0x0374  */
    /* JADX WARN: Code duplicated, block: B:233:0x0377  */
    /* JADX WARN: Code duplicated, block: B:238:0x0380  */
    /* JADX WARN: Code duplicated, block: B:261:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:262:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:285:0x042c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:286:0x042e  */
    /* JADX WARN: Code duplicated, block: B:537:0x086b  */
    /* JADX WARN: Code duplicated, block: B:544:0x087e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:546:0x087d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x00ef  */
    public final int y(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        char c;
        int i9 = 86;
        this.B = 86;
        this.u[0] = i;
        int i10 = 1;
        int i11 = 1;
        int i12 = Integer.MAX_VALUE;
        int i13 = 0;
        int i14 = i2;
        while (true) {
            int i15 = this.C + i10;
            this.C = i15;
            if (i15 == Integer.MAX_VALUE) {
                a();
            }
            char c2 = this.y;
            int i16 = 34;
            if (c2 < '@') {
                long j = 1 << c2;
                while (true) {
                    int[] iArr = this.u;
                    i11--;
                    int i17 = iArr[i11];
                    if (i17 == 33) {
                        int i18 = i16;
                        if (this.y == '$') {
                            if (i12 > 133) {
                                i12 = 133;
                            }
                            s(i18, 35);
                        }
                    } else if (i17 == i16) {
                        i6 = i16;
                        if ((j & 287948969894477824L) != 0) {
                            if (i12 > 133) {
                                i12 = 133;
                            }
                            s(i6, 35);
                        }
                    } else if (i17 != 36) {
                        if (i17 != 73) {
                            if (i17 != 76) {
                                if (i17 == 83) {
                                    if (this.y != '&' && i12 > 118) {
                                        i7 = 118;
                                        i12 = i7;
                                    }
                                } else if (i17 == i9) {
                                    i6 = i16;
                                    if ((j & 287948969894477824L) != 0) {
                                        if (i12 > 133) {
                                            i12 = 133;
                                        }
                                        s(i6, 35);
                                    }
                                } else if (i17 != 69) {
                                    if (i17 != 70) {
                                        if (i17 != 79) {
                                            if (i17 != 80) {
                                                switch (i17) {
                                                    case 0:
                                                        if ((j & 4294977024L) != 0) {
                                                            if (i12 > 77) {
                                                                i12 = 77;
                                                            }
                                                            q(0);
                                                            break;
                                                        }
                                                        break;
                                                    case 1:
                                                        if ((j & 287948901175001088L) != 0) {
                                                            if (i12 > 89) {
                                                                i12 = 89;
                                                            }
                                                            r(383, 385);
                                                        } else if ((j & 4294977024L) != 0) {
                                                            if (i12 > 77) {
                                                                i12 = 77;
                                                            }
                                                            q(0);
                                                        } else {
                                                            char c3 = this.y;
                                                            if (c3 == '&') {
                                                                n(386, 390);
                                                            } else if (c3 == '.') {
                                                                n(391, 392);
                                                            } else if (c3 == '/') {
                                                                n(MediaFile.FILE_TYPE_MP2PS, MediaFile.FILE_TYPE_OGM);
                                                            } else if (c3 == '!') {
                                                                q(42);
                                                            } else if (c3 == '#' || c3 == '$') {
                                                                q(38);
                                                            } else if (c3 != '<') {
                                                                if (c3 == '\'') {
                                                                    r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                } else {
                                                                    i8 = 34;
                                                                    if (c3 == '\"') {
                                                                        r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                                    }
                                                                }
                                                                c = this.y;
                                                                if (c == '$') {
                                                                    if (i12 > 133) {
                                                                        i12 = 133;
                                                                    }
                                                                    s(i8, 35);
                                                                } else if (c == '&') {
                                                                    if (i12 > 118) {
                                                                        i12 = 118;
                                                                    }
                                                                } else if (c == '<' && i12 > 107) {
                                                                    i12 = 107;
                                                                }
                                                                if (this.y == '<') {
                                                                    int[] iArr2 = this.u;
                                                                    int i19 = this.B;
                                                                    this.B = i19 + 1;
                                                                    iArr2[i19] = 2;
                                                                }
                                                            } else {
                                                                q(27);
                                                            }
                                                        }
                                                        i8 = 34;
                                                        c = this.y;
                                                        if (c == '$') {
                                                            if (i12 > 133) {
                                                                i12 = 133;
                                                            }
                                                            s(i8, 35);
                                                        } else if (c == '&') {
                                                            if (i12 > 118) {
                                                                i12 = 118;
                                                            }
                                                        } else if (c == '<') {
                                                            i12 = 107;
                                                        }
                                                        if (this.y == '<') {
                                                            int[] iArr3 = this.u;
                                                            int i110 = this.B;
                                                            this.B = i110 + 1;
                                                            iArr3[i110] = 2;
                                                        }
                                                        break;
                                                    case 2:
                                                        if ((j & 42949672960L) != 0) {
                                                            int i20 = this.B;
                                                            this.B = i20 + 1;
                                                            iArr[i20] = 4;
                                                        }
                                                        break;
                                                    case 3:
                                                        if (this.y == '-' && i12 > 78) {
                                                            i7 = 78;
                                                            i12 = i7;
                                                            break;
                                                        }
                                                        break;
                                                    case 4:
                                                        if (this.y == '-') {
                                                            int i21 = this.B;
                                                            this.B = i21 + 1;
                                                            iArr[i21] = 3;
                                                        }
                                                        break;
                                                    case 5:
                                                        if (this.y == '\"') {
                                                            r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                        }
                                                        break;
                                                    case 6:
                                                        if ((j & (-17179869185L)) != 0) {
                                                            r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                        }
                                                        break;
                                                    default:
                                                        switch (i17) {
                                                            case 9:
                                                                if ((j & 287948901175001088L) != 0) {
                                                                    r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                                }
                                                                break;
                                                            case 10:
                                                                if (this.y == '\"' && i12 > 85) {
                                                                    i7 = 85;
                                                                    i12 = i7;
                                                                    break;
                                                                }
                                                                break;
                                                            case 11:
                                                                if ((j & 635655159808L) != 0) {
                                                                    r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                                                }
                                                                break;
                                                            case 12:
                                                                if (this.y == '\'') {
                                                                    r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                }
                                                                break;
                                                            case 13:
                                                                if ((j & (-549755813889L)) != 0) {
                                                                    r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                }
                                                                break;
                                                            default:
                                                                switch (i17) {
                                                                    case 16:
                                                                        if ((j & 287948901175001088L) != 0) {
                                                                            r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                        }
                                                                        break;
                                                                    case 17:
                                                                        if (this.y == '\'' && i12 > 85) {
                                                                            i7 = 85;
                                                                            i12 = i7;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 18:
                                                                        if ((j & 635655159808L) != 0) {
                                                                            r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                                                        }
                                                                        break;
                                                                    default:
                                                                        switch (i17) {
                                                                            case 20:
                                                                                if (this.y == '\"') {
                                                                                    s(21, 22);
                                                                                }
                                                                                break;
                                                                            case 21:
                                                                                if ((j & (-17179869185L)) != 0) {
                                                                                    s(21, 22);
                                                                                }
                                                                                break;
                                                                            case 22:
                                                                                if (this.y == '\"' && i12 > 86) {
                                                                                    i12 = 86;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 23:
                                                                                if (this.y == '\'') {
                                                                                    s(24, 25);
                                                                                }
                                                                                break;
                                                                            case 24:
                                                                                if ((j & (-549755813889L)) != 0) {
                                                                                    s(24, 25);
                                                                                }
                                                                                break;
                                                                            case 25:
                                                                                if (this.y == '\'' && i12 > 86) {
                                                                                    i12 = 86;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 26:
                                                                                if (this.y == '<' && i12 > 107) {
                                                                                    i12 = 107;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 27:
                                                                                if (this.y == '=' && i12 > 108) {
                                                                                    i12 = 108;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 28:
                                                                                if (this.y == '<') {
                                                                                    q(27);
                                                                                }
                                                                                break;
                                                                            case 29:
                                                                                if (this.y != '&') {
                                                                                }
                                                                                break;
                                                                            default:
                                                                                switch (i17) {
                                                                                    case 39:
                                                                                        if (this.y == '$') {
                                                                                            q(38);
                                                                                        }
                                                                                        break;
                                                                                    case 40:
                                                                                        if (this.y == '#') {
                                                                                            q(38);
                                                                                        }
                                                                                        break;
                                                                                    case 41:
                                                                                        if (this.y == '!') {
                                                                                            q(42);
                                                                                        }
                                                                                        break;
                                                                                    case 42:
                                                                                        if ((j & 4294977024L) != 0) {
                                                                                            if (i12 > 144) {
                                                                                                i12 = 144;
                                                                                            }
                                                                                            q(42);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 43:
                                                                                        if (this.y == '/') {
                                                                                            n(MediaFile.FILE_TYPE_MP2PS, MediaFile.FILE_TYPE_OGM);
                                                                                        }
                                                                                        break;
                                                                                    case 44:
                                                                                        if (this.y == '>' && i12 > 140) {
                                                                                            i7 = 140;
                                                                                            i12 = i7;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    default:
                                                                                        switch (i17) {
                                                                                            case 46:
                                                                                                if (this.y == '.') {
                                                                                                    n(391, 392);
                                                                                                }
                                                                                                break;
                                                                                            case 47:
                                                                                                char c4 = this.y;
                                                                                                if (c4 != '!' ? !(c4 != '<' || i12 <= 93) : i12 > 93) {
                                                                                                    i12 = 93;
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            case 48:
                                                                                                char c5 = this.y;
                                                                                                if (c5 == '.') {
                                                                                                    int i22 = this.B;
                                                                                                    this.B = i22 + 1;
                                                                                                    iArr[i22] = 49;
                                                                                                }
                                                                                                if (c5 == '.') {
                                                                                                    int i23 = this.B;
                                                                                                    this.B = i23 + 1;
                                                                                                    iArr[i23] = 47;
                                                                                                }
                                                                                                break;
                                                                                            case 49:
                                                                                                if (this.y == '!' && i12 > 93) {
                                                                                                    i12 = 93;
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            case 50:
                                                                                                if (this.y == '.') {
                                                                                                    int i24 = this.B;
                                                                                                    this.B = i24 + 1;
                                                                                                    iArr[i24] = 49;
                                                                                                }
                                                                                                break;
                                                                                            case 51:
                                                                                                if ((j & 287948901175001088L) != 0) {
                                                                                                    if (i12 > 89) {
                                                                                                        i12 = 89;
                                                                                                    }
                                                                                                    r(383, 385);
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            case 52:
                                                                                                if ((j & 287948901175001088L) != 0) {
                                                                                                    if (i12 > 89) {
                                                                                                        i12 = 89;
                                                                                                    }
                                                                                                    q(52);
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            case 53:
                                                                                                if ((j & 287948901175001088L) != 0) {
                                                                                                    s(53, 54);
                                                                                                }
                                                                                                break;
                                                                                            case 54:
                                                                                                if (this.y == '.') {
                                                                                                    q(55);
                                                                                                }
                                                                                                break;
                                                                                            case 55:
                                                                                                if ((j & 287948901175001088L) != 0) {
                                                                                                    if (i12 > 90) {
                                                                                                        i12 = 90;
                                                                                                    }
                                                                                                    q(55);
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                        }
                                                                                        break;
                                                                                }
                                                                                break;
                                                                        }
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                            } else if (this.y == ';') {
                                                int i25 = this.B;
                                                this.B = i25 + 1;
                                                iArr[i25] = 79;
                                            }
                                        } else if (this.y == '=' && i12 > 110) {
                                            i7 = 110;
                                            i12 = i7;
                                        }
                                    } else if (this.y == ';' && i12 > 107) {
                                        i12 = 107;
                                    }
                                } else if (this.y == '&') {
                                    n(386, 390);
                                }
                            } else if (this.y == ';' && i12 > 109) {
                                i7 = 109;
                                i12 = i7;
                            }
                        } else if (this.y == ';') {
                            q(27);
                        }
                    } else if ((j & 288335929267978240L) != 0) {
                        if (i12 > 133) {
                            i12 = 133;
                        }
                        s(34, 35);
                    }
                    if (i11 != i13) {
                        i9 = 86;
                        i16 = 34;
                    }
                }
            } else {
                if (c2 < 128) {
                    long j2 = 1 << (c2 & '?');
                    do {
                        int[] iArr4 = this.u;
                        i11--;
                        switch (iArr4[i11]) {
                            case 1:
                                if ((576460745995190271L & j2) != 0) {
                                    if (i12 > 133) {
                                        i12 = 133;
                                    }
                                    s(34, 35);
                                } else {
                                    char c6 = this.y;
                                    if (c6 == '\\') {
                                        n(MediaFile.FILE_TYPE_RV, MediaFile.FILE_TYPE_FLV);
                                    } else if (c6 == '|') {
                                        int i26 = this.B;
                                        this.B = i26 + 1;
                                        iArr4[i26] = 31;
                                    } else if (c6 == '[') {
                                        int i27 = this.B;
                                        this.B = i27 + 1;
                                        iArr4[i27] = 2;
                                    }
                                }
                                char c7 = this.y;
                                if (c7 == 'g') {
                                    s(64, 85);
                                } else if (c7 == 'l') {
                                    s(57, 59);
                                } else if (c7 == '\\') {
                                    q(36);
                                } else if (c7 != '|') {
                                    if (c7 == 'r') {
                                        n(327, 328);
                                    }
                                } else if (i12 > 119) {
                                    i12 = 119;
                                }
                                break;
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 10:
                            case 12:
                            case 17:
                            case 20:
                            case 22:
                            case 23:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 36:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                            case 50:
                            case 51:
                            case 52:
                            case 53:
                            case 54:
                            case 55:
                            case 69:
                            case 70:
                            case 73:
                            case 76:
                            case 79:
                            case 80:
                            case 83:
                            default:
                                break;
                            case 6:
                                if (((-268435457) & j2) != 0) {
                                    r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                }
                                break;
                            case 7:
                                if (this.y == '\\') {
                                    n(329, 330);
                                }
                                break;
                            case 8:
                                if (this.y == 'x') {
                                    int i28 = this.B;
                                    this.B = i28 + 1;
                                    iArr4[i28] = 9;
                                }
                                break;
                            case 9:
                                if ((541165879422L & j2) != 0) {
                                    r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                }
                                break;
                            case 11:
                                if ((582179063439818752L & j2) != 0) {
                                    r(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                                }
                                break;
                            case 13:
                                if (((-268435457) & j2) != 0) {
                                    r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                }
                                break;
                            case 14:
                                if (this.y == '\\') {
                                    n(331, 332);
                                }
                                break;
                            case 15:
                                if (this.y == 'x') {
                                    int i29 = this.B;
                                    this.B = i29 + 1;
                                    iArr4[i29] = 16;
                                }
                                break;
                            case 16:
                                if ((j2 & 541165879422L) != 0) {
                                    r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                }
                                break;
                            case 18:
                                if ((582179063439818752L & j2) != 0) {
                                    r(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                                }
                                break;
                            case 19:
                                if (this.y == 'r') {
                                    n(327, 328);
                                }
                                break;
                            case 21:
                                n(333, 334);
                                break;
                            case 24:
                                n(335, 336);
                                break;
                            case 30:
                            case 31:
                                if (this.y == '|' && i12 > 119) {
                                    i4 = 119;
                                    i12 = i4;
                                }
                                break;
                            case 32:
                                if (this.y == '|') {
                                    int i30 = this.B;
                                    this.B = i30 + 1;
                                    iArr4[i30] = 31;
                                }
                                break;
                            case 33:
                                if ((j2 & 576460745995190271L) != 0) {
                                    if (i12 > 133) {
                                        i12 = 133;
                                    }
                                    s(34, 35);
                                }
                                break;
                            case 34:
                                if ((576460745995190271L & j2) != 0) {
                                    int i31 = i12 > 133 ? 133 : i12;
                                    s(34, 35);
                                    i12 = i31;
                                }
                                break;
                            case 35:
                                if (this.y == '\\') {
                                    q(36);
                                }
                                break;
                            case 37:
                                if (this.y == '\\') {
                                    q(36);
                                }
                                break;
                            case 38:
                                if (this.y == '{' && i12 > 134) {
                                    i4 = 134;
                                    i12 = i4;
                                }
                                break;
                            case 44:
                                if (this.y == ']' && i12 > 140) {
                                    i4 = 140;
                                    i12 = i4;
                                }
                                break;
                            case 56:
                                if (this.y == 'l') {
                                    s(57, 59);
                                }
                                break;
                            case 57:
                                if (this.y == 't' && i12 > 107) {
                                    i12 = 107;
                                }
                                break;
                            case 58:
                                if (this.y == 'e' && i12 > 108) {
                                    i12 = 108;
                                }
                                break;
                            case 59:
                            case 62:
                                if (this.y == 't') {
                                    q(58);
                                }
                                break;
                            case 60:
                                if (this.y == '\\') {
                                    n(MediaFile.FILE_TYPE_RV, MediaFile.FILE_TYPE_FLV);
                                }
                                break;
                            case 61:
                                if (this.y == 'l') {
                                    q(57);
                                }
                                break;
                            case 63:
                                if (this.y == 'l') {
                                    int i32 = this.B;
                                    this.B = i32 + 1;
                                    iArr4[i32] = 62;
                                }
                                break;
                            case 64:
                                if (this.y == 't' && i12 > 109) {
                                    i4 = 109;
                                    i12 = i4;
                                }
                                break;
                            case 65:
                                if (this.y == 'g') {
                                    q(64);
                                }
                                break;
                            case 66:
                                if (this.y == 'e' && i12 > 110) {
                                    i4 = 110;
                                    i12 = i4;
                                }
                                break;
                            case 67:
                            case 85:
                                if (this.y == 't') {
                                    q(66);
                                }
                                break;
                            case 68:
                                if (this.y == 'g') {
                                    int i33 = this.B;
                                    this.B = i33 + 1;
                                    iArr4[i33] = 67;
                                }
                                break;
                            case 71:
                                if (this.y == 't') {
                                    int i34 = this.B;
                                    this.B = i34 + 1;
                                    iArr4[i34] = 70;
                                }
                                break;
                            case 72:
                                if (this.y == 'l') {
                                    int i35 = this.B;
                                    this.B = i35 + 1;
                                    iArr4[i35] = 71;
                                }
                                break;
                            case 74:
                                if (this.y == 't') {
                                    int i36 = this.B;
                                    this.B = i36 + 1;
                                    iArr4[i36] = 73;
                                }
                                break;
                            case 75:
                                if (this.y == 'l') {
                                    int i37 = this.B;
                                    this.B = i37 + 1;
                                    iArr4[i37] = 74;
                                }
                                break;
                            case 77:
                                if (this.y == 't') {
                                    int i38 = this.B;
                                    this.B = i38 + 1;
                                    iArr4[i38] = 76;
                                }
                                break;
                            case 78:
                                if (this.y == 'g') {
                                    int i39 = this.B;
                                    this.B = i39 + 1;
                                    iArr4[i39] = 77;
                                }
                                break;
                            case 81:
                                if (this.y == 't') {
                                    int i40 = this.B;
                                    this.B = i40 + 1;
                                    iArr4[i40] = 80;
                                }
                                break;
                            case 82:
                                if (this.y == 'g') {
                                    int i41 = this.B;
                                    this.B = i41 + 1;
                                    iArr4[i41] = 81;
                                }
                                break;
                            case 84:
                                if (this.y == 'g') {
                                    s(64, 85);
                                }
                                break;
                            case 86:
                                if ((576460745995190271L & j2) != 0) {
                                    if (i12 > 133) {
                                        i5 = 34;
                                        i12 = 133;
                                    } else {
                                        i5 = 34;
                                    }
                                    s(i5, 35);
                                } else if (this.y == '\\') {
                                    q(36);
                                }
                                break;
                        }
                    } while (i11 != i13);
                } else {
                    int i42 = c2 >> '\b';
                    int i43 = c2 >> 14;
                    long j3 = 1 << (i42 & 63);
                    int i44 = (c2 & 255) >> 6;
                    long j4 = 1 << (c2 & '?');
                    do {
                        i11--;
                        int i45 = this.u[i11];
                        if (i45 == 1) {
                            i3 = 86;
                            if (p(i42, i43, i44, j3, j4)) {
                                if (i12 > 133) {
                                    i12 = 133;
                                }
                                s(34, 35);
                            }
                        } else if (i45 == 6) {
                            i3 = 86;
                            if (o(i42, i43, i44, j3, j4)) {
                                n(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY);
                            }
                        } else if (i45 == 13) {
                            i3 = 86;
                            if (o(i42, i43, i44, j3, j4)) {
                                n(317, TranSceneConfig.SCENE_TYPE_GAME_MLBB_UNSTOPPABLE);
                            }
                        } else if (i45 == 21) {
                            i3 = 86;
                            if (o(i42, i43, i44, j3, j4)) {
                                n(333, 334);
                            }
                        } else if (i45 != 24) {
                            if (i45 != 34) {
                                i3 = 86;
                                if (i45 == 86) {
                                }
                            } else {
                                i3 = 86;
                            }
                            if (p(i42, i43, i44, j3, j4)) {
                                if (i12 > 133) {
                                    i12 = 133;
                                }
                                s(34, 35);
                            }
                        } else {
                            i3 = 86;
                            if (o(i42, i43, i44, j3, j4)) {
                                n(335, 336);
                            }
                        }
                    } while (i11 != i13);
                }
                if (i12 != Integer.MAX_VALUE) {
                    this.E = i12;
                    this.D = i14;
                    i12 = Integer.MAX_VALUE;
                }
                i14++;
                i11 = this.B;
                this.B = i13;
                i13 = 86 - i13;
                if (i11 == i13) {
                    return i14;
                }
                try {
                    this.y = this.s.l();
                    i9 = i3;
                    i10 = 1;
                } catch (IOException unused) {
                    return i14;
                }
            }
            i3 = 86;
            if (i12 != Integer.MAX_VALUE) {
                this.E = i12;
                this.D = i14;
                i12 = Integer.MAX_VALUE;
            }
            i14++;
            i11 = this.B;
            this.B = i13;
            i13 = 86 - i13;
            if (i11 == i13) {
                return i14;
            }
            this.y = this.s.l();
            i9 = i3;
            i10 = 1;
        }
    }

    public final void y0(Token token) {
        char cCharAt = token.image.charAt(0);
        if (this.k && !this.l) {
            this.j = cCharAt == '[';
        }
        boolean z = this.j;
        if (z && cCharAt == '<') {
            token.kind = 73;
        } else if (!z && cCharAt == '[') {
            token.kind = 73;
        } else {
            this.l = true;
            c(6);
        }
    }

    /* JADX WARN: Code duplicated, block: B:78:0x010f  */
    /* JADX WARN: Code duplicated, block: B:86:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x011e A[SYNTHETIC] */
    public final int z(int i, int i2) {
        int i3;
        int i4;
        this.B = 6;
        this.u[0] = i;
        int i5 = 1;
        int i6 = Integer.MAX_VALUE;
        int i7 = i2;
        int i8 = 1;
        int i9 = 0;
        int i10 = Integer.MAX_VALUE;
        while (true) {
            int i11 = this.C + i5;
            this.C = i11;
            if (i11 == i6) {
                a();
            }
            char c = this.y;
            if (c < '@') {
                long j = 1 << c;
                while (true) {
                    int[] iArr = this.u;
                    i8--;
                    int i12 = iArr[i8];
                    if (i12 != 0) {
                        if (i12 != i5) {
                            if (i12 != 2) {
                                if (i12 == 3) {
                                    char c2 = this.y;
                                    if (c2 == '-') {
                                        int i13 = this.B;
                                        this.B = i13 + 1;
                                        iArr[i13] = 4;
                                    }
                                    if (c2 == '-') {
                                        int i14 = this.B;
                                        this.B = i14 + 1;
                                        iArr[i14] = 2;
                                    }
                                } else if (i12 == 5 && this.y == '-') {
                                    int i15 = this.B;
                                    this.B = i15 + 1;
                                    iArr[i15] = 4;
                                }
                            } else if (this.y == '>') {
                                i10 = 83;
                            }
                        } else if ((j & (-4611721202799476737L)) != 0) {
                            if (i10 > 79) {
                                i10 = 79;
                            }
                            q(0);
                        } else if (this.y == '-') {
                            n(TranSceneConfig.SCENE_TYPE_GAME_HOK_FIRST_BLOOD, TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_1);
                        }
                    } else if ((j & (-4611721202799476737L)) != 0) {
                        q(0);
                        i10 = 79;
                    }
                    if (i8 == i9) {
                        break;
                    }
                    i5 = 1;
                }
            } else {
                if (c < 128) {
                    long j2 = 1 << (c & '?');
                    do {
                        i8--;
                        int i16 = this.u[i8];
                        if (i16 == 0 || i16 == 1) {
                            if (((-536870913) & j2) != 0) {
                                q(0);
                                i10 = 79;
                            }
                        } else if (i16 == 4 && this.y == ']') {
                            i10 = 83;
                        }
                    } while (i8 != i9);
                } else {
                    int i17 = c >> '\b';
                    int i18 = c >> 14;
                    long j3 = 1 << (i17 & 63);
                    int i19 = (c & 255) >> 6;
                    long j4 = 1 << (c & '?');
                    do {
                        i8--;
                        int i20 = this.u[i8];
                        i3 = 1;
                        if ((i20 == 0 || i20 == 1) && o(i17, i18, i19, j3, j4)) {
                            if (i10 > 79) {
                                i10 = 79;
                            }
                            q(0);
                        }
                    } while (i8 != i9);
                    i4 = Integer.MAX_VALUE;
                }
                if (i10 != i4) {
                    this.E = i10;
                    this.D = i7;
                    i10 = i4;
                }
                i7++;
                i8 = this.B;
                this.B = i9;
                i9 = 6 - i9;
                if (i8 == i9) {
                    return i7;
                }
                try {
                    this.y = this.s.l();
                    i6 = i4;
                    i5 = i3;
                } catch (IOException unused) {
                    return i7;
                }
            }
            i4 = Integer.MAX_VALUE;
            i3 = 1;
            if (i10 != i4) {
                this.E = i10;
                this.D = i7;
                i10 = i4;
            }
            i7++;
            i8 = this.B;
            this.B = i9;
            i9 = 6 - i9;
            if (i8 == i9) {
                return i7;
            }
            this.y = this.s.l();
            i6 = i4;
            i5 = i3;
        }
    }

    public final void z0(Token token) {
        char cCharAt = token.image.charAt(0);
        boolean z = this.j;
        if (z && cCharAt == '<') {
            token.kind = 73;
        } else {
            if (z || cCharAt != '[') {
                return;
            }
            token.kind = 73;
        }
    }
}
