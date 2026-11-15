package com.monetization.ads.quality.base;

import android.content.Context;
import com.monetization.ads.quality.base.model.AdQualityVerifierAdapterInfo;
import com.monetization.ads.quality.base.model.configuration.AdQualityVerificationAdConfiguration;
import com.monetization.ads.quality.base.model.configuration.AdQualityVerifierAdapterConfiguration;
import com.monetization.ads.quality.base.result.AdQualityVerificationResult;
import defpackage.wh1;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH¦@¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;", "Lcom/monetization/ads/quality/base/AdQualityVerifierAdEventListener;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;", "verifierConfiguration", "Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerificationAdConfiguration;", "adConfiguration", "Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;", "verifyAd", "(Landroid/content/Context;Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerificationAdConfiguration;Lwh1;)Ljava/lang/Object;", "Lcom/monetization/ads/quality/base/model/AdQualityVerifierAdapterInfo;", "getAdapterInfo", "()Lcom/monetization/ads/quality/base/model/AdQualityVerifierAdapterInfo;", "adapterInfo", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class AdQualityVerifierAdapter implements AdQualityVerifierAdEventListener {
    public AdQualityVerifierAdapterInfo getAdapterInfo() {
        return new AdQualityVerifierAdapterInfo.Builder().build();
    }

    public abstract Object verifyAd(Context context, AdQualityVerifierAdapterConfiguration adQualityVerifierAdapterConfiguration, AdQualityVerificationAdConfiguration adQualityVerificationAdConfiguration, wh1<? super AdQualityVerificationResult> wh1Var);
}
