package com.bytedance.sdk.openadsdk.Jcg;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.buffer.stream.BufferOutputStream;
import com.bykv.vk.openvk.preload.geckox.net.INetWork;
import com.bykv.vk.openvk.preload.geckox.net.Response;
import com.bykv.vk.openvk.preload.geckox.utils.CloseableUtils;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.HiB;
import com.bytedance.sdk.component.sP.Sj.TKC;
import com.bytedance.sdk.component.sP.Sj.Ym;
import com.bytedance.sdk.component.sP.Sj.Zq;
import com.bytedance.sdk.component.sP.Sj.sef;
import com.bytedance.sdk.component.sP.Sj.uA;
import com.bytedance.sdk.component.sP.Sj.vS;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class Sj implements INetWork {
    protected Ym Sj;
    protected Ym sP;

    public Sj() {
        Ym.Sj sj2 = new Ym.Sj();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.Sj = sj2.Sj(10L, timeUnit).sP(10L, timeUnit).TKC(10L, timeUnit).Sj();
        this.sP = new Ym.Sj().Sj(10L, timeUnit).sP(30L, timeUnit).TKC(30L, timeUnit).Sj();
    }

    private Map<String, String> Sj(vS vSVar) {
        if (vSVar == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < vSVar.Sj(); i10++) {
            map.put(vSVar.Sj(i10), vSVar.sP(i10));
        }
        return map;
    }

    @Override
    public Response doGet(String str) throws Exception {
        Zq zqSP = this.Sj.Sj(new Fmk.Sj().Sj().sP(str).sP()).sP();
        return new Response(Sj(zqSP.Jcg()), zqSP.TKC() == 200 ? zqSP.vS().sP() : null, zqSP.TKC(), zqSP.HiB());
    }

    @Override
    public Response doPost(String str, List<Pair<String, String>> list) throws Exception {
        HiB.Sj sj2 = new HiB.Sj();
        if (list != null) {
            for (Pair<String, String> pair : list) {
                sj2.Sj((String) pair.first, (String) pair.second);
            }
        }
        Zq zqSP = this.Sj.Sj(new Fmk.Sj().sP(str).Sj((sef) sj2.Sj()).sP()).sP();
        return new Response(Sj(zqSP.Jcg()), zqSP.TKC() == 200 ? zqSP.vS().sP() : null, zqSP.TKC(), zqSP.HiB());
    }

    @Override
    public void downloadFile(String str, long j10, BufferOutputStream bufferOutputStream) throws Exception {
        BufferedInputStream bufferedInputStream;
        Exception e10;
        BufferedInputStream bufferedInputStream2 = null;
        int i10 = 0;
        try {
            try {
                Zq zqSP = this.sP.Sj(new Fmk.Sj().Sj().sP(str).sP()).sP();
                int iTKC = zqSP.TKC();
                try {
                    bufferedInputStream = new BufferedInputStream(zqSP.vS().TKC());
                    try {
                        try {
                            byte[] bArr = new byte[2048];
                            while (true) {
                                int i11 = bufferedInputStream.read(bArr, 0, 2048);
                                if (i11 == -1) {
                                    CloseableUtils.close(bufferedInputStream);
                                    return;
                                }
                                bufferOutputStream.write(bArr, 0, i11);
                                th = th;
                                bufferedInputStream2 = bufferedInputStream;
                                CloseableUtils.close(bufferedInputStream2);
                                throw th;
                            }
                        } catch (Exception e11) {
                            e10 = e11;
                            i10 = iTKC;
                            throw new RuntimeException("downloadFile failed, code: " + i10 + ", url:" + str + ", caused by:" + e10.getMessage(), e10);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedInputStream2 = bufferedInputStream;
                    }
                } catch (Exception e12) {
                    bufferedInputStream = null;
                    e10 = e12;
                }
            } catch (Exception e13) {
                bufferedInputStream = null;
                e10 = e13;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override
    public void syncDoGet(final String str) {
        this.Sj.Sj(new Fmk.Sj().Sj().sP(str).sP()).Sj(new TKC() {
            @Override
            public void Sj(com.bytedance.sdk.component.sP.Sj.sP sPVar, Zq zq2) throws IOException {
            }

            @Override
            public void Sj(com.bytedance.sdk.component.sP.Sj.sP sPVar, IOException iOException) {
            }
        });
    }

    @Override
    public Response doPost(String str, String str2) throws Exception {
        Zq zqSP = this.Sj.Sj(new Fmk.Sj().sP(str).Sj(sef.Sj(uA.Sj("application/json; charset=utf-8"), str2)).sP()).sP();
        return new Response(Sj(zqSP.Jcg()), zqSP.TKC() == 200 ? zqSP.vS().sP() : null, zqSP.TKC(), zqSP.HiB());
    }
}
