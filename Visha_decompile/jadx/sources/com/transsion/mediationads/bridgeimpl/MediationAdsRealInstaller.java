package com.transsion.mediationads.bridgeimpl;

import com.transsion.mediationads.activity.MediaAdsActivity;
import com.transsion.mediationads.beans.AdMediaItem;
import com.transsion.mediationads.beans.SdkAdMediaItem;
import com.transsion.mediationads.bridgeimpl.MediationAdsRealInstaller;
import com.transsion.mediationads.manager.b;
import defpackage.cv9;
import defpackage.dda;
import defpackage.dv9;
import defpackage.hb6;
import defpackage.km6;
import defpackage.mm6;
import defpackage.n34;
import defpackage.o34;
import defpackage.rab;
import defpackage.s45;
import defpackage.s74;
import defpackage.sab;
import defpackage.t45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/transsion/mediationads/bridgeimpl/MediationAdsRealInstaller;", "", MethodDecl.initName, "()V", "Lzfb;", "install", "mediationads-impl_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediationAdsRealInstaller {
    public static final MediationAdsRealInstaller a = new MediationAdsRealInstaller();

    public static final AdMediaItem b(String str, int i) {
        if (str == null) {
            str = "";
        }
        return new SdkAdMediaItem(str, i);
    }

    public static final void install() {
        b.a.b(dda.a);
        rab.a.b(sab.a);
        AdMediaItem.INSTANCE.installFactory(new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return MediationAdsRealInstaller.b((String) obj, ((Integer) obj2).intValue());
            }
        });
        km6.a.b(mm6.a);
        s45.a.b(t45.a);
        n34.b(o34.a);
        dv9.a.b(cv9.a);
        hb6.b = MediaAdsActivity.class;
    }
}
