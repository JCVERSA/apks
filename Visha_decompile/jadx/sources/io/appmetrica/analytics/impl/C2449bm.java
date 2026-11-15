package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.lzy.okgo.model.HttpHeaders;
import io.appmetrica.analytics.networktasks.internal.ConfigProvider;
import io.appmetrica.analytics.networktasks.internal.FullUrlFormer;
import io.appmetrica.analytics.networktasks.internal.RequestDataHolder;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask;
import javax.net.ssl.SSLSocketFactory;

public final class C2449bm implements UnderlyingNetworkTask {
    public final C2499dm a;
    public Fl b;
    public EnumC2697ll c;
    public final RequestDataHolder d;
    public final ConfigProvider e;
    public final ResponseDataHolder f;
    public final FullUrlFormer g;
    public final C2896tl h;

    public C2449bm(@NonNull C2499dm c2499dm, @NonNull FullUrlFormer<Dl> fullUrlFormer, @NonNull RequestDataHolder requestDataHolder, @NonNull ResponseDataHolder responseDataHolder, @NonNull ConfigProvider<Dl> configProvider) {
        this(c2499dm, new C2896tl(), fullUrlFormer, requestDataHolder, responseDataHolder, configProvider);
    }

    @Override
    @NonNull
    public final String description() {
        return "Startup task for component: " + this.a.a.f.toString();
    }

    @Override
    @NonNull
    public final FullUrlFormer<?> getFullUrlFormer() {
        return this.g;
    }

    @Override
    @NonNull
    public final RequestDataHolder getRequestDataHolder() {
        return this.d;
    }

    @Override
    @NonNull
    public final ResponseDataHolder getResponseDataHolder() {
        return this.f;
    }

    @Override
    @Nullable
    public final RetryPolicyConfig getRetryPolicyConfig() {
        return ((Dl) this.e.getConfig()).getRetryPolicyConfig();
    }

    @Override
    @Nullable
    public final SSLSocketFactory getSslSocketFactory() {
        ((C2473cl) C2910ua.E.y()).getClass();
        return null;
    }

    @Override
    public final boolean onCreateTask() {
        this.d.setHeader(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "encrypted");
        return this.a.g();
    }

    @Override
    public final void onPerformRequest() {
    }

    @Override
    public final void onPostRequestComplete(boolean z) {
        if (z) {
            return;
        }
        this.c = EnumC2697ll.PARSE;
    }

    @Override
    public final boolean onRequestComplete() {
        Fl flA = this.h.handle(this.f);
        this.b = flA;
        return flA != null;
    }

    @Override
    public final void onRequestError(@Nullable Throwable th) {
        this.c = EnumC2697ll.NETWORK;
    }

    @Override
    public final void onShouldNotExecute() {
        this.c = EnumC2697ll.NETWORK;
    }

    @Override
    public final void onSuccessfulTaskFinished() {
        if (this.b == null || this.f.getResponseHeaders() == null) {
            return;
        }
        this.a.a(this.b, (Dl) this.e.getConfig(), this.f.getResponseHeaders());
    }

    @Override
    public final void onTaskAdded() {
    }

    @Override
    public final void onTaskFinished() {
    }

    @Override
    public final void onTaskRemoved() {
    }

    @Override
    public final void onUnsuccessfulTaskFinished() {
        if (this.c == null) {
            this.c = EnumC2697ll.UNKNOWN;
        }
        this.a.a(this.c);
    }

    public C2449bm(C2499dm c2499dm, C2896tl c2896tl, FullUrlFormer fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, ConfigProvider configProvider) {
        this.a = c2499dm;
        this.h = c2896tl;
        this.d = requestDataHolder;
        this.f = responseDataHolder;
        this.e = configProvider;
        this.g = fullUrlFormer;
        fullUrlFormer.setHosts(((Dl) configProvider.getConfig()).k());
    }
}
