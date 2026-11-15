package f;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class c extends f.a {

    public static final a f59865a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a(Intent intent) {
            Intrinsics.h(intent, "<this>");
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Uri data = intent.getData();
            if (data != null) {
                linkedHashSet.add(data);
            }
            ClipData clipData = intent.getClipData();
            if (clipData == null && linkedHashSet.isEmpty()) {
                return CollectionsKt.l();
            }
            if (clipData != null) {
                int itemCount = clipData.getItemCount();
                for (int i10 = 0; i10 < itemCount; i10++) {
                    Uri uri = clipData.getItemAt(i10).getUri();
                    if (uri != null) {
                        linkedHashSet.add(uri);
                    }
                }
            }
            return new ArrayList(linkedHashSet);
        }

        private a() {
        }
    }

    @Override
    public Intent a(Context context, String input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        Intent intentPutExtra = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").setType(input).putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        Intrinsics.g(intentPutExtra, "Intent(Intent.ACTION_GET…TRA_ALLOW_MULTIPLE, true)");
        return intentPutExtra;
    }

    @Override
    public final f.a.C0728a b(Context context, String input) {
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
        return (intent == null || (listA = f59865a.a(intent)) == null) ? CollectionsKt.l() : listA;
    }
}
