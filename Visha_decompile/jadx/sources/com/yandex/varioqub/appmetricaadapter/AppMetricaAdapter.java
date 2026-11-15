package com.yandex.varioqub.appmetricaadapter;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.yandex.varioqub.analyticadapter.AdapterIdentifiersCallback;
import com.yandex.varioqub.analyticadapter.VarioqubConfigAdapter;
import com.yandex.varioqub.analyticadapter.data.ConfigData;
import com.yandex.varioqub.appmetricaadapter.impl.d;
import com.yandex.varioqub.appmetricaadapter.impl.e;
import com.yandex.varioqub.appmetricaadapter.impl.k;
import com.yandex.varioqub.protobuf.nano.MessageNano;
import defpackage.i81;
import defpackage.ye9;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000  2\u00020\u0001:\u0001!B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0013\u001a\u00020\b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\f¢\u0006\u0004\b\u001a\u0010\u000fR\u001a\u0010\u001f\u001a\u00020\f8\u0016X\u0096D¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;", "Lcom/yandex/varioqub/analyticadapter/VarioqubConfigAdapter;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;", "callback", "Lzfb;", "requestDeviceId", "(Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V", "requestUserId", "", "experiments", "setExperiments", "(Ljava/lang/String;)V", "", "", "triggeredTestIds", "setTriggeredTestIds", "(Ljava/util/Set;)V", "Lcom/yandex/varioqub/analyticadapter/data/ConfigData;", "configData", "reportConfigChanged", "(Lcom/yandex/varioqub/analyticadapter/data/ConfigData;)V", "apiKey", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "e", "Ljava/lang/String;", "getAdapterName", "()Ljava/lang/String;", "adapterName", "f", "Companion", "appmetrica-adapter_release"}, k = 1, mv = {1, 6, 0})
public final class AppMetricaAdapter implements VarioqubConfigAdapter {
    public final Context a;
    public final d b = e.a();
    public String c = "";
    public Set d = ye9.f();

    public final String adapterName = "AppMetricaAdapter";

    public AppMetricaAdapter(Context context) {
        this.a = context;
    }

    public final void a(String apiKey) {
        this.b.a(this.a, apiKey);
    }

    @Override
    public String getAdapterName() {
        return this.adapterName;
    }

    @Override
    public void reportConfigChanged(ConfigData configData) {
        d dVar = this.b;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("old_config", configData.getOldConfigVersion());
        linkedHashMap.put("new_config", configData.getNewConfigVersion());
        linkedHashMap.put("timestamp", Long.valueOf(configData.getConfigLoadTimestamp()));
        dVar.b(linkedHashMap);
    }

    @Override
    public void requestDeviceId(AdapterIdentifiersCallback callback) {
        this.b.c(this.a, callback);
    }

    @Override
    public void requestUserId(AdapterIdentifiersCallback callback) {
        this.b.a(this.a, callback);
    }

    @Override
    public void setExperiments(String experiments) {
        this.c = experiments;
        Objects.toString(this.d);
        d dVar = this.b;
        k kVar = new k();
        kVar.a = this.c;
        kVar.b = i81.c1(this.d);
        dVar.a(MessageNano.toByteArray(kVar));
    }

    @Override
    public void setTriggeredTestIds(Set triggeredTestIds) {
        Objects.toString(triggeredTestIds);
        Set setG1 = i81.g1(triggeredTestIds);
        this.d = setG1;
        Objects.toString(setG1);
        d dVar = this.b;
        k kVar = new k();
        kVar.a = this.c;
        kVar.b = i81.c1(this.d);
        dVar.a(MessageNano.toByteArray(kVar));
    }
}
