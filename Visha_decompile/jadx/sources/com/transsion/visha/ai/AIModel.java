package com.transsion.visha.ai;

import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/transsion/visha/ai/AIModel;", "", "action", "", "param", "Lcom/transsion/visha/ai/AIParamsModel;", MethodDecl.initName, "(Ljava/lang/String;Lcom/transsion/visha/ai/AIParamsModel;)V", "getAction", "()Ljava/lang/String;", "getParam", "()Lcom/transsion/visha/ai/AIParamsModel;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "aicommunication_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AIModel {
    private final String action;
    private final AIParamsModel param;

    public AIModel(String str, AIParamsModel aIParamsModel) {
        y45.j(str, "action");
        y45.j(aIParamsModel, "param");
        this.action = str;
        this.param = aIParamsModel;
    }

    public static AIModel copy$default(AIModel aIModel, String str, AIParamsModel aIParamsModel, int i, Object obj) {
        if ((i & 1) != 0) {
            str = aIModel.action;
        }
        if ((i & 2) != 0) {
            aIParamsModel = aIModel.param;
        }
        return aIModel.copy(str, aIParamsModel);
    }

    public final String getAction() {
        return this.action;
    }

    public final AIParamsModel getParam() {
        return this.param;
    }

    public final AIModel copy(String action, AIParamsModel param) {
        y45.j(action, "action");
        y45.j(param, "param");
        return new AIModel(action, param);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AIModel)) {
            return false;
        }
        AIModel aIModel = (AIModel) other;
        return y45.e(this.action, aIModel.action) && y45.e(this.param, aIModel.param);
    }

    public final String getAction() {
        return this.action;
    }

    public final AIParamsModel getParam() {
        return this.param;
    }

    public int hashCode() {
        return (this.action.hashCode() * 31) + this.param.hashCode();
    }

    public String toString() {
        return "AIModel(action=" + this.action + ", param=" + this.param + ")";
    }
}
