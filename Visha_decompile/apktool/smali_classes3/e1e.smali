.class public abstract Le1e;
.super La7b;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Le1e;)Lnu8;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic b(Le1e;)Lw0e;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic c(Le1e;)Ljava/lang/ref/WeakReference;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic d(Le1e;Llu8;)V
    .locals 0

    invoke-static {p1}, Le1e;->e(Llu8;)V

    return-void
.end method

.method public static final e(Llu8;)V
    .locals 3

    instance-of v0, p0, Lur8;

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lur8;

    invoke-interface {v0}, Lur8;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "TransformedResultImpl"

    const-string v2, "Unable to release "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
