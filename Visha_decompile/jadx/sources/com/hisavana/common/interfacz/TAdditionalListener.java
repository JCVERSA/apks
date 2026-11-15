package com.hisavana.common.interfacz;

import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\bJ!\u0010\f\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\bJ!\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\bJ!\u0010\u0014\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0014\u0010\rJ!\u0010\u0015\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0015\u0010\u0012J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u0018\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0018\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\u0003J\u0017\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001c\u0010\b¨\u0006\u001d"}, d2 = {"Lcom/hisavana/common/interfacz/TAdditionalListener;", "", MethodDecl.initName, "()V", "Lcom/hisavana/common/bean/AdditionalInfo;", "additionalInfo", "Lzfb;", "onTrigger", "(Lcom/hisavana/common/bean/AdditionalInfo;)V", "onLoadSuccess", "Lcom/hisavana/common/bean/TAdErrorCode;", "errorCode", "onLoadFailure", "(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V", "onTriggerShow", "Lcom/hisavana/common/bean/TAdNativeInfo;", "nativeInfo", "onShow", "(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V", "onShowed", "onShowError", "onClick", "", "source", "onClosed", "(I)V", "(Lcom/hisavana/common/bean/TAdNativeInfo;)V", "onRewarded", "onAdActivate", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class TAdditionalListener {
    public void onAdActivate(AdditionalInfo additionalInfo) {
        y45.j(additionalInfo, "additionalInfo");
    }

    public void onClick(TAdNativeInfo nativeInfo, AdditionalInfo additionalInfo) {
        y45.j(additionalInfo, "additionalInfo");
    }

    public void onClosed(int source) {
    }

    public void onLoadFailure(TAdErrorCode errorCode, AdditionalInfo additionalInfo) {
        y45.j(additionalInfo, "additionalInfo");
    }

    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        y45.j(additionalInfo, "additionalInfo");
    }

    public void onRewarded() {
    }

    public void onShow(TAdNativeInfo nativeInfo, AdditionalInfo additionalInfo) {
        y45.j(additionalInfo, "additionalInfo");
    }

    public void onShowError(TAdErrorCode errorCode, AdditionalInfo additionalInfo) {
        y45.j(additionalInfo, "additionalInfo");
    }

    public void onShowed(AdditionalInfo additionalInfo) {
        y45.j(additionalInfo, "additionalInfo");
    }

    public void onTrigger(AdditionalInfo additionalInfo) {
        y45.j(additionalInfo, "additionalInfo");
    }

    public void onTriggerShow(AdditionalInfo additionalInfo) {
        y45.j(additionalInfo, "additionalInfo");
    }

    public void onClosed(TAdNativeInfo nativeInfo) {
    }
}
