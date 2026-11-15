.class public final La/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, La/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, La/c;->a:I

    packed-switch v0, :pswitch_data_0

    .line 314
    :try_start_0
    sget-object v0, La/k;->q:La/k;

    iget-object v0, v0, La/k;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 254
    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 255
    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :catchall_0
    :cond_0
    sget-object v0, La/e;->d:Landroid/os/Handler;

    .line 258
    new-instance v1, La/c;

    const/4 v2, 0x2

    .line 258
    invoke-direct {v1, v2}, La/c;-><init>(I)V

    const-wide/16 v2, 0x177

    .line 258
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 260
    :pswitch_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    .line 261
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    .line 314
    :pswitch_1
    :try_start_1
    sget-object v0, La/k;->q:La/k;

    iget-object v0, v0, La/k;->d:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    :catchall_1
    :cond_1
    sget-object v0, La/d;->d:Landroid/os/Handler;

    .line 174
    new-instance v1, La/c;

    const/4 v2, 0x0

    .line 174
    invoke-direct {v1, v2}, La/c;-><init>(I)V

    const-wide/16 v2, 0xfa

    .line 174
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 176
    :pswitch_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    .line 177
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
