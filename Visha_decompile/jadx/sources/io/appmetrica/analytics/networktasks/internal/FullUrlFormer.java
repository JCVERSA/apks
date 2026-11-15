package io.appmetrica.analytics.networktasks.internal;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.networktasks.impl.c;
import java.util.ArrayList;
import java.util.List;

public class FullUrlFormer<T> {
    private List a = new ArrayList();
    private int b = -1;
    private String c;
    private final IParamsAppender d;
    private final ConfigProvider e;

    public FullUrlFormer(@NonNull IParamsAppender<T> iParamsAppender, @NonNull ConfigProvider<T> configProvider) {
        this.d = iParamsAppender;
        this.e = configProvider;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void buildAndSetFullHostUrl() {
        Uri.Builder builderBuildUpon = Uri.parse((String) this.a.get(this.b)).buildUpon();
        this.d.appendParams(builderBuildUpon, this.e.getConfig());
        this.c = builderBuildUpon.build().toString();
    }

    @Nullable
    public List<String> getAllHosts() {
        return this.a;
    }

    @Nullable
    public String getUrl() {
        return new c(this.c).a;
    }

    public boolean hasMoreHosts() {
        return this.b + 1 < this.a.size();
    }

    public void incrementAttemptNumber() {
        this.b++;
    }

    public void setHosts(@Nullable List<String> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.a = list;
    }
}
