package defpackage;

import android.graphics.drawable.StateListDrawable;

public class yu8 {
    public StateListDrawable a;
    public cv8 b;
    public cv8 c;
    public cv8 d;

    public cv8 getCheckedDrawable() {
        return this.b;
    }

    public cv8 getDisabledDrawable() {
        return this.d;
    }

    public cv8 getNormalDrawable() {
        return this.c;
    }

    public StateListDrawable getStateListDrawable() {
        return this.a;
    }

    public void setCheckedDrawable(cv8 cv8Var) {
        this.b = cv8Var;
    }

    public void setDisabledDrawable(cv8 cv8Var) {
        this.d = cv8Var;
    }

    public void setNormalDrawable(cv8 cv8Var) {
        this.c = cv8Var;
    }

    public void setStateListDrawable(StateListDrawable stateListDrawable) {
        this.a = stateListDrawable;
    }
}
