package mq;

import android.app.Application;
import android.text.TextUtils;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.gson.JsonObject;
import com.transsion.share.bean.ShareBean;
import com.transsion.share.bean.ShareType;
import dg.d;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

public final class b extends androidx.p009lifecycle.b {

    private final String f66680b;

    private final b0 f66681c;

    private final b0 f66682d;

    private final Lazy f66683e;

    public static final class a extends dg.a {

        final ShareType f66685e;

        a(ShareType shareType) {
            this.f66685e = shareType;
        }

        @Override
        public void a(String str, String str2) {
            b.this.f66681c.q(null);
        }

        @Override
        public void c(ShareBean shareBean) {
            if (shareBean != null) {
                shareBean.setShareType(this.f66685e);
            }
            b.this.f66681c.q(shareBean);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f66680b = "ActionViewModel";
        this.f66681c = new b0();
        this.f66682d = new b0();
        this.f66683e = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return b.e();
            }
        });
    }

    public static final c e() {
        return (c) kg.c.f63982e.a().h(c.class);
    }

    private final c f() {
        return (c) this.f66683e.getValue();
    }

    public final LiveData g() {
        return this.f66681c;
    }

    public final void h(ShareType shareType, String postType, String subjectId, String uid, String scene) {
        Intrinsics.h(shareType, "shareType");
        Intrinsics.h(postType, "postType");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(uid, "uid");
        Intrinsics.h(scene, "scene");
        if (TextUtils.isEmpty(subjectId)) {
            return;
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(CommonUtils.PARAM_UID, uid);
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, postType);
        jsonObject.addProperty(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, scene);
        jsonObject.addProperty("id", subjectId);
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        f().a(gg.a.f61067a.a(), companion.create(string, MediaType.INSTANCE.parse("application/json"))).f(d.f59034a.c()).subscribe(new a(shareType));
    }
}
