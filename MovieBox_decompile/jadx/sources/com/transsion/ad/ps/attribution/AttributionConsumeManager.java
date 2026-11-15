package com.transsion.ad.ps.attribution;

import android.text.TextUtils;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.transsion.ad.db.pslink.AttributionPoint;
import com.transsion.ad.ps.PSReportUtil;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okhttp3.Request;
import okhttp3.Response;
import rh.f;
import wh.b;
import yg.l;

public final class AttributionConsumeManager extends BaseAttributionProvider {

    public static final AttributionConsumeManager f41128c = new AttributionConsumeManager();

    private static AtomicBoolean f41129d = new AtomicBoolean(false);

    private static AttributionPoint f41130e;

    private AttributionConsumeManager() {
    }

    /* JADX WARN: Code duplicated, block: B:74:0x0185  */
    /* JADX WARN: Code duplicated, block: B:75:0x018a  */
    /* JADX WARN: Code duplicated, block: B:78:0x018f  */
    /* JADX WARN: Code duplicated, block: B:79:0x0194  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object o(Continuation continuation) throws IOException {
        AttributionConsumeManager$doNetWork$1 attributionConsumeManager$doNetWork$1;
        String reportUrl;
        AttributionPoint attributionPoint;
        AttributionPoint.AttributionType type;
        AttributionPoint attributionPoint2;
        String psId;
        if (continuation instanceof AttributionConsumeManager$doNetWork$1) {
            attributionConsumeManager$doNetWork$1 = (AttributionConsumeManager$doNetWork$1) continuation;
            int i10 = attributionConsumeManager$doNetWork$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                attributionConsumeManager$doNetWork$1.label = i10 - Integer.MIN_VALUE;
            } else {
                attributionConsumeManager$doNetWork$1 = new AttributionConsumeManager$doNetWork$1(this, continuation);
            }
        } else {
            attributionConsumeManager$doNetWork$1 = new AttributionConsumeManager$doNetWork$1(this, continuation);
        }
        Object obj = attributionConsumeManager$doNetWork$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = attributionConsumeManager$doNetWork$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            f fVar = f.f71235a;
            if (fVar.a()) {
                xh.a aVar = xh.a.f75336a;
                String strE = e();
                AttributionPoint attributionPoint3 = f41130e;
                AttributionPoint.AttributionType type2 = attributionPoint3 != null ? attributionPoint3.getType() : null;
                AttributionPoint attributionPoint4 = f41130e;
                Integer numD = attributionPoint4 != null ? Boxing.d(attributionPoint4.getId()) : null;
                AttributionPoint attributionPoint5 = f41130e;
                Integer numD2 = attributionPoint5 != null ? Boxing.d(attributionPoint5.getFailCount()) : null;
                AttributionPoint attributionPoint6 = f41130e;
                String psId2 = attributionPoint6 != null ? attributionPoint6.getPsId() : null;
                AttributionPoint attributionPoint7 = f41130e;
                xh.a.i(aVar, strE + " --> consume() --> 开始归因 --> type = " + type2 + " --> id = " + numD + " --> failCount = " + numD2 + " --> psId = " + psId2 + " --> url = " + (attributionPoint7 != null ? attributionPoint7.getReportUrl() : null), 0, false, 6, null);
            }
            Request.Builder builder = new Request.Builder();
            AttributionPoint attributionPoint8 = f41130e;
            if (attributionPoint8 == null || (reportUrl = attributionPoint8.getReportUrl()) == null) {
                reportUrl = "";
            }
            Response responseExecute = FirebasePerfOkHttpClient.execute(b.f74279a.d().newCall(builder.url(reportUrl).build()));
            if (responseExecute.isSuccessful()) {
                if (fVar.a()) {
                    xh.a aVar2 = xh.a.f75336a;
                    String strE2 = e();
                    AttributionPoint attributionPoint9 = f41130e;
                    AttributionPoint.AttributionType type3 = attributionPoint9 != null ? attributionPoint9.getType() : null;
                    AttributionPoint attributionPoint10 = f41130e;
                    Integer numD3 = attributionPoint10 != null ? Boxing.d(attributionPoint10.getId()) : null;
                    AttributionPoint attributionPoint11 = f41130e;
                    String psId3 = attributionPoint11 != null ? attributionPoint11.getPsId() : null;
                    AttributionPoint attributionPoint12 = f41130e;
                    String reportUrl2 = attributionPoint12 != null ? attributionPoint12.getReportUrl() : null;
                    xh.a.i(aVar2, strE2 + " --> consume() --> 归因成功 --> type = " + type3 + " --> id = " + numD3 + " --> psId = " + psId3 + " --> url = " + reportUrl2 + " --> response = " + responseExecute.message(), 0, false, 6, null);
                }
                AttributionPoint attributionPoint13 = f41130e;
                if (attributionPoint13 != null) {
                    AttributionConsumeManager attributionConsumeManager = f41128c;
                    attributionConsumeManager$doNetWork$1.label = 1;
                    if (attributionConsumeManager.c(attributionPoint13, attributionConsumeManager$doNetWork$1) == objF) {
                        return objF;
                    }
                }
                PSReportUtil pSReportUtil = PSReportUtil.f41121a;
                attributionPoint = f41130e;
                if (attributionPoint != null) {
                    type = attributionPoint.getType();
                } else {
                    type = null;
                }
                attributionPoint2 = f41130e;
                if (attributionPoint2 != null) {
                    psId = attributionPoint2.getPsId();
                } else {
                    psId = null;
                }
                pSReportUtil.a(type, psId);
            } else {
                xh.a aVar3 = xh.a.f75336a;
                String strE3 = e();
                AttributionPoint attributionPoint14 = f41130e;
                AttributionPoint.AttributionType type4 = attributionPoint14 != null ? attributionPoint14.getType() : null;
                AttributionPoint attributionPoint15 = f41130e;
                Integer numD4 = attributionPoint15 != null ? Boxing.d(attributionPoint15.getId()) : null;
                AttributionPoint attributionPoint16 = f41130e;
                String psId4 = attributionPoint16 != null ? attributionPoint16.getPsId() : null;
                AttributionPoint attributionPoint17 = f41130e;
                String reportUrl3 = attributionPoint17 != null ? attributionPoint17.getReportUrl() : null;
                xh.a.i(aVar3, strE3 + " --> consume() --> 归因失败 --> type = " + type4 + " --> id = " + numD4 + " --> psId = " + psId4 + "--> url = " + reportUrl3 + " --> response = " + responseExecute.message(), 0, false, 6, null);
                AttributionPoint attributionPoint18 = f41130e;
                if (attributionPoint18 != null) {
                    attributionPoint18.setFailCount(attributionPoint18.getFailCount() + 1);
                    if (attributionPoint18.getFailCount() >= 5) {
                        AttributionConsumeManager attributionConsumeManager2 = f41128c;
                        attributionConsumeManager$doNetWork$1.label = 2;
                        if (attributionConsumeManager2.c(attributionPoint18, attributionConsumeManager$doNetWork$1) == objF) {
                            return objF;
                        }
                    } else {
                        AttributionConsumeManager attributionConsumeManager3 = f41128c;
                        attributionConsumeManager$doNetWork$1.label = 3;
                        if (attributionConsumeManager3.j(attributionPoint18, attributionConsumeManager$doNetWork$1) == objF) {
                            return objF;
                        }
                    }
                }
            }
        } else if (i11 == 1) {
            ResultKt.b(obj);
            PSReportUtil pSReportUtil2 = PSReportUtil.f41121a;
            attributionPoint = f41130e;
            if (attributionPoint != null) {
                type = attributionPoint.getType();
            } else {
                type = null;
            }
            attributionPoint2 = f41130e;
            if (attributionPoint2 != null) {
                psId = attributionPoint2.getPsId();
            } else {
                psId = null;
            }
            pSReportUtil2.a(type, psId);
        } else {
            if (i11 != 2 && i11 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        p();
        return Unit.f64096a;
    }

    public final void p() {
        f41129d.set(false);
        n();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object q(Continuation continuation) {
        AttributionConsumeManager$safeCall$1 attributionConsumeManager$safeCall$1;
        if (continuation instanceof AttributionConsumeManager$safeCall$1) {
            attributionConsumeManager$safeCall$1 = (AttributionConsumeManager$safeCall$1) continuation;
            int i10 = attributionConsumeManager$safeCall$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                attributionConsumeManager$safeCall$1.label = i10 - Integer.MIN_VALUE;
            } else {
                attributionConsumeManager$safeCall$1 = new AttributionConsumeManager$safeCall$1(this, continuation);
            }
        } else {
            attributionConsumeManager$safeCall$1 = new AttributionConsumeManager$safeCall$1(this, continuation);
        }
        Object objD = attributionConsumeManager$safeCall$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = attributionConsumeManager$safeCall$1.label;
        if (i11 == 0) {
            ResultKt.b(objD);
            if (!l.f76264a.e()) {
                return Unit.f64096a;
            }
            if (f41129d.get()) {
                return Unit.f64096a;
            }
            f41129d.set(true);
            attributionConsumeManager$safeCall$1.label = 1;
            objD = d(attributionConsumeManager$safeCall$1);
            if (objD == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                if (i11 == 2) {
                    ResultKt.b(objD);
                    p();
                    return Unit.f64096a;
                }
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objD);
                return Unit.f64096a;
            }
            ResultKt.b(objD);
        }
        AttributionPoint attributionPoint = (AttributionPoint) objD;
        f41130e = attributionPoint;
        if (attributionPoint == null) {
            f41129d.set(false);
            return Unit.f64096a;
        }
        if (!TextUtils.isEmpty(attributionPoint != null ? attributionPoint.getReportUrl() : null)) {
            attributionConsumeManager$safeCall$1.label = 3;
            if (o(attributionConsumeManager$safeCall$1) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }
        AttributionPoint attributionPoint2 = f41130e;
        if (attributionPoint2 != null) {
            AttributionConsumeManager attributionConsumeManager = f41128c;
            attributionConsumeManager$safeCall$1.label = 2;
            if (attributionConsumeManager.c(attributionPoint2, attributionConsumeManager$safeCall$1) == objF) {
                return objF;
            }
        }
        p();
        return Unit.f64096a;
    }

    public final void n() {
        k.d(o0.a(y0.b()), null, null, new AttributionConsumeManager$consume$1(null), 3, null);
    }
}
