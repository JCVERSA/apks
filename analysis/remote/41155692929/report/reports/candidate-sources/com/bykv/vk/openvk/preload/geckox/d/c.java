package com.bykv.vk.openvk.preload.geckox.d;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.model.CheckRequestBodyModel;
import com.bykv.vk.openvk.preload.geckox.model.Common;
import com.bykv.vk.openvk.preload.geckox.model.ComponentModel;
import com.bykv.vk.openvk.preload.geckox.model.Response;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import com.snaptube.extractor.pluginlib.models.Format;
import java.io.File;
import java.io.FileFilter;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class c extends com.bykv.vk.openvk.preload.b.d<Map<String, List<Pair<String, Long>>>, List<UpdatePackage>> {
    private com.bykv.vk.openvk.preload.geckox.b d;
    private Map<String, Map<String, Object>> e;
    private Map<String, List<CheckRequestBodyModel.TargetChannel>> f;
    private com.bykv.vk.openvk.preload.geckox.e.a.a g;
    private String h;
    private com.bykv.vk.openvk.preload.geckox.a.a i = new com.bykv.vk.openvk.preload.geckox.a.a();

    public class AnonymousClass1 implements FileFilter {
        public AnonymousClass1() {
        }

        @Override
        public final boolean accept(File file) {
            return file.isDirectory();
        }
    }

    public class AnonymousClass2 implements Runnable {
        private File a;

        public AnonymousClass2(File file) {
            this.a = file;
        }

        @Override
        public final void run() {
            com.bykv.vk.openvk.preload.geckox.utils.b.a(this.a);
        }
    }

    public class AnonymousClass3 extends com.bykv.vk.openvk.preload.a.c.a<Response<ComponentModel>> {
        public AnonymousClass3() {
        }
    }

    public static class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    public static class b extends RuntimeException {
        public b(String str, Throwable th) {
            super(str, th);
        }
    }

    public static class C0084c extends RuntimeException {
        public C0084c(String str, Throwable th) {
            super(str, th);
        }
    }

    private static long a(List<Pair<String, Long>> list, String str) {
        for (Pair<String, Long> pair : list) {
            if (((String) pair.first).equals(str)) {
                return ((Long) pair.second).longValue();
            }
        }
        return 0L;
    }

    private Object a2(com.bykv.vk.openvk.preload.b.b<List<UpdatePackage>> bVar, Map<String, List<Pair<String, Long>>> map) throws Exception {
        List<Pair<String, com.bykv.vk.openvk.preload.geckox.f.a>> listC;
        Map<String, List<UpdatePackage>> mapA = a(map);
        com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.d, this.i);
        Iterator<Map.Entry<String, List<UpdatePackage>>> it2 = mapA.entrySet().iterator();
        while (it2.hasNext()) {
            Iterator<UpdatePackage> it3 = it2.next().getValue().iterator();
            while (it3.hasNext()) {
                UpdatePackage next = it3.next();
                long localVersion = next.getLocalVersion();
                long version = next.getVersion();
                if (version < localVersion) {
                    next.getChannel();
                    File[] fileArrListFiles = new File(this.d.l(), next.getAccessKey() + File.separator + next.getChannel()).listFiles(new AnonymousClass1());
                    if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                        for (File file : fileArrListFiles) {
                            try {
                                long j = Long.parseLong(file.getName());
                                if (j > version) {
                                    File file2 = new File(file.getParent(), file.getName() + "--pending-delete");
                                    file.renameTo(file2);
                                    com.bykv.vk.openvk.preload.geckox.utils.c.a().execute(new AnonymousClass2(file2));
                                } else if (j == version) {
                                    it3.remove();
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, List<UpdatePackage>>> it4 = mapA.entrySet().iterator();
        while (it4.hasNext()) {
            arrayList.addAll(it4.next().getValue());
        }
        Object objA = null;
        try {
            listC = c(arrayList);
            try {
                objA = bVar.a(arrayList);
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
            listC = null;
        }
        b(listC);
        a(arrayList);
        return objA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Map<String, List<UpdatePackage>> a(Map<String, List<Pair<String, Long>>> map) throws Exception {
        String strB = b(map);
        String str = Format.DOWNLOAD_HTTPS + this.d.j() + "/gecko/server/v3/package";
        try {
            this.i.f = com.bykv.vk.openvk.preload.geckox.utils.e.a(this.d.a());
            com.bykv.vk.openvk.preload.geckox.net.Response responseDoPost = this.d.i().doPost(str, strB);
            com.bykv.vk.openvk.preload.geckox.a.a aVar = this.i;
            aVar.g = responseDoPost.code;
            aVar.d = responseDoPost.msg;
            Map<String, String> map2 = responseDoPost.headers;
            String str2 = "";
            if (map2 != null && !map2.isEmpty()) {
                String str3 = map2.get("x-tt-logid");
                if (TextUtils.isEmpty(str3)) {
                    str3 = map2.get("X-Tt-Logid");
                    if (TextUtils.isEmpty(str3)) {
                        String str4 = map2.get("X-TT-LOGID");
                        if (!TextUtils.isEmpty(str4)) {
                            str2 = str4;
                        }
                    } else {
                        str2 = str3;
                    }
                } else {
                    str2 = str3;
                }
            }
            aVar.e = str2;
            if (responseDoPost.code != 200) {
                throw new NetworkErrorException("net work get failed, code: " + responseDoPost.code + ", url:" + str);
            }
            String str5 = responseDoPost.body;
            try {
                Response response = (Response) (str5 == null ? null : com.bykv.vk.openvk.preload.geckox.c.b.a().b().a(new StringReader(str5), new AnonymousClass3().b()));
                int i = response.status;
                if (i != 0) {
                    if (i == 2000) {
                        com.bykv.vk.openvk.preload.geckox.a.a.a(this.d);
                        return new HashMap();
                    }
                    String str6 = "check update error，unknow status code，response.status：" + response.status;
                    com.bykv.vk.openvk.preload.geckox.a.a aVar2 = this.i;
                    aVar2.d = str6;
                    com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.d, aVar2);
                    throw new a(str6);
                }
                if (response.data == 0) {
                    com.bykv.vk.openvk.preload.geckox.a.a aVar3 = this.i;
                    aVar3.d = "check update error：response.data==null";
                    com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.d, aVar3);
                    throw new a("check update error：response.data==null");
                }
                com.bykv.vk.openvk.preload.geckox.a.a.a(this.d.a(), ((ComponentModel) response.data).getUniversalStrategies(), this.d.l(), this.g);
                Map<String, List<UpdatePackage>> packages = ((ComponentModel) response.data).getPackages();
                if (packages == null || packages.isEmpty()) {
                    com.bykv.vk.openvk.preload.geckox.a.a.a(this.d);
                    return new HashMap();
                }
                for (String str7 : this.d.e()) {
                    List<UpdatePackage> list = packages.get(str7);
                    if (list != null && !list.isEmpty()) {
                        for (UpdatePackage updatePackage : list) {
                            updatePackage.setAccessKey(str7);
                            updatePackage.setLocalVersion(a(map.get(str7), updatePackage.getChannel()));
                        }
                    }
                }
                return packages;
            } catch (Throwable th) {
                this.i.d = "json parse failed：" + th.getMessage();
                com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.d, this.i);
                throw new b("json parse failed：" + str5 + " caused by:" + th.getMessage(), th);
            }
        } catch (Exception e) {
            com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.d, this.i);
            throw new C0084c("request failed：url:" + str + ", caused by:" + e.getMessage(), e);
        }
    }

    private void a(List<UpdatePackage> list) {
        if (list.isEmpty()) {
            return;
        }
        for (UpdatePackage updatePackage : list) {
            com.bykv.vk.openvk.preload.geckox.a.c.a(new File(new File(this.d.l(), updatePackage.getAccessKey()), updatePackage.getChannel()).getAbsolutePath());
        }
    }

    private String b(Map<String, List<Pair<String, Long>>> map) {
        List<CheckRequestBodyModel.TargetChannel> list;
        CheckRequestBodyModel checkRequestBodyModel = new CheckRequestBodyModel();
        Context contextA = this.d.a();
        checkRequestBodyModel.setCommon(new Common(this.d.k(), this.d.m(), this.d.o(), com.bykv.vk.openvk.preload.geckox.utils.a.b(contextA), com.bykv.vk.openvk.preload.geckox.utils.e.a(contextA), null, null));
        HashMap map2 = new HashMap();
        for (Map.Entry<String, List<Pair<String, Long>>> entry : map.entrySet()) {
            HashMap map3 = new HashMap();
            for (Pair<String, Long> pair : entry.getValue()) {
                CheckRequestBodyModel.LocalChannel localChannel = new CheckRequestBodyModel.LocalChannel();
                localChannel.localVersion = (Long) pair.second;
                map3.put(pair.first, localChannel);
            }
            map2.put(entry.getKey(), map3);
        }
        try {
            com.bykv.vk.openvk.preload.a.d dVarB = com.bykv.vk.openvk.preload.geckox.c.b.a().b();
            this.i.a = dVarB.a(map2);
            checkRequestBodyModel.setLocal(map2);
            HashMap map4 = new HashMap();
            for (String str : this.d.e()) {
                CheckRequestBodyModel.Group group = new CheckRequestBodyModel.Group();
                group.groupName = this.h;
                Map<String, List<CheckRequestBodyModel.TargetChannel>> map5 = this.f;
                if (map5 != null && !map5.isEmpty() && (list = this.f.get(str)) != null && !list.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    group.targetChannels = arrayList;
                    arrayList.addAll(list);
                }
                map4.put(str, group);
            }
            this.i.b = dVarB.a(map4);
            checkRequestBodyModel.setDeployments(map4);
            Map<String, Map<String, Object>> map6 = this.e;
            if (map6 != null) {
                this.i.c = dVarB.a(map6);
                checkRequestBodyModel.setCustom(this.e);
            }
            return dVarB.a(checkRequestBodyModel);
        } catch (Throwable unused) {
            return "";
        }
    }

    private static void b(List<Pair<String, com.bykv.vk.openvk.preload.geckox.f.a>> list) {
        if (list == null) {
            return;
        }
        Iterator<Pair<String, com.bykv.vk.openvk.preload.geckox.f.a>> it2 = list.iterator();
        while (it2.hasNext()) {
            try {
                ((com.bykv.vk.openvk.preload.geckox.f.a) it2.next().second).a();
            } catch (Exception unused) {
            }
        }
    }

    private List<Pair<String, com.bykv.vk.openvk.preload.geckox.f.a>> c(List<UpdatePackage> list) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (UpdatePackage updatePackage : list) {
            try {
                File file = new File(new File(this.d.l(), updatePackage.getAccessKey()), updatePackage.getChannel());
                if (file.isFile()) {
                    com.bykv.vk.openvk.preload.geckox.utils.b.a(file);
                }
                if (!file.mkdirs() && !file.isDirectory()) {
                    file.getAbsolutePath();
                    throw new RuntimeException("can not create channel dir:" + file.getAbsolutePath());
                }
                com.bykv.vk.openvk.preload.geckox.f.a aVarA = com.bykv.vk.openvk.preload.geckox.f.a.a(file.getAbsolutePath() + File.separator + "update.lock");
                if (aVarA != null) {
                    arrayList.add(new Pair(updatePackage.getChannel(), aVarA));
                    arrayList2.add(updatePackage);
                } else {
                    com.bykv.vk.openvk.preload.geckox.e.a.a aVar = this.g;
                    updatePackage.getChannel();
                }
            } catch (Exception unused) {
                updatePackage.getChannel();
                com.bykv.vk.openvk.preload.geckox.e.a.a aVar2 = this.g;
            }
        }
        list.clear();
        list.addAll(arrayList2);
        return arrayList;
    }

    @Override
    public final Object a(com.bykv.vk.openvk.preload.b.b<List<UpdatePackage>> bVar, Map<String, List<Pair<String, Long>>> map) throws Throwable {
        return a2(bVar, map);
    }

    @Override
    public final void a(Object... objArr) {
        super.a(objArr);
        this.d = (com.bykv.vk.openvk.preload.geckox.b) objArr[0];
        this.e = (Map) objArr[1];
        this.f = (Map) objArr[2];
        this.g = (com.bykv.vk.openvk.preload.geckox.e.a.a) objArr[3];
        this.h = (String) objArr[4];
    }
}
