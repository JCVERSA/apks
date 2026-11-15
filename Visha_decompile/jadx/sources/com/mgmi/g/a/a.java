package com.mgmi.g.a;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.ads.AdSDKNotificationListener;
import com.hisavana.common.tracking.TrackingKey;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.lzy.okgo.model.HttpHeaders;
import com.mgmi.model.Clicks;
import com.mgmi.model.HeadInfo;
import com.mgmi.model.IncentiveVastAd;
import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTBarrageAd;
import com.mgmi.model.VASTChannelAd;
import com.mgmi.model.VASTFloatAd;
import com.mgmi.model.VASTMediaFile;
import com.mgmi.model.VASTStaticResource;
import com.mgmi.model.WebviewResourceBean;
import com.mgmi.model.b;
import com.mgmi.model.c;
import com.mgmi.model.d;
import com.mgmi.model.e;
import com.mgmi.model.g;
import com.mgmi.model.h;
import com.mgmi.model.i;
import com.mgmi.model.k;
import com.mgmi.model.l;
import com.mgmi.model.o;
import com.mgmi.model.p;
import com.mgmi.model.r;
import com.mgmi.model.s;
import com.mgmi.model.t;
import com.mgmi.model.u;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.livecaption.constant.ICode;
import com.transsion.push.PushConstants;
import com.transsion.sniffer_load.sniffservice.SniffYoutubeUtil;
import defpackage.e9d;
import defpackage.ey4;
import defpackage.g4d;
import defpackage.i4d;
import defpackage.l2d;
import defpackage.qyd;
import defpackage.sed;
import defpackage.wrd;
import defpackage.yld;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.StringReader;
import java.math.BigInteger;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public final class a {
    private VASTChannelAd A;
    private HeadInfo B;
    private Throwable C;
    private r a;
    private VASTAd b;
    private VASTAd c;
    private IncentiveVastAd d;
    private VASTFloatAd e;
    private VASTBarrageAd f;
    private Clicks g;
    private Clicks h;
    private VASTStaticResource i;
    private List<i> j;
    private o k;
    private p l;
    private com.mgmi.model.a m;
    private u n;
    private b o;
    private h p;
    private c q;
    private g r;
    private i s;
    private t t;
    private e9d u;
    private i v;
    private d w;
    private e x;
    private k y;
    private s z;

    private void b(String str, XmlPullParser xmlPullParser) {
        if ("VAST".equals(str)) {
            this.a.b(xmlPullParser.getAttributeValue(null, "version"));
        }
    }

    private void c(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "type");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "t");
        String attributeValue3 = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
        String attributeValue4 = xmlPullParser.getAttributeValue(null, "fixed");
        String attributeValue5 = xmlPullParser.getAttributeValue(null, "cls_req");
        String attributeValue6 = xmlPullParser.getAttributeValue(null, "req");
        String attributeValue7 = xmlPullParser.getAttributeValue(null, "local");
        String attributeValue8 = xmlPullParser.getAttributeValue(null, "pre_time");
        String attributeValue9 = xmlPullParser.getAttributeValue(null, "show_type");
        String attributeValue10 = xmlPullParser.getAttributeValue(null, "dao_time");
        String attributeValue11 = xmlPullParser.getAttributeValue(null, "lmid");
        if (TypedValues.Custom.S_FLOAT.equals(attributeValue)) {
            com.mgmi.platform.view.a aVar = new com.mgmi.platform.view.a(1, (long) l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar.a(l.a(attributeValue7));
            aVar.u = xmlPullParser.getAttributeValue(null, "ai_plan");
            aVar.a(attributeValue11);
            a(xmlPullParser, aVar);
            this.a.a(aVar.c(l.a(attributeValue4)).b(l.a(attributeValue5)));
            return;
        }
        if ("live_float".equals(attributeValue)) {
            String attributeValue12 = xmlPullParser.getAttributeValue(null, "nt");
            long jLongValue = TextUtils.isEmpty(attributeValue12) ? 0L : Long.valueOf(attributeValue12).longValue();
            com.mgmi.platform.view.a aVar2 = new com.mgmi.platform.view.a(9, jLongValue, l.a(attributeValue3), l.a(attributeValue6));
            if (jLongValue == 0) {
                aVar2.d(true);
            } else {
                aVar2.d(false);
            }
            aVar2.a(attributeValue11);
            aVar2.a(jLongValue);
            aVar2.c(1);
            aVar2.a(l.a(attributeValue7));
            aVar2.j(g4d.j(xmlPullParser.getAttributeValue(null, "cnt")));
            aVar2.b(xmlPullParser.getAttributeValue(null, "gid"));
            int iA = l.a(xmlPullParser.getAttributeValue(null, "req_rand"));
            if (iA > 0) {
                aVar2.b(jLongValue - ((long) new Random().nextInt(iA / 1000)));
            }
            this.a.a(aVar2);
            return;
        }
        if ("paster".equals(attributeValue)) {
            com.mgmi.platform.view.a aVarA = a(new com.mgmi.platform.view.a(100, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6)), attributeValue8, attributeValue9, attributeValue10, xmlPullParser.getAttributeValue(null, "imp_tp"));
            aVarA.a(attributeValue11);
            this.a.a(aVarA);
            return;
        }
        if ("pause".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar3 = new com.mgmi.platform.view.a(2, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar3.a(attributeValue11);
            this.a.a(aVar3);
            return;
        }
        if ("progress".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar4 = new com.mgmi.platform.view.a(3, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar4.a(attributeValue11);
            this.a.a(aVar4);
            return;
        }
        if ("barrage".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar5 = new com.mgmi.platform.view.a(5, (long) l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar5.a(attributeValue11);
            this.a.a(aVar5);
            return;
        }
        if ("rprain_video".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar6 = new com.mgmi.platform.view.a(8, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar6.a(attributeValue11);
            aVar6.c(1);
            this.a.a(aVar6);
            return;
        }
        if ("ai_implant".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar7 = new com.mgmi.platform.view.a(6, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar7.a(l.a(attributeValue7));
            String attributeValue13 = xmlPullParser.getAttributeValue(null, "ai_plan");
            aVar7.a(attributeValue11);
            aVar7.u = attributeValue13;
            this.a.a(aVar7);
            return;
        }
        if ("baike".equals(attributeValue)) {
            String attributeValue14 = xmlPullParser.getAttributeValue(null, "extra");
            com.mgmi.platform.view.a aVar8 = new com.mgmi.platform.view.a(12, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar8.A = attributeValue14;
            aVar8.a(attributeValue11);
            this.a.a(aVar8);
            return;
        }
        if ("baike_float".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar9 = new com.mgmi.platform.view.a(13, (long) l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar9.a(l.a(attributeValue7));
            aVar9.u = xmlPullParser.getAttributeValue(null, "ai_plan");
            aVar9.a(attributeValue11);
            this.a.a(aVar9.c(l.a(attributeValue4)).b(l.a(attributeValue5)));
        }
    }

    private void d(XmlPullParser xmlPullParser) {
        List<i> interactItemInfos;
        String attributeValue = xmlPullParser.getAttributeValue(null, "type");
        if (attributeValue != null && !TextUtils.isEmpty(attributeValue) && attributeValue.equals("preview")) {
            if (this.j == null) {
                ArrayList arrayList = new ArrayList();
                this.j = arrayList;
                VASTAd vASTAd = this.b;
                if (vASTAd != null) {
                    vASTAd.setVastAdPres(arrayList);
                }
            }
            i iVar = new i();
            this.v = iVar;
            this.j.add(iVar);
            String attributeValue2 = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
            String attributeValue3 = xmlPullParser.getAttributeValue(null, "adSlotId");
            String attributeValue4 = xmlPullParser.getAttributeValue(null, "assetWidth");
            String attributeValue5 = xmlPullParser.getAttributeValue(null, "assetHeight");
            String attributeValue6 = xmlPullParser.getAttributeValue(null, "width");
            String attributeValue7 = xmlPullParser.getAttributeValue(null, "height");
            String attributeValue8 = xmlPullParser.getAttributeValue(null, "t");
            this.v.b(attributeValue);
            this.v.d(g4d.j(attributeValue2));
            this.v.e(g4d.j(attributeValue3));
            this.v.g(g4d.j(attributeValue4));
            this.v.h(g4d.j(attributeValue5));
            this.v.f(g4d.j(attributeValue8));
            this.v.b(g4d.j(attributeValue6));
            this.v.a(g4d.j(attributeValue7));
            return;
        }
        if (attributeValue != null && !TextUtils.isEmpty(attributeValue) && attributeValue.equals("poster")) {
            d dVar = new d();
            this.w = dVar;
            VASTAd vASTAd2 = this.b;
            if (vASTAd2 != null) {
                vASTAd2.addCompanionNative(dVar);
                this.b.getmCompanions().a(l.a(xmlPullParser.getAttributeValue(null, "showStyle")));
                this.b.getmCompanions().b(1);
                return;
            }
            return;
        }
        if (attributeValue != null && !TextUtils.isEmpty(attributeValue) && attributeValue.equals("multi_poster")) {
            VASTAd vASTAd3 = this.b;
            if (vASTAd3 != null) {
                vASTAd3.setmCompanions(new e());
                this.b.getmCompanions().a(l.a(xmlPullParser.getAttributeValue(null, "showStyle")));
                this.b.getmCompanions().b(2);
                return;
            }
            return;
        }
        if (attributeValue != null && !TextUtils.isEmpty(attributeValue) && (attributeValue.equals(AuthInfo.Component.CODE_BUTTON) || attributeValue.equals("interact"))) {
            VASTAd vASTAd4 = this.b;
            if (vASTAd4 != null) {
                if (vASTAd4.getInteractItemInfos() == null) {
                    interactItemInfos = new ArrayList<>();
                    this.b.setInteractItemInfos(interactItemInfos);
                } else {
                    interactItemInfos = this.b.getInteractItemInfos();
                }
                i iVar2 = new i();
                this.s = iVar2;
                interactItemInfos.add(iVar2);
                String attributeValue9 = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
                String attributeValue10 = xmlPullParser.getAttributeValue(null, "adSlotId");
                String attributeValue11 = xmlPullParser.getAttributeValue(null, "assetWidth");
                String attributeValue12 = xmlPullParser.getAttributeValue(null, "assetHeight");
                String attributeValue13 = xmlPullParser.getAttributeValue(null, "width");
                String attributeValue14 = xmlPullParser.getAttributeValue(null, "height");
                String attributeValue15 = xmlPullParser.getAttributeValue(null, "t");
                this.s.b(attributeValue);
                this.s.d(g4d.j(attributeValue9));
                this.s.e(g4d.j(attributeValue10));
                this.s.g(g4d.j(attributeValue11));
                this.s.h(g4d.j(attributeValue12));
                this.s.f(g4d.j(attributeValue15));
                this.s.b(g4d.j(attributeValue13));
                this.s.a(g4d.j(attributeValue14));
                return;
            }
            return;
        }
        if (attributeValue != null && !TextUtils.isEmpty(attributeValue) && attributeValue.equals("vote_native")) {
            d dVar2 = new d();
            this.w = dVar2;
            VASTAd vASTAd5 = this.b;
            if (vASTAd5 != null) {
                vASTAd5.addCompanionNative(dVar2);
                this.b.getmCompanions().a(l.a(xmlPullParser.getAttributeValue(null, "showStyle")));
                this.b.getmCompanions().b(3);
                return;
            }
            return;
        }
        if (attributeValue != null && !TextUtils.isEmpty(attributeValue) && attributeValue.equals("float_windmill")) {
            int iA = l.a(xmlPullParser.getAttributeValue(null, HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE));
            this.h = new Clicks();
            d dVar3 = new d();
            this.w = dVar3;
            dVar3.h(iA);
            VASTAd vASTAd6 = this.b;
            if (vASTAd6 != null) {
                vASTAd6.addCompanionNative(this.w);
                d dVar4 = this.w;
                if (dVar4 != null) {
                    dVar4.a(this.h);
                    return;
                }
                return;
            }
            return;
        }
        if (attributeValue != null && !TextUtils.isEmpty(attributeValue) && attributeValue.equals("thumbnail_pic")) {
            d dVar5 = new d();
            this.w = dVar5;
            dVar5.j(attributeValue);
            VASTAd vASTAd7 = this.b;
            if (vASTAd7 != null) {
                vASTAd7.addCompanionNative(this.w);
                return;
            }
            return;
        }
        if (attributeValue != null && !TextUtils.isEmpty(attributeValue) && attributeValue.equals("float_native")) {
            this.x = new e();
            this.x.c(l.a(xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID)));
            VASTAd vASTAd8 = this.b;
            if (vASTAd8 != null) {
                vASTAd8.addCommonCompanionPlus(this.x);
                return;
            }
            return;
        }
        if ("zip_online".equals(attributeValue)) {
            d dVar6 = new d();
            this.w = dVar6;
            dVar6.j(attributeValue);
            VASTAd vASTAd9 = this.b;
            if (vASTAd9 != null) {
                vASTAd9.addCompanionNative(this.w);
                return;
            }
            return;
        }
        if ("inner_feed".equalsIgnoreCase(attributeValue)) {
            b();
            return;
        }
        if ("implant_img".equals(attributeValue)) {
            d dVar7 = new d();
            this.w = dVar7;
            dVar7.j(attributeValue);
            VASTAd vASTAd10 = this.b;
            if (vASTAd10 != null) {
                vASTAd10.addCompanionNative(this.w);
            }
        }
    }

    private void e(XmlPullParser xmlPullParser) {
        t tVar = new t();
        this.t = tVar;
        d dVar = this.w;
        if (dVar != null) {
            dVar.a(tVar);
            return;
        }
        VASTFloatAd vASTFloatAd = this.e;
        if (vASTFloatAd != null) {
            vASTFloatAd.setVoteMessage(tVar);
        }
    }

    public r a() {
        return this.a;
    }

    private void b(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "type");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "t");
        String attributeValue3 = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
        String attributeValue4 = xmlPullParser.getAttributeValue(null, "fixed");
        String attributeValue5 = xmlPullParser.getAttributeValue(null, "cls_req");
        String attributeValue6 = xmlPullParser.getAttributeValue(null, "req");
        String attributeValue7 = xmlPullParser.getAttributeValue(null, "local");
        String attributeValue8 = xmlPullParser.getAttributeValue(null, "lmid");
        if (TypedValues.Custom.S_FLOAT.equals(attributeValue)) {
            com.mgmi.platform.view.a aVar = new com.mgmi.platform.view.a(1, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar.a(l.a(attributeValue7));
            aVar.u = xmlPullParser.getAttributeValue(null, "ai_plan");
            aVar.a(attributeValue8);
            this.a.a(aVar.c(l.a(attributeValue4)).b(l.a(attributeValue5)));
            return;
        }
        if ("live_float".equals(attributeValue)) {
            String attributeValue9 = xmlPullParser.getAttributeValue(null, "nt");
            long jLongValue = TextUtils.isEmpty(attributeValue9) ? 0L : Long.valueOf(attributeValue9).longValue();
            com.mgmi.platform.view.a aVar2 = new com.mgmi.platform.view.a(9, jLongValue, l.a(attributeValue3), l.a(attributeValue6));
            if (jLongValue == 0) {
                aVar2.d(true);
            } else {
                aVar2.d(false);
            }
            aVar2.a(attributeValue8);
            aVar2.a(jLongValue);
            aVar2.c(1);
            aVar2.a(l.a(attributeValue7));
            int iA = l.a(xmlPullParser.getAttributeValue(null, "req_rand"));
            if (iA > 0) {
                aVar2.b(jLongValue - ((long) new Random().nextInt(iA / 1000)));
            }
            this.a.a(aVar2);
            return;
        }
        if ("mid".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar3 = new com.mgmi.platform.view.a(0, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar3.a(attributeValue8);
            this.a.a(aVar3);
            return;
        }
        if ("backend".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar4 = new com.mgmi.platform.view.a(11, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar4.a(attributeValue8);
            this.a.a(aVar4);
            return;
        }
        if ("pause".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar5 = new com.mgmi.platform.view.a(2, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar5.a(attributeValue8);
            this.a.a(aVar5);
            return;
        }
        if ("progress".equals(attributeValue)) {
            this.a.a(new com.mgmi.platform.view.a(3, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6)));
            return;
        }
        if ("focus".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar6 = new com.mgmi.platform.view.a(4, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar6.a(attributeValue8);
            this.a.a(aVar6);
            return;
        }
        if ("barrage".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar7 = new com.mgmi.platform.view.a(5, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar7.a(attributeValue8);
            this.a.a(aVar7);
            return;
        }
        if ("rprain_video".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar8 = new com.mgmi.platform.view.a(8, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar8.c(1);
            this.a.a(aVar8);
            return;
        }
        if ("ai_implant".equals(attributeValue)) {
            com.mgmi.platform.view.a aVar9 = new com.mgmi.platform.view.a(6, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar9.a(l.a(attributeValue7));
            String attributeValue10 = xmlPullParser.getAttributeValue(null, "ai_plan");
            aVar9.a(attributeValue8);
            aVar9.u = attributeValue10;
            this.a.a(aVar9);
            this.a.b(true);
            return;
        }
        if ("baike".equals(attributeValue)) {
            String attributeValue11 = xmlPullParser.getAttributeValue(null, "extra");
            com.mgmi.platform.view.a aVar10 = new com.mgmi.platform.view.a(12, l.b(attributeValue2), l.a(attributeValue3), l.a(attributeValue6));
            aVar10.A = attributeValue11;
            aVar10.a(attributeValue8);
            this.a.a(aVar10);
        }
    }

    public int a(String str) {
        this.a = null;
        if (TextUtils.isEmpty(str)) {
            return 103000;
        }
        if (str.indexOf("VAST") < 0 && str.indexOf("vast") < 0) {
            return 103000;
        }
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
            XmlPullParser xmlPullParserNewPullParser = xmlPullParserFactoryNewInstance.newPullParser();
            xmlPullParserNewPullParser.setInput(new StringReader(str));
            this.a = a(xmlPullParserNewPullParser);
            return AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND;
        } catch (Exception e) {
            this.C = e;
            return 104000;
        }
    }

    private void e() {
        HeadInfo headInfo = new HeadInfo();
        this.B = headInfo;
        VASTAd vASTAd = this.b;
        if (vASTAd != null) {
            vASTAd.setHeadInfo(headInfo);
        }
    }

    private r a(XmlPullParser xmlPullParser) throws Exception {
        this.a = new r();
        while (true) {
            int next = xmlPullParser.next();
            if (1 == next) {
                return this.a;
            }
            if (2 == next) {
                a(xmlPullParser.getName(), xmlPullParser);
            } else if (3 == next) {
                c(xmlPullParser.getName(), xmlPullParser);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:1027:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x064f  */
    /* JADX WARN: Code duplicated, block: B:118:0x0663  */
    /* JADX WARN: Code duplicated, block: B:119:0x0665  */
    /* JADX WARN: Code duplicated, block: B:122:0x068e  */
    /* JADX WARN: Code duplicated, block: B:123:0x0690  */
    private void a(String str, XmlPullParser xmlPullParser) throws Exception {
        int iA;
        IncentiveVastAd incentiveVastAd;
        String str2;
        int i;
        VASTAd vASTAd;
        boolean z;
        boolean z2;
        int i2;
        b(str, xmlPullParser);
        if ("Ad".equals(str)) {
            if (xmlPullParser.getDepth() == 4) {
                r rVar = this.a;
                if (rVar != null && rVar.o()) {
                    c(xmlPullParser);
                    return;
                } else {
                    b(xmlPullParser);
                    return;
                }
            }
            String attributeValue = xmlPullParser.getAttributeValue(null, "type");
            String attributeValue2 = xmlPullParser.getAttributeValue(null, "clk_macro");
            String attributeValue3 = xmlPullParser.getAttributeValue(null, "bid");
            String attributeValue4 = xmlPullParser.getAttributeValue(null, "skip");
            String attributeValue5 = xmlPullParser.getAttributeValue(null, "hideLog");
            String attributeValue6 = xmlPullParser.getAttributeValue(null, "tkid");
            String attributeValue7 = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
            String attributeValue8 = xmlPullParser.getAttributeValue(null, "ad_timer");
            String attributeValue9 = xmlPullParser.getAttributeValue(null, "dao_time");
            String attributeValue10 = xmlPullParser.getAttributeValue(null, "landAdLog");
            String attributeValue11 = xmlPullParser.getAttributeValue(null, "tkct");
            String attributeValue12 = xmlPullParser.getAttributeValue(null, "clk_trac_macro");
            String attributeValue13 = xmlPullParser.getAttributeValue(null, "clk_trac_value");
            int iA2 = qyd.a(xmlPullParser.getAttributeValue(null, "self_render"), -1);
            int iA3 = qyd.a(xmlPullParser.getAttributeValue(null, "mk"), -1);
            if (!"front".equals(attributeValue) && !"pause".equals(attributeValue) && !"progress".equals(attributeValue)) {
                str2 = attributeValue3;
                if ("paster".equals(attributeValue) && this.a.o()) {
                    VASTAd vASTAdA = a(new VASTAd(), xmlPullParser);
                    this.b = vASTAdA;
                    vASTAdA.setTkct(l.a(attributeValue11));
                    String attributeValue14 = xmlPullParser.getAttributeValue(null, "adstyle");
                    String attributeValue15 = xmlPullParser.getAttributeValue(null, "t");
                    String attributeValue16 = xmlPullParser.getAttributeValue(null, "vip_show");
                    int iA4 = l.a(xmlPullParser.getAttributeValue(null, "show_type"));
                    int iA5 = l.a(attributeValue14);
                    if (iA5 == 5) {
                        String attributeValue17 = xmlPullParser.getAttributeValue(null, "st_pre");
                        this.a.c(true);
                        this.a.g(l.a(attributeValue17));
                    }
                    this.b.setAdStyle(iA5);
                    this.b.setmAdtype(attributeValue);
                    this.b.setClk_macro(attributeValue2);
                    this.b.setShowAdLog(l.a(attributeValue5, 0));
                    this.b.setVip_show(l.a(attributeValue16));
                    VASTAd vASTAd2 = this.b;
                    this.c = vASTAd2;
                    vASTAd2.setInsertTime(attributeValue15);
                    this.c.setSkipTimeout(l.a(attributeValue4));
                    this.b.setAd_timer(l.a(attributeValue8, 1));
                    this.b.setLandAdLog(l.a(attributeValue10, 0));
                    if (3 == iA4) {
                        this.a.a(a(new com.mgmi.platform.view.a(100, l.b(attributeValue15), l.a(attributeValue7), l.a(xmlPullParser.getAttributeValue(null, "req"))), xmlPullParser.getAttributeValue(null, "pre_time"), xmlPullParser.getAttributeValue(null, "show_type"), xmlPullParser.getAttributeValue(null, "dao_time"), xmlPullParser.getAttributeValue(null, "imp_tp")));
                        i2 = 1;
                    } else if (1 == iA4) {
                        String attributeValue18 = xmlPullParser.getAttributeValue(null, SniffYoutubeUtil.YOUTUBE_VIDEO_SOURCES_URL_PARAM_EXPIRE);
                        if (!TextUtils.isEmpty(attributeValue18)) {
                            try {
                                this.b.setExpire(Long.parseLong(attributeValue18));
                            } catch (NumberFormatException e) {
                                e.printStackTrace();
                                this.b.setExpire(0L);
                            }
                        }
                        i2 = 1;
                        this.a.a(true);
                    } else {
                        i2 = 1;
                    }
                    if (i2 == iA4) {
                        this.a.a(this.b);
                    } else {
                        this.a.b(this.c);
                    }
                } else if (!"mid".equals(attributeValue) && !"focus".equals(attributeValue) && !"backend".equals(attributeValue)) {
                    if ("reward".equals(attributeValue)) {
                        IncentiveVastAd incentiveVastAd2 = new IncentiveVastAd();
                        this.b = incentiveVastAd2;
                        incentiveVastAd2.setmAdtype(attributeValue);
                        this.b.setClk_macro(attributeValue2);
                        this.b.setLandAdLog(l.a(attributeValue10, 0));
                        IncentiveVastAd incentiveVastAd3 = (IncentiveVastAd) this.b;
                        this.d = incentiveVastAd3;
                        this.a.a(incentiveVastAd3);
                    } else if ("focus-head".equals(attributeValue)) {
                        String attributeValue19 = xmlPullParser.getAttributeValue(null, "t");
                        this.a.a(new com.mgmi.platform.view.a(7, l.b(attributeValue19), l.a(attributeValue7), l.a(xmlPullParser.getAttributeValue(null, "req"))));
                        this.b = new VASTAd();
                        this.b.setAdStyle(l.a(xmlPullParser.getAttributeValue(null, "adstyle")));
                        this.b.setmAdtype(attributeValue);
                        this.b.setClk_macro(attributeValue2);
                        this.b.setShowAdLog(l.a(attributeValue5));
                        this.b.setLandAdLog(l.a(attributeValue10, 0));
                        VASTAd vASTAd3 = this.b;
                        this.c = vASTAd3;
                        vASTAd3.setInsertTime(attributeValue19);
                        this.c.setSkipTimeout(l.a(attributeValue4));
                        this.a.b(this.c);
                    } else if (!TypedValues.Custom.S_FLOAT.equals(attributeValue) && !"ai_implant".equals(attributeValue) && !"baike_float".equals(attributeValue)) {
                        if ("live_float".equals(attributeValue)) {
                            VASTFloatAd vASTFloatAd = new VASTFloatAd();
                            this.b = vASTFloatAd;
                            vASTFloatAd.setmAdtype(attributeValue);
                            this.b.setClk_macro(attributeValue2);
                            VASTFloatAd vASTFloatAd2 = (VASTFloatAd) this.b;
                            this.e = vASTFloatAd2;
                            vASTFloatAd2.setInsertTime(xmlPullParser.getAttributeValue(null, "t"));
                            this.e.setAdStyle(l.a(xmlPullParser.getAttributeValue(null, "adstyle")));
                            this.e.setInteract(xmlPullParser.getAttributeValue(null, "interact"));
                            this.e.setJoinMethod(l.a(xmlPullParser.getAttributeValue(null, "joinMethod")));
                            this.e.setFixed(l.a(xmlPullParser.getAttributeValue(null, "fixed")));
                            this.e.setLandAdLog(l.a(attributeValue10, 0));
                            Random random = new Random();
                            int iA6 = l.a(xmlPullParser.getAttributeValue(null, "delay_expose"));
                            if (iA6 > 0) {
                                this.e.setDelayRandTime(random.nextInt(iA6));
                            }
                            this.a.a(this.e);
                        } else if (!"rprain_channel".equals(attributeValue) && !"rprain_video".equals(attributeValue)) {
                            if (!"banner".equals(attributeValue) && !"el".equals(attributeValue)) {
                                if ("barrage".equals(attributeValue)) {
                                    VASTBarrageAd vASTBarrageAd = new VASTBarrageAd();
                                    this.b = vASTBarrageAd;
                                    vASTBarrageAd.setmAdtype(attributeValue);
                                    this.b.setClk_macro(attributeValue2);
                                    this.b.setLandAdLog(l.a(attributeValue10, 0));
                                    this.f = (VASTBarrageAd) this.b;
                                    this.f.setInteract(xmlPullParser.getAttributeValue(null, "interact"));
                                    this.f.setBgColor(g4d.w(xmlPullParser.getAttributeValue(null, "bgColor")));
                                    this.f.setAdStyle(l.a(xmlPullParser.getAttributeValue(null, "adstyle")));
                                    this.a.a(this.f);
                                }
                            } else {
                                String attributeValue20 = xmlPullParser.getAttributeValue(null, "flow_wifi_state");
                                String attributeValue21 = xmlPullParser.getAttributeValue(null, "flow_cellular");
                                String attributeValue22 = xmlPullParser.getAttributeValue(null, "roll_time");
                                String attributeValue23 = xmlPullParser.getAttributeValue(null, "clk_area");
                                VASTChannelAd vASTChannelAd = new VASTChannelAd();
                                this.b = vASTChannelAd;
                                vASTChannelAd.setmAdtype(attributeValue);
                                this.b.setClk_macro(attributeValue2);
                                this.b.setClk_area(l.a(attributeValue23));
                                VASTAd vASTAd4 = this.b;
                                this.A = (VASTChannelAd) vASTAd4;
                                vASTAd4.setmFlowWifiState(l.a(attributeValue20));
                                this.b.setmFlow_cellular(l.a(attributeValue21));
                                int iA7 = l.a(attributeValue22);
                                if (iA7 == 0) {
                                    iA7 = 5;
                                }
                                this.b.setRoolTime(iA7);
                                String attributeValue24 = xmlPullParser.getAttributeValue(null, SniffYoutubeUtil.YOUTUBE_VIDEO_SOURCES_URL_PARAM_EXPIRE);
                                if (!TextUtils.isEmpty(attributeValue24)) {
                                    try {
                                        this.b.setExpire(Long.parseLong(attributeValue24));
                                    } catch (NumberFormatException e2) {
                                        e2.printStackTrace();
                                        this.b.setExpire(0L);
                                    }
                                }
                                String attributeValue25 = xmlPullParser.getAttributeValue(null, "adstyle");
                                String attributeValue26 = xmlPullParser.getAttributeValue(null, HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE);
                                this.A.setAdStyle(l.a(attributeValue25));
                                this.A.setId(xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID));
                                this.A.setBgColor(g4d.w(xmlPullParser.getAttributeValue(null, "bgColor")));
                                this.A.setClose(l.a(attributeValue26));
                                this.A.setLandAdLog(l.a(attributeValue10, 0));
                                this.a.a(this.A);
                            }
                        } else {
                            VASTChannelAd vASTChannelAd2 = new VASTChannelAd();
                            this.b = vASTChannelAd2;
                            vASTChannelAd2.setmAdtype(attributeValue);
                            this.b.setClk_macro(attributeValue2);
                            this.A = (VASTChannelAd) this.b;
                            this.b.setDelayRand(l.a(xmlPullParser.getAttributeValue(null, "delay_expose")));
                            this.b.setLandAdLog(l.a(attributeValue10, 0));
                            this.a.a(this.A);
                        }
                    } else {
                        VASTFloatAd vASTFloatAd3 = new VASTFloatAd();
                        this.b = vASTFloatAd3;
                        vASTFloatAd3.setmAdtype(attributeValue);
                        this.b.setClk_macro(attributeValue2);
                        VASTFloatAd vASTFloatAd4 = (VASTFloatAd) this.b;
                        this.e = vASTFloatAd4;
                        vASTFloatAd4.setInsertTime(xmlPullParser.getAttributeValue(null, "t"));
                        String attributeValue27 = xmlPullParser.getAttributeValue(null, "adstyle");
                        this.e.setAdStyle(l.a(attributeValue27));
                        this.e.setInteract(xmlPullParser.getAttributeValue(null, "interact"));
                        this.e.setJoinMethod(l.a(xmlPullParser.getAttributeValue(null, "joinMethod")));
                        this.e.setSkipTimeout(l.a(attributeValue4));
                        this.e.setPlayerUse(l.a(xmlPullParser.getAttributeValue(null, "playerUse")));
                        this.e.setFixed(l.a(xmlPullParser.getAttributeValue(null, "fixed")));
                        this.e.setBgColor(g4d.w(xmlPullParser.getAttributeValue(null, "bgColor")));
                        this.e.setPlanId(xmlPullParser.getAttributeValue(null, "ai_plan"));
                        this.e.setLandAdLog(l.a(attributeValue10, 0));
                        Random random2 = new Random();
                        int iA8 = l.a(xmlPullParser.getAttributeValue(null, "delay_expose"));
                        if (iA8 > 0) {
                            this.e.setDelayRandTime(random2.nextInt(iA8));
                        }
                        this.a.a(this.e);
                        if ("12".equalsIgnoreCase(attributeValue27)) {
                            b();
                        }
                    }
                } else {
                    this.b = new VASTAd();
                    this.b.setAdStyle(l.a(xmlPullParser.getAttributeValue(null, "adstyle")));
                    this.b.setmAdtype(attributeValue);
                    this.b.setClk_macro(attributeValue2);
                    this.b.setShowAdLog(l.a(attributeValue5));
                    VASTAd vASTAd5 = this.b;
                    this.c = vASTAd5;
                    vASTAd5.setInsertTime(xmlPullParser.getAttributeValue(null, "t"));
                    this.c.setSkipTimeout(l.a(attributeValue4));
                    this.b.setAd_timer(l.a(attributeValue8));
                    this.b.setDaoTime(l.a(attributeValue9));
                    this.b.setLandAdLog(l.a(attributeValue10, 0));
                    this.a.b(this.c);
                }
            } else {
                str2 = attributeValue3;
                VASTAd vASTAd6 = new VASTAd();
                this.b = vASTAd6;
                vASTAd6.setmAdtype(attributeValue);
                this.b.setClk_macro(attributeValue2);
                this.b.setSkipTimeout(l.a(attributeValue4));
                this.b.setTkct(l.a(attributeValue11));
                String attributeValue28 = xmlPullParser.getAttributeValue(null, SniffYoutubeUtil.YOUTUBE_VIDEO_SOURCES_URL_PARAM_EXPIRE);
                if (!TextUtils.isEmpty(attributeValue28)) {
                    try {
                        this.b.setExpire(Long.parseLong(attributeValue28));
                    } catch (NumberFormatException e3) {
                        e3.printStackTrace();
                        this.b.setExpire(0L);
                    }
                }
                if ("pause".equals(attributeValue)) {
                    String attributeValue29 = xmlPullParser.getAttributeValue(null, "adstyle");
                    String attributeValue30 = xmlPullParser.getAttributeValue(null, "clk_area");
                    this.b.setAdStyle(l.a(attributeValue29));
                    this.b.setClk_area(l.a(attributeValue30));
                }
                this.b.setLandAdLog(l.a(attributeValue10, 0));
                this.a.a(this.b);
                if ("front".equals(attributeValue)) {
                    i = 1;
                    this.a.a(true);
                }
                vASTAd = this.b;
                if (vASTAd != null) {
                    vASTAd.setShowAdLog(l.a(attributeValue5));
                    this.b.setBid(str2);
                    VASTAd vASTAd7 = this.b;
                    if (iA2 == i) {
                        z = true;
                    } else {
                        z = false;
                    }
                    vASTAd7.setSelfRender(z);
                    this.b.setTaskId(attributeValue6);
                    this.b.setVastAid(l.a(attributeValue7));
                    this.b.setClk_trac_macro(attributeValue12);
                    this.b.setClk_trac_value(attributeValue13);
                    VASTAd vASTAd8 = this.b;
                    if (iA3 == 1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    vASTAd8.setMk(z2);
                    return;
                }
                return;
            }
            i = 1;
            vASTAd = this.b;
            if (vASTAd != null) {
                vASTAd.setShowAdLog(l.a(attributeValue5));
                this.b.setBid(str2);
                VASTAd vASTAd9 = this.b;
                if (iA2 == i) {
                    z = true;
                } else {
                    z = false;
                }
                vASTAd9.setSelfRender(z);
                this.b.setTaskId(attributeValue6);
                this.b.setVastAid(l.a(attributeValue7));
                this.b.setClk_trac_macro(attributeValue12);
                this.b.setClk_trac_value(attributeValue13);
                VASTAd vASTAd10 = this.b;
                if (iA3 == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                vASTAd10.setMk(z2);
                return;
            }
            return;
        }
        if ("rain_id".equals(str)) {
            xmlPullParser.next();
            this.b.setRainId(xmlPullParser.getText());
            return;
        }
        if ("countdown_id".equals(str)) {
            xmlPullParser.next();
            this.b.setCountDownId(xmlPullParser.getText());
            return;
        }
        if ("channel_ids".equals(str)) {
            xmlPullParser.next();
            this.b.setChannelId(xmlPullParser.getText());
            return;
        }
        if ("nt".equals(str)) {
            xmlPullParser.next();
            this.b.setNt(Long.valueOf(xmlPullParser.getText()).longValue());
            return;
        }
        if ("ResInfo".equals(str)) {
            xmlPullParser.next();
            String text = xmlPullParser.getText();
            VASTAd vASTAd11 = this.b;
            if (vASTAd11 != null) {
                vASTAd11.setResInfo(text);
                return;
            }
            return;
        }
        if ("MgMiniProgramUrl".equals(str)) {
            xmlPullParser.next();
            String text2 = xmlPullParser.getText();
            VASTAd vASTAd12 = this.b;
            if (vASTAd12 != null) {
                vASTAd12.setMgMiniProgramUrl(text2);
                return;
            }
            return;
        }
        if ("Impression".equals(str)) {
            String attributeValue31 = xmlPullParser.getAttributeValue(null, "sdk");
            String attributeValue32 = xmlPullParser.getAttributeValue(null, "enc");
            xmlPullParser.next();
            String strA = a(xmlPullParser.getText(), attributeValue32);
            VASTAd vASTAd13 = this.b;
            if (vASTAd13 != null) {
                vASTAd13.addImpression(attributeValue31, strA);
                return;
            }
            return;
        }
        if (AdSDKNotificationListener.IMPRESSION_EVENT.equals(str)) {
            String attributeValue33 = xmlPullParser.getAttributeValue(null, "sdk");
            String attributeValue34 = xmlPullParser.getAttributeValue(null, "enc");
            xmlPullParser.next();
            String strA2 = a(xmlPullParser.getText(), attributeValue34);
            d dVar = this.w;
            if (dVar != null) {
                dVar.a(attributeValue33, strA2);
            } else {
                e eVar = this.x;
                if (eVar != null) {
                    eVar.a(attributeValue33, strA2);
                }
            }
            b();
            h hVar = this.p;
            if (hVar != null) {
                hVar.a(attributeValue33, strA2);
                return;
            }
            return;
        }
        if ("NonLinearAds".equals(str)) {
            this.g = new Clicks();
            return;
        }
        if ("VoteOption".equals(str)) {
            u uVar = new u();
            this.n = uVar;
            t tVar = this.t;
            if (tVar != null) {
                tVar.a(uVar);
                return;
            }
            return;
        }
        if ("VASTAdTagURI".equals(str)) {
            xmlPullParser.next();
            String text3 = xmlPullParser.getText();
            if (this.b == null || TextUtils.isEmpty(text3)) {
                return;
            }
            if (text3.contains("sdk://gdt")) {
                String strDecode = URLDecoder.decode(text3);
                this.b.setOrginTargetURI(strDecode);
                this.b.setAdFrom("gdt");
                this.b.setVastTargetStyle(g4d.c(strDecode, "style="));
                this.b.setVastTargetURI(g4d.d(strDecode, "id=", "&"));
                return;
            }
            if (text3.contains("sdk://toutiao")) {
                String strDecode2 = URLDecoder.decode(text3);
                this.b.setOrginTargetURI(strDecode2);
                this.b.setAdFrom("toutiao");
                this.b.setVastTargetStyle(g4d.c(strDecode2, "style="));
                this.b.setVastTargetURI(g4d.d(strDecode2, "id=", "&"));
                return;
            }
            if (text3.contains("sdk://hyjy")) {
                String strDecode3 = URLDecoder.decode(text3);
                this.b.setOrginTargetURI(strDecode3);
                this.b.setAdFrom("hyjy");
                this.b.setVastTargetStyle(g4d.c(strDecode3, "style="));
                this.b.setVastTargetURI(g4d.d(strDecode3, "id=", "&"));
                return;
            }
            if (text3.contains("sdk://oppo")) {
                String strDecode4 = URLDecoder.decode(text3);
                this.b.setOrginTargetURI(strDecode4);
                this.b.setAdFrom("opposdk");
                this.b.setVastTargetStyle(g4d.c(strDecode4, "style="));
                this.b.setVastTargetURI(g4d.d(strDecode4, "id=", "&"));
                return;
            }
            this.b.setAdFrom("google");
            this.b.setVastTargetURI(text3);
            return;
        }
        if ("NonLinear".equals(str)) {
            VASTStaticResource vASTStaticResource = new VASTStaticResource();
            this.i = vASTStaticResource;
            vASTStaticResource.setVideoClick(this.g);
            VASTAd vASTAd14 = this.b;
            if (vASTAd14 != null) {
                vASTAd14.addStaticResource(this.i);
            }
            int iA9 = l.a(xmlPullParser.getAttributeValue(null, "width"));
            int iA10 = l.a(xmlPullParser.getAttributeValue(null, "height"));
            float fA = l.a(xmlPullParser.getAttributeValue(null, "wratio"), 0.0f);
            int iA11 = l.a(xmlPullParser.getAttributeValue(null, "strict"));
            this.i.setWidth(iA9);
            this.i.setWidth(iA9);
            this.i.setAdWratio(fA);
            this.i.setAdStrict(iA11);
            this.i.setHeight(iA10);
            VASTAd vASTAd15 = this.b;
            if (vASTAd15 != null) {
                vASTAd15.setWidth(iA9);
                this.b.setHeight(iA10);
                return;
            }
            return;
        }
        if ("Tracking".equals(str)) {
            String attributeValue35 = xmlPullParser.getAttributeValue(null, NotificationCompat.CATEGORY_EVENT);
            String attributeValue36 = xmlPullParser.getAttributeValue(null, "sdk");
            String attributeValue37 = xmlPullParser.getAttributeValue(null, "enc");
            if ("skip".equals(attributeValue35)) {
                String attributeValue38 = xmlPullParser.getAttributeValue(null, "skip");
                xmlPullParser.next();
                String strA3 = a(xmlPullParser.getText(), attributeValue37);
                if (this.b != null) {
                    this.b.addTrackingEventBean(attributeValue36, new com.mgmi.net.bean.c(l.a(attributeValue38), strA3));
                    return;
                }
                return;
            }
            if (PushConstants.PUSH_SERVICE_TYPE_CLICK.equals(attributeValue35)) {
                xmlPullParser.next();
                String strA4 = a(xmlPullParser.getText(), attributeValue37);
                d dVar2 = this.w;
                if (dVar2 != null) {
                    dVar2.b(PushConstants.PUSH_SERVICE_TYPE_CLICK, strA4);
                    return;
                }
                i iVar = this.s;
                if (iVar != null) {
                    iVar.d(strA4);
                    return;
                }
                VASTAd vASTAd16 = this.b;
                if (vASTAd16 != null) {
                    vASTAd16.addTrackingEvent(attributeValue36, PushConstants.PUSH_SERVICE_TYPE_CLICK, strA4);
                    return;
                }
                return;
            }
            if ("dlSt".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA5 = a(xmlPullParser.getText(), attributeValue37);
                d dVar3 = this.w;
                if (dVar3 != null) {
                    dVar3.b("dlSt", strA5);
                    return;
                }
                i iVar2 = this.s;
                if (iVar2 != null) {
                    iVar2.d(strA5);
                    return;
                }
                VASTAd vASTAd17 = this.b;
                if (vASTAd17 != null) {
                    vASTAd17.addTrackingEvent(attributeValue36, "dlSt", strA5);
                    return;
                }
                return;
            }
            if ("dlFin".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA6 = a(xmlPullParser.getText(), attributeValue37);
                d dVar4 = this.w;
                if (dVar4 != null) {
                    dVar4.b("dlFin", strA6);
                    return;
                }
                i iVar3 = this.s;
                if (iVar3 != null) {
                    iVar3.d(strA6);
                    return;
                }
                VASTAd vASTAd18 = this.b;
                if (vASTAd18 != null) {
                    vASTAd18.addTrackingEvent(attributeValue36, "dlFin", strA6);
                    return;
                }
                return;
            }
            if ("insSt".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA7 = a(xmlPullParser.getText(), attributeValue37);
                d dVar5 = this.w;
                if (dVar5 != null) {
                    dVar5.b("insSt", strA7);
                    return;
                }
                i iVar4 = this.s;
                if (iVar4 != null) {
                    iVar4.d(strA7);
                    return;
                }
                VASTAd vASTAd19 = this.b;
                if (vASTAd19 != null) {
                    vASTAd19.addTrackingEvent(attributeValue36, "insSt", strA7);
                    return;
                }
                return;
            }
            if ("insFin".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA8 = a(xmlPullParser.getText(), attributeValue37);
                d dVar6 = this.w;
                if (dVar6 != null) {
                    dVar6.b("insFin", strA8);
                    return;
                }
                i iVar5 = this.s;
                if (iVar5 != null) {
                    iVar5.d(strA8);
                    return;
                }
                VASTAd vASTAd20 = this.b;
                if (vASTAd20 != null) {
                    vASTAd20.addTrackingEvent(attributeValue36, "insFin", strA8);
                    return;
                }
                return;
            }
            if ("convert".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA9 = a(xmlPullParser.getText(), attributeValue37);
                d dVar7 = this.w;
                if (dVar7 != null) {
                    dVar7.b("convert", strA9);
                    return;
                }
                i iVar6 = this.s;
                if (iVar6 != null) {
                    iVar6.d(strA9);
                    return;
                }
                VASTAd vASTAd21 = this.b;
                if (vASTAd21 != null) {
                    vASTAd21.addTrackingEvent(attributeValue36, "convert", strA9);
                    return;
                }
                return;
            }
            if (TtmlNode.START.equals(attributeValue35)) {
                xmlPullParser.next();
                String strA10 = a(xmlPullParser.getText(), attributeValue37);
                d dVar8 = this.w;
                if (dVar8 != null) {
                    dVar8.b(TtmlNode.START, strA10);
                    return;
                }
                i iVar7 = this.s;
                if (iVar7 != null) {
                    iVar7.c(strA10);
                    return;
                }
                VASTAd vASTAd22 = this.b;
                if (vASTAd22 != null) {
                    vASTAd22.addTrackingEvent(attributeValue36, TtmlNode.START, strA10);
                    return;
                }
                return;
            }
            if ("feed_play".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA11 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd23 = this.b;
                if (vASTAd23 != null) {
                    vASTAd23.addTrackingEvent(attributeValue36, "feed_play", strA11);
                    return;
                }
                return;
            }
            if ("feed_over".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA12 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd24 = this.b;
                if (vASTAd24 != null) {
                    vASTAd24.addTrackingEvent(attributeValue36, "feed_play", strA12);
                    return;
                }
                return;
            }
            if ("feed_break".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA13 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd25 = this.b;
                if (vASTAd25 != null) {
                    vASTAd25.addTrackingEvent(attributeValue36, "feed_break", strA13);
                    return;
                }
                return;
            }
            if ("favor".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA14 = a(xmlPullParser.getText(), attributeValue37);
                d dVar9 = this.w;
                if (dVar9 != null) {
                    dVar9.b("favor", strA14);
                    return;
                }
                return;
            }
            if ("firstQuartile".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA15 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd26 = this.b;
                if (vASTAd26 != null) {
                    vASTAd26.addTrackingEvent(attributeValue36, "firstQuartile", strA15);
                    return;
                }
                return;
            }
            if ("midpoint".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA16 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd27 = this.b;
                if (vASTAd27 != null) {
                    vASTAd27.addTrackingEvent(attributeValue36, "midpoint", strA16);
                    return;
                }
                return;
            }
            if ("thirdQuartile".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA17 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd28 = this.b;
                if (vASTAd28 != null) {
                    vASTAd28.addTrackingEvent(attributeValue36, "thirdQuartile", strA17);
                    return;
                }
                return;
            }
            if ("complete".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA18 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd29 = this.b;
                if (vASTAd29 != null) {
                    vASTAd29.addTrackingEvent(attributeValue36, "complete", strA18);
                    return;
                }
                return;
            }
            if (NotificationCompat.CATEGORY_ERROR.equals(attributeValue35)) {
                xmlPullParser.next();
                String strA19 = a(xmlPullParser.getText(), attributeValue37);
                i iVar8 = this.s;
                if (iVar8 != null) {
                    iVar8.f(strA19);
                    return;
                }
                VASTAd vASTAd30 = this.b;
                if (vASTAd30 != null) {
                    vASTAd30.addTrackingEvent(attributeValue36, NotificationCompat.CATEGORY_ERROR, strA19);
                    return;
                }
                return;
            }
            if ("view".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA20 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd31 = this.b;
                if (vASTAd31 != null) {
                    vASTAd31.addTrackingEvent(attributeValue36, "view", strA20);
                    return;
                }
                return;
            }
            if ("fb".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA21 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd32 = this.b;
                if (vASTAd32 != null) {
                    vASTAd32.addTrackingEvent(attributeValue36, "fb", strA21);
                    return;
                }
                return;
            }
            if ("full".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA22 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd33 = this.b;
                if (vASTAd33 != null) {
                    vASTAd33.addTrackingEvent(attributeValue36, "full", strA22);
                    return;
                }
                return;
            }
            if ("mute".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA23 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd34 = this.b;
                if (vASTAd34 != null) {
                    vASTAd34.addTrackingEvent(attributeValue36, "mute", strA23);
                    return;
                }
                return;
            }
            if ("unmute".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA24 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd35 = this.b;
                if (vASTAd35 != null) {
                    vASTAd35.addTrackingEvent(attributeValue36, "unmute", strA24);
                    return;
                }
                return;
            }
            if ("landClose".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA25 = a(xmlPullParser.getText(), attributeValue37);
                d dVar10 = this.w;
                if (dVar10 != null) {
                    dVar10.b("landClose", strA25);
                    return;
                }
                VASTAd vASTAd36 = this.b;
                if (vASTAd36 != null) {
                    vASTAd36.addTrackingEvent(attributeValue36, "landClose", strA25);
                    return;
                }
                return;
            }
            if ("landClick".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA26 = a(xmlPullParser.getText(), attributeValue37);
                d dVar11 = this.w;
                if (dVar11 != null) {
                    dVar11.b("landClick", strA26);
                    return;
                }
                VASTAd vASTAd37 = this.b;
                if (vASTAd37 != null) {
                    vASTAd37.addTrackingEvent(attributeValue36, "landClick", strA26);
                    return;
                }
                return;
            }
            if (HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE.equals(attributeValue35)) {
                xmlPullParser.next();
                String strA27 = a(xmlPullParser.getText(), attributeValue37);
                d dVar12 = this.w;
                if (dVar12 != null) {
                    dVar12.b(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, strA27);
                    return;
                }
                i iVar9 = this.s;
                if (iVar9 != null) {
                    iVar9.e(strA27);
                    return;
                }
                VASTAd vASTAd38 = this.b;
                if (vASTAd38 != null) {
                    vASTAd38.addTrackingEvent(attributeValue36, HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, strA27);
                    return;
                }
                return;
            }
            if ("interactTrace".equals(attributeValue35)) {
                xmlPullParser.next();
                String strA28 = a(xmlPullParser.getText(), attributeValue37);
                VASTAd vASTAd39 = this.b;
                if (vASTAd39 != null) {
                    vASTAd39.addTrackingEvent(attributeValue36, "interactTrace", strA28);
                    return;
                }
                return;
            }
            return;
        }
        if ("VideoClicks".equals(str)) {
            Clicks clicks = new Clicks();
            this.g = clicks;
            VASTAd vASTAd40 = this.b;
            if (vASTAd40 != null) {
                vASTAd40.setVideoClick(clicks);
                return;
            }
            return;
        }
        if (!"ClickThrough".equals(str) && !"NonLinearClickThrough".equals(str)) {
            if (!"ClickTracking".equals(str) && !"NonLinearClickTracking".equals(str)) {
                if ("Entrance".equals(str)) {
                    xmlPullParser.next();
                    String text4 = xmlPullParser.getText();
                    if (TextUtils.isEmpty(text4) || (incentiveVastAd = this.d) == null) {
                        return;
                    }
                    incentiveVastAd.setEntryce(text4);
                    return;
                }
                if ("Duration".equals(str)) {
                    xmlPullParser.next();
                    xmlPullParser.getDepth();
                    String text5 = xmlPullParser.getText();
                    if (TextUtils.isEmpty(text5)) {
                        return;
                    }
                    String[] strArrSplit = text5.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
                    if (strArrSplit.length == 3) {
                        try {
                            iA = (l.a(strArrSplit[0]) * 3600) + (l.a(strArrSplit[1]) * 60) + l.a(strArrSplit[2]);
                        } catch (Exception unused) {
                            iA = 0;
                        }
                        i iVar10 = this.s;
                        if (iVar10 != null) {
                            iVar10.c(iA);
                        } else {
                            VASTAd vASTAd41 = this.b;
                            if (vASTAd41 != null && vASTAd41.getDuration() <= 0) {
                                this.b.setDuration(iA);
                            }
                        }
                        d dVar13 = this.w;
                        if (dVar13 != null) {
                            dVar13.a(iA);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if ("MediaFile".equals(str) && this.b != null) {
                    VASTMediaFile vASTMediaFile = new VASTMediaFile();
                    vASTMediaFile.setDuration(this.b.getDuration());
                    vASTMediaFile.setVideoClick(this.g);
                    this.b.setVideoClick(this.g);
                    vASTMediaFile.setDelivery(xmlPullParser.getAttributeValue(null, "delivery"));
                    vASTMediaFile.setType(xmlPullParser.getAttributeValue(null, "type"));
                    vASTMediaFile.setWidth(BigInteger.valueOf(l.a(xmlPullParser.getAttributeValue(null, "width"))));
                    vASTMediaFile.setHeight(BigInteger.valueOf(l.a(xmlPullParser.getAttributeValue(null, "height"))));
                    xmlPullParser.next();
                    vASTMediaFile.setValue(xmlPullParser.getText());
                    this.b.addMediafile(vASTMediaFile);
                    return;
                }
                if ("StaticResource".equals(str)) {
                    String attributeValue39 = xmlPullParser.getAttributeValue(null, "creativeType");
                    String attributeValue40 = xmlPullParser.getAttributeValue(null, "open_way");
                    String attributeValue41 = xmlPullParser.getAttributeValue(null, "md5");
                    VASTStaticResource vASTStaticResource2 = this.i;
                    if (vASTStaticResource2 != null) {
                        vASTStaticResource2.setMd5(attributeValue41);
                    }
                    xmlPullParser.getDepth();
                    i iVar11 = this.v;
                    if (iVar11 != null) {
                        iVar11.g(attributeValue39);
                        xmlPullParser.next();
                        this.v.a(xmlPullParser.getText());
                        return;
                    }
                    if (this.s != null) {
                        String attributeValue42 = xmlPullParser.getAttributeValue(null, "subType");
                        this.s.g(attributeValue39);
                        this.s.j(attributeValue42);
                        xmlPullParser.next();
                        this.s.a(xmlPullParser.getText());
                        return;
                    }
                    if (this.d != null) {
                        xmlPullParser.next();
                        this.d.setIcon(xmlPullParser.getText());
                        return;
                    }
                    if (this.w != null) {
                        int iA12 = l.a(xmlPullParser.getAttributeValue(null, "cWidth"));
                        int iA13 = l.a(xmlPullParser.getAttributeValue(null, "cHeight"));
                        xmlPullParser.next();
                        String text6 = xmlPullParser.getText();
                        if ("zip_online".equals(this.w.h())) {
                            this.w.k(text6);
                        } else if ("implant_img".equals(this.w.h())) {
                            this.w.l(text6);
                        } else {
                            this.w.g(text6);
                        }
                        d dVar14 = this.w;
                        dVar14.a = attributeValue41;
                        dVar14.b(iA12);
                        this.w.c(iA13);
                        this.w.b(attributeValue39);
                        this.w.g(l.a(attributeValue40));
                        return;
                    }
                    VASTStaticResource vASTStaticResource3 = this.i;
                    if (vASTStaticResource3 != null) {
                        vASTStaticResource3.setType(attributeValue39);
                    }
                    String attributeValue43 = xmlPullParser.getAttributeValue(null, "style");
                    VASTStaticResource vASTStaticResource4 = this.i;
                    if (vASTStaticResource4 != null) {
                        vASTStaticResource4.setStyle(attributeValue43);
                    }
                    String attributeValue44 = xmlPullParser.getAttributeValue(null, CmcdConfiguration.KEY_CONTENT_ID);
                    VASTStaticResource vASTStaticResource5 = this.i;
                    if (vASTStaticResource5 != null) {
                        vASTStaticResource5.setCid(attributeValue44);
                    }
                    xmlPullParser.next();
                    String text7 = xmlPullParser.getText();
                    VASTStaticResource vASTStaticResource6 = this.i;
                    if (vASTStaticResource6 != null) {
                        vASTStaticResource6.setUrl(text7);
                        return;
                    }
                    return;
                }
                if ("Desc".equals(str)) {
                    xmlPullParser.next();
                    String text8 = xmlPullParser.getText();
                    e9d e9dVar = this.u;
                    if (e9dVar != null) {
                        e9dVar.d(text8);
                        return;
                    }
                    d dVar15 = this.w;
                    if (dVar15 != null) {
                        dVar15.f(text8);
                        return;
                    }
                    VASTAd vASTAd42 = this.b;
                    if (vASTAd42 != null) {
                        vASTAd42.setDiscription(text8);
                        return;
                    }
                    return;
                }
                if ("Type".equals(str)) {
                    xmlPullParser.next();
                    String text9 = xmlPullParser.getText();
                    e9d e9dVar2 = this.u;
                    if (e9dVar2 != null) {
                        e9dVar2.b(l.a(text9));
                        return;
                    }
                    return;
                }
                if ("CurrentPrice".equals(str)) {
                    xmlPullParser.next();
                    String text10 = xmlPullParser.getText();
                    e9d e9dVar3 = this.u;
                    if (e9dVar3 != null) {
                        e9dVar3.h(text10);
                        return;
                    }
                    return;
                }
                if ("Color".equals(str)) {
                    xmlPullParser.next();
                    String text11 = xmlPullParser.getText();
                    t tVar2 = this.t;
                    if (tVar2 != null) {
                        tVar2.c(text11);
                        return;
                    }
                    b bVar = this.o;
                    if (bVar != null) {
                        bVar.c(text11);
                        return;
                    }
                    return;
                }
                if ("ButtonDesc".equals(str)) {
                    xmlPullParser.next();
                    b bVar2 = this.o;
                    if (bVar2 != null) {
                        bVar2.b(xmlPullParser.getText());
                        return;
                    }
                    return;
                }
                if ("Image".equals(str)) {
                    xmlPullParser.next();
                    String text12 = xmlPullParser.getText();
                    u uVar2 = this.n;
                    if (uVar2 != null) {
                        uVar2.c(text12);
                        return;
                    }
                    return;
                }
                if (DataTypes.OBJ_COUNTER.equals(str)) {
                    xmlPullParser.next();
                    String text13 = xmlPullParser.getText();
                    u uVar3 = this.n;
                    if (uVar3 != null) {
                        uVar3.a(qyd.a(text13, 1));
                        return;
                    }
                    return;
                }
                if ("VoteUri".equals(str)) {
                    xmlPullParser.next();
                    String text14 = xmlPullParser.getText();
                    u uVar4 = this.n;
                    if (uVar4 != null) {
                        uVar4.d(text14);
                        return;
                    }
                    return;
                }
                if ("Icon".equals(str)) {
                    xmlPullParser.next();
                    String text15 = xmlPullParser.getText();
                    t tVar3 = this.t;
                    if (tVar3 != null) {
                        tVar3.b(text15);
                        return;
                    }
                    return;
                }
                if ("ButtonTitle".equals(str)) {
                    xmlPullParser.next();
                    String text16 = xmlPullParser.getText();
                    e9d e9dVar4 = this.u;
                    if (e9dVar4 != null) {
                        e9dVar4.j(text16);
                        return;
                    }
                    d dVar16 = this.w;
                    if (dVar16 != null) {
                        dVar16.e(text16);
                        return;
                    }
                    return;
                }
                if ("MainImage".equals(str)) {
                    xmlPullParser.next();
                    String text17 = xmlPullParser.getText();
                    d dVar17 = this.w;
                    if (dVar17 != null) {
                        dVar17.g(text17);
                        return;
                    }
                    return;
                }
                if ("HideButton".equals(str)) {
                    xmlPullParser.next();
                    String text18 = xmlPullParser.getText();
                    d dVar18 = this.w;
                    if (dVar18 != null) {
                        dVar18.d(l.a(text18));
                        return;
                    }
                    return;
                }
                if ("SubImage".equals(str)) {
                    xmlPullParser.next();
                    String text19 = xmlPullParser.getText();
                    d dVar19 = this.w;
                    if (dVar19 != null) {
                        dVar19.h(text19);
                        return;
                    }
                    return;
                }
                if ("Advertiser".equals(str)) {
                    xmlPullParser.next();
                    String text20 = xmlPullParser.getText();
                    VASTAd vASTAd43 = this.b;
                    if (vASTAd43 != null) {
                        vASTAd43.setAdOrigin(text20);
                        return;
                    }
                    return;
                }
                if ("Banner".equals(str)) {
                    xmlPullParser.next();
                    String text21 = xmlPullParser.getText();
                    t tVar4 = this.t;
                    if (tVar4 != null) {
                        tVar4.d(text21);
                        return;
                    }
                    return;
                }
                if ("HistoryPrice".equals(str)) {
                    xmlPullParser.next();
                    String text22 = xmlPullParser.getText();
                    e9d e9dVar5 = this.u;
                    if (e9dVar5 != null) {
                        e9dVar5.f(text22);
                        return;
                    }
                    return;
                }
                if ("Content".equals(str)) {
                    xmlPullParser.next();
                    String text23 = xmlPullParser.getText();
                    u uVar5 = this.n;
                    if (uVar5 != null) {
                        uVar5.a(text23);
                        return;
                    }
                    return;
                }
                if ("Button".equals(str)) {
                    if (this.z == null) {
                        s sVar = new s();
                        this.z = sVar;
                        VASTAd vASTAd44 = this.b;
                        if (vASTAd44 != null) {
                            vASTAd44.setButtonObject(sVar);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if ("TextPos".equals(str)) {
                    xmlPullParser.next();
                    b bVar3 = this.o;
                    if (bVar3 != null) {
                        bVar3.a(l.a(xmlPullParser.getText()));
                        return;
                    }
                    return;
                }
                if ("MultiChoose".equals(str)) {
                    k kVar = new k();
                    this.y = kVar;
                    VASTFloatAd vASTFloatAd5 = this.e;
                    if (vASTFloatAd5 != null) {
                        vASTFloatAd5.addMultiChooseEntry(kVar);
                        return;
                    }
                    return;
                }
                if ("Title".equals(str)) {
                    xmlPullParser.next();
                    String text24 = xmlPullParser.getText();
                    k kVar2 = this.y;
                    if (kVar2 != null) {
                        kVar2.b(text24);
                    } else {
                        e9d e9dVar6 = this.u;
                        if (e9dVar6 != null) {
                            e9dVar6.c(text24);
                        } else {
                            t tVar5 = this.t;
                            if (tVar5 != null) {
                                tVar5.a(text24);
                            } else {
                                d dVar20 = this.w;
                                if (dVar20 != null) {
                                    dVar20.d(text24);
                                } else {
                                    s sVar2 = this.z;
                                    if (sVar2 != null) {
                                        sVar2.a(text24);
                                    } else {
                                        b bVar4 = this.o;
                                        if (bVar4 != null) {
                                            bVar4.a(text24);
                                        } else {
                                            VASTAd vASTAd45 = this.b;
                                            if (vASTAd45 != null) {
                                                vASTAd45.setTitle(text24);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    b();
                    h hVar2 = this.p;
                    if (hVar2 != null) {
                        hVar2.g = text24;
                        return;
                    }
                    return;
                }
                if ("AdSlotId".equals(str)) {
                    xmlPullParser.next();
                    String text25 = xmlPullParser.getText();
                    k kVar3 = this.y;
                    if (kVar3 != null) {
                        kVar3.a(text25);
                        return;
                    }
                    return;
                }
                if ("Error".equals(str)) {
                    xmlPullParser.next();
                    String text26 = xmlPullParser.getText();
                    VASTAd vASTAd46 = this.b;
                    if (vASTAd46 != null) {
                        vASTAd46.addError(text26);
                        return;
                    }
                    return;
                }
                if ("Trace".equals(str)) {
                    xmlPullParser.next();
                    String text27 = xmlPullParser.getText();
                    VASTAd vASTAd47 = this.b;
                    if (vASTAd47 != null) {
                        vASTAd47.addTraceCheck(text27);
                        return;
                    }
                    return;
                }
                if ("AdLost".equals(str)) {
                    xmlPullParser.next();
                    String text28 = xmlPullParser.getText();
                    VASTAd vASTAd48 = this.b;
                    if (vASTAd48 != null) {
                        vASTAd48.setAdlosturl(text28);
                        return;
                    }
                    return;
                }
                if ("CreativeNetTimeout".equals(str)) {
                    xmlPullParser.next();
                    this.a.b(l.a(xmlPullParser.getText()));
                    return;
                }
                if (TrackingKey.SHOW_TIME.equals(str)) {
                    xmlPullParser.next();
                    h hVar3 = this.p;
                    if (hVar3 != null) {
                        hVar3.h = l.a(xmlPullParser.getText());
                        return;
                    }
                    return;
                }
                if ("BgImg".equals(str)) {
                    xmlPullParser.next();
                    return;
                }
                if ("SelHeadImg".equals(str)) {
                    xmlPullParser.next();
                    return;
                }
                if ("SelHeadColor".equals(str)) {
                    xmlPullParser.next();
                    return;
                }
                if ("title_color".equals(str)) {
                    xmlPullParser.next();
                    c cVar = this.q;
                    if (cVar != null) {
                        cVar.a = xmlPullParser.getText();
                        return;
                    }
                    return;
                }
                if ("title_bgcolor".equals(str)) {
                    xmlPullParser.next();
                    c cVar2 = this.q;
                    if (cVar2 != null) {
                        cVar2.b = xmlPullParser.getText();
                        return;
                    }
                    return;
                }
                if ("desc_color".equals(str)) {
                    xmlPullParser.next();
                    c cVar3 = this.q;
                    if (cVar3 != null) {
                        cVar3.c = xmlPullParser.getText();
                        return;
                    }
                    return;
                }
                if ("desc_bgcolor".equals(str)) {
                    xmlPullParser.next();
                    c cVar4 = this.q;
                    if (cVar4 != null) {
                        cVar4.d = xmlPullParser.getText();
                        return;
                    }
                    return;
                }
                if ("caption_time".equals(str)) {
                    xmlPullParser.next();
                    c cVar5 = this.q;
                    if (cVar5 != null) {
                        cVar5.e = xmlPullParser.getText();
                        return;
                    }
                    return;
                }
                if ("unfold_time".equals(str)) {
                    xmlPullParser.next();
                    g gVar = this.r;
                    if (gVar != null) {
                        gVar.a = l.a(xmlPullParser.getText());
                        return;
                    }
                    return;
                }
                if ("expand_count".equals(str)) {
                    xmlPullParser.next();
                    g gVar2 = this.r;
                    if (gVar2 != null) {
                        gVar2.b = l.a(xmlPullParser.getText());
                        return;
                    }
                    return;
                }
                if ("expand_day".equals(str)) {
                    xmlPullParser.next();
                    g gVar3 = this.r;
                    if (gVar3 != null) {
                        gVar3.c = l.a(xmlPullParser.getText());
                        return;
                    }
                    return;
                }
                if ("bg_img".equals(str)) {
                    xmlPullParser.next();
                    g gVar4 = this.r;
                    if (gVar4 != null) {
                        gVar4.d = xmlPullParser.getText();
                        return;
                    }
                    return;
                }
                if ("bg_color".equals(str)) {
                    xmlPullParser.next();
                    g gVar5 = this.r;
                    if (gVar5 != null) {
                        gVar5.e = xmlPullParser.getText();
                        return;
                    }
                    return;
                }
                if ("BackUpResources".equals(str)) {
                    this.k = new o();
                    return;
                }
                if ("Resource".equals(str)) {
                    p pVar = new p();
                    this.l = pVar;
                    o oVar = this.k;
                    if (oVar != null) {
                        oVar.a(pVar);
                        return;
                    }
                    return;
                }
                if ("type".equals(str)) {
                    if (this.l != null) {
                        xmlPullParser.next();
                        this.l.a(xmlPullParser.getText());
                        return;
                    }
                    return;
                }
                if ("url".equals(str)) {
                    if (this.l != null) {
                        xmlPullParser.next();
                        this.l.b(xmlPullParser.getText());
                        return;
                    }
                    return;
                }
                if ("MidRollPreTime".equals(str)) {
                    xmlPullParser.next();
                    this.a.c(l.a(xmlPullParser.getText()));
                    return;
                }
                if ("PauseRollTime".equals(str)) {
                    xmlPullParser.next();
                    this.a.d(l.a(xmlPullParser.getText()));
                    return;
                }
                if ("VipNoAd".equals(str)) {
                    xmlPullParser.next();
                    this.a.a(l.a(xmlPullParser.getText()));
                    return;
                }
                if (DataTypes.OBJ_POSITION.equals(str)) {
                    String attributeValue45 = xmlPullParser.getAttributeValue(null, HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE);
                    String attributeValue46 = xmlPullParser.getAttributeValue(null, "rleft");
                    String attributeValue47 = xmlPullParser.getAttributeValue(null, "rright");
                    String attributeValue48 = xmlPullParser.getAttributeValue(null, "rtop");
                    String attributeValue49 = xmlPullParser.getAttributeValue(null, "rbottom");
                    VASTFloatAd vASTFloatAd6 = this.e;
                    if (vASTFloatAd6 == null || vASTFloatAd6.isHasPosition()) {
                        return;
                    }
                    if (this.e.getNt() == 0) {
                        this.e.setHasPosition(TextUtils.isEmpty(attributeValue46) || TextUtils.isEmpty(attributeValue47) || TextUtils.isEmpty(attributeValue48) || TextUtils.isEmpty(attributeValue49));
                    }
                    this.e.setClose(l.a(attributeValue45));
                    this.e.setLeft(l.a(attributeValue46, -1.0f));
                    this.e.setRight(l.a(attributeValue47, -1.0f));
                    this.e.setTop(l.a(attributeValue48, -1.0f));
                    this.e.setBottom(l.a(attributeValue49, -1.0f));
                    return;
                }
                if ("ReportUrl".equals(str) && this.b != null) {
                    xmlPullParser.next();
                    this.b.setReportUrl(xmlPullParser.getText());
                    return;
                }
                if ("RollTime".equals(str) && this.e != null) {
                    xmlPullParser.next();
                    this.e.setRolltime(l.a(xmlPullParser.getText()));
                    return;
                }
                if ("Skippbility".equals(str)) {
                    xmlPullParser.next();
                    this.a.e(l.a(xmlPullParser.getAttributeValue("skip", "skip")));
                    this.a.f(l.a(xmlPullParser.getAttributeValue("skipafter", "skipafter")));
                    return;
                }
                if ("Companion".equals(str)) {
                    d(xmlPullParser);
                    return;
                }
                if ("InnerFeed".equals(str)) {
                    b();
                    d();
                    return;
                }
                if ("StarInfoJson".equals(str)) {
                    xmlPullParser.next();
                    h hVar4 = this.p;
                    if (hVar4 != null) {
                        hVar4.m(xmlPullParser.getText());
                        return;
                    }
                    return;
                }
                if ("Caption".equals(str)) {
                    c();
                    return;
                }
                if ("ECommerce".equals(str)) {
                    e9d e9dVar7 = new e9d();
                    this.u = e9dVar7;
                    VASTFloatAd vASTFloatAd7 = this.e;
                    if (vASTFloatAd7 != null) {
                        vASTFloatAd7.setECommerce(e9dVar7);
                        return;
                    }
                    return;
                }
                if (!"Vote".equals(str) && !"VoteNative".equals(str)) {
                    if ("AiFollow".equals(str)) {
                        b bVar5 = new b();
                        this.o = bVar5;
                        VASTFloatAd vASTFloatAd8 = this.e;
                        if (vASTFloatAd8 != null) {
                            vASTFloatAd8.setAiFollow(bVar5);
                            return;
                        }
                        return;
                    }
                    if ("Native".equals(str)) {
                        d dVar21 = new d();
                        this.w = dVar21;
                        e eVar2 = this.x;
                        if (eVar2 != null) {
                            eVar2.a(dVar21);
                            return;
                        }
                        VASTAd vASTAd49 = this.b;
                        if (vASTAd49 != null) {
                            vASTAd49.addCompanionNative(dVar21);
                            return;
                        }
                        return;
                    }
                    if ("CompanionClickThrough".equals(str)) {
                        String attributeValue50 = xmlPullParser.getAttributeValue(null, "external");
                        String attributeValue51 = xmlPullParser.getAttributeValue(null, "action");
                        String attributeValue52 = xmlPullParser.getAttributeValue(null, "confirm");
                        xmlPullParser.next();
                        String text29 = xmlPullParser.getText();
                        d dVar22 = this.w;
                        if (dVar22 != null) {
                            dVar22.a(attributeValue51);
                            this.w.i(text29);
                            this.w.e(l.a(attributeValue50));
                            this.w.f(l.a(attributeValue52));
                            Clicks clicks2 = new Clicks();
                            clicks2.setClickThrough(text29);
                            clicks2.setSchemeNoticeConfirm(l.a(attributeValue52));
                            this.w.b(clicks2);
                            return;
                        }
                        i iVar12 = this.s;
                        if (iVar12 != null) {
                            iVar12.i(attributeValue50);
                            this.s.h(text29);
                            return;
                        }
                        return;
                    }
                    if ("Options".equals(str)) {
                        this.m = new com.mgmi.model.a();
                        this.m.b(xmlPullParser.getAttributeValue(null, "name"));
                        this.m.c(xmlPullParser.getAttributeValue(null, "avatar"));
                        VASTFloatAd vASTFloatAd9 = this.e;
                        if (vASTFloatAd9 != null) {
                            vASTFloatAd9.setAdOptionMessage(this.m);
                            return;
                        }
                        return;
                    }
                    if ("Option".equals(str)) {
                        if (this.e != null) {
                            this.e.addOptionMenu(xmlPullParser.getAttributeValue(null, ICode.CALL.CALL_KEY_CONTENT));
                            return;
                        }
                        return;
                    }
                    if ("Message".equals(str)) {
                        l2d l2dVar = new l2d(xmlPullParser.getAttributeValue(null, "type"));
                        l2dVar.a(xmlPullParser.getAttributeValue(null, "name"));
                        l2dVar.c(xmlPullParser.getAttributeValue(null, "avatar"));
                        xmlPullParser.next();
                        l2dVar.j(xmlPullParser.getText());
                        com.mgmi.model.a aVar = this.m;
                        if (aVar != null) {
                            aVar.a(l2dVar);
                            return;
                        }
                        VASTFloatAd vASTFloatAd10 = this.e;
                        if (vASTFloatAd10 != null) {
                            vASTFloatAd10.addBubbleEntry(l2dVar);
                            return;
                        }
                        return;
                    }
                    if ("HeadInfo".equals(str)) {
                        e();
                        return;
                    }
                    if ("flag".equals(str)) {
                        xmlPullParser.next();
                        String text30 = xmlPullParser.getText();
                        HeadInfo headInfo = this.B;
                        if (headInfo != null) {
                            headInfo.setShowHead("1".equalsIgnoreCase(text30));
                        }
                        h hVar5 = this.p;
                        if (hVar5 != null) {
                            hVar5.f = "1".equalsIgnoreCase(text30);
                            return;
                        }
                        return;
                    }
                    if ("head_url".equals(str)) {
                        if (this.B != null) {
                            xmlPullParser.next();
                            String text31 = xmlPullParser.getText();
                            this.B.setUserAvater(TextUtils.isEmpty(text31) ? "" : text31);
                            return;
                        }
                        return;
                    }
                    if ("user_name".equals(str)) {
                        if (this.B != null) {
                            xmlPullParser.next();
                            String text32 = xmlPullParser.getText();
                            this.B.setUserName(TextUtils.isEmpty(text32) ? "" : text32);
                            return;
                        }
                        return;
                    }
                    if ("Mid".equals(str)) {
                        xmlPullParser.next();
                        try {
                            int iA14 = l.a(xmlPullParser.getText());
                            VASTAd vASTAd50 = this.b;
                            if (vASTAd50 != null) {
                                vASTAd50.setMid(iA14);
                                return;
                            }
                            return;
                        } catch (NumberFormatException e4) {
                            e4.printStackTrace();
                            return;
                        }
                    }
                    if ("Id".equals(str)) {
                        xmlPullParser.next();
                        try {
                            int iA15 = l.a(xmlPullParser.getText());
                            VASTAd vASTAd51 = this.b;
                            if (vASTAd51 != null) {
                                vASTAd51.setPairid(iA15);
                                this.a.a(String.valueOf(iA15));
                                return;
                            }
                            return;
                        } catch (NumberFormatException e5) {
                            e5.printStackTrace();
                            return;
                        }
                    }
                    if ("Aid".equals(str)) {
                        xmlPullParser.next();
                        try {
                            int iA16 = l.a(xmlPullParser.getText());
                            if (iA16 > 0) {
                                List<com.mgmi.ads.api.e.i.a> listA = com.mgmi.ads.api.e.i.a().a(iA16 + "");
                                com.mgmi.ads.api.e.i.a aVar2 = new com.mgmi.ads.api.e.i.a();
                                VASTAd vASTAd52 = this.b;
                                if (vASTAd52 != null) {
                                    aVar2.a = vASTAd52.getMid();
                                    aVar2.b = this.b.getPairid();
                                    aVar2.c = iA16;
                                    if (listA.contains(aVar2)) {
                                        return;
                                    }
                                    listA.add(aVar2);
                                    com.mgmi.ads.api.e.i.a().a(listA, iA16 + "");
                                    return;
                                }
                                return;
                            }
                            return;
                        } catch (NumberFormatException e6) {
                            e6.printStackTrace();
                            return;
                        }
                    }
                    if ("AutoLand".equals(str)) {
                        xmlPullParser.next();
                        if (this.b != null) {
                            this.b.setAutoLand(l.a(xmlPullParser.getText(), 0));
                            return;
                        }
                        return;
                    }
                    if ("SchGuideA".equals(str)) {
                        xmlPullParser.next();
                        if (this.b != null) {
                            this.b.setSchGuideA(l.a(xmlPullParser.getText(), 0));
                            return;
                        }
                        return;
                    }
                    if ("SchGuideM".equals(str)) {
                        xmlPullParser.next();
                        if (this.b != null) {
                            this.b.setSchGuideM(l.a(xmlPullParser.getText(), 0));
                            return;
                        }
                        return;
                    }
                    if ("UseAntle".equals(str)) {
                        xmlPullParser.next();
                        if (this.s != null) {
                            this.s.i(l.a(xmlPullParser.getText(), 0));
                            return;
                        }
                        return;
                    }
                    if ("InteractType".equals(str)) {
                        xmlPullParser.next();
                        if (this.s != null) {
                            this.s.j(l.a(xmlPullParser.getText(), 0));
                            return;
                        }
                        return;
                    }
                    if ("InteractJson".equals(str)) {
                        xmlPullParser.next();
                        if (this.s != null) {
                            this.s.k(xmlPullParser.getText());
                            return;
                        }
                        return;
                    }
                    if ("OnlineAddr".equals(str)) {
                        xmlPullParser.next();
                        if (this.s != null) {
                            this.s.l(xmlPullParser.getText());
                            return;
                        }
                        return;
                    }
                    if ("InteractJsonM".equals(str)) {
                        xmlPullParser.next();
                        if (this.b != null) {
                            this.b.setInteractJsonM(xmlPullParser.getText());
                            return;
                        }
                        return;
                    }
                    if ("VoiceUrl".equals(str)) {
                        xmlPullParser.next();
                        if (this.b != null) {
                            this.b.setVoiceSrc(xmlPullParser.getText());
                            return;
                        }
                        return;
                    }
                    if ("AdTitle".equals(str)) {
                        xmlPullParser.next();
                        try {
                            int iA17 = l.a(xmlPullParser.getText());
                            VASTAd vASTAd53 = this.b;
                            if (vASTAd53 != null) {
                                vASTAd53.setCid(iA17);
                                return;
                            }
                            return;
                        } catch (NumberFormatException e7) {
                            e7.printStackTrace();
                            return;
                        }
                    }
                    if ("ContLabel".equals(str)) {
                        xmlPullParser.next();
                        try {
                            String text33 = xmlPullParser.getText();
                            VASTAd vASTAd54 = this.b;
                            if (vASTAd54 != null) {
                                vASTAd54.setContLabel(text33);
                                return;
                            }
                            return;
                        } catch (NumberFormatException e8) {
                            e8.printStackTrace();
                            return;
                        }
                    }
                    if ("SspWinPrice".equals(str)) {
                        xmlPullParser.next();
                        String text34 = xmlPullParser.getText();
                        if (this.b == null || TextUtils.isEmpty(text34)) {
                            return;
                        }
                        this.b.setSspPrice(text34);
                        return;
                    }
                    if ("WinNotice".equals(str)) {
                        xmlPullParser.next();
                        String text35 = xmlPullParser.getText();
                        if (this.b == null || TextUtils.isEmpty(text35)) {
                            return;
                        }
                        this.b.addWinNotices(text35);
                        return;
                    }
                    if ("LossNotice".equals(str)) {
                        xmlPullParser.next();
                        String text36 = xmlPullParser.getText();
                        if (this.b == null || TextUtils.isEmpty(text36)) {
                            return;
                        }
                        this.b.addLossNotices(text36);
                        return;
                    }
                    return;
                }
                e(xmlPullParser);
                return;
            }
            String attributeValue53 = xmlPullParser.getAttributeValue(null, "sdk");
            String attributeValue54 = xmlPullParser.getAttributeValue(null, "enc");
            xmlPullParser.next();
            String strA29 = a(xmlPullParser.getText(), attributeValue54);
            Clicks clicks3 = this.g;
            if (clicks3 != null) {
                clicks3.addClickTracking(attributeValue53, strA29);
            }
            Clicks clicks4 = this.h;
            if (clicks4 != null) {
                clicks4.addClickTracking(attributeValue53, strA29);
                return;
            }
            return;
        }
        String attributeValue55 = xmlPullParser.getAttributeValue(null, "external");
        Clicks clicks5 = this.g;
        if (clicks5 != null) {
            if (attributeValue55 == null) {
                attributeValue55 = "0";
            }
            clicks5.setExternal(attributeValue55);
        }
        String attributeValue56 = xmlPullParser.getAttributeValue(null, "confirm");
        Clicks clicks6 = this.g;
        if (clicks6 != null) {
            if (attributeValue56 == null) {
                attributeValue56 = "0";
            }
            clicks6.setSchemeNoticeConfirm(l.a(attributeValue56));
        }
        String attributeValue57 = xmlPullParser.getAttributeValue(null, "action");
        VASTAd vASTAd55 = this.b;
        if (vASTAd55 != null) {
            vASTAd55.setAction(attributeValue57);
        }
        Clicks clicks7 = this.g;
        if (clicks7 != null) {
            clicks7.setAction(attributeValue57);
        }
        String attributeValue58 = xmlPullParser.getAttributeValue(null, "click_style");
        Clicks clicks8 = this.g;
        if (clicks8 != null) {
            clicks8.setClickStyle(attributeValue58);
        }
        String attributeValue59 = xmlPullParser.getAttributeValue(null, "click_desc");
        Clicks clicks9 = this.g;
        if (clicks9 != null) {
            clicks9.setClickDesc(attributeValue59);
        }
        String attributeValue60 = xmlPullParser.getAttributeValue(null, "hid");
        Clicks clicks10 = this.g;
        if (clicks10 != null) {
            clicks10.setHid(attributeValue60);
        }
        String attributeValue61 = xmlPullParser.getAttributeValue(null, "vid");
        Clicks clicks11 = this.g;
        if (clicks11 != null) {
            clicks11.setVid(attributeValue61);
        }
        String attributeValue62 = xmlPullParser.getAttributeValue(null, "pre_load");
        Clicks clicks12 = this.g;
        if (clicks12 != null) {
            clicks12.setPre_load(attributeValue62);
        }
        xmlPullParser.next();
        String text37 = xmlPullParser.getText();
        Clicks clicks13 = this.g;
        if (clicks13 != null) {
            clicks13.setClickThrough(text37);
        }
    }

    private void b() {
        VASTFloatAd vASTFloatAd = this.e;
        if (vASTFloatAd != null) {
            h innerVideo = vASTFloatAd.getInnerVideo();
            this.p = innerVideo;
            if (innerVideo == null) {
                this.p = new h();
            }
            this.e.setInnerVideo(this.p);
        }
    }

    public void b(o oVar) {
        ArrayList arrayList = null;
        for (int i = 0; i < oVar.a.size(); i++) {
            final p pVar = oVar.a.get(i);
            if (pVar.a.equals("image")) {
                String strA = com.mgmi.b.c.a().a(pVar.a());
                if (!TextUtils.isEmpty(strA)) {
                    if (!new File(strA).exists()) {
                        ey4.b(com.mgmi.ads.api.c.a(), pVar.a(), new sed() {
                            @Override
                            public void a() {
                            }

                            @Override
                            public void a(File file) {
                            }
                        });
                    }
                } else {
                    ey4.b(com.mgmi.ads.api.c.a(), pVar.a(), new sed() {
                        @Override
                        public void a() {
                        }

                        @Override
                        public void a(File file) throws Throwable {
                            if (file != null) {
                                com.mgmi.b.c.a().a(pVar.a(), file.getAbsolutePath());
                            }
                        }
                    });
                }
            } else if (pVar.a.equals("video")) {
                yld.c(com.mgmi.ads.api.e.c.a(), com.mgmi.ads.api.e.c.b(), pVar.a());
            } else if (pVar.a.equals("h5_zip")) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(new WebviewResourceBean(pVar.a, pVar.b));
            }
        }
        if (arrayList != null) {
            new com.mgmi.ads.api.a.k(com.mgmi.ads.api.c.a(), arrayList).executeOnExecutor(i4d.a().c(), 0);
        }
    }

    private void c() {
        VASTFloatAd vASTFloatAd = this.e;
        if (vASTFloatAd != null) {
            c caption = vASTFloatAd.getCaption();
            this.q = caption;
            if (caption == null) {
                this.q = new c();
            }
            this.e.setCaption(this.q);
        }
    }

    private void c(String str, XmlPullParser xmlPullParser) {
        if ("Ad".equals(str)) {
            this.b = null;
            this.c = null;
            this.d = null;
            this.g = null;
            this.i = null;
            return;
        }
        if ("Companion".equals(str)) {
            this.x = null;
            this.h = null;
            this.s = null;
            this.v = null;
            this.w = null;
            return;
        }
        if ("MultiChoose".equals(str)) {
            a(this.y);
            this.y = null;
            return;
        }
        if ("Native".equals(str)) {
            this.w = null;
            return;
        }
        if ("PrevAd".equals(str)) {
            this.v = null;
        } else if ("Button".equals(str)) {
            this.z = null;
        } else {
            if ("Extensions".equals(str)) {
                VASTFloatAd vASTFloatAd = this.e;
                if (vASTFloatAd == null || (!("live_float".equals(vASTFloatAd.getmAdtype()) || TypedValues.Custom.S_FLOAT.equals(this.e.getmAdtype())) || xmlPullParser.getDepth() <= 2)) {
                    this.r = null;
                    this.p = null;
                    this.e = null;
                    return;
                }
                return;
            }
            if ("Options".equals(str)) {
                this.m = null;
                return;
            }
            if (!"Vote".equals(str) && !"VoteNative".equals(str)) {
                if ("VoteOption".equals(str)) {
                    this.n = null;
                    return;
                }
                if ("VoteOption".equals(str)) {
                    this.n = null;
                    return;
                }
                if ("AiFollow".equals(str)) {
                    this.o = null;
                    return;
                }
                if ("InnerFeed".equals(str)) {
                    return;
                }
                if ("Caption".equals(str)) {
                    this.q = null;
                    return;
                } else if ("Resource".equals(str)) {
                    this.l = null;
                } else if ("BackUpResources".equals(str)) {
                    a(this.k);
                    this.k = null;
                }
            } else {
                this.t = null;
                return;
            }
        }
        if ("HeadInfo".equals(str)) {
            this.B = null;
        }
    }

    private void d() {
        VASTFloatAd vASTFloatAd = this.e;
        if (vASTFloatAd != null) {
            g innerFeed = vASTFloatAd.getInnerFeed();
            this.r = innerFeed;
            if (innerFeed == null) {
                this.r = new g();
            }
            this.e.setInnerFeed(this.r);
        }
    }

    private com.mgmi.platform.view.a a(com.mgmi.platform.view.a aVar, String str, String str2, String str3, String str4) {
        aVar.d(l.a(str));
        aVar.e(l.a(str2));
        aVar.f(l.a(str3, 0));
        aVar.g(l.a(str4, 1));
        return aVar;
    }

    private VASTAd a(VASTAd vASTAd, XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "pre_play");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "show_type");
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "req_type");
        String attributeValue4 = xmlPullParser.getAttributeValue(null, "extra_type");
        String attributeValue5 = xmlPullParser.getAttributeValue(null, "back_btn");
        String attributeValue6 = xmlPullParser.getAttributeValue(null, "voice_btn");
        String attributeValue7 = xmlPullParser.getAttributeValue(null, "clk_btn");
        String attributeValue8 = xmlPullParser.getAttributeValue(null, "clk_area");
        String attributeValue9 = xmlPullParser.getAttributeValue(null, "msg_box");
        String attributeValue10 = xmlPullParser.getAttributeValue(null, "dao_time");
        String attributeValue11 = xmlPullParser.getAttributeValue(null, "imp_tp");
        vASTAd.setPre_play(l.a(attributeValue));
        vASTAd.setShow_type(l.a(attributeValue2));
        vASTAd.setReq_type(l.a(attributeValue3));
        vASTAd.setExtra_type(attributeValue4);
        vASTAd.setBack_btn(l.a(attributeValue5, 0));
        vASTAd.setVoice_btn(l.a(attributeValue6, 0));
        vASTAd.setClk_btn(l.a(attributeValue7, 1));
        vASTAd.setClk_area(l.a(attributeValue8, 0));
        vASTAd.setMsg_box(l.a(attributeValue9));
        vASTAd.setDaoTime(l.a(attributeValue10, 0));
        vASTAd.setImp_tp(l.a(attributeValue11, 1));
        return vASTAd;
    }

    private void a(k kVar) {
        VASTAd vASTAd = this.b;
        if (vASTAd == null || vASTAd.getCommonPlusList() == null || kVar == null || kVar.a() == null) {
            return;
        }
        for (e eVar : this.b.getCommonPlusList()) {
            if (eVar != null && eVar.c() == l.a(kVar.a())) {
                kVar.a(eVar);
                return;
            }
        }
    }

    private void a(final o oVar) {
        List<p> list;
        if (oVar == null || (list = oVar.a) == null || list.size() <= 0) {
            return;
        }
        i4d.a().b(new Runnable() {
            @Override
            public void run() {
                a.this.b(oVar);
            }
        });
    }

    private void a(XmlPullParser xmlPullParser, com.mgmi.platform.view.a aVar) {
        if (aVar != null) {
            String attributeValue = xmlPullParser.getAttributeValue(null, "nt");
            long jLongValue = TextUtils.isEmpty(attributeValue) ? 0L : Long.valueOf(attributeValue).longValue();
            aVar.a(jLongValue);
            aVar.j(g4d.j(xmlPullParser.getAttributeValue(null, "cnt")));
            aVar.b(xmlPullParser.getAttributeValue(null, "gid"));
            int iA = l.a(xmlPullParser.getAttributeValue(null, "req_rand"));
            if (iA > 0) {
                aVar.b(jLongValue - ((long) new Random().nextInt(iA / 1000)));
            }
        }
    }

    private String a(String str, String str2) {
        return wrd.b(str, str2);
    }
}
