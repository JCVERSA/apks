package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.util.Pair;
import android.view.Surface;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import com.google.android.gms.internal.ads.zzaah;
import com.google.android.gms.internal.ads.zzaao;
import com.google.android.gms.internal.ads.zzabu;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzii;
import com.google.android.gms.internal.ads.zzsy;
import com.google.android.material.internal.ViewUtils;
import com.hunantv.media.report.ReportParams;
import com.transsion.socket.pkgdata.SocketData;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.PriorityQueue;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public final class k6e extends flj implements d7e {
    public static final int[] m1 = {1920, 1600, 1440, 1280, 960, 854, 640, ReportParams.MAX_LEAVE_VALID_TIME, 480};
    public static boolean n1;
    public static boolean o1;
    public final Context B0;
    public final boolean C0;
    public final k7e D0;
    public final boolean E0;
    public final e7e F0;
    public final v6e G0;
    public final long H0;
    public final PriorityQueue I0;
    public j6e J0;
    public boolean K0;
    public boolean L0;
    public m7e M0;
    public boolean N0;
    public List O0;
    public Surface P0;
    public zzaao Q0;
    public s5h R0;
    public boolean S0;
    public int T0;
    public int U0;
    public long V0;
    public int W0;
    public int X0;
    public int Y0;
    public long Z0;
    public int a1;
    public long b1;
    public zhf c1;
    public zhf d1;
    public int e1;
    public int f1;
    public u6e g1;
    public long h1;
    public long i1;
    public boolean j1;
    public boolean k1;
    public int l1;

    public k6e(i6e i6eVar) {
        super(2, i6eVar.d, i6eVar.c, false, 30.0f);
        Context applicationContext = i6eVar.a.getApplicationContext();
        this.B0 = applicationContext;
        this.M0 = null;
        this.D0 = new k7e(i6eVar.e, i6eVar.f);
        this.C0 = this.M0 == null;
        this.F0 = new e7e(applicationContext, this, 0L);
        this.G0 = new v6e();
        this.E0 = "NVIDIA".equals(Build.MANUFACTURER);
        this.R0 = s5h.c;
        this.T0 = 1;
        this.U0 = 0;
        this.c1 = zhf.d;
        this.f1 = 0;
        this.d1 = null;
        this.e1 = -1000;
        this.h1 = C.TIME_UNSET;
        this.i1 = C.TIME_UNSET;
        this.I0 = new PriorityQueue();
        this.H0 = C.TIME_UNSET;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0147  */
    /* JADX WARN: Code duplicated, block: B:102:0x014b  */
    /* JADX WARN: Code duplicated, block: B:104:0x0153  */
    /* JADX WARN: Code duplicated, block: B:105:0x0157  */
    /* JADX WARN: Code duplicated, block: B:107:0x015f  */
    /* JADX WARN: Code duplicated, block: B:108:0x0163  */
    /* JADX WARN: Code duplicated, block: B:110:0x016b  */
    /* JADX WARN: Code duplicated, block: B:111:0x016f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0177  */
    /* JADX WARN: Code duplicated, block: B:114:0x017b  */
    /* JADX WARN: Code duplicated, block: B:116:0x0183  */
    /* JADX WARN: Code duplicated, block: B:117:0x0187  */
    /* JADX WARN: Code duplicated, block: B:119:0x018f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0193  */
    /* JADX WARN: Code duplicated, block: B:122:0x019b  */
    /* JADX WARN: Code duplicated, block: B:123:0x019f  */
    /* JADX WARN: Code duplicated, block: B:125:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:126:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:128:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:129:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:131:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:132:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:134:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:135:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:137:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:138:0x01db  */
    /* JADX WARN: Code duplicated, block: B:140:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:141:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:143:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:144:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:146:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:147:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:149:0x0207  */
    /* JADX WARN: Code duplicated, block: B:150:0x020b  */
    /* JADX WARN: Code duplicated, block: B:152:0x0213  */
    /* JADX WARN: Code duplicated, block: B:153:0x0217  */
    /* JADX WARN: Code duplicated, block: B:155:0x021f  */
    /* JADX WARN: Code duplicated, block: B:156:0x0223  */
    /* JADX WARN: Code duplicated, block: B:158:0x022b  */
    /* JADX WARN: Code duplicated, block: B:159:0x022f  */
    /* JADX WARN: Code duplicated, block: B:161:0x0237  */
    /* JADX WARN: Code duplicated, block: B:162:0x023b  */
    /* JADX WARN: Code duplicated, block: B:164:0x0243  */
    /* JADX WARN: Code duplicated, block: B:165:0x0247  */
    /* JADX WARN: Code duplicated, block: B:167:0x024f  */
    /* JADX WARN: Code duplicated, block: B:168:0x0253  */
    /* JADX WARN: Code duplicated, block: B:170:0x025b  */
    /* JADX WARN: Code duplicated, block: B:171:0x025f  */
    /* JADX WARN: Code duplicated, block: B:173:0x0267  */
    /* JADX WARN: Code duplicated, block: B:174:0x026b  */
    /* JADX WARN: Code duplicated, block: B:176:0x0273  */
    /* JADX WARN: Code duplicated, block: B:177:0x0277  */
    /* JADX WARN: Code duplicated, block: B:179:0x027f  */
    /* JADX WARN: Code duplicated, block: B:180:0x0283  */
    /* JADX WARN: Code duplicated, block: B:182:0x028b  */
    /* JADX WARN: Code duplicated, block: B:183:0x028f  */
    /* JADX WARN: Code duplicated, block: B:185:0x0297  */
    /* JADX WARN: Code duplicated, block: B:186:0x029b  */
    /* JADX WARN: Code duplicated, block: B:188:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:189:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:191:0x02af  */
    /* JADX WARN: Code duplicated, block: B:192:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:194:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:195:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:197:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:198:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:200:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:201:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:203:0x02df  */
    /* JADX WARN: Code duplicated, block: B:204:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:206:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:207:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:209:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:210:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:212:0x0302  */
    /* JADX WARN: Code duplicated, block: B:213:0x0306  */
    /* JADX WARN: Code duplicated, block: B:215:0x030e  */
    /* JADX WARN: Code duplicated, block: B:216:0x0312  */
    /* JADX WARN: Code duplicated, block: B:218:0x031a  */
    /* JADX WARN: Code duplicated, block: B:219:0x031e  */
    /* JADX WARN: Code duplicated, block: B:221:0x0326  */
    /* JADX WARN: Code duplicated, block: B:222:0x032a  */
    /* JADX WARN: Code duplicated, block: B:224:0x0332  */
    /* JADX WARN: Code duplicated, block: B:225:0x0336  */
    /* JADX WARN: Code duplicated, block: B:227:0x033e  */
    /* JADX WARN: Code duplicated, block: B:228:0x0342  */
    /* JADX WARN: Code duplicated, block: B:230:0x034a  */
    /* JADX WARN: Code duplicated, block: B:231:0x034e  */
    /* JADX WARN: Code duplicated, block: B:233:0x0356  */
    /* JADX WARN: Code duplicated, block: B:234:0x035a  */
    /* JADX WARN: Code duplicated, block: B:236:0x0362  */
    /* JADX WARN: Code duplicated, block: B:237:0x0366  */
    /* JADX WARN: Code duplicated, block: B:239:0x036e  */
    /* JADX WARN: Code duplicated, block: B:240:0x0372  */
    /* JADX WARN: Code duplicated, block: B:242:0x037a  */
    /* JADX WARN: Code duplicated, block: B:243:0x037e  */
    /* JADX WARN: Code duplicated, block: B:245:0x0386  */
    /* JADX WARN: Code duplicated, block: B:246:0x038a  */
    /* JADX WARN: Code duplicated, block: B:248:0x0392  */
    /* JADX WARN: Code duplicated, block: B:249:0x0396  */
    /* JADX WARN: Code duplicated, block: B:251:0x039e  */
    /* JADX WARN: Code duplicated, block: B:252:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:254:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:255:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:257:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:258:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:260:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:261:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:263:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:264:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:266:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:267:0x03db  */
    /* JADX WARN: Code duplicated, block: B:269:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:270:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:272:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:273:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:275:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:276:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:278:0x0407  */
    /* JADX WARN: Code duplicated, block: B:279:0x040b  */
    /* JADX WARN: Code duplicated, block: B:281:0x0413  */
    /* JADX WARN: Code duplicated, block: B:282:0x0417  */
    /* JADX WARN: Code duplicated, block: B:284:0x041f  */
    /* JADX WARN: Code duplicated, block: B:285:0x0423  */
    /* JADX WARN: Code duplicated, block: B:287:0x042b  */
    /* JADX WARN: Code duplicated, block: B:288:0x042f  */
    /* JADX WARN: Code duplicated, block: B:290:0x0437  */
    /* JADX WARN: Code duplicated, block: B:291:0x043b  */
    /* JADX WARN: Code duplicated, block: B:293:0x0443  */
    /* JADX WARN: Code duplicated, block: B:294:0x0447  */
    /* JADX WARN: Code duplicated, block: B:296:0x044f  */
    /* JADX WARN: Code duplicated, block: B:297:0x0453  */
    /* JADX WARN: Code duplicated, block: B:299:0x045b  */
    /* JADX WARN: Code duplicated, block: B:300:0x045f  */
    /* JADX WARN: Code duplicated, block: B:302:0x0467  */
    /* JADX WARN: Code duplicated, block: B:303:0x046b  */
    /* JADX WARN: Code duplicated, block: B:305:0x0473  */
    /* JADX WARN: Code duplicated, block: B:306:0x0477  */
    /* JADX WARN: Code duplicated, block: B:308:0x047f  */
    /* JADX WARN: Code duplicated, block: B:309:0x0483  */
    /* JADX WARN: Code duplicated, block: B:311:0x048b  */
    /* JADX WARN: Code duplicated, block: B:312:0x048f  */
    /* JADX WARN: Code duplicated, block: B:314:0x0497  */
    /* JADX WARN: Code duplicated, block: B:315:0x049a  */
    /* JADX WARN: Code duplicated, block: B:317:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:318:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:320:0x04ad  */
    /* JADX WARN: Code duplicated, block: B:321:0x04b0  */
    /* JADX WARN: Code duplicated, block: B:323:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:324:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:327:0x04c6  */
    /* JADX WARN: Code duplicated, block: B:329:0x04ce  */
    /* JADX WARN: Code duplicated, block: B:330:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:332:0x04d9  */
    /* JADX WARN: Code duplicated, block: B:333:0x04dc  */
    /* JADX WARN: Code duplicated, block: B:335:0x04e4  */
    /* JADX WARN: Code duplicated, block: B:336:0x04e8  */
    /* JADX WARN: Code duplicated, block: B:338:0x04f0  */
    /* JADX WARN: Code duplicated, block: B:339:0x04f4  */
    /* JADX WARN: Code duplicated, block: B:341:0x04fc  */
    /* JADX WARN: Code duplicated, block: B:342:0x0500  */
    /* JADX WARN: Code duplicated, block: B:344:0x0508  */
    /* JADX WARN: Code duplicated, block: B:345:0x050c  */
    /* JADX WARN: Code duplicated, block: B:347:0x0514  */
    /* JADX WARN: Code duplicated, block: B:348:0x0518  */
    /* JADX WARN: Code duplicated, block: B:350:0x0520  */
    /* JADX WARN: Code duplicated, block: B:351:0x0524  */
    /* JADX WARN: Code duplicated, block: B:353:0x052c  */
    /* JADX WARN: Code duplicated, block: B:354:0x0530  */
    /* JADX WARN: Code duplicated, block: B:356:0x0538  */
    /* JADX WARN: Code duplicated, block: B:357:0x053c  */
    /* JADX WARN: Code duplicated, block: B:359:0x0544  */
    /* JADX WARN: Code duplicated, block: B:360:0x0548  */
    /* JADX WARN: Code duplicated, block: B:362:0x0550  */
    /* JADX WARN: Code duplicated, block: B:363:0x0554  */
    /* JADX WARN: Code duplicated, block: B:365:0x055c  */
    /* JADX WARN: Code duplicated, block: B:366:0x0560  */
    /* JADX WARN: Code duplicated, block: B:368:0x0568  */
    /* JADX WARN: Code duplicated, block: B:369:0x056c  */
    /* JADX WARN: Code duplicated, block: B:371:0x0574  */
    /* JADX WARN: Code duplicated, block: B:372:0x0578  */
    /* JADX WARN: Code duplicated, block: B:374:0x0580  */
    /* JADX WARN: Code duplicated, block: B:375:0x0584  */
    /* JADX WARN: Code duplicated, block: B:377:0x058c  */
    /* JADX WARN: Code duplicated, block: B:378:0x0590  */
    /* JADX WARN: Code duplicated, block: B:380:0x0598  */
    /* JADX WARN: Code duplicated, block: B:381:0x059c  */
    /* JADX WARN: Code duplicated, block: B:383:0x05a4  */
    /* JADX WARN: Code duplicated, block: B:384:0x05a8  */
    /* JADX WARN: Code duplicated, block: B:386:0x05b0  */
    /* JADX WARN: Code duplicated, block: B:387:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:389:0x05bc  */
    /* JADX WARN: Code duplicated, block: B:390:0x05c0  */
    /* JADX WARN: Code duplicated, block: B:392:0x05c8  */
    /* JADX WARN: Code duplicated, block: B:393:0x05cc  */
    /* JADX WARN: Code duplicated, block: B:395:0x05d4  */
    /* JADX WARN: Code duplicated, block: B:396:0x05d8  */
    /* JADX WARN: Code duplicated, block: B:398:0x05e0  */
    /* JADX WARN: Code duplicated, block: B:399:0x05e4  */
    /* JADX WARN: Code duplicated, block: B:401:0x05ec  */
    /* JADX WARN: Code duplicated, block: B:402:0x05f0  */
    /* JADX WARN: Code duplicated, block: B:404:0x05f8  */
    /* JADX WARN: Code duplicated, block: B:405:0x05fc  */
    /* JADX WARN: Code duplicated, block: B:407:0x0604  */
    /* JADX WARN: Code duplicated, block: B:408:0x0608  */
    /* JADX WARN: Code duplicated, block: B:410:0x0610  */
    /* JADX WARN: Code duplicated, block: B:411:0x0614  */
    /* JADX WARN: Code duplicated, block: B:413:0x061c  */
    /* JADX WARN: Code duplicated, block: B:414:0x0620  */
    /* JADX WARN: Code duplicated, block: B:416:0x0628  */
    /* JADX WARN: Code duplicated, block: B:417:0x062c  */
    /* JADX WARN: Code duplicated, block: B:419:0x0634  */
    /* JADX WARN: Code duplicated, block: B:41:0x0080 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:420:0x0638  */
    /* JADX WARN: Code duplicated, block: B:422:0x0640  */
    /* JADX WARN: Code duplicated, block: B:423:0x0644  */
    /* JADX WARN: Code duplicated, block: B:425:0x064c  */
    /* JADX WARN: Code duplicated, block: B:426:0x0650  */
    /* JADX WARN: Code duplicated, block: B:428:0x0658  */
    /* JADX WARN: Code duplicated, block: B:429:0x065b  */
    /* JADX WARN: Code duplicated, block: B:431:0x0663  */
    /* JADX WARN: Code duplicated, block: B:432:0x0666  */
    /* JADX WARN: Code duplicated, block: B:434:0x066e  */
    /* JADX WARN: Code duplicated, block: B:435:0x0672  */
    /* JADX WARN: Code duplicated, block: B:437:0x067a  */
    /* JADX WARN: Code duplicated, block: B:438:0x067e  */
    /* JADX WARN: Code duplicated, block: B:440:0x0686  */
    /* JADX WARN: Code duplicated, block: B:441:0x068a  */
    /* JADX WARN: Code duplicated, block: B:443:0x0692  */
    /* JADX WARN: Code duplicated, block: B:444:0x0696  */
    /* JADX WARN: Code duplicated, block: B:446:0x069e  */
    /* JADX WARN: Code duplicated, block: B:447:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:449:0x06aa  */
    /* JADX WARN: Code duplicated, block: B:44:0x0086  */
    /* JADX WARN: Code duplicated, block: B:450:0x06ae  */
    /* JADX WARN: Code duplicated, block: B:452:0x06b6  */
    /* JADX WARN: Code duplicated, block: B:453:0x06ba  */
    /* JADX WARN: Code duplicated, block: B:455:0x06c2  */
    /* JADX WARN: Code duplicated, block: B:456:0x06c6  */
    /* JADX WARN: Code duplicated, block: B:458:0x06ce  */
    /* JADX WARN: Code duplicated, block: B:459:0x06d2  */
    /* JADX WARN: Code duplicated, block: B:461:0x06da  */
    /* JADX WARN: Code duplicated, block: B:462:0x06de  */
    /* JADX WARN: Code duplicated, block: B:464:0x06e6  */
    /* JADX WARN: Code duplicated, block: B:465:0x06ea  */
    /* JADX WARN: Code duplicated, block: B:467:0x06f2  */
    /* JADX WARN: Code duplicated, block: B:468:0x06f6  */
    /* JADX WARN: Code duplicated, block: B:470:0x06fe  */
    /* JADX WARN: Code duplicated, block: B:471:0x0702  */
    /* JADX WARN: Code duplicated, block: B:473:0x070a  */
    /* JADX WARN: Code duplicated, block: B:474:0x070e  */
    /* JADX WARN: Code duplicated, block: B:476:0x0716  */
    /* JADX WARN: Code duplicated, block: B:477:0x071a  */
    /* JADX WARN: Code duplicated, block: B:479:0x0722  */
    /* JADX WARN: Code duplicated, block: B:480:0x0726  */
    /* JADX WARN: Code duplicated, block: B:482:0x072e  */
    /* JADX WARN: Code duplicated, block: B:483:0x0731  */
    /* JADX WARN: Code duplicated, block: B:485:0x0739  */
    /* JADX WARN: Code duplicated, block: B:486:0x073c  */
    /* JADX WARN: Code duplicated, block: B:488:0x0744  */
    /* JADX WARN: Code duplicated, block: B:489:0x0747  */
    /* JADX WARN: Code duplicated, block: B:491:0x074f  */
    /* JADX WARN: Code duplicated, block: B:492:0x0752  */
    /* JADX WARN: Code duplicated, block: B:494:0x075a  */
    /* JADX WARN: Code duplicated, block: B:495:0x075d  */
    /* JADX WARN: Code duplicated, block: B:497:0x0765  */
    /* JADX WARN: Code duplicated, block: B:498:0x0768  */
    /* JADX WARN: Code duplicated, block: B:49:0x0095 A[Catch: all -> 0x0083, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x000f, B:9:0x0013, B:11:0x0021, B:516:0x07a1, B:46:0x008a, B:49:0x0095, B:84:0x0104, B:509:0x078d, B:517:0x07a5), top: B:522:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:500:0x0770  */
    /* JADX WARN: Code duplicated, block: B:501:0x0773  */
    /* JADX WARN: Code duplicated, block: B:503:0x077b  */
    /* JADX WARN: Code duplicated, block: B:504:0x077e  */
    /* JADX WARN: Code duplicated, block: B:506:0x0786  */
    /* JADX WARN: Code duplicated, block: B:507:0x0789  */
    /* JADX WARN: Code duplicated, block: B:509:0x078d A[Catch: all -> 0x0083, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x000f, B:9:0x0013, B:11:0x0021, B:516:0x07a1, B:46:0x008a, B:49:0x0095, B:84:0x0104, B:509:0x078d, B:517:0x07a5), top: B:522:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:513:0x0797  */
    /* JADX WARN: Code duplicated, block: B:532:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:533:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:534:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:535:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:536:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:537:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:538:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:539:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:540:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:541:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:542:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:543:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:544:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:545:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:546:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:547:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:548:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:549:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:550:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:551:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:552:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:553:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:554:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:555:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:556:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:557:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:558:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:559:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:560:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:561:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:562:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:563:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:564:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:565:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:566:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:567:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:568:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:569:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:570:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:571:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:572:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:573:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:574:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:575:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:576:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:577:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:578:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:579:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:580:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:581:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:582:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:583:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:584:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:585:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:586:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:587:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:588:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:589:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:590:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:591:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:592:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:593:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:594:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:595:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:596:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:597:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:598:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:599:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:600:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:601:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:602:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:603:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:604:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:605:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:606:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:607:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:608:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:609:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:610:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:611:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:612:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:613:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:614:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:615:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:616:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:617:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:618:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:619:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x00be  */
    /* JADX WARN: Code duplicated, block: B:620:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:621:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:622:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:623:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:624:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:625:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:626:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:627:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:628:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:629:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:630:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:631:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:632:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:633:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:634:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:635:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:636:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:637:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:638:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:639:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:640:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:641:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:642:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:643:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:644:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:645:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:646:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:647:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:648:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:649:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:650:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:651:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:652:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:653:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:654:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:655:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:656:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:657:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:658:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:659:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:660:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:661:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:662:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:663:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:664:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:665:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:666:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:667:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:668:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:669:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:670:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:671:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:672:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:673:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:674:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:675:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:676:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:677:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:678:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:679:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:680:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:70:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:71:0x00de  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:76:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:79:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:82:0x0100  */
    /* JADX WARN: Code duplicated, block: B:84:0x0104 A[Catch: all -> 0x0083, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x000f, B:9:0x0013, B:11:0x0021, B:516:0x07a1, B:46:0x008a, B:49:0x0095, B:84:0x0104, B:509:0x078d, B:517:0x07a5), top: B:522:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:87:0x010f  */
    /* JADX WARN: Code duplicated, block: B:89:0x0117  */
    /* JADX WARN: Code duplicated, block: B:90:0x011b  */
    /* JADX WARN: Code duplicated, block: B:92:0x0123  */
    /* JADX WARN: Code duplicated, block: B:93:0x0127  */
    /* JADX WARN: Code duplicated, block: B:95:0x012f  */
    /* JADX WARN: Code duplicated, block: B:96:0x0133  */
    /* JADX WARN: Code duplicated, block: B:98:0x013b  */
    /* JADX WARN: Code duplicated, block: B:99:0x013f  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final boolean N0(String str) {
        String str2;
        byte b;
        String str3;
        byte b2;
        boolean z = false;
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (k6e.class) {
            if (!n1) {
                int i = kfh.a;
                byte b3 = 28;
                if (i <= 28) {
                    String str4 = Build.DEVICE;
                    switch (str4.hashCode()) {
                        case -1339091551:
                            b2 = !str4.equals("dangal") ? (byte) -1 : (byte) 1;
                            break;
                        case -1220081023:
                            b2 = !str4.equals("dangalFHD") ? (byte) -1 : (byte) 3;
                            break;
                        case -1220066608:
                            b2 = !str4.equals("dangalUHD") ? (byte) -1 : (byte) 2;
                            break;
                        case -1012436106:
                            b2 = !str4.equals("oneday") ? (byte) -1 : (byte) 7;
                            break;
                        case -760312546:
                            b2 = !str4.equals("aquaman") ? (byte) -1 : (byte) 0;
                            break;
                        case -64886864:
                            b2 = !str4.equals("magnolia") ? (byte) -1 : (byte) 4;
                            break;
                        case 3415681:
                            b2 = !str4.equals("once") ? (byte) -1 : (byte) 6;
                            break;
                        case 825323514:
                            b2 = !str4.equals("machuca") ? (byte) -1 : (byte) 5;
                            break;
                        default:
                            b2 = -1;
                            break;
                    }
                    switch (b2) {
                        default:
                            if (i <= 27 || !"HWEML".equals(Build.DEVICE)) {
                                str2 = Build.MODEL;
                                switch (str2.hashCode()) {
                                    case -349662828:
                                        if (!str2.equals("AFTJMST12")) {
                                            b = -1;
                                        } else {
                                            b = 6;
                                        }
                                        break;
                                    case -321033677:
                                        if (!str2.equals("AFTKMST12")) {
                                            b = -1;
                                        } else {
                                            b = 7;
                                        }
                                        break;
                                    case 2006354:
                                        if (!str2.equals("AFTA")) {
                                            b = -1;
                                        } else {
                                            b = 0;
                                        }
                                        break;
                                    case 2006367:
                                        if (!str2.equals("AFTN")) {
                                            b = -1;
                                        } else {
                                            b = 1;
                                        }
                                        break;
                                    case 2006371:
                                        if (!str2.equals("AFTR")) {
                                            b = -1;
                                        } else {
                                            b = 2;
                                        }
                                        break;
                                    case 1785421873:
                                        if (!str2.equals("AFTEU011")) {
                                            b = -1;
                                        } else {
                                            b = 3;
                                        }
                                        break;
                                    case 1785421876:
                                        if (!str2.equals("AFTEU014")) {
                                            b = -1;
                                        } else {
                                            b = 4;
                                        }
                                        break;
                                    case 1798172390:
                                        if (!str2.equals("AFTSO001")) {
                                            b = -1;
                                        } else {
                                            b = 8;
                                        }
                                        break;
                                    case 2119412532:
                                        if (!str2.equals("AFTEUFF014")) {
                                            b = -1;
                                        } else {
                                            b = 5;
                                        }
                                        break;
                                    default:
                                        b = -1;
                                        break;
                                }
                                switch (b) {
                                    default:
                                        if (i <= 26) {
                                            str3 = Build.DEVICE;
                                            switch (str3.hashCode()) {
                                                case -2144781245:
                                                    if (!str3.equals("GIONEE_SWW1609")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 54;
                                                    }
                                                    break;
                                                case -2144781185:
                                                    if (!str3.equals("GIONEE_SWW1627")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 55;
                                                    }
                                                    break;
                                                case -2144781160:
                                                    if (!str3.equals("GIONEE_SWW1631")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 56;
                                                    }
                                                    break;
                                                case -2097309513:
                                                    if (!str3.equals("K50a40")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 74;
                                                    }
                                                    break;
                                                case -2022874474:
                                                    if (!str3.equals("CP8676_I02")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 22;
                                                    }
                                                    break;
                                                case -1978993182:
                                                    if (!str3.equals("NX541J")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 89;
                                                    }
                                                    break;
                                                case -1978990237:
                                                    if (!str3.equals("NX573J")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 90;
                                                    }
                                                    break;
                                                case -1936688988:
                                                    if (!str3.equals("PGN528")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 101;
                                                    }
                                                    break;
                                                case -1936688066:
                                                    if (!str3.equals("PGN610")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 102;
                                                    }
                                                    break;
                                                case -1936688065:
                                                    if (!str3.equals("PGN611")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 103;
                                                    }
                                                    break;
                                                case -1931988508:
                                                    if (!str3.equals("AquaPowerM")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 13;
                                                    }
                                                    break;
                                                case -1885099851:
                                                    if (!str3.equals("RAIJIN")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 116;
                                                    }
                                                    break;
                                                case -1696512866:
                                                    if (!str3.equals("XT1663")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 137;
                                                    }
                                                    break;
                                                case -1680025915:
                                                    if (!str3.equals("ComioS1")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 21;
                                                    }
                                                    break;
                                                case -1615810839:
                                                    if (!str3.equals("Phantom6")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 104;
                                                    }
                                                    break;
                                                case -1600724499:
                                                    if (!str3.equals("pacificrim")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 95;
                                                    }
                                                    break;
                                                case -1554255044:
                                                    if (!str3.equals("vernee_M5")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = SocketData.CLAZZ_TYPE_SEND_PACKAGE;
                                                    }
                                                    break;
                                                case -1481772737:
                                                    if (!str3.equals("panell_dl")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 97;
                                                    }
                                                    break;
                                                case -1481772730:
                                                    if (!str3.equals("panell_ds")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 98;
                                                    }
                                                    break;
                                                case -1481772729:
                                                    if (!str3.equals("panell_dt")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 99;
                                                    }
                                                    break;
                                                case -1320080169:
                                                    if (!str3.equals("GiONEE_GBL7319")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 52;
                                                    }
                                                    break;
                                                case -1217592143:
                                                    if (!str3.equals("BRAVIA_ATV2")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 18;
                                                    }
                                                    break;
                                                case -1180384755:
                                                    if (!str3.equals("iris60")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 70;
                                                    }
                                                    break;
                                                case -1139198265:
                                                    if (!str3.equals("Slate_Pro")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 118;
                                                    }
                                                    break;
                                                case -1052835013:
                                                    if (!str3.equals("namath")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 87;
                                                    }
                                                    break;
                                                case -993250464:
                                                    if (!str3.equals("A10-70F")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 5;
                                                    }
                                                    break;
                                                case -993250458:
                                                    if (!str3.equals("A10-70L")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 6;
                                                    }
                                                    break;
                                                case -965403638:
                                                    if (!str3.equals("s905x018")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 120;
                                                    }
                                                    break;
                                                case -958336948:
                                                    if (!str3.equals("ELUGA_Ray_X")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 34;
                                                    }
                                                    break;
                                                case -879245230:
                                                    if (!str3.equals("tcl_eu")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 126;
                                                    }
                                                    break;
                                                case -842500323:
                                                    if (!str3.equals("nicklaus_f")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 88;
                                                    }
                                                    break;
                                                case -821392978:
                                                    if (!str3.equals("A7000-a")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 9;
                                                    }
                                                    break;
                                                case -797483286:
                                                    if (!str3.equals("SVP-DTV15")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 119;
                                                    }
                                                    break;
                                                case -794946968:
                                                    if (!str3.equals("watson")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = SocketData.CLAZZ_TYPE_CONNECT_CHECK;
                                                    }
                                                    break;
                                                case -788334647:
                                                    if (!str3.equals("whyred")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 132;
                                                    }
                                                    break;
                                                case -782144577:
                                                    if (!str3.equals("OnePlus5T")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 91;
                                                    }
                                                    break;
                                                case -575125681:
                                                    if (!str3.equals("GiONEE_CBL7513")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 51;
                                                    }
                                                    break;
                                                case -521118391:
                                                    if (!str3.equals("GIONEE_GBL7360")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 53;
                                                    }
                                                    break;
                                                case -430914369:
                                                    if (!str3.equals("Pixi4-7_3G")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 105;
                                                    }
                                                    break;
                                                case -290434366:
                                                    if (!str3.equals("taido_row")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 121;
                                                    }
                                                    break;
                                                case -282781963:
                                                    if (!str3.equals("BLACK-1X")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 17;
                                                    }
                                                    break;
                                                case -277133239:
                                                    if (!str3.equals("Z12_PRO")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = SocketData.CLAZZ_TYPE_FILE_BLOCK;
                                                    }
                                                    break;
                                                case -173639913:
                                                    if (!str3.equals("ELUGA_A3_Pro")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 31;
                                                    }
                                                    break;
                                                case -56598463:
                                                    if (!str3.equals("woods_fn")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 134;
                                                    }
                                                    break;
                                                case 2126:
                                                    if (!str3.equals("C1")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 20;
                                                    }
                                                    break;
                                                case 2564:
                                                    if (!str3.equals("Q5")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 113;
                                                    }
                                                    break;
                                                case 2715:
                                                    if (!str3.equals("V1")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 127;
                                                    }
                                                    break;
                                                case 2719:
                                                    if (!str3.equals("V5")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = SocketData.CLAZZ_TYPE_HEART_BEAT;
                                                    }
                                                    break;
                                                case 3091:
                                                    if (!str3.equals("b5")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 16;
                                                    }
                                                    break;
                                                case 3483:
                                                    if (!str3.equals("mh")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 84;
                                                    }
                                                    break;
                                                case 73405:
                                                    if (!str3.equals("JGZ")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 73;
                                                    }
                                                    break;
                                                case 75537:
                                                    if (!str3.equals("M04")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 79;
                                                    }
                                                    break;
                                                case 75739:
                                                    if (!str3.equals("M5c")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 80;
                                                    }
                                                    break;
                                                case 76779:
                                                    if (!str3.equals("MX6")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 86;
                                                    }
                                                    break;
                                                case 78669:
                                                    if (!str3.equals("P85")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 94;
                                                    }
                                                    break;
                                                case 79305:
                                                    if (!str3.equals("PLE")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 107;
                                                    }
                                                    break;
                                                case 80618:
                                                    if (!str3.equals("QX1")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 115;
                                                    }
                                                    break;
                                                case 88274:
                                                    if (!str3.equals("Z80")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = SocketData.CLAZZ_TYPE_STRING;
                                                    }
                                                    break;
                                                case 98846:
                                                    if (!str3.equals("cv1")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 26;
                                                    }
                                                    break;
                                                case 98848:
                                                    if (!str3.equals("cv3")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 27;
                                                    }
                                                    break;
                                                case 99329:
                                                    if (!str3.equals("deb")) {
                                                        b3 = -1;
                                                    }
                                                    break;
                                                case 101481:
                                                    if (!str3.equals("flo")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 49;
                                                    }
                                                    break;
                                                case 1513190:
                                                    if (!str3.equals("1601")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 0;
                                                    }
                                                    break;
                                                case 1514184:
                                                    if (!str3.equals("1713")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 1;
                                                    }
                                                    break;
                                                case 1514185:
                                                    if (!str3.equals("1714")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 2;
                                                    }
                                                    break;
                                                case 2133089:
                                                    if (!str3.equals("F01H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 36;
                                                    }
                                                    break;
                                                case 2133091:
                                                    if (!str3.equals("F01J")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 37;
                                                    }
                                                    break;
                                                case 2133120:
                                                    if (!str3.equals("F02H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 38;
                                                    }
                                                    break;
                                                case 2133151:
                                                    if (!str3.equals("F03H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 39;
                                                    }
                                                    break;
                                                case 2133182:
                                                    if (!str3.equals("F04H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 40;
                                                    }
                                                    break;
                                                case 2133184:
                                                    if (!str3.equals("F04J")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 41;
                                                    }
                                                    break;
                                                case 2436959:
                                                    if (!str3.equals("P681")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 93;
                                                    }
                                                    break;
                                                case 2463773:
                                                    if (!str3.equals("Q350")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 109;
                                                    }
                                                    break;
                                                case 2464648:
                                                    if (!str3.equals("Q427")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 111;
                                                    }
                                                    break;
                                                case 2689555:
                                                    if (!str3.equals("XE2X")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 136;
                                                    }
                                                    break;
                                                case 3154429:
                                                    if (!str3.equals("fugu")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 50;
                                                    }
                                                    break;
                                                case 3284551:
                                                    if (!str3.equals("kate")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 75;
                                                    }
                                                    break;
                                                case 3351335:
                                                    if (!str3.equals("mido")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 85;
                                                    }
                                                    break;
                                                case 3386211:
                                                    if (!str3.equals("p212")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 92;
                                                    }
                                                    break;
                                                case 41325051:
                                                    if (!str3.equals("MEIZU_M5")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 83;
                                                    }
                                                    break;
                                                case 51349633:
                                                    if (!str3.equals("601LV")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 3;
                                                    }
                                                    break;
                                                case 51350594:
                                                    if (!str3.equals("602LV")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 4;
                                                    }
                                                    break;
                                                case 55178625:
                                                    if (!str3.equals("Aura_Note_2")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 15;
                                                    }
                                                    break;
                                                case 61542055:
                                                    if (!str3.equals("A1601")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 7;
                                                    }
                                                    break;
                                                case 65355429:
                                                    if (!str3.equals("E5643")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 30;
                                                    }
                                                    break;
                                                case 66214468:
                                                    if (!str3.equals("F3111")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 42;
                                                    }
                                                    break;
                                                case 66214470:
                                                    if (!str3.equals("F3113")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 43;
                                                    }
                                                    break;
                                                case 66214473:
                                                    if (!str3.equals("F3116")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 44;
                                                    }
                                                    break;
                                                case 66215429:
                                                    if (!str3.equals("F3211")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 45;
                                                    }
                                                    break;
                                                case 66215431:
                                                    if (!str3.equals("F3213")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 46;
                                                    }
                                                    break;
                                                case 66215433:
                                                    if (!str3.equals("F3215")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 47;
                                                    }
                                                    break;
                                                case 66216390:
                                                    if (!str3.equals("F3311")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 48;
                                                    }
                                                    break;
                                                case 76402249:
                                                    if (!str3.equals("PRO7S")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 108;
                                                    }
                                                    break;
                                                case 76404105:
                                                    if (!str3.equals("Q4260")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 110;
                                                    }
                                                    break;
                                                case 76404911:
                                                    if (!str3.equals("Q4310")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 112;
                                                    }
                                                    break;
                                                case 80963634:
                                                    if (!str3.equals("V23GB")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = SocketData.CLAZZ_TYPE_END_SOCKET;
                                                    }
                                                    break;
                                                case 82882791:
                                                    if (!str3.equals("X3_HK")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 135;
                                                    }
                                                    break;
                                                case 98715550:
                                                    if (!str3.equals("i9031")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 67;
                                                    }
                                                    break;
                                                case 101370885:
                                                    if (!str3.equals("l5460")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 76;
                                                    }
                                                    break;
                                                case 102844228:
                                                    if (!str3.equals("le_x6")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 77;
                                                    }
                                                    break;
                                                case 165221241:
                                                    if (!str3.equals("A2016a40")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 8;
                                                    }
                                                    break;
                                                case 182191441:
                                                    if (!str3.equals("CPY83_I00")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 25;
                                                    }
                                                    break;
                                                case 245388979:
                                                    if (!str3.equals("marino_f")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 82;
                                                    }
                                                    break;
                                                case 287431619:
                                                    if (!str3.equals("griffin")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 60;
                                                    }
                                                    break;
                                                case 307593612:
                                                    if (!str3.equals("A7010a48")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = ByteCode.T_LONG;
                                                    }
                                                    break;
                                                case 308517133:
                                                    if (!str3.equals("A7020a48")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 12;
                                                    }
                                                    break;
                                                case 316215098:
                                                    if (!str3.equals("TB3-730F")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 122;
                                                    }
                                                    break;
                                                case 316215116:
                                                    if (!str3.equals("TB3-730X")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 123;
                                                    }
                                                    break;
                                                case 316246811:
                                                    if (!str3.equals("TB3-850F")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 124;
                                                    }
                                                    break;
                                                case 316246818:
                                                    if (!str3.equals("TB3-850M")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 125;
                                                    }
                                                    break;
                                                case 407160593:
                                                    if (!str3.equals("Pixi5-10_4G")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 106;
                                                    }
                                                    break;
                                                case 507412548:
                                                    if (!str3.equals("QM16XE_U")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 114;
                                                    }
                                                    break;
                                                case 793982701:
                                                    if (!str3.equals("GIONEE_WBL5708")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 57;
                                                    }
                                                    break;
                                                case 794038622:
                                                    if (!str3.equals("GIONEE_WBL7365")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 58;
                                                    }
                                                    break;
                                                case 794040393:
                                                    if (!str3.equals("GIONEE_WBL7519")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 59;
                                                    }
                                                    break;
                                                case 835649806:
                                                    if (!str3.equals("manning")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 81;
                                                    }
                                                    break;
                                                case 917340916:
                                                    if (!str3.equals("A7000plus")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 10;
                                                    }
                                                    break;
                                                case 958008161:
                                                    if (!str3.equals("j2xlteins")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 72;
                                                    }
                                                    break;
                                                case 1060579533:
                                                    if (!str3.equals("panell_d")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 96;
                                                    }
                                                    break;
                                                case 1150207623:
                                                    if (!str3.equals("LS-5017")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 78;
                                                    }
                                                    break;
                                                case 1176899427:
                                                    if (!str3.equals("itel_S41")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 71;
                                                    }
                                                    break;
                                                case 1280332038:
                                                    if (!str3.equals("hwALE-H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 62;
                                                    }
                                                    break;
                                                case 1306947716:
                                                    if (!str3.equals("EverStar_S")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 35;
                                                    }
                                                    break;
                                                case 1349174697:
                                                    if (!str3.equals("htc_e56ml_dtul")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 61;
                                                    }
                                                    break;
                                                case 1522194893:
                                                    if (!str3.equals("woods_f")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 133;
                                                    }
                                                    break;
                                                case 1691543273:
                                                    if (!str3.equals("CPH1609")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 23;
                                                    }
                                                    break;
                                                case 1691544261:
                                                    if (!str3.equals("CPH1715")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 24;
                                                    }
                                                    break;
                                                case 1709443163:
                                                    if (!str3.equals("iball8735_9806")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 68;
                                                    }
                                                    break;
                                                case 1865889110:
                                                    if (!str3.equals("santoni")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 117;
                                                    }
                                                    break;
                                                case 1906253259:
                                                    if (!str3.equals("PB2-670M")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 100;
                                                    }
                                                    break;
                                                case 1977196784:
                                                    if (!str3.equals("Infinix-X572")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 69;
                                                    }
                                                    break;
                                                case 2006372676:
                                                    if (!str3.equals("BRAVIA_ATV3_4K")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 19;
                                                    }
                                                    break;
                                                case 2019281702:
                                                    if (!str3.equals("DM-01K")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 29;
                                                    }
                                                    break;
                                                case 2029784656:
                                                    if (!str3.equals("HWBLN-H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = Utf8.REPLACEMENT_BYTE;
                                                    }
                                                    break;
                                                case 2030379515:
                                                    if (!str3.equals("HWCAM-H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 64;
                                                    }
                                                    break;
                                                case 2033393791:
                                                    if (!str3.equals("ASUS_X00AD_2")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 14;
                                                    }
                                                    break;
                                                case 2047190025:
                                                    if (!str3.equals("ELUGA_Note")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 32;
                                                    }
                                                    break;
                                                case 2047252157:
                                                    if (!str3.equals("ELUGA_Prim")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 33;
                                                    }
                                                    break;
                                                case 2048319463:
                                                    if (!str3.equals("HWVNS-H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 65;
                                                    }
                                                    break;
                                                case 2048855701:
                                                    if (!str3.equals("HWWAS-H")) {
                                                        b3 = -1;
                                                    } else {
                                                        b3 = 66;
                                                    }
                                                    break;
                                                default:
                                                    b3 = -1;
                                                    break;
                                            }
                                            switch (b3) {
                                                default:
                                                    if (str2.hashCode() == -594534941 && str2.equals("JSN-L21")) {
                                                    }
                                                case 0:
                                                case 1:
                                                case 2:
                                                case 3:
                                                case 4:
                                                case 5:
                                                case 6:
                                                case 7:
                                                case 8:
                                                case 9:
                                                case 10:
                                                case 11:
                                                case 12:
                                                case 13:
                                                case 14:
                                                case 15:
                                                case 16:
                                                case 17:
                                                case 18:
                                                case 19:
                                                case 20:
                                                case 21:
                                                case 22:
                                                case 23:
                                                case 24:
                                                case 25:
                                                case 26:
                                                case 27:
                                                case 28:
                                                case 29:
                                                case 30:
                                                case 31:
                                                case 32:
                                                case 33:
                                                case 34:
                                                case 35:
                                                case 36:
                                                case 37:
                                                case 38:
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
                                                case 51:
                                                case 52:
                                                case 53:
                                                case 54:
                                                case 55:
                                                case 56:
                                                case 57:
                                                case 58:
                                                case 59:
                                                case 60:
                                                case 61:
                                                case 62:
                                                case 63:
                                                case 64:
                                                case 65:
                                                case 66:
                                                case 67:
                                                case 68:
                                                case 69:
                                                case 70:
                                                case 71:
                                                case 72:
                                                case 73:
                                                case 74:
                                                case 75:
                                                case 76:
                                                case 77:
                                                case 78:
                                                case 79:
                                                case 80:
                                                case 81:
                                                case 82:
                                                case 83:
                                                case 84:
                                                case 85:
                                                case 86:
                                                case 87:
                                                case 88:
                                                case 89:
                                                case 90:
                                                case 91:
                                                case 92:
                                                case 93:
                                                case 94:
                                                case 95:
                                                case 96:
                                                case 97:
                                                case 98:
                                                case 99:
                                                case 100:
                                                case 101:
                                                case 102:
                                                case 103:
                                                case 104:
                                                case 105:
                                                case 106:
                                                case 107:
                                                case 108:
                                                case 109:
                                                case 110:
                                                case 111:
                                                case 112:
                                                case 113:
                                                case 114:
                                                case 115:
                                                case 116:
                                                case 117:
                                                case 118:
                                                case 119:
                                                case 120:
                                                case 121:
                                                case 122:
                                                case 123:
                                                case 124:
                                                case 125:
                                                case 126:
                                                case 127:
                                                case 128:
                                                case 129:
                                                case 130:
                                                case 131:
                                                case 132:
                                                case 133:
                                                case 134:
                                                case 135:
                                                case 136:
                                                case 137:
                                                case 138:
                                                case 139:
                                                    z = true;
                                                    break;
                                            }
                                        }
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                        z = true;
                                        break;
                                }
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            z = true;
                            break;
                    }
                } else if (i <= 27) {
                    str2 = Build.MODEL;
                    switch (str2.hashCode()) {
                        case -349662828:
                            if (!str2.equals("AFTJMST12")) {
                                b = -1;
                            } else {
                                b = 6;
                            }
                            break;
                        case -321033677:
                            if (!str2.equals("AFTKMST12")) {
                                b = -1;
                            } else {
                                b = 7;
                            }
                            break;
                        case 2006354:
                            if (!str2.equals("AFTA")) {
                                b = -1;
                            } else {
                                b = 0;
                            }
                            break;
                        case 2006367:
                            if (!str2.equals("AFTN")) {
                                b = -1;
                            } else {
                                b = 1;
                            }
                            break;
                        case 2006371:
                            if (!str2.equals("AFTR")) {
                                b = -1;
                            } else {
                                b = 2;
                            }
                            break;
                        case 1785421873:
                            if (!str2.equals("AFTEU011")) {
                                b = -1;
                            } else {
                                b = 3;
                            }
                            break;
                        case 1785421876:
                            if (!str2.equals("AFTEU014")) {
                                b = -1;
                            } else {
                                b = 4;
                            }
                            break;
                        case 1798172390:
                            if (!str2.equals("AFTSO001")) {
                                b = -1;
                            } else {
                                b = 8;
                            }
                            break;
                        case 2119412532:
                            if (!str2.equals("AFTEUFF014")) {
                                b = -1;
                            } else {
                                b = 5;
                            }
                            break;
                        default:
                            b = -1;
                            break;
                    }
                    switch (b) {
                        default:
                            if (i <= 26) {
                                str3 = Build.DEVICE;
                                switch (str3.hashCode()) {
                                    case -2144781245:
                                        if (!str3.equals("GIONEE_SWW1609")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 54;
                                        }
                                        break;
                                    case -2144781185:
                                        if (!str3.equals("GIONEE_SWW1627")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 55;
                                        }
                                        break;
                                    case -2144781160:
                                        if (!str3.equals("GIONEE_SWW1631")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 56;
                                        }
                                        break;
                                    case -2097309513:
                                        if (!str3.equals("K50a40")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 74;
                                        }
                                        break;
                                    case -2022874474:
                                        if (!str3.equals("CP8676_I02")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 22;
                                        }
                                        break;
                                    case -1978993182:
                                        if (!str3.equals("NX541J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 89;
                                        }
                                        break;
                                    case -1978990237:
                                        if (!str3.equals("NX573J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 90;
                                        }
                                        break;
                                    case -1936688988:
                                        if (!str3.equals("PGN528")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 101;
                                        }
                                        break;
                                    case -1936688066:
                                        if (!str3.equals("PGN610")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 102;
                                        }
                                        break;
                                    case -1936688065:
                                        if (!str3.equals("PGN611")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 103;
                                        }
                                        break;
                                    case -1931988508:
                                        if (!str3.equals("AquaPowerM")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 13;
                                        }
                                        break;
                                    case -1885099851:
                                        if (!str3.equals("RAIJIN")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 116;
                                        }
                                        break;
                                    case -1696512866:
                                        if (!str3.equals("XT1663")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 137;
                                        }
                                        break;
                                    case -1680025915:
                                        if (!str3.equals("ComioS1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 21;
                                        }
                                        break;
                                    case -1615810839:
                                        if (!str3.equals("Phantom6")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 104;
                                        }
                                        break;
                                    case -1600724499:
                                        if (!str3.equals("pacificrim")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 95;
                                        }
                                        break;
                                    case -1554255044:
                                        if (!str3.equals("vernee_M5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SocketData.CLAZZ_TYPE_SEND_PACKAGE;
                                        }
                                        break;
                                    case -1481772737:
                                        if (!str3.equals("panell_dl")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 97;
                                        }
                                        break;
                                    case -1481772730:
                                        if (!str3.equals("panell_ds")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 98;
                                        }
                                        break;
                                    case -1481772729:
                                        if (!str3.equals("panell_dt")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 99;
                                        }
                                        break;
                                    case -1320080169:
                                        if (!str3.equals("GiONEE_GBL7319")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 52;
                                        }
                                        break;
                                    case -1217592143:
                                        if (!str3.equals("BRAVIA_ATV2")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 18;
                                        }
                                        break;
                                    case -1180384755:
                                        if (!str3.equals("iris60")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 70;
                                        }
                                        break;
                                    case -1139198265:
                                        if (!str3.equals("Slate_Pro")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 118;
                                        }
                                        break;
                                    case -1052835013:
                                        if (!str3.equals("namath")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 87;
                                        }
                                        break;
                                    case -993250464:
                                        if (!str3.equals("A10-70F")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 5;
                                        }
                                        break;
                                    case -993250458:
                                        if (!str3.equals("A10-70L")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 6;
                                        }
                                        break;
                                    case -965403638:
                                        if (!str3.equals("s905x018")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 120;
                                        }
                                        break;
                                    case -958336948:
                                        if (!str3.equals("ELUGA_Ray_X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 34;
                                        }
                                        break;
                                    case -879245230:
                                        if (!str3.equals("tcl_eu")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 126;
                                        }
                                        break;
                                    case -842500323:
                                        if (!str3.equals("nicklaus_f")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 88;
                                        }
                                        break;
                                    case -821392978:
                                        if (!str3.equals("A7000-a")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 9;
                                        }
                                        break;
                                    case -797483286:
                                        if (!str3.equals("SVP-DTV15")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 119;
                                        }
                                        break;
                                    case -794946968:
                                        if (!str3.equals("watson")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SocketData.CLAZZ_TYPE_CONNECT_CHECK;
                                        }
                                        break;
                                    case -788334647:
                                        if (!str3.equals("whyred")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 132;
                                        }
                                        break;
                                    case -782144577:
                                        if (!str3.equals("OnePlus5T")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 91;
                                        }
                                        break;
                                    case -575125681:
                                        if (!str3.equals("GiONEE_CBL7513")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 51;
                                        }
                                        break;
                                    case -521118391:
                                        if (!str3.equals("GIONEE_GBL7360")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 53;
                                        }
                                        break;
                                    case -430914369:
                                        if (!str3.equals("Pixi4-7_3G")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 105;
                                        }
                                        break;
                                    case -290434366:
                                        if (!str3.equals("taido_row")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 121;
                                        }
                                        break;
                                    case -282781963:
                                        if (!str3.equals("BLACK-1X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 17;
                                        }
                                        break;
                                    case -277133239:
                                        if (!str3.equals("Z12_PRO")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SocketData.CLAZZ_TYPE_FILE_BLOCK;
                                        }
                                        break;
                                    case -173639913:
                                        if (!str3.equals("ELUGA_A3_Pro")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 31;
                                        }
                                        break;
                                    case -56598463:
                                        if (!str3.equals("woods_fn")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 134;
                                        }
                                        break;
                                    case 2126:
                                        if (!str3.equals("C1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 20;
                                        }
                                        break;
                                    case 2564:
                                        if (!str3.equals("Q5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 113;
                                        }
                                        break;
                                    case 2715:
                                        if (!str3.equals("V1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 127;
                                        }
                                        break;
                                    case 2719:
                                        if (!str3.equals("V5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SocketData.CLAZZ_TYPE_HEART_BEAT;
                                        }
                                        break;
                                    case 3091:
                                        if (!str3.equals("b5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 16;
                                        }
                                        break;
                                    case 3483:
                                        if (!str3.equals("mh")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 84;
                                        }
                                        break;
                                    case 73405:
                                        if (!str3.equals("JGZ")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 73;
                                        }
                                        break;
                                    case 75537:
                                        if (!str3.equals("M04")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 79;
                                        }
                                        break;
                                    case 75739:
                                        if (!str3.equals("M5c")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 80;
                                        }
                                        break;
                                    case 76779:
                                        if (!str3.equals("MX6")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 86;
                                        }
                                        break;
                                    case 78669:
                                        if (!str3.equals("P85")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 94;
                                        }
                                        break;
                                    case 79305:
                                        if (!str3.equals("PLE")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 107;
                                        }
                                        break;
                                    case 80618:
                                        if (!str3.equals("QX1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 115;
                                        }
                                        break;
                                    case 88274:
                                        if (!str3.equals("Z80")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SocketData.CLAZZ_TYPE_STRING;
                                        }
                                        break;
                                    case 98846:
                                        if (!str3.equals("cv1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 26;
                                        }
                                        break;
                                    case 98848:
                                        if (!str3.equals("cv3")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 27;
                                        }
                                        break;
                                    case 99329:
                                        if (!str3.equals("deb")) {
                                            b3 = -1;
                                        }
                                        break;
                                    case 101481:
                                        if (!str3.equals("flo")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 49;
                                        }
                                        break;
                                    case 1513190:
                                        if (!str3.equals("1601")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 0;
                                        }
                                        break;
                                    case 1514184:
                                        if (!str3.equals("1713")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 1;
                                        }
                                        break;
                                    case 1514185:
                                        if (!str3.equals("1714")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 2;
                                        }
                                        break;
                                    case 2133089:
                                        if (!str3.equals("F01H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 36;
                                        }
                                        break;
                                    case 2133091:
                                        if (!str3.equals("F01J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 37;
                                        }
                                        break;
                                    case 2133120:
                                        if (!str3.equals("F02H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 38;
                                        }
                                        break;
                                    case 2133151:
                                        if (!str3.equals("F03H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 39;
                                        }
                                        break;
                                    case 2133182:
                                        if (!str3.equals("F04H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 40;
                                        }
                                        break;
                                    case 2133184:
                                        if (!str3.equals("F04J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 41;
                                        }
                                        break;
                                    case 2436959:
                                        if (!str3.equals("P681")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 93;
                                        }
                                        break;
                                    case 2463773:
                                        if (!str3.equals("Q350")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 109;
                                        }
                                        break;
                                    case 2464648:
                                        if (!str3.equals("Q427")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 111;
                                        }
                                        break;
                                    case 2689555:
                                        if (!str3.equals("XE2X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 136;
                                        }
                                        break;
                                    case 3154429:
                                        if (!str3.equals("fugu")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 50;
                                        }
                                        break;
                                    case 3284551:
                                        if (!str3.equals("kate")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 75;
                                        }
                                        break;
                                    case 3351335:
                                        if (!str3.equals("mido")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 85;
                                        }
                                        break;
                                    case 3386211:
                                        if (!str3.equals("p212")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 92;
                                        }
                                        break;
                                    case 41325051:
                                        if (!str3.equals("MEIZU_M5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 83;
                                        }
                                        break;
                                    case 51349633:
                                        if (!str3.equals("601LV")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 3;
                                        }
                                        break;
                                    case 51350594:
                                        if (!str3.equals("602LV")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 4;
                                        }
                                        break;
                                    case 55178625:
                                        if (!str3.equals("Aura_Note_2")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 15;
                                        }
                                        break;
                                    case 61542055:
                                        if (!str3.equals("A1601")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 7;
                                        }
                                        break;
                                    case 65355429:
                                        if (!str3.equals("E5643")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 30;
                                        }
                                        break;
                                    case 66214468:
                                        if (!str3.equals("F3111")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 42;
                                        }
                                        break;
                                    case 66214470:
                                        if (!str3.equals("F3113")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 43;
                                        }
                                        break;
                                    case 66214473:
                                        if (!str3.equals("F3116")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 44;
                                        }
                                        break;
                                    case 66215429:
                                        if (!str3.equals("F3211")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 45;
                                        }
                                        break;
                                    case 66215431:
                                        if (!str3.equals("F3213")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 46;
                                        }
                                        break;
                                    case 66215433:
                                        if (!str3.equals("F3215")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 47;
                                        }
                                        break;
                                    case 66216390:
                                        if (!str3.equals("F3311")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 48;
                                        }
                                        break;
                                    case 76402249:
                                        if (!str3.equals("PRO7S")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 108;
                                        }
                                        break;
                                    case 76404105:
                                        if (!str3.equals("Q4260")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 110;
                                        }
                                        break;
                                    case 76404911:
                                        if (!str3.equals("Q4310")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 112;
                                        }
                                        break;
                                    case 80963634:
                                        if (!str3.equals("V23GB")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SocketData.CLAZZ_TYPE_END_SOCKET;
                                        }
                                        break;
                                    case 82882791:
                                        if (!str3.equals("X3_HK")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 135;
                                        }
                                        break;
                                    case 98715550:
                                        if (!str3.equals("i9031")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 67;
                                        }
                                        break;
                                    case 101370885:
                                        if (!str3.equals("l5460")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 76;
                                        }
                                        break;
                                    case 102844228:
                                        if (!str3.equals("le_x6")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 77;
                                        }
                                        break;
                                    case 165221241:
                                        if (!str3.equals("A2016a40")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 8;
                                        }
                                        break;
                                    case 182191441:
                                        if (!str3.equals("CPY83_I00")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 25;
                                        }
                                        break;
                                    case 245388979:
                                        if (!str3.equals("marino_f")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 82;
                                        }
                                        break;
                                    case 287431619:
                                        if (!str3.equals("griffin")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 60;
                                        }
                                        break;
                                    case 307593612:
                                        if (!str3.equals("A7010a48")) {
                                            b3 = -1;
                                        } else {
                                            b3 = ByteCode.T_LONG;
                                        }
                                        break;
                                    case 308517133:
                                        if (!str3.equals("A7020a48")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 12;
                                        }
                                        break;
                                    case 316215098:
                                        if (!str3.equals("TB3-730F")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 122;
                                        }
                                        break;
                                    case 316215116:
                                        if (!str3.equals("TB3-730X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 123;
                                        }
                                        break;
                                    case 316246811:
                                        if (!str3.equals("TB3-850F")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 124;
                                        }
                                        break;
                                    case 316246818:
                                        if (!str3.equals("TB3-850M")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 125;
                                        }
                                        break;
                                    case 407160593:
                                        if (!str3.equals("Pixi5-10_4G")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 106;
                                        }
                                        break;
                                    case 507412548:
                                        if (!str3.equals("QM16XE_U")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 114;
                                        }
                                        break;
                                    case 793982701:
                                        if (!str3.equals("GIONEE_WBL5708")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 57;
                                        }
                                        break;
                                    case 794038622:
                                        if (!str3.equals("GIONEE_WBL7365")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 58;
                                        }
                                        break;
                                    case 794040393:
                                        if (!str3.equals("GIONEE_WBL7519")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 59;
                                        }
                                        break;
                                    case 835649806:
                                        if (!str3.equals("manning")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 81;
                                        }
                                        break;
                                    case 917340916:
                                        if (!str3.equals("A7000plus")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 10;
                                        }
                                        break;
                                    case 958008161:
                                        if (!str3.equals("j2xlteins")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 72;
                                        }
                                        break;
                                    case 1060579533:
                                        if (!str3.equals("panell_d")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 96;
                                        }
                                        break;
                                    case 1150207623:
                                        if (!str3.equals("LS-5017")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 78;
                                        }
                                        break;
                                    case 1176899427:
                                        if (!str3.equals("itel_S41")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 71;
                                        }
                                        break;
                                    case 1280332038:
                                        if (!str3.equals("hwALE-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 62;
                                        }
                                        break;
                                    case 1306947716:
                                        if (!str3.equals("EverStar_S")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 35;
                                        }
                                        break;
                                    case 1349174697:
                                        if (!str3.equals("htc_e56ml_dtul")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 61;
                                        }
                                        break;
                                    case 1522194893:
                                        if (!str3.equals("woods_f")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 133;
                                        }
                                        break;
                                    case 1691543273:
                                        if (!str3.equals("CPH1609")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 23;
                                        }
                                        break;
                                    case 1691544261:
                                        if (!str3.equals("CPH1715")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 24;
                                        }
                                        break;
                                    case 1709443163:
                                        if (!str3.equals("iball8735_9806")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 68;
                                        }
                                        break;
                                    case 1865889110:
                                        if (!str3.equals("santoni")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 117;
                                        }
                                        break;
                                    case 1906253259:
                                        if (!str3.equals("PB2-670M")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 100;
                                        }
                                        break;
                                    case 1977196784:
                                        if (!str3.equals("Infinix-X572")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 69;
                                        }
                                        break;
                                    case 2006372676:
                                        if (!str3.equals("BRAVIA_ATV3_4K")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 19;
                                        }
                                        break;
                                    case 2019281702:
                                        if (!str3.equals("DM-01K")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 29;
                                        }
                                        break;
                                    case 2029784656:
                                        if (!str3.equals("HWBLN-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = Utf8.REPLACEMENT_BYTE;
                                        }
                                        break;
                                    case 2030379515:
                                        if (!str3.equals("HWCAM-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 64;
                                        }
                                        break;
                                    case 2033393791:
                                        if (!str3.equals("ASUS_X00AD_2")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 14;
                                        }
                                        break;
                                    case 2047190025:
                                        if (!str3.equals("ELUGA_Note")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 32;
                                        }
                                        break;
                                    case 2047252157:
                                        if (!str3.equals("ELUGA_Prim")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 33;
                                        }
                                        break;
                                    case 2048319463:
                                        if (!str3.equals("HWVNS-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 65;
                                        }
                                        break;
                                    case 2048855701:
                                        if (!str3.equals("HWWAS-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 66;
                                        }
                                        break;
                                    default:
                                        b3 = -1;
                                        break;
                                }
                                switch (b3) {
                                    default:
                                        if (str2.hashCode() == -594534941) {
                                            break;
                                        }
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 13:
                                    case 14:
                                    case 15:
                                    case 16:
                                    case 17:
                                    case 18:
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                    case 23:
                                    case 24:
                                    case 25:
                                    case 26:
                                    case 27:
                                    case 28:
                                    case 29:
                                    case 30:
                                    case 31:
                                    case 32:
                                    case 33:
                                    case 34:
                                    case 35:
                                    case 36:
                                    case 37:
                                    case 38:
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
                                    case 51:
                                    case 52:
                                    case 53:
                                    case 54:
                                    case 55:
                                    case 56:
                                    case 57:
                                    case 58:
                                    case 59:
                                    case 60:
                                    case 61:
                                    case 62:
                                    case 63:
                                    case 64:
                                    case 65:
                                    case 66:
                                    case 67:
                                    case 68:
                                    case 69:
                                    case 70:
                                    case 71:
                                    case 72:
                                    case 73:
                                    case 74:
                                    case 75:
                                    case 76:
                                    case 77:
                                    case 78:
                                    case 79:
                                    case 80:
                                    case 81:
                                    case 82:
                                    case 83:
                                    case 84:
                                    case 85:
                                    case 86:
                                    case 87:
                                    case 88:
                                    case 89:
                                    case 90:
                                    case 91:
                                    case 92:
                                    case 93:
                                    case 94:
                                    case 95:
                                    case 96:
                                    case 97:
                                    case 98:
                                    case 99:
                                    case 100:
                                    case 101:
                                    case 102:
                                    case 103:
                                    case 104:
                                    case 105:
                                    case 106:
                                    case 107:
                                    case 108:
                                    case 109:
                                    case 110:
                                    case 111:
                                    case 112:
                                    case 113:
                                    case 114:
                                    case 115:
                                    case 116:
                                    case 117:
                                    case 118:
                                    case 119:
                                    case 120:
                                    case 121:
                                    case 122:
                                    case 123:
                                    case 124:
                                    case 125:
                                    case 126:
                                    case 127:
                                    case 128:
                                    case 129:
                                    case 130:
                                    case 131:
                                    case 132:
                                    case 133:
                                    case 134:
                                    case 135:
                                    case 136:
                                    case 137:
                                    case 138:
                                    case 139:
                                        z = true;
                                        break;
                                }
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                            z = true;
                            break;
                    }
                } else {
                    str2 = Build.MODEL;
                    switch (str2.hashCode()) {
                        case -349662828:
                            if (!str2.equals("AFTJMST12")) {
                                b = -1;
                            } else {
                                b = 6;
                            }
                            break;
                        case -321033677:
                            if (!str2.equals("AFTKMST12")) {
                                b = -1;
                            } else {
                                b = 7;
                            }
                            break;
                        case 2006354:
                            if (!str2.equals("AFTA")) {
                                b = -1;
                            } else {
                                b = 0;
                            }
                            break;
                        case 2006367:
                            if (!str2.equals("AFTN")) {
                                b = -1;
                            } else {
                                b = 1;
                            }
                            break;
                        case 2006371:
                            if (!str2.equals("AFTR")) {
                                b = -1;
                            } else {
                                b = 2;
                            }
                            break;
                        case 1785421873:
                            if (!str2.equals("AFTEU011")) {
                                b = -1;
                            } else {
                                b = 3;
                            }
                            break;
                        case 1785421876:
                            if (!str2.equals("AFTEU014")) {
                                b = -1;
                            } else {
                                b = 4;
                            }
                            break;
                        case 1798172390:
                            if (!str2.equals("AFTSO001")) {
                                b = -1;
                            } else {
                                b = 8;
                            }
                            break;
                        case 2119412532:
                            if (!str2.equals("AFTEUFF014")) {
                                b = -1;
                            } else {
                                b = 5;
                            }
                            break;
                        default:
                            b = -1;
                            break;
                    }
                    switch (b) {
                        default:
                            if (i <= 26) {
                                str3 = Build.DEVICE;
                                switch (str3.hashCode()) {
                                    case -2144781245:
                                        if (!str3.equals("GIONEE_SWW1609")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 54;
                                        }
                                        break;
                                    case -2144781185:
                                        if (!str3.equals("GIONEE_SWW1627")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 55;
                                        }
                                        break;
                                    case -2144781160:
                                        if (!str3.equals("GIONEE_SWW1631")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 56;
                                        }
                                        break;
                                    case -2097309513:
                                        if (!str3.equals("K50a40")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 74;
                                        }
                                        break;
                                    case -2022874474:
                                        if (!str3.equals("CP8676_I02")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 22;
                                        }
                                        break;
                                    case -1978993182:
                                        if (!str3.equals("NX541J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 89;
                                        }
                                        break;
                                    case -1978990237:
                                        if (!str3.equals("NX573J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 90;
                                        }
                                        break;
                                    case -1936688988:
                                        if (!str3.equals("PGN528")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 101;
                                        }
                                        break;
                                    case -1936688066:
                                        if (!str3.equals("PGN610")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 102;
                                        }
                                        break;
                                    case -1936688065:
                                        if (!str3.equals("PGN611")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 103;
                                        }
                                        break;
                                    case -1931988508:
                                        if (!str3.equals("AquaPowerM")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 13;
                                        }
                                        break;
                                    case -1885099851:
                                        if (!str3.equals("RAIJIN")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 116;
                                        }
                                        break;
                                    case -1696512866:
                                        if (!str3.equals("XT1663")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 137;
                                        }
                                        break;
                                    case -1680025915:
                                        if (!str3.equals("ComioS1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 21;
                                        }
                                        break;
                                    case -1615810839:
                                        if (!str3.equals("Phantom6")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 104;
                                        }
                                        break;
                                    case -1600724499:
                                        if (!str3.equals("pacificrim")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 95;
                                        }
                                        break;
                                    case -1554255044:
                                        if (!str3.equals("vernee_M5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SocketData.CLAZZ_TYPE_SEND_PACKAGE;
                                        }
                                        break;
                                    case -1481772737:
                                        if (!str3.equals("panell_dl")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 97;
                                        }
                                        break;
                                    case -1481772730:
                                        if (!str3.equals("panell_ds")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 98;
                                        }
                                        break;
                                    case -1481772729:
                                        if (!str3.equals("panell_dt")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 99;
                                        }
                                        break;
                                    case -1320080169:
                                        if (!str3.equals("GiONEE_GBL7319")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 52;
                                        }
                                        break;
                                    case -1217592143:
                                        if (!str3.equals("BRAVIA_ATV2")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 18;
                                        }
                                        break;
                                    case -1180384755:
                                        if (!str3.equals("iris60")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 70;
                                        }
                                        break;
                                    case -1139198265:
                                        if (!str3.equals("Slate_Pro")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 118;
                                        }
                                        break;
                                    case -1052835013:
                                        if (!str3.equals("namath")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 87;
                                        }
                                        break;
                                    case -993250464:
                                        if (!str3.equals("A10-70F")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 5;
                                        }
                                        break;
                                    case -993250458:
                                        if (!str3.equals("A10-70L")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 6;
                                        }
                                        break;
                                    case -965403638:
                                        if (!str3.equals("s905x018")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 120;
                                        }
                                        break;
                                    case -958336948:
                                        if (!str3.equals("ELUGA_Ray_X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 34;
                                        }
                                        break;
                                    case -879245230:
                                        if (!str3.equals("tcl_eu")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 126;
                                        }
                                        break;
                                    case -842500323:
                                        if (!str3.equals("nicklaus_f")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 88;
                                        }
                                        break;
                                    case -821392978:
                                        if (!str3.equals("A7000-a")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 9;
                                        }
                                        break;
                                    case -797483286:
                                        if (!str3.equals("SVP-DTV15")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 119;
                                        }
                                        break;
                                    case -794946968:
                                        if (!str3.equals("watson")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SocketData.CLAZZ_TYPE_CONNECT_CHECK;
                                        }
                                        break;
                                    case -788334647:
                                        if (!str3.equals("whyred")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 132;
                                        }
                                        break;
                                    case -782144577:
                                        if (!str3.equals("OnePlus5T")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 91;
                                        }
                                        break;
                                    case -575125681:
                                        if (!str3.equals("GiONEE_CBL7513")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 51;
                                        }
                                        break;
                                    case -521118391:
                                        if (!str3.equals("GIONEE_GBL7360")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 53;
                                        }
                                        break;
                                    case -430914369:
                                        if (!str3.equals("Pixi4-7_3G")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 105;
                                        }
                                        break;
                                    case -290434366:
                                        if (!str3.equals("taido_row")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 121;
                                        }
                                        break;
                                    case -282781963:
                                        if (!str3.equals("BLACK-1X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 17;
                                        }
                                        break;
                                    case -277133239:
                                        if (!str3.equals("Z12_PRO")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SocketData.CLAZZ_TYPE_FILE_BLOCK;
                                        }
                                        break;
                                    case -173639913:
                                        if (!str3.equals("ELUGA_A3_Pro")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 31;
                                        }
                                        break;
                                    case -56598463:
                                        if (!str3.equals("woods_fn")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 134;
                                        }
                                        break;
                                    case 2126:
                                        if (!str3.equals("C1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 20;
                                        }
                                        break;
                                    case 2564:
                                        if (!str3.equals("Q5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 113;
                                        }
                                        break;
                                    case 2715:
                                        if (!str3.equals("V1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 127;
                                        }
                                        break;
                                    case 2719:
                                        if (!str3.equals("V5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SocketData.CLAZZ_TYPE_HEART_BEAT;
                                        }
                                        break;
                                    case 3091:
                                        if (!str3.equals("b5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 16;
                                        }
                                        break;
                                    case 3483:
                                        if (!str3.equals("mh")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 84;
                                        }
                                        break;
                                    case 73405:
                                        if (!str3.equals("JGZ")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 73;
                                        }
                                        break;
                                    case 75537:
                                        if (!str3.equals("M04")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 79;
                                        }
                                        break;
                                    case 75739:
                                        if (!str3.equals("M5c")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 80;
                                        }
                                        break;
                                    case 76779:
                                        if (!str3.equals("MX6")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 86;
                                        }
                                        break;
                                    case 78669:
                                        if (!str3.equals("P85")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 94;
                                        }
                                        break;
                                    case 79305:
                                        if (!str3.equals("PLE")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 107;
                                        }
                                        break;
                                    case 80618:
                                        if (!str3.equals("QX1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 115;
                                        }
                                        break;
                                    case 88274:
                                        if (!str3.equals("Z80")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SocketData.CLAZZ_TYPE_STRING;
                                        }
                                        break;
                                    case 98846:
                                        if (!str3.equals("cv1")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 26;
                                        }
                                        break;
                                    case 98848:
                                        if (!str3.equals("cv3")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 27;
                                        }
                                        break;
                                    case 99329:
                                        if (!str3.equals("deb")) {
                                            b3 = -1;
                                        }
                                        break;
                                    case 101481:
                                        if (!str3.equals("flo")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 49;
                                        }
                                        break;
                                    case 1513190:
                                        if (!str3.equals("1601")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 0;
                                        }
                                        break;
                                    case 1514184:
                                        if (!str3.equals("1713")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 1;
                                        }
                                        break;
                                    case 1514185:
                                        if (!str3.equals("1714")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 2;
                                        }
                                        break;
                                    case 2133089:
                                        if (!str3.equals("F01H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 36;
                                        }
                                        break;
                                    case 2133091:
                                        if (!str3.equals("F01J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 37;
                                        }
                                        break;
                                    case 2133120:
                                        if (!str3.equals("F02H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 38;
                                        }
                                        break;
                                    case 2133151:
                                        if (!str3.equals("F03H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 39;
                                        }
                                        break;
                                    case 2133182:
                                        if (!str3.equals("F04H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 40;
                                        }
                                        break;
                                    case 2133184:
                                        if (!str3.equals("F04J")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 41;
                                        }
                                        break;
                                    case 2436959:
                                        if (!str3.equals("P681")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 93;
                                        }
                                        break;
                                    case 2463773:
                                        if (!str3.equals("Q350")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 109;
                                        }
                                        break;
                                    case 2464648:
                                        if (!str3.equals("Q427")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 111;
                                        }
                                        break;
                                    case 2689555:
                                        if (!str3.equals("XE2X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 136;
                                        }
                                        break;
                                    case 3154429:
                                        if (!str3.equals("fugu")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 50;
                                        }
                                        break;
                                    case 3284551:
                                        if (!str3.equals("kate")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 75;
                                        }
                                        break;
                                    case 3351335:
                                        if (!str3.equals("mido")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 85;
                                        }
                                        break;
                                    case 3386211:
                                        if (!str3.equals("p212")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 92;
                                        }
                                        break;
                                    case 41325051:
                                        if (!str3.equals("MEIZU_M5")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 83;
                                        }
                                        break;
                                    case 51349633:
                                        if (!str3.equals("601LV")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 3;
                                        }
                                        break;
                                    case 51350594:
                                        if (!str3.equals("602LV")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 4;
                                        }
                                        break;
                                    case 55178625:
                                        if (!str3.equals("Aura_Note_2")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 15;
                                        }
                                        break;
                                    case 61542055:
                                        if (!str3.equals("A1601")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 7;
                                        }
                                        break;
                                    case 65355429:
                                        if (!str3.equals("E5643")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 30;
                                        }
                                        break;
                                    case 66214468:
                                        if (!str3.equals("F3111")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 42;
                                        }
                                        break;
                                    case 66214470:
                                        if (!str3.equals("F3113")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 43;
                                        }
                                        break;
                                    case 66214473:
                                        if (!str3.equals("F3116")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 44;
                                        }
                                        break;
                                    case 66215429:
                                        if (!str3.equals("F3211")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 45;
                                        }
                                        break;
                                    case 66215431:
                                        if (!str3.equals("F3213")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 46;
                                        }
                                        break;
                                    case 66215433:
                                        if (!str3.equals("F3215")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 47;
                                        }
                                        break;
                                    case 66216390:
                                        if (!str3.equals("F3311")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 48;
                                        }
                                        break;
                                    case 76402249:
                                        if (!str3.equals("PRO7S")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 108;
                                        }
                                        break;
                                    case 76404105:
                                        if (!str3.equals("Q4260")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 110;
                                        }
                                        break;
                                    case 76404911:
                                        if (!str3.equals("Q4310")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 112;
                                        }
                                        break;
                                    case 80963634:
                                        if (!str3.equals("V23GB")) {
                                            b3 = -1;
                                        } else {
                                            b3 = SocketData.CLAZZ_TYPE_END_SOCKET;
                                        }
                                        break;
                                    case 82882791:
                                        if (!str3.equals("X3_HK")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 135;
                                        }
                                        break;
                                    case 98715550:
                                        if (!str3.equals("i9031")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 67;
                                        }
                                        break;
                                    case 101370885:
                                        if (!str3.equals("l5460")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 76;
                                        }
                                        break;
                                    case 102844228:
                                        if (!str3.equals("le_x6")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 77;
                                        }
                                        break;
                                    case 165221241:
                                        if (!str3.equals("A2016a40")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 8;
                                        }
                                        break;
                                    case 182191441:
                                        if (!str3.equals("CPY83_I00")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 25;
                                        }
                                        break;
                                    case 245388979:
                                        if (!str3.equals("marino_f")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 82;
                                        }
                                        break;
                                    case 287431619:
                                        if (!str3.equals("griffin")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 60;
                                        }
                                        break;
                                    case 307593612:
                                        if (!str3.equals("A7010a48")) {
                                            b3 = -1;
                                        } else {
                                            b3 = ByteCode.T_LONG;
                                        }
                                        break;
                                    case 308517133:
                                        if (!str3.equals("A7020a48")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 12;
                                        }
                                        break;
                                    case 316215098:
                                        if (!str3.equals("TB3-730F")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 122;
                                        }
                                        break;
                                    case 316215116:
                                        if (!str3.equals("TB3-730X")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 123;
                                        }
                                        break;
                                    case 316246811:
                                        if (!str3.equals("TB3-850F")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 124;
                                        }
                                        break;
                                    case 316246818:
                                        if (!str3.equals("TB3-850M")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 125;
                                        }
                                        break;
                                    case 407160593:
                                        if (!str3.equals("Pixi5-10_4G")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 106;
                                        }
                                        break;
                                    case 507412548:
                                        if (!str3.equals("QM16XE_U")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 114;
                                        }
                                        break;
                                    case 793982701:
                                        if (!str3.equals("GIONEE_WBL5708")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 57;
                                        }
                                        break;
                                    case 794038622:
                                        if (!str3.equals("GIONEE_WBL7365")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 58;
                                        }
                                        break;
                                    case 794040393:
                                        if (!str3.equals("GIONEE_WBL7519")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 59;
                                        }
                                        break;
                                    case 835649806:
                                        if (!str3.equals("manning")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 81;
                                        }
                                        break;
                                    case 917340916:
                                        if (!str3.equals("A7000plus")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 10;
                                        }
                                        break;
                                    case 958008161:
                                        if (!str3.equals("j2xlteins")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 72;
                                        }
                                        break;
                                    case 1060579533:
                                        if (!str3.equals("panell_d")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 96;
                                        }
                                        break;
                                    case 1150207623:
                                        if (!str3.equals("LS-5017")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 78;
                                        }
                                        break;
                                    case 1176899427:
                                        if (!str3.equals("itel_S41")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 71;
                                        }
                                        break;
                                    case 1280332038:
                                        if (!str3.equals("hwALE-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 62;
                                        }
                                        break;
                                    case 1306947716:
                                        if (!str3.equals("EverStar_S")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 35;
                                        }
                                        break;
                                    case 1349174697:
                                        if (!str3.equals("htc_e56ml_dtul")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 61;
                                        }
                                        break;
                                    case 1522194893:
                                        if (!str3.equals("woods_f")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 133;
                                        }
                                        break;
                                    case 1691543273:
                                        if (!str3.equals("CPH1609")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 23;
                                        }
                                        break;
                                    case 1691544261:
                                        if (!str3.equals("CPH1715")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 24;
                                        }
                                        break;
                                    case 1709443163:
                                        if (!str3.equals("iball8735_9806")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 68;
                                        }
                                        break;
                                    case 1865889110:
                                        if (!str3.equals("santoni")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 117;
                                        }
                                        break;
                                    case 1906253259:
                                        if (!str3.equals("PB2-670M")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 100;
                                        }
                                        break;
                                    case 1977196784:
                                        if (!str3.equals("Infinix-X572")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 69;
                                        }
                                        break;
                                    case 2006372676:
                                        if (!str3.equals("BRAVIA_ATV3_4K")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 19;
                                        }
                                        break;
                                    case 2019281702:
                                        if (!str3.equals("DM-01K")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 29;
                                        }
                                        break;
                                    case 2029784656:
                                        if (!str3.equals("HWBLN-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = Utf8.REPLACEMENT_BYTE;
                                        }
                                        break;
                                    case 2030379515:
                                        if (!str3.equals("HWCAM-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 64;
                                        }
                                        break;
                                    case 2033393791:
                                        if (!str3.equals("ASUS_X00AD_2")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 14;
                                        }
                                        break;
                                    case 2047190025:
                                        if (!str3.equals("ELUGA_Note")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 32;
                                        }
                                        break;
                                    case 2047252157:
                                        if (!str3.equals("ELUGA_Prim")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 33;
                                        }
                                        break;
                                    case 2048319463:
                                        if (!str3.equals("HWVNS-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 65;
                                        }
                                        break;
                                    case 2048855701:
                                        if (!str3.equals("HWWAS-H")) {
                                            b3 = -1;
                                        } else {
                                            b3 = 66;
                                        }
                                        break;
                                    default:
                                        b3 = -1;
                                        break;
                                }
                                switch (b3) {
                                    default:
                                        if (str2.hashCode() == -594534941) {
                                            break;
                                        }
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 13:
                                    case 14:
                                    case 15:
                                    case 16:
                                    case 17:
                                    case 18:
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                    case 23:
                                    case 24:
                                    case 25:
                                    case 26:
                                    case 27:
                                    case 28:
                                    case 29:
                                    case 30:
                                    case 31:
                                    case 32:
                                    case 33:
                                    case 34:
                                    case 35:
                                    case 36:
                                    case 37:
                                    case 38:
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
                                    case 51:
                                    case 52:
                                    case 53:
                                    case 54:
                                    case 55:
                                    case 56:
                                    case 57:
                                    case 58:
                                    case 59:
                                    case 60:
                                    case 61:
                                    case 62:
                                    case 63:
                                    case 64:
                                    case 65:
                                    case 66:
                                    case 67:
                                    case 68:
                                    case 69:
                                    case 70:
                                    case 71:
                                    case 72:
                                    case 73:
                                    case 74:
                                    case 75:
                                    case 76:
                                    case 77:
                                    case 78:
                                    case 79:
                                    case 80:
                                    case 81:
                                    case 82:
                                    case 83:
                                    case 84:
                                    case 85:
                                    case 86:
                                    case 87:
                                    case 88:
                                    case 89:
                                    case 90:
                                    case 91:
                                    case 92:
                                    case 93:
                                    case 94:
                                    case 95:
                                    case 96:
                                    case 97:
                                    case 98:
                                    case 99:
                                    case 100:
                                    case 101:
                                    case 102:
                                    case 103:
                                    case 104:
                                    case 105:
                                    case 106:
                                    case 107:
                                    case 108:
                                    case 109:
                                    case 110:
                                    case 111:
                                    case 112:
                                    case 113:
                                    case 114:
                                    case 115:
                                    case 116:
                                    case 117:
                                    case 118:
                                    case 119:
                                    case 120:
                                    case 121:
                                    case 122:
                                    case 123:
                                    case 124:
                                    case 125:
                                    case 126:
                                    case 127:
                                    case 128:
                                    case 129:
                                    case 130:
                                    case 131:
                                    case 132:
                                    case 133:
                                    case 134:
                                    case 135:
                                    case 136:
                                    case 137:
                                    case 138:
                                    case 139:
                                        z = true;
                                        break;
                                }
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                            z = true;
                            break;
                    }
                }
                o1 = z;
                n1 = true;
            }
        }
        return o1;
    }

    public static final boolean O0(tkj tkjVar) {
        return kfh.a >= 35 && tkjVar.h;
    }

    public static List Q0(Context context, hlj hljVar, erj erjVar, boolean z, boolean z2) {
        String str = erjVar.o;
        if (str == null) {
            return zzfww.zzn();
        }
        if (kfh.a >= 26 && "video/dolby-vision".equals(str) && !h6e.a(context)) {
            List listC = qlj.c(hljVar, erjVar, z, z2);
            if (!listC.isEmpty()) {
                return listC;
            }
        }
        return qlj.e(hljVar, erjVar, z, z2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    public static int T0(tkj tkjVar, erj erjVar) {
        int i = erjVar.v;
        int i2 = erjVar.w;
        if (i != -1 && i2 != -1) {
            String str = erjVar.o;
            str.getClass();
            if ("video/dolby-vision".equals(str)) {
                HashMap map = qlj.a;
                Pair pairA = vcg.a(erjVar);
                if (pairA == null) {
                    str = "video/hevc";
                } else {
                    int iIntValue = ((Integer) pairA.first).intValue();
                    if (iIntValue == 512 || iIntValue == 1 || iIntValue == 2) {
                        str = "video/avc";
                    } else if (iIntValue == 1024) {
                        str = MimeTypes.VIDEO_AV1;
                    } else {
                        str = "video/hevc";
                    }
                }
            }
            int i3 = 4;
            switch (str) {
                case "video/3gpp":
                case "video/mp4v-es":
                case "video/av01":
                case "video/x-vnd.on2.vp8":
                    return ((i * i2) * 3) / i3;
                case "video/hevc":
                    return Math.max(2097152, ((i * i2) * 3) / 4);
                case "video/avc":
                    String str2 = Build.MODEL;
                    if (!"BRAVIA 4K 2015".equals(str2) && (!"Amazon".equals(Build.MANUFACTURER) || (!"KFSOWI".equals(str2) && (!"AFTS".equals(str2) || !tkjVar.f)))) {
                        int i4 = kfh.a;
                        return ((((i + 15) / 16) * ((i2 + 15) / 16)) * ViewUtils.EDGE_TO_EDGE_FLAGS) / 4;
                    }
                    break;
                case "video/x-vnd.on2.vp9":
                    i3 = 8;
                    return ((i * i2) * 3) / i3;
            }
        }
        return -1;
    }

    public static int U0(tkj tkjVar, erj erjVar) {
        int i = erjVar.p;
        if (i == -1) {
            return T0(tkjVar, erjVar);
        }
        List list = erjVar.r;
        int size = list.size();
        int length = 0;
        for (int i2 = 0; i2 < size; i2++) {
            length += ((byte[]) list.get(i2)).length;
        }
        return i + length;
    }

    @Override
    public final void A0() {
        m7e m7eVar = this.M0;
        if (m7eVar != null) {
            m7eVar.zzm();
            if (this.h1 == C.TIME_UNSET) {
                this.h1 = H0();
            }
        } else {
            this.F0.f(2);
        }
        this.j1 = true;
    }

    @Override
    public final void B0() {
        m7e m7eVar = this.M0;
        if (m7eVar != null) {
            m7eVar.zzm();
        }
    }

    @Override
    public final boolean C0(long j, long j2, rkj rkjVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, erj erjVar) {
        rkjVar.getClass();
        long jG0 = j3 - G0();
        int i4 = 0;
        while (true) {
            PriorityQueue priorityQueue = this.I0;
            Long l = (Long) priorityQueue.peek();
            if (l == null || l.longValue() >= j3) {
                break;
            }
            priorityQueue.poll();
            i4++;
        }
        X0(i4, 0);
        m7e m7eVar = this.M0;
        if (m7eVar != null) {
            if (z && !z2) {
                W0(rkjVar, i, jG0);
                return true;
            }
            n7g.f(false);
            if (t6e.t(((o6e) m7eVar).d)) {
                throw null;
            }
            return false;
        }
        e7e e7eVar = this.F0;
        long jH0 = H0();
        v6e v6eVar = this.G0;
        int iA = e7eVar.a(j3, j, j2, jH0, z, z2, v6eVar);
        if (iA == 0) {
            V0(rkjVar, i, jG0, D().zzc());
            L0(v6eVar.c());
            return true;
        }
        if (iA == 1) {
            long jD = v6eVar.d();
            long jC = v6eVar.c();
            if (jD == this.b1) {
                W0(rkjVar, i, jG0);
            } else {
                V0(rkjVar, i, jG0, jD);
            }
            L0(jC);
            this.b1 = jD;
            return true;
        }
        if (iA != 2) {
            if (iA != 3) {
                return false;
            }
            W0(rkjVar, i, jG0);
            L0(v6eVar.c());
            return true;
        }
        Trace.beginSection("dropVideoBuffer");
        rkjVar.h(i, false);
        Trace.endSection();
        X0(0, 1);
        L0(v6eVar.c());
        return true;
    }

    @Override
    public final int F0(xzi xziVar) {
        int i = kfh.a;
        return 0;
    }

    @Override
    public final void H() {
        this.d1 = null;
        this.i1 = C.TIME_UNSET;
        this.S0 = false;
        try {
            super.H();
        } finally {
            k7e k7eVar = this.D0;
            k7eVar.m(this.t0);
            k7eVar.t(zhf.d);
        }
    }

    @Override
    public final void I(boolean z, boolean z2) {
        super.I(z, z2);
        F();
        this.D0.o(this.t0);
        if (!this.N0) {
            if (this.O0 != null && this.M0 == null) {
                n6e n6eVar = new n6e(this.B0, this.F0);
                n6eVar.e(D());
                t6e t6eVarF = n6eVar.f();
                t6eVarF.q(1);
                this.M0 = t6eVarF.e(0);
            }
            this.N0 = true;
        }
        int i = !z2 ? 1 : 0;
        m7e m7eVar = this.M0;
        if (m7eVar == null) {
            e7e e7eVar = this.F0;
            e7eVar.i(D());
            e7eVar.f(i);
            return;
        }
        u6e u6eVar = this.g1;
        if (u6eVar != null) {
            ((o6e) m7eVar).d.g.f(u6eVar);
        }
        if (this.P0 != null && !this.R0.equals(s5h.c)) {
            m7e m7eVar2 = this.M0;
            ((o6e) m7eVar2).d.p(this.P0, this.R0);
        }
        this.M0.zzi(this.U0);
        ((o6e) this.M0).d.g.b(E0());
        List list = this.O0;
        if (list != null) {
            this.M0.d(list);
        }
        ((o6e) this.M0).d.l = i;
        if (J0() != null) {
            t6e t6eVar = ((o6e) this.M0).d;
        }
        N();
    }

    @Override
    public final void J(long j, boolean z) {
        m7e m7eVar = this.M0;
        if (m7eVar != null && !z) {
            m7eVar.zzc(true);
        }
        super.J(j, z);
        if (this.M0 == null) {
            this.F0.g();
        }
        if (z) {
            m7e m7eVar2 = this.M0;
            if (m7eVar2 != null) {
                m7eVar2.a(false);
            } else {
                this.F0.c(false);
            }
        }
        this.X0 = 0;
    }

    @Override
    public final float K(float f, erj erjVar, erj[] erjVarArr) {
        float fMax = -1.0f;
        for (erj erjVar2 : erjVarArr) {
            float f2 = erjVar2.x;
            if (f2 != -1.0f) {
                fMax = Math.max(fMax, f2);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f;
    }

    @Override
    public final zzsy L(Throwable th, tkj tkjVar) {
        return new zzaah(th, tkjVar, this.P0);
    }

    public final void L0(long j) {
        d1j d1jVar = this.t0;
        d1jVar.k += j;
        d1jVar.l++;
        this.Z0 += j;
        this.a1++;
    }

    public final boolean M0(tkj tkjVar) {
        int i = kfh.a;
        if (N0(tkjVar.a)) {
            return false;
        }
        return !tkjVar.f || zzaao.zzb(this.B0);
    }

    @Override
    public final void P(long j) {
        super.P(j);
        this.Y0--;
    }

    public final Surface P0(tkj tkjVar) {
        if (this.M0 != null) {
            n7g.f(false);
            throw null;
        }
        Surface surface = this.P0;
        if (surface != null) {
            return surface;
        }
        if (O0(tkjVar)) {
            return null;
        }
        n7g.f(M0(tkjVar));
        zzaao zzaaoVar = this.Q0;
        if (zzaaoVar != null) {
            if (zzaaoVar.zza != tkjVar.f) {
                S0();
            }
        }
        if (this.Q0 == null) {
            this.Q0 = zzaao.zza(this.B0, tkjVar.f);
        }
        return this.Q0;
    }

    @Override
    public final void Q(xzi xziVar) {
        this.l1 = 0;
        this.Y0++;
        int i = kfh.a;
    }

    public final void R0() {
        zhf zhfVar = this.d1;
        if (zhfVar != null) {
            this.D0.t(zhfVar);
        }
    }

    @Override
    public final void S() {
        super.S();
        this.I0.clear();
        this.k1 = false;
        this.Y0 = 0;
        this.l1 = 0;
    }

    public final void S0() {
        zzaao zzaaoVar = this.Q0;
        if (zzaaoVar != null) {
            zzaaoVar.release();
            this.Q0 = null;
        }
    }

    public final void V0(rkj rkjVar, int i, long j, long j2) {
        Surface surface;
        Trace.beginSection("releaseOutputBuffer");
        rkjVar.f(i, j2);
        Trace.endSection();
        this.t0.e++;
        this.X0 = 0;
        if (this.M0 == null) {
            zhf zhfVar = this.c1;
            if (!zhfVar.equals(zhf.d) && !zhfVar.equals(this.d1)) {
                this.d1 = zhfVar;
                this.D0.t(zhfVar);
            }
            if (!this.F0.n() || (surface = this.P0) == null) {
                return;
            }
            this.D0.q(surface);
            this.S0 = true;
        }
    }

    public final void W0(rkj rkjVar, int i, long j) {
        Trace.beginSection("skipVideoBuffer");
        rkjVar.h(i, false);
        Trace.endSection();
        this.t0.f++;
    }

    public final void X0(int i, int i2) {
        d1j d1jVar = this.t0;
        d1jVar.h += i;
        int i3 = i + i2;
        d1jVar.g += i3;
        this.W0 += i3;
        int i4 = this.X0 + i3;
        this.X0 = i4;
        d1jVar.i = Math.max(i4, d1jVar.i);
    }

    @Override
    public final boolean Y(erj erjVar) throws zzii {
        m7e m7eVar = this.M0;
        if (m7eVar == null) {
            return true;
        }
        try {
            return t6e.s(((o6e) m7eVar).d, erjVar, 0);
        } catch (zzabu e) {
            throw z(e, erjVar, false, 7000);
        }
    }

    public final void Y0(Object obj) throws zzii {
        Surface surface = obj instanceof Surface ? (Surface) obj : null;
        if (this.P0 == surface) {
            if (surface != null) {
                R0();
                Surface surface2 = this.P0;
                if (surface2 == null || !this.S0) {
                    return;
                }
                this.D0.q(surface2);
                return;
            }
            return;
        }
        this.P0 = surface;
        if (this.M0 == null) {
            this.F0.k(surface);
        }
        this.S0 = false;
        int iL = l();
        rkj rkjVarK0 = K0();
        if (rkjVarK0 != null && this.M0 == null) {
            tkj tkjVarM = M();
            tkjVarM.getClass();
            boolean zZ0 = Z0(tkjVarM);
            int i = kfh.a;
            if (!zZ0 || this.K0) {
                R();
                O();
            } else {
                Surface surfaceP0 = P0(tkjVarM);
                if (surfaceP0 != null) {
                    rkjVarK0.b(surfaceP0);
                } else {
                    if (kfh.a < 35) {
                        throw new IllegalStateException();
                    }
                    rkjVarK0.zzi();
                }
            }
        }
        if (surface != null) {
            R0();
        } else {
            this.d1 = null;
            m7e m7eVar = this.M0;
            if (m7eVar != null) {
                ((o6e) m7eVar).d.n();
            }
        }
        if (iL == 2) {
            m7e m7eVar2 = this.M0;
            if (m7eVar2 != null) {
                m7eVar2.a(true);
            } else {
                this.F0.c(true);
            }
        }
    }

    @Override
    public final boolean Z(xzi xziVar) {
        if (!zzQ() && !xziVar.h() && this.i1 != C.TIME_UNSET) {
            if (this.i1 - (xziVar.f - G0()) > SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US && !xziVar.l()) {
                boolean z = xziVar.f < B();
                if ((z || this.k1) && !xziVar.e() && xziVar.i()) {
                    xziVar.b();
                    if (z) {
                        this.t0.d++;
                    } else if (this.k1) {
                        this.I0.add(Long.valueOf(xziVar.f));
                        this.l1++;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean Z0(tkj tkjVar) {
        if (this.M0 != null) {
            return true;
        }
        Surface surface = this.P0;
        return (surface != null && surface.isValid()) || O0(tkjVar) || M0(tkjVar);
    }

    @Override
    public final boolean a(long j, long j2, long j3, boolean z, boolean z2) throws zzii {
        int iA;
        long j4 = this.H0;
        if (j4 != C.TIME_UNSET) {
            this.k1 = j < j4;
        }
        if (j >= -500000 || z || (iA = A(j2)) == 0) {
            return false;
        }
        if (z2) {
            d1j d1jVar = this.t0;
            int i = d1jVar.d + iA;
            d1jVar.d = i;
            d1jVar.f += this.Y0;
            d1jVar.d = i + this.I0.size();
        } else {
            this.t0.j++;
            X0(iA + this.I0.size(), this.Y0);
        }
        U();
        m7e m7eVar = this.M0;
        if (m7eVar != null) {
            m7eVar.zzc(false);
        }
        return true;
    }

    @Override
    public final boolean a0(tkj tkjVar) {
        return Z0(tkjVar);
    }

    @Override
    public final void d(float f, float f2) throws zzii {
        super.d(f, f2);
        m7e m7eVar = this.M0;
        if (m7eVar != null) {
            ((o6e) m7eVar).d.g.b(f);
        } else {
            this.F0.l(f);
        }
    }

    @Override
    public final void e(int i, Object obj) throws zzii {
        if (i == 1) {
            Y0(obj);
            return;
        }
        if (i == 7) {
            obj.getClass();
            u6e u6eVar = (u6e) obj;
            this.g1 = u6eVar;
            m7e m7eVar = this.M0;
            if (m7eVar != null) {
                ((o6e) m7eVar).d.g.f(u6eVar);
                return;
            }
            return;
        }
        if (i == 10) {
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            if (this.f1 != iIntValue) {
                this.f1 = iIntValue;
                return;
            }
            return;
        }
        if (i == 4) {
            obj.getClass();
            int iIntValue2 = ((Integer) obj).intValue();
            this.T0 = iIntValue2;
            rkj rkjVarK0 = K0();
            if (rkjVarK0 != null) {
                rkjVarK0.g(iIntValue2);
                return;
            }
            return;
        }
        if (i == 5) {
            obj.getClass();
            int iIntValue3 = ((Integer) obj).intValue();
            this.U0 = iIntValue3;
            m7e m7eVar2 = this.M0;
            if (m7eVar2 != null) {
                m7eVar2.zzi(iIntValue3);
                return;
            } else {
                this.F0.h(iIntValue3);
                return;
            }
        }
        if (i == 13) {
            obj.getClass();
            List list = (List) obj;
            if (list.equals(pef.a)) {
                return;
            }
            this.O0 = list;
            m7e m7eVar3 = this.M0;
            if (m7eVar3 != null) {
                m7eVar3.d(list);
                return;
            }
            return;
        }
        if (i == 14) {
            obj.getClass();
            s5h s5hVar = (s5h) obj;
            if (s5hVar.b() == 0 || s5hVar.a() == 0) {
                return;
            }
            this.R0 = s5hVar;
            m7e m7eVar4 = this.M0;
            if (m7eVar4 != null) {
                Surface surface = this.P0;
                n7g.b(surface);
                ((o6e) m7eVar4).d.p(surface, s5hVar);
                return;
            }
            return;
        }
        if (i != 16) {
            if (i != 17) {
                super.e(i, obj);
                return;
            }
            Surface surface2 = this.P0;
            Y0(null);
            obj.getClass();
            ((k6e) obj).e(1, surface2);
            return;
        }
        obj.getClass();
        this.e1 = ((Integer) obj).intValue();
        rkj rkjVarK1 = K0();
        if (rkjVarK1 == null || kfh.a < 35) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("importance", Math.max(0, -this.e1));
        rkjVarK1.zzq(bundle);
    }

    @Override
    public final boolean f() {
        return super.f() && this.M0 == null;
    }

    @Override
    public final int l0(hlj hljVar, erj erjVar) {
        boolean z;
        String str = erjVar.o;
        if (!bue.j(str)) {
            return 128;
        }
        Context context = this.B0;
        int i = 0;
        boolean z2 = erjVar.s != null;
        List listQ0 = Q0(context, hljVar, erjVar, z2, false);
        if (z2 && listQ0.isEmpty()) {
            listQ0 = Q0(context, hljVar, erjVar, false, false);
        }
        if (listQ0.isEmpty()) {
            return 129;
        }
        if (!flj.b0(erjVar)) {
            return 130;
        }
        tkj tkjVar = (tkj) listQ0.get(0);
        boolean zE = tkjVar.e(erjVar);
        if (!zE) {
            int i2 = 1;
            while (true) {
                if (i2 >= listQ0.size()) {
                    z = true;
                    break;
                }
                tkj tkjVar2 = (tkj) listQ0.get(i2);
                if (tkjVar2.e(erjVar)) {
                    zE = true;
                    z = false;
                    tkjVar = tkjVar2;
                    break;
                }
                i2++;
            }
        } else {
            z = true;
            break;
        }
        int i3 = true != zE ? 3 : 4;
        int i4 = true != tkjVar.f(erjVar) ? 8 : 16;
        int i5 = true != tkjVar.g ? 0 : 64;
        int i6 = true != z ? 0 : 128;
        if (kfh.a >= 26 && "video/dolby-vision".equals(str) && !h6e.a(context)) {
            i6 = 256;
        }
        if (zE) {
            List listQ1 = Q0(context, hljVar, erjVar, z2, true);
            if (!listQ1.isEmpty()) {
                tkj tkjVar3 = (tkj) qlj.f(listQ1, erjVar).get(0);
                if (tkjVar3.e(erjVar) && tkjVar3.f(erjVar)) {
                    i = 32;
                }
            }
        }
        return i6 | i3 | i4 | i | i5;
    }

    @Override
    public final void m(long j, long j2) throws zzii {
        m7e m7eVar = this.M0;
        if (m7eVar != null) {
            try {
                ((o6e) m7eVar).d.g.c(j, j2);
            } catch (zzabu e) {
                throw z(e, e.zza, false, 7001);
            }
        }
        super.m(j, j2);
    }

    @Override
    public final g1j m0(tkj tkjVar, erj erjVar, erj erjVar2) {
        int i;
        int i2;
        g1j g1jVarB = tkjVar.b(erjVar, erjVar2);
        int i3 = g1jVarB.e;
        j6e j6eVar = this.J0;
        j6eVar.getClass();
        if (erjVar2.v > j6eVar.a || erjVar2.w > j6eVar.b) {
            i3 |= 256;
        }
        if (U0(tkjVar, erjVar2) > j6eVar.c) {
            i3 |= 64;
        }
        String str = tkjVar.a;
        if (i3 != 0) {
            i2 = 0;
            i = i3;
        } else {
            i = 0;
            i2 = g1jVarB.d;
        }
        return new g1j(str, erjVar, erjVar2, i2, i);
    }

    @Override
    public final g1j n0(p7j p7jVar) {
        g1j g1jVarN0 = super.n0(p7jVar);
        erj erjVar = p7jVar.a;
        erjVar.getClass();
        this.D0.p(erjVar, g1jVarN0);
        return g1jVarN0;
    }

    @Override
    public final void p() {
        m7e m7eVar = this.M0;
        if (m7eVar == null || !this.C0) {
            return;
        }
        ((o6e) m7eVar).d.o();
    }

    @Override
    public final okj q0(tkj tkjVar, erj erjVar, MediaCrypto mediaCrypto, float f) {
        int i;
        int i2;
        j6e j6eVar;
        Point pointA;
        int i3;
        erj[] erjVarArr;
        byte b;
        boolean z;
        int iT0;
        erj[] erjVarArrW = w();
        int length = erjVarArrW.length;
        int iU0 = U0(tkjVar, erjVar);
        int i4 = erjVar.w;
        int i5 = erjVar.v;
        if (length == 1) {
            if (iU0 != -1 && (iT0 = T0(tkjVar, erjVar)) != -1) {
                iU0 = Math.min((int) (iU0 * 1.5f), iT0);
            }
            j6eVar = new j6e(i5, i4, iU0);
            i = i4;
            i2 = i5;
        } else {
            int iMax = i4;
            int iMax2 = i5;
            int i6 = 0;
            boolean z2 = false;
            while (i6 < length) {
                erj erjVarK = erjVarArrW[i6];
                h6j h6jVar = erjVar.C;
                if (h6jVar != null && erjVarK.C == null) {
                    gpj gpjVarB = erjVarK.b();
                    gpjVarB.d(h6jVar);
                    erjVarK = gpjVarB.K();
                }
                if (tkjVar.b(erjVar, erjVarK).d != 0) {
                    int i7 = erjVarK.v;
                    b = -1;
                    if (i7 != -1) {
                        erjVarArr = erjVarArrW;
                        if (erjVarK.w != -1) {
                            z = false;
                        }
                        z2 |= z;
                        iMax2 = Math.max(iMax2, i7);
                        iMax = Math.max(iMax, erjVarK.w);
                        iU0 = Math.max(iU0, U0(tkjVar, erjVarK));
                    } else {
                        erjVarArr = erjVarArrW;
                    }
                    z = true;
                    z2 |= z;
                    iMax2 = Math.max(iMax2, i7);
                    iMax = Math.max(iMax, erjVarK.w);
                    iU0 = Math.max(iU0, U0(tkjVar, erjVarK));
                } else {
                    erjVarArr = erjVarArrW;
                    b = -1;
                }
                i6++;
                erjVarArrW = erjVarArr;
            }
            if (z2) {
                zrg.f("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax2 + "x" + iMax);
                boolean z3 = i4 > i5;
                int i8 = z3 ? i4 : i5;
                int i9 = true != z3 ? i4 : i5;
                int[] iArr = m1;
                int i10 = 0;
                while (true) {
                    if (i10 < 9) {
                        float f2 = i9;
                        i = i4;
                        float f3 = i8;
                        i2 = i5;
                        int i11 = iArr[i10];
                        int[] iArr2 = iArr;
                        float f4 = i11;
                        if (i11 > i8 && (i3 = (int) (f4 * (f2 / f3))) > i9) {
                            int i12 = true != z3 ? i11 : i3;
                            if (true != z3) {
                                i11 = i3;
                            }
                            pointA = tkjVar.a(i12, i11);
                            float f5 = erjVar.x;
                            if (pointA != null) {
                                if (tkjVar.g(pointA.x, pointA.y, f5)) {
                                    break;
                                }
                            }
                            i10++;
                            i4 = i;
                            i5 = i2;
                            iArr = iArr2;
                            z3 = z3;
                        }
                    } else {
                        i = i4;
                        i2 = i5;
                    }
                    pointA = null;
                    break;
                }
                if (pointA != null) {
                    iMax2 = Math.max(iMax2, pointA.x);
                    iMax = Math.max(iMax, pointA.y);
                    gpj gpjVarB2 = erjVar.b();
                    gpjVarB2.J(iMax2);
                    gpjVarB2.m(iMax);
                    iU0 = Math.max(iU0, T0(tkjVar, gpjVarB2.K()));
                    zrg.f("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax2 + "x" + iMax);
                }
            } else {
                i = i4;
                i2 = i5;
            }
            j6eVar = new j6e(iMax2, iMax, iU0);
        }
        String str = tkjVar.c;
        this.J0 = j6eVar;
        boolean z4 = this.E0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", i2);
        mediaFormat.setInteger("height", i);
        mvg.b(mediaFormat, erjVar.r);
        float f6 = erjVar.x;
        if (f6 != -1.0f) {
            mediaFormat.setFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_FRAME_RATE, f6);
        }
        mvg.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_ROTATION, erjVar.y);
        h6j h6jVar2 = erjVar.C;
        if (h6jVar2 != null) {
            mvg.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_COLOR_TRANSFER, h6jVar2.c);
            mvg.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_COLOR_STANDARD, h6jVar2.a);
            mvg.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_COLOR_RANGE, h6jVar2.b);
            byte[] bArr = h6jVar2.d;
            if (bArr != null) {
                mediaFormat.setByteBuffer(com.hunantv.media.player.subtitle.MediaFormat.KEY_HDR_STATIC_INFO, ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(erjVar.o)) {
            HashMap map = qlj.a;
            Pair pairA = vcg.a(erjVar);
            if (pairA != null) {
                mvg.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_PROFILE, ((Integer) pairA.first).intValue());
            }
        }
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_WIDTH, j6eVar.a);
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_HEIGHT, j6eVar.b);
        mvg.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_INPUT_SIZE, j6eVar.c);
        int i13 = kfh.a;
        mediaFormat.setInteger("priority", 0);
        if (f != -1.0f) {
            mediaFormat.setFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, f);
        }
        if (z4) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (kfh.a >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.e1));
        }
        Surface surfaceP0 = P0(tkjVar);
        if (this.M0 != null && !kfh.l(this.B0)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return okj.b(tkjVar, mediaFormat, erjVar, surfaceP0, null);
    }

    @Override
    public final void r() {
        try {
            super.r();
        } finally {
            this.N0 = false;
            this.h1 = C.TIME_UNSET;
            S0();
        }
    }

    @Override
    public final List r0(hlj hljVar, erj erjVar, boolean z) {
        return qlj.f(Q0(this.B0, hljVar, erjVar, false, false), erjVar);
    }

    @Override
    public final void s() {
        this.W0 = 0;
        this.V0 = D().zzb();
        this.Z0 = 0L;
        this.a1 = 0;
        m7e m7eVar = this.M0;
        if (m7eVar != null) {
            ((o6e) m7eVar).d.g.zzf();
        } else {
            this.F0.d();
        }
    }

    @Override
    public final void t() {
        if (this.W0 > 0) {
            long jZzb = D().zzb();
            this.D0.n(this.W0, jZzb - this.V0);
            this.W0 = 0;
            this.V0 = jZzb;
        }
        int i = this.a1;
        if (i != 0) {
            this.D0.r(this.Z0, i);
            this.Z0 = 0L;
            this.a1 = 0;
        }
        m7e m7eVar = this.M0;
        if (m7eVar != null) {
            ((o6e) m7eVar).d.g.zzg();
        } else {
            this.F0.e();
        }
    }

    @Override
    public final void u(erj[] erjVarArr, long j, long j2, bnj bnjVar) {
        super.u(erjVarArr, j, j2, bnjVar);
        w4f w4fVarC = C();
        if (w4fVarC.o()) {
            this.i1 = C.TIME_UNSET;
        } else {
            this.i1 = w4fVarC.n(bnjVar.a, new y2f()).d;
        }
    }

    @Override
    public final void u0(xzi xziVar) {
        if (this.L0) {
            ByteBuffer byteBuffer = xziVar.g;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4) {
                    if (b3 == 0 || b3 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        rkj rkjVarK0 = K0();
                        rkjVarK0.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        rkjVarK0.zzq(bundle);
                    }
                }
            }
        }
    }

    @Override
    public final void v0(Exception exc) {
        zrg.d("MediaCodecVideoRenderer", "Video codec error", exc);
        this.D0.s(exc);
    }

    @Override
    public final void w0(String str, okj okjVar, long j, long j2) {
        this.D0.k(str, j, j2);
        this.K0 = N0(str);
        tkj tkjVarM = M();
        tkjVarM.getClass();
        boolean z = false;
        if (kfh.a >= 29 && "video/x-vnd.on2.vp9".equals(tkjVarM.b)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : tkjVarM.h()) {
                if (codecProfileLevel.profile == 16384) {
                    z = true;
                    break;
                }
            }
        }
        this.L0 = z;
    }

    @Override
    public final void x0(String str) {
        this.D0.l(str);
    }

    @Override
    public final void y0(erj erjVar, MediaFormat mediaFormat) {
        rkj rkjVarK0 = K0();
        if (rkjVarK0 != null) {
            rkjVarK0.g(this.T0);
        }
        mediaFormat.getClass();
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        int integer = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        int integer2 = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        float f = erjVar.z;
        int i = erjVar.y;
        if (i == 90 || i == 270) {
            f = 1.0f / f;
            int i2 = integer2;
            integer2 = integer;
            integer = i2;
        }
        this.c1 = new zhf(integer, integer2, f);
        m7e m7eVar = this.M0;
        if (m7eVar == null || !this.j1) {
            this.F0.j(erjVar.x);
        } else {
            gpj gpjVarB = erjVar.b();
            gpjVarB.J(integer);
            gpjVarB.m(integer2);
            gpjVarB.z(f);
            erj erjVarK = gpjVarB.K();
            List listZzn = this.O0;
            if (listZzn == null) {
                listZzn = zzfww.zzn();
            }
            m7eVar.e(1, erjVarK, H0(), 2, listZzn);
        }
        this.j1 = false;
    }

    @Override
    public final String zzU() {
        return "MediaCodecVideoRenderer";
    }

    @Override
    public final boolean zzX() {
        boolean zZzX = super.zzX();
        m7e m7eVar = this.M0;
        if (m7eVar != null) {
            return ((o6e) m7eVar).d.g.zzn(false);
        }
        if (zZzX && K0() == null) {
            return true;
        }
        return this.F0.m(zZzX);
    }

    @Override
    public final void zzt() {
        m7e m7eVar = this.M0;
        if (m7eVar == null) {
            this.F0.b();
            return;
        }
        t6e t6eVar = ((o6e) m7eVar).d;
        if (t6eVar.l == 1) {
            t6eVar.l = 0;
        }
    }
}
