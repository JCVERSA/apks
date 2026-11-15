package com.yandex.div.core.dagger;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.yandex.div.core.c;
import defpackage.oq4;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001:\u0001\tJ\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00058&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/yandex/div/core/dagger/DivKitComponent;", "", "Lcom/yandex/div/core/dagger/Div2Component$Builder;", "b", "()Lcom/yandex/div/core/dagger/Div2Component$Builder;", "Loq4;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Loq4;", "histogramRecordConfiguration", "Builder", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface DivKitComponent {

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0019\u0010\u0004\u001a\u00020\u00002\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\u000b\u0010\fø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/yandex/div/core/dagger/DivKitComponent$Builder;", "", "Landroid/content/Context;", "context", "b", "(Landroid/content/Context;)Lcom/yandex/div/core/dagger/DivKitComponent$Builder;", "Lcom/yandex/div/core/c;", "configuration", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/yandex/div/core/c;)Lcom/yandex/div/core/dagger/DivKitComponent$Builder;", "Lcom/yandex/div/core/dagger/DivKitComponent;", "build", "()Lcom/yandex/div/core/dagger/DivKitComponent;", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface Builder {
        Builder a(c configuration);

        Builder b(Context context);

        DivKitComponent build();
    }

    oq4 a();

    Div2Component.Builder b();
}
