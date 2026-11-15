package defpackage;

import android.app.Activity;
import android.os.Bundle;
import java.util.Stack;

public class rpc extends i5 {
    public static final rpc c = new rpc();
    public Stack b = new Stack();

    public static rpc a() {
        return c;
    }

    public Activity b() {
        if (this.b.size() < 2) {
            return null;
        }
        Stack stack = this.b;
        return (Activity) stack.get(stack.size() - 2);
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.b.add(activity);
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        this.b.remove(activity);
    }
}
