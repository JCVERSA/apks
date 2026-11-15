package com.transsion.log.common;

import defpackage.opc;
import defpackage.yb9;

public class LoganModel {
    public Action a;
    public opc b;
    public yb9 c;

    public enum Action {
        WRITE,
        SEND,
        FLUSH
    }

    public boolean a() {
        opc opcVar;
        yb9 yb9Var;
        Action action = this.a;
        if (action != null) {
            if (action == Action.SEND && (yb9Var = this.c) != null && yb9Var.b()) {
                return true;
            }
            if ((this.a == Action.WRITE && (opcVar = this.b) != null && opcVar.a()) || this.a == Action.FLUSH) {
                return true;
            }
        }
        return false;
    }
}
