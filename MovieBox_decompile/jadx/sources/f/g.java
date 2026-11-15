package f;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class g extends f.a {

    public static final a f59868a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ResolveInfo a(Context context) {
            Intrinsics.h(context, "context");
            return context.getPackageManager().resolveActivity(new Intent("androidx.activity.result.contract.action.PICK_IMAGES"), 1114112);
        }

        public final String b(f input) {
            Intrinsics.h(input, "input");
            if (input instanceof d) {
                return ShareConstant.SHARE_TYPE_IMAGE;
            }
            if (input instanceof e) {
                return ShareConstant.SHARE_TYPE_VIDEO;
            }
            if (input instanceof c) {
                return null;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final boolean c(Context context) {
            Intrinsics.h(context, "context");
            return a(context) != null;
        }

        public final boolean d() {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 33) {
                return true;
            }
            return i10 >= 30 && SdkExtensions.getExtensionVersion(30) >= 2;
        }

        private a() {
        }
    }

    public static abstract class b {

        public static final class a extends b {

            public static final a f59869a = new a();

            private static final int f59870b = 1;

            private a() {
                super(null);
            }

            @Override
            public int a() {
                return f59870b;
            }
        }

        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public abstract int a();

        private b() {
        }
    }

    public static final class c implements f {

        public static final c f59871a = new c();

        private c() {
        }
    }

    public static final class d implements f {

        public static final d f59872a = new d();

        private d() {
        }
    }

    public static final class e implements f {

        public static final e f59873a = new e();

        private e() {
        }
    }

    public interface f {
    }

    @Override
    public Intent a(Context context, androidx.activity.result.e input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        a aVar = f59868a;
        if (aVar.d()) {
            Intent intent = new Intent("android.provider.action.PICK_IMAGES");
            intent.setType(aVar.b(input.d()));
            intent.putExtra("android.provider.extra.PICK_IMAGES_LAUNCH_TAB", input.b().a());
            if (!input.e()) {
                return intent;
            }
            intent.putExtra("android.provider.extra.PICK_IMAGES_ACCENT_COLOR", input.a());
            return intent;
        }
        if (!aVar.c(context)) {
            Intent intent2 = new Intent("android.intent.action.OPEN_DOCUMENT");
            intent2.setType(aVar.b(input.d()));
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
        intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_LAUNCH_TAB", input.b().a());
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
    public final Uri c(int i10, Intent intent) {
        if (i10 != -1) {
            intent = null;
        }
        if (intent == null) {
            return null;
        }
        Uri data = intent.getData();
        if (data == null) {
            data = (Uri) CollectionsKt.k0(f.c.f59865a.a(intent));
        }
        return data;
    }
}
