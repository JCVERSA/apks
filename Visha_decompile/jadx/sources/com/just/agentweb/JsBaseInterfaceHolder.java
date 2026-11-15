package com.just.agentweb;

import android.webkit.JavascriptInterface;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

public abstract class JsBaseInterfaceHolder implements JsInterfaceHolder {
    private AgentWeb.SecurityType mSecurityType;
    private WebCreator mWebCreator;

    public JsBaseInterfaceHolder(WebCreator webCreator, AgentWeb.SecurityType securityType) {
        this.mSecurityType = securityType;
        this.mWebCreator = webCreator;
    }

    @Override
    public boolean checkObject(Object obj) {
        if (this.mWebCreator.getWebViewType() == 2) {
            return true;
        }
        boolean z = false;
        for (Method method : obj.getClass().getMethods()) {
            for (Annotation annotation : method.getAnnotations()) {
                if (annotation instanceof JavascriptInterface) {
                    z = true;
                    break;
                }
            }
            if (z) {
                break;
            }
        }
        return z;
    }

    public boolean checkSecurity() {
        if (this.mSecurityType != AgentWeb.SecurityType.STRICT_CHECK) {
            return true;
        }
        this.mWebCreator.getWebViewType();
        return true;
    }
}
