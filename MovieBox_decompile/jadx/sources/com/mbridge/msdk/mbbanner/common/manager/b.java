package com.mbridge.msdk.mbbanner.common.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbbanner.common.util.BannerUtils;
import com.mbridge.msdk.out.MBridgeIds;
import com.transsion.gslb.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class b {

    private static final String f35238n = "b";

    private Context f35239a;

    private com.mbridge.msdk.mbbanner.common.data.b f35241c;

    private com.mbridge.msdk.mbbanner.common.util.a f35242d;

    private com.mbridge.msdk.mbbanner.common.listener.b f35243e;

    private com.mbridge.msdk.mbbanner.common.listener.d f35244f;

    private int f35240b = 0;

    private volatile boolean f35245g = false;

    private Timer f35246h = new Timer();

    private volatile List<String> f35247i = new ArrayList();

    private volatile boolean f35248j = false;

    private volatile boolean f35249k = false;

    private volatile boolean f35250l = false;

    private String f35251m = "";

    class a extends TimerTask {

        final String f35252a;

        final CampaignEx f35253b;

        a(String str, CampaignEx campaignEx) {
            this.f35252a = str;
            this.f35253b = campaignEx;
        }

        @Override
        public void run() {
            if (b.this.f35245g) {
                return;
            }
            b.this.f35245g = true;
            b.this.a(this.f35252a, -1, "", false, this.f35253b);
        }
    }

    class c extends com.mbridge.msdk.foundation.same.c.a {

        final String f35257a;

        final CampaignEx f35258b;

        final Context f35259c;

        c(String str, CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f35257a = str;
            this.f35258b = campaignEx;
            this.f35259c = context;
        }

        @Override
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.f35257a);
            cVar.a(str, eVar);
            com.mbridge.msdk.mbbanner.common.report.a.a(str, cVar, this.f35258b, this.f35259c, null);
        }
    }

    class d implements Runnable {

        final CampaignUnit f35261a;

        d(CampaignUnit campaignUnit) {
            this.f35261a = campaignUnit;
        }

        @Override
        public void run() {
            o0.c(b.f35238n, "在单独子线程保存数据库 开始");
            j.a(g.a(b.this.f35239a)).a();
            CampaignUnit campaignUnit = this.f35261a;
            if (campaignUnit != null && campaignUnit.getAds() != null && this.f35261a.getAds().size() > 0) {
                BannerUtils.uisList(b.this.f35239a, this.f35261a.getAds());
            }
            o0.c(b.f35238n, "在单独子线程保存数据库 完成");
        }
    }

    private static class e implements com.mbridge.msdk.foundation.same.image.c {

        private b f35263a;

        private String f35264b;

        private CampaignEx f35265c;

        public e(b bVar, String str, CampaignEx campaignEx) {
            this.f35263a = bVar;
            this.f35264b = str;
            this.f35265c = campaignEx;
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            if (MBridgeConstans.DEBUG) {
                o0.c(b.f35238n, "DownloadImageListener campaign image fail");
            }
            b bVar = this.f35263a;
            if (bVar != null) {
                bVar.a(this.f35264b, 1, str2, false, this.f35265c);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f35264b, this.f35265c.getCurrentLocalRid());
                cVarA.a(this.f35265c);
                cVarA.e(10);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                cVarA.e(10);
                eVar.a("resource_type", 10);
                eVar.a("result", 3);
                eVar.a("url", str2);
                com.mbridge.msdk.mbbanner.common.report.a.a("m_download_end", cVarA, eVar);
            } catch (Throwable th2) {
                o0.b(b.f35238n, th2.getMessage());
            }
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (MBridgeConstans.DEBUG) {
                o0.c(b.f35238n, "DownloadImageListener campaign image success");
            }
            b bVar = this.f35263a;
            if (bVar != null) {
                bVar.a(this.f35264b, 1, str, true, this.f35265c);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f35264b, this.f35265c.getCurrentLocalRid());
                cVarA.a(this.f35265c);
                cVarA.e(10);
                cVarA.e(10);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("resource_type", 10);
                eVar.a("result", 1);
                eVar.a("url", str);
                com.mbridge.msdk.mbbanner.common.report.a.a("m_download_end", cVarA, eVar);
            } catch (Throwable th2) {
                o0.b(b.f35238n, th2.getMessage());
            }
        }
    }

    public b(Context context, com.mbridge.msdk.mbbanner.common.data.b bVar, com.mbridge.msdk.mbbanner.common.listener.b bVar2, com.mbridge.msdk.mbbanner.common.util.a aVar) {
        this.f35239a = context.getApplicationContext();
        this.f35241c = bVar;
        this.f35243e = bVar2;
        this.f35242d = aVar;
    }

    private void b(String str, List<CampaignEx> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (CampaignEx campaignEx : list) {
            if (!TextUtils.isEmpty(campaignEx.getImageUrl())) {
                this.f35247i.add(campaignEx.getImageUrl());
                com.mbridge.msdk.foundation.same.image.b.a(this.f35239a).a(campaignEx.getImageUrl(), new e(this, str, campaignEx));
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(str, campaignEx.getCurrentLocalRid());
                cVarA.a(campaignEx);
                cVarA.e(10);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("resource_type", 10);
                com.mbridge.msdk.mbbanner.common.report.a.a("m_download_start", cVarA, eVar);
            }
        }
    }

    private void a(String str, int i10) {
        if (this.f35250l) {
            return;
        }
        if ((this.f35248j || this.f35249k) && this.f35247i.size() == 0) {
            o0.c(f35238n, "在子线程处理业务逻辑 完成");
            this.f35245g = true;
            this.f35250l = true;
            this.f35246h.cancel();
            this.f35242d.a(this.f35243e, str, i10);
            this.f35244f.a(str);
        }
    }

    private void a(String str, CampaignEx campaignEx) {
        String str2 = f35238n;
        o0.c(str2, "在子线程处理业务逻辑 完成");
        o0.c(str2, "downloadResource--> Fail");
        this.f35245g = true;
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880027);
        MBridgeIds mBridgeIds = new MBridgeIds();
        mBridgeIds.setUnitId(str);
        bVar.a(mBridgeIds);
        bVar.b(this.f35241c.a());
        bVar.a(campaignEx);
        this.f35242d.b(this.f35243e, bVar);
        this.f35244f.a(str);
    }

    class C0475b extends com.mbridge.msdk.mbbanner.common.response.a {

        final com.mbridge.msdk.mbbanner.common.data.a f35255c;

        C0475b(com.mbridge.msdk.mbbanner.common.data.a aVar) {
            this.f35255c = aVar;
        }

        @Override
        public void a(CampaignUnit campaignUnit) throws Throwable {
            try {
                o0.c(b.f35238n, "requestCampaign--> Succeed");
                campaignUnit.setLocalRequestId(this.f35255c.b());
                b.this.f35242d.a(b.this.f35243e, campaignUnit, this.unitId);
                b.this.a(this.unitId, this.f35255c.b(), campaignUnit);
            } catch (Exception e10) {
                o0.c(b.f35238n, "requestCampaign--> Fail with exception = " + e10.getMessage());
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880000);
                bVar.a(new MBridgeIds(this.placementId, this.unitId));
                bVar.b(this.f35255c.b());
                bVar.a((campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().isEmpty()) ? null : campaignUnit.getAds().get(0));
                bVar.a((Throwable) e10);
                b.this.f35242d.a(b.this.f35243e, bVar);
                b.this.f35244f.a(this.unitId);
            }
        }

        @Override
        public void a(int i10, String str) {
            o0.c(b.f35238n, "requestCampaign--> Fail errorCode:" + i10 + " msg:" + str);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880003);
            bVar.c(i10 + Utils.SEPARATOR + str);
            bVar.a(new MBridgeIds(this.placementId, this.unitId));
            bVar.b(this.f35255c.b());
            b.this.f35242d.a(b.this.f35243e, bVar);
            b.this.f35244f.a(this.unitId);
        }
    }

    private void b(String str, String str2, CampaignEx campaignEx) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        a(str, 3, str2, true, campaignEx);
    }

    private String b() {
        return this.f35241c.d();
    }

    private void b(String str) {
        this.f35241c.b(str);
    }

    public void a(String str, int i10, String str2, boolean z10, CampaignEx campaignEx) {
        if (!z10) {
            if (i10 == -1) {
                o0.b(f35238n, " unitId =" + str + " --> time out!");
            }
            this.f35246h.cancel();
            a(str, campaignEx);
            return;
        }
        if (i10 == 1) {
            o0.c(f35238n, "downloadResource--> Success Image");
            synchronized (this) {
                try {
                    this.f35247i.remove(str2);
                    if (this.f35247i.size() == 0) {
                        a(str, i10);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        if (i10 == 2) {
            o0.c(f35238n, "downloadResource--> Success banner_html");
            this.f35249k = true;
            a(str, i10);
        } else if (i10 == 3) {
            o0.c(f35238n, "downloadResource--> Success banner_url");
            this.f35248j = true;
            a(str, i10);
        }
    }

    private void a(String str, int i10, CampaignEx campaignEx) {
        this.f35246h.schedule(new a(str, campaignEx), i10);
    }

    public void a(String str, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar, com.mbridge.msdk.mbbanner.common.listener.d dVar) {
        boolean z10;
        try {
            o0.c(f35238n, "requestCampaign--> started");
            this.f35244f = dVar;
            C0475b c0475b = new C0475b(aVar);
            c0475b.setUnitId(str2);
            c0475b.setPlacementId(str);
            c0475b.setAdType(296);
            com.mbridge.msdk.mbbanner.common.request.a aVar2 = new com.mbridge.msdk.mbbanner.common.request.a(this.f35239a);
            this.f35240b = a(str2);
            com.mbridge.msdk.foundation.same.net.wrapper.e eVarA = com.mbridge.msdk.mbbanner.common.data.c.a(false, this.f35239a, str2, b(), this.f35240b, aVar);
            String strD = t0.d(str2);
            if (!TextUtils.isEmpty(strD)) {
                eVarA.a("j", strD);
            }
            String strA = aVar.a();
            if (TextUtils.isEmpty(strA)) {
                z10 = false;
            } else {
                c0475b.a(strA);
                z10 = true;
            }
            this.f35242d.a(z10);
            aVar2.choiceV3OrV5BySetting(1, eVarA, c0475b, strA, 30000L);
        } catch (Exception e10) {
            o0.b(f35238n, e10.getMessage());
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880002);
            bVar.a(new MBridgeIds(str, str2));
            this.f35242d.a(this.f35243e, bVar);
            this.f35244f.a(str2);
        }
    }

    public void a(String str, String str2, CampaignUnit campaignUnit) throws Throwable {
        com.mbridge.msdk.foundation.error.b bVar;
        CampaignEx campaignEx;
        if (campaignUnit == null) {
            com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880003);
            MBridgeIds mBridgeIds = new MBridgeIds();
            mBridgeIds.setUnitId(str);
            bVar2.a(mBridgeIds);
            bVar2.b(str2);
            this.f35242d.a(this.f35243e, bVar2);
            this.f35244f.a(str);
            return;
        }
        List<CampaignEx> listA = a(str, campaignUnit);
        a(campaignUnit);
        int i10 = 0;
        if (listA != null && listA.size() != 0) {
            o0.c(f35238n, "在子线程处理业务逻辑 开始");
            CampaignEx campaignEx2 = listA.get(0);
            a(str, 60000, campaignEx2);
            b(campaignUnit.getSessionId());
            a(str, listA);
            String strTrim = campaignEx2.getBannerUrl().trim();
            if (!TextUtils.isEmpty(strTrim)) {
                b(str, strTrim, campaignEx2);
                if (listA.size() > 0) {
                    while (i10 < listA.size()) {
                        listA.get(i10).setBannerUrl(campaignEx2.getBannerUrl());
                        listA.get(i10).setHasMBTplMark(true);
                        i10++;
                    }
                }
            } else {
                String strTrim2 = campaignEx2.getBannerHtml().trim();
                if (!TextUtils.isEmpty(strTrim2)) {
                    String strA = a(str, strTrim2, campaignEx2);
                    if (listA.size() > 0) {
                        while (i10 < listA.size()) {
                            listA.get(i10).setBannerHtml(strA);
                            listA.get(i10).setHasMBTplMark(strTrim2.contains("<MBTPLMARK>"));
                            i10++;
                        }
                    }
                } else {
                    this.f35249k = true;
                    this.f35248j = true;
                }
            }
            b(str, listA);
            return;
        }
        o0.c(f35238n, "tryDownloadOnLoadSuccess 返回的campaign 没有符合下载规则的");
        if (this.f35251m.contains("INSTALLED")) {
            bVar = new com.mbridge.msdk.foundation.error.b(880021, "APP ALREADY INSTALLED");
        } else {
            bVar = new com.mbridge.msdk.foundation.error.b(880003);
        }
        MBridgeIds mBridgeIds2 = new MBridgeIds();
        mBridgeIds2.setUnitId(str);
        bVar.a(mBridgeIds2);
        bVar.b(str2);
        if (campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0 && (campaignEx = campaignUnit.getAds().get(0)) != null) {
            bVar.a(campaignEx);
        }
        this.f35242d.a(this.f35243e, bVar);
        this.f35244f.a(str);
    }

    private List<CampaignEx> a(String str, CampaignUnit campaignUnit) {
        ArrayList arrayList = new ArrayList();
        if (campaignUnit != null) {
            try {
                if (campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0) {
                    ArrayList<CampaignEx> ads = campaignUnit.getAds();
                    o0.c(f35238n, "getNeedShowList 总共返回的campaign有：" + ads.size());
                    w.a(ads);
                    for (int i10 = 0; i10 < ads.size(); i10++) {
                        CampaignEx campaignEx = ads.get(i10);
                        if (campaignEx != null && campaignEx.getOfferType() != 99 && (!TextUtils.isEmpty(campaignEx.getBannerUrl()) || !TextUtils.isEmpty(campaignEx.getBannerHtml()) || !TextUtils.isEmpty(campaignEx.getImageUrl()))) {
                            if (t0.c(campaignEx)) {
                                campaignEx.setRtinsType(t0.c(this.f35239a, campaignEx.getPackageName()) ? 1 : 2);
                            }
                            if (com.mbridge.msdk.foundation.same.c.b(this.f35239a, campaignEx)) {
                                arrayList.add(campaignEx);
                            } else {
                                t0.a(str, campaignEx, com.mbridge.msdk.foundation.same.a.f34520x);
                                this.f35251m = "APP ALREADY INSTALLED";
                            }
                            a(campaignEx, this.f35239a, (com.mbridge.msdk.foundation.same.report.metrics.c) null, str, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
                        }
                    }
                    o0.c(f35238n, "getNeedShowList 返回有以下带有视频素材的campaign：" + arrayList.size());
                }
            } catch (Exception e10) {
                o0.b(f35238n, e10.getMessage());
            }
        }
        return arrayList;
    }

    private void a(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, context, cVar, new c(str, campaignEx, context, aVar));
        } catch (Exception e10) {
            o0.b(f35238n, e10.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0098  */
    private String a(String str, String str2, CampaignEx campaignEx) throws Throwable {
        File file;
        Throwable th2;
        FileOutputStream fileOutputStream;
        String absolutePath = "";
        if (!TextUtils.isEmpty(str2)) {
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    try {
                        String strB = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
                        String md5 = SameMD5.getMD5(z0.b(str2));
                        if (TextUtils.isEmpty(md5)) {
                            md5 = String.valueOf(System.currentTimeMillis());
                        }
                        File file2 = new File(strB, md5.concat(".html"));
                        Uri.parse(str2).getPath();
                        fileOutputStream = new FileOutputStream(file2);
                        try {
                            fileOutputStream.write(str2.getBytes());
                            fileOutputStream.flush();
                            absolutePath = file2.getAbsolutePath();
                            fileOutputStream.close();
                        } catch (Exception e10) {
                            e = e10;
                            fileOutputStream2 = fileOutputStream;
                            o0.b(f35238n, e.getMessage());
                            if (fileOutputStream2 != null) {
                                fileOutputStream2.close();
                            } else {
                                file = new File(absolutePath);
                                if (!file.exists()) {
                                    a(str, 2, str2, false, campaignEx);
                                } else {
                                    a(str, 2, str2, false, campaignEx);
                                }
                            }
                            return absolutePath;
                        } catch (Throwable th3) {
                            th2 = th3;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    throw th2;
                                } catch (Exception e11) {
                                    o0.b(f35238n, e11.getMessage());
                                    throw th2;
                                }
                            }
                            throw th2;
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        fileOutputStream = null;
                    }
                } catch (Exception e12) {
                    e = e12;
                }
            } catch (Exception e13) {
                o0.b(f35238n, e13.getMessage());
            }
            file = new File(absolutePath);
            if (!file.exists() && file.isFile() && file.canRead()) {
                a(str, 2, str2, true, campaignEx);
            } else {
                a(str, 2, str2, false, campaignEx);
            }
        }
        return absolutePath;
    }

    private void a(CampaignUnit campaignUnit) {
        new Thread(new d(campaignUnit)).start();
    }

    private int a(String str) {
        try {
            int iC = this.f35241c.c();
            if (iC > this.f35241c.b()) {
                return 0;
            }
            return iC;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    private void a(String str, List<CampaignEx> list) {
        int size = this.f35240b;
        if (list != null) {
            try {
                if (list.size() > 0) {
                    size += list.size();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (size > this.f35241c.b()) {
            o0.c(f35238n, "saveNextOffset 重置offset为0");
            size = 0;
        }
        o0.c(f35238n, "saveNextOffset 算出 下次的offset是:" + size);
        if (y0.b(str)) {
            this.f35241c.a(size);
        }
    }
}
