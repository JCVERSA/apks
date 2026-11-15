package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import io.appmetrica.analytics.coreapi.internal.annotations.DoNotInline;
import java.io.File;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@DoNotInline
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\n\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\t¨\u0006\r"}, d2 = {"Lio/appmetrica/analytics/impl/Q6;", "Lio/appmetrica/analytics/impl/P6;", "Landroid/content/Context;", "context", "", "simpleName", "Ljava/io/File;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lio/appmetrica/analytics/impl/yg;", "Lio/appmetrica/analytics/impl/yg;", "relativePathFormer", MethodDecl.initName, "(Lio/appmetrica/analytics/impl/yg;)V", "analytics_binaryProdRelease"}, k = 1, mv = {1, 6, 0})
public final class Q6 implements P6 {

    private final InterfaceC3016yg relativePathFormer;

    public Q6(InterfaceC3016yg interfaceC3016yg) {
        this.relativePathFormer = interfaceC3016yg;
    }

    @Override
    public File a(Context context, String simpleName) {
        return new File(context.getNoBackupFilesDir(), this.relativePathFormer.a(simpleName));
    }
}
