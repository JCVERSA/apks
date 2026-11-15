package f;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.provider.MediaStore;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class e extends f.a {

    public static final a f59866b = new a(null);

    private final int f59867a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            if (g.f59868a.d()) {
                return MediaStore.getPickImagesMaxLimit();
            }
            return Integer.MAX_VALUE;
        }

        private a() {
        }
    }

    public e() {
        this(0, 1, null);
    }

    @Override
    public Intent a(Context context, androidx.activity.result.e input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        g.a aVar = g.f59868a;
        if (aVar.d()) {
            Intent intent = new Intent("android.provider.action.PICK_IMAGES");
            intent.setType(aVar.b(input.d()));
            int iMin = Math.min(this.f59867a, input.c());
            if (iMin <= 1 || iMin > MediaStore.getPickImagesMaxLimit()) {
                throw new IllegalArgumentException("Max items must be greater than 1 and lesser than or equal to MediaStore.getPickImagesMaxLimit()");
            }
            intent.putExtra("android.provider.extra.PICK_IMAGES_MAX", iMin);
            intent.putExtra("android.provider.extra.PICK_IMAGES_LAUNCH_TAB", input.b().a());
            intent.putExtra("android.provider.extra.PICK_IMAGES_IN_ORDER", input.f());
            if (!input.e()) {
                return intent;
            }
            intent.putExtra("android.provider.extra.PICK_IMAGES_ACCENT_COLOR", input.a());
            return intent;
        }
        if (!aVar.c(context)) {
            Intent intent2 = new Intent("android.intent.action.OPEN_DOCUMENT");
            intent2.setType(aVar.b(input.d()));
            intent2.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            if (intent2.getType() != null) {
                return intent2;
            }
            intent2.setType("*/*");
            intent2.putExtra("android.intent.extra.MIME_TYPES", new String[]{ShareConstant.SHARE_TYPE_IMAGE, ShareConstant.SHARE_TYPE_VIDEO});
            return intent2;
        }
        ResolveInfo resolveInfoA = aVar.a(context);
        if (resolveInfoA == null) {
            throw new IllegalStateException("Required value was null.");
        }
        ActivityInfo activityInfo = resolveInfoA.activityInfo;
        Intent intent3 = new Intent("androidx.activity.result.contract.action.PICK_IMAGES");
        intent3.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
        intent3.setType(aVar.b(input.d()));
        int iMin2 = Math.min(this.f59867a, input.c());
        if (iMin2 <= 1) {
            throw new IllegalArgumentException("Max items must be greater than 1");
        }
        intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_MAX", iMin2);
        intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_LAUNCH_TAB", input.b().a());
        intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_IN_ORDER", input.f());
        if (input.e()) {
            intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_ACCENT_COLOR", input.a());
        }
        return intent3;
    }

    @Override
    public final f.a.C0728a b(Context context, androidx.activity.result.e input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        return null;
    }

    @Override
    public final List c(int i10, Intent intent) {
        List listA;
        if (i10 != -1) {
            intent = null;
        }
        return (intent == null || (listA = c.f59865a.a(intent)) == null) ? CollectionsKt.l() : listA;
    }

    public e(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? f59866b.a() : i10);
    }

    public e(int i10) {
        this.f59867a = i10;
        if (i10 <= 1) {
            throw new IllegalArgumentException("Max items must be higher than 1");
        }
    }
}
