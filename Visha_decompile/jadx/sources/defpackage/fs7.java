package defpackage;

import OppOOO0.OppOp0;
import OppOOO0.OppOp0.OppO0Op;
import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.model.data.AvatarRes;
import java.io.File;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;

public class fs7 extends OppO0O0 {
    public final String k;
    public final Long l;
    public final OppOp0 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fs7(OppOp0 oppOp0, Context context, Class cls, String str, Long l) {
        super(context, cls);
        this.m = oppOp0;
        this.k = str;
        this.l = l;
    }

    @Override
    public void b(int i, Object obj, String str) {
        AvatarRes avatarRes = (AvatarRes) obj;
        OppOp0 oppOp0 = this.m;
        oppOp0.f = avatarRes.avatarUrl;
        String str2 = avatarRes.uploadUrl;
        File fileV = ((qq7) oppOp0.a).v();
        OkHttpClient.Builder builderNewBuilder = new OkHttpClient().newBuilder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builderNewBuilder.connectTimeout(60L, timeUnit).writeTimeout(60L, timeUnit).readTimeout(60L, timeUnit).build().newCall(new Request.Builder().url(str2).put(RequestBody.create(MediaType.parse("application/octet-stream"), fileV)).build()).enqueue(oppOp0.new OppO0Op());
    }

    @Override
    public void d(BaseData baseData, String str) {
        if (this.m.a()) {
            ((qq7) this.m.a).u();
            super.d(baseData, str);
        }
    }

    @Override
    public void g() {
        if (this.m.a()) {
            OppOp0 oppOp0 = this.m;
            String str = this.k;
            Long l = this.l;
            oppOp0.c.d(oppOp0.e(), str, l, new fs7(oppOp0, oppOp0.e(), AvatarRes.class, str, l));
        }
    }
}
