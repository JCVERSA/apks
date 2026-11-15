.class public abstract Lbec;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Z)Lcec;
    .locals 1

    invoke-static {}, Lbec;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lbec;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lexa;->a(Landroid/content/Context;Z)Lcec;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Lxj5;->a(Landroid/content/Context;Z)Lcec;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)[F
    .locals 1

    invoke-static {}, Lbec;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lbec;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lexa;->b(Landroid/content/Context;)[F

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lxj5;->b()[F

    move-result-object p0

    return-object p0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lydc;->f()Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lbec;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lolb;->getOsVersionCode()I

    move-result v0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->isSupportedDragDrop()Z

    move-result p0
    :try_end_0
    .catch Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "VishaDragDropCompat"

    const-string v2, "THUB drag-drop not available, fallback to legacy"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
