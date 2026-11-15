package com.bytedance.sdk.component.HiB.HiB;

public class Ym extends Sj {
    @Override
    public void Sj(final com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        final com.bytedance.sdk.component.HiB.TKC.vS vSVarTzV = tkc.TzV();
        com.bytedance.sdk.component.HiB.EjP EjP = vSVarTzV.EjP();
        tkc.Sj(false);
        try {
            com.bytedance.sdk.component.HiB.vS vSVarSj = EjP.Sj(new com.bytedance.sdk.component.HiB.sP.sP(tkc.Sj(), tkc.Fmk(), tkc.sef(), tkc.dx()));
            int iSP = vSVarSj.sP();
            tkc.Sj(vSVarSj.Sj());
            if (vSVarSj.sP() != 200) {
                String.valueOf(vSVarSj);
                Object objTKC = vSVarSj.TKC();
                Sj(iSP, vSVarSj.EjP(), objTKC instanceof Throwable ? (Throwable) objTKC : null, tkc);
                return;
            }
            final byte[] bArr = (byte[]) vSVarSj.TKC();
            tkc.Sj(new sP(bArr, vSVarSj));
            final String strUA = tkc.uA();
            final com.bytedance.sdk.component.HiB.sP sPVarRiZ = tkc.RiZ();
            if (sPVarRiZ.HiB()) {
                vSVarTzV.sP(tkc.RiZ()).Sj(strUA, bArr);
            }
            vSVarTzV.Jcg().submit(new Runnable() {
                @Override
                public void run() {
                    if (sPVarRiZ.Jcg()) {
                        vSVarTzV.TKC(tkc.RiZ()).Sj(strUA, bArr);
                    }
                }
            });
        } catch (Throwable th2) {
            Sj(1004, "net request failed!", th2, tkc);
        }
    }

    private void Sj(int i10, String str, Throwable th2, com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        tkc.Sj(new Dq(i10, str, th2));
    }

    @Override
    public String Sj() {
        return "net_request";
    }
}
