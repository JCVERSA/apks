package f;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResult;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class j extends f.a {

    public static final a f59875a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override
    public Intent a(Context context, Intent input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        return input;
    }

    @Override
    public ActivityResult c(int i10, Intent intent) {
        return new ActivityResult(i10, intent);
    }
}
