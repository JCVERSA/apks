.class public abstract Lexa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexa$a;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;


# direct methods
.method public static a(Landroid/content/Context;Z)Lcec;
    .locals 1

    new-instance v0, Lexa$a;

    invoke-static {p0}, Lexa;->c(Landroid/content/Context;)Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lexa$a;-><init>(Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;Z)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)[F
    .locals 2

    :try_start_0
    invoke-static {p0}, Lexa;->c(Landroid/content/Context;)Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->getDragDropLocation()[F

    move-result-object p0
    :try_end_0
    .catch Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "TranDragDropBackend"

    const-string v1, "getDragDropLocation failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;
    .locals 2

    const-class v0, Lexa;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lexa;->a:Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lexa;->a:Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lexa;->a:Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
