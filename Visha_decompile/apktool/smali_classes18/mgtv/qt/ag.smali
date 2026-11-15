.class final Lmgtv/qt/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lmgtv/qt/ag;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lmgtv/qt/ag;->a:Landroid/app/Application;

    invoke-static {v0}, Lmgtv/qt/c;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lmgtv/qt/ag;->a:Landroid/app/Application;

    invoke-static {v0}, Lv4d;->a(Landroid/content/Context;)V

    iget-object p0, p0, Lmgtv/qt/ag;->a:Landroid/app/Application;

    invoke-static {p0}, Lmgtv/qt/c;->j(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
