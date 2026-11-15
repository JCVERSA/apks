.class public final Lbaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxn4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbaa$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/List;


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lbaa;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbaa;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic b(Lbaa$b;)V
    .locals 0

    invoke-static {p0}, Lbaa;->d(Lbaa$b;)V

    return-void
.end method

.method public static c()Lbaa$b;
    .locals 3

    sget-object v0, Lbaa;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lbaa$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbaa$b;-><init>(Lbaa$a;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbaa$b;

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d(Lbaa$b;)V
    .locals 3

    sget-object v0, Lbaa;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Lxn4$a;)Z
    .locals 0

    check-cast p1, Lbaa$b;

    iget-object p0, p0, Lbaa;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Lbaa$b;->b(Landroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method public hasMessages(I)Z
    .locals 0

    iget-object p0, p0, Lbaa;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public obtainMessage(I)Lxn4$a;
    .locals 2

    .line 1
    invoke-static {}, Lbaa;->c()Lbaa$b;

    move-result-object v0

    iget-object v1, p0, Lbaa;->a:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lbaa$b;->c(Landroid/os/Message;Lbaa;)Lbaa$b;

    move-result-object p0

    return-object p0
.end method

.method public obtainMessage(III)Lxn4$a;
    .locals 2

    .line 3
    invoke-static {}, Lbaa;->c()Lbaa$b;

    move-result-object v0

    iget-object v1, p0, Lbaa;->a:Landroid/os/Handler;

    .line 4
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lbaa$b;->c(Landroid/os/Message;Lbaa;)Lbaa$b;

    move-result-object p0

    return-object p0
.end method

.method public obtainMessage(IIILjava/lang/Object;)Lxn4$a;
    .locals 2

    .line 5
    invoke-static {}, Lbaa;->c()Lbaa$b;

    move-result-object v0

    iget-object v1, p0, Lbaa;->a:Landroid/os/Handler;

    .line 6
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lbaa$b;->c(Landroid/os/Message;Lbaa;)Lbaa$b;

    move-result-object p0

    return-object p0
.end method

.method public obtainMessage(ILjava/lang/Object;)Lxn4$a;
    .locals 2

    .line 2
    invoke-static {}, Lbaa;->c()Lbaa$b;

    move-result-object v0

    iget-object v1, p0, Lbaa;->a:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lbaa$b;->c(Landroid/os/Message;Lbaa;)Lbaa$b;

    move-result-object p0

    return-object p0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0

    iget-object p0, p0, Lbaa;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lbaa;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMessages(I)V
    .locals 0

    iget-object p0, p0, Lbaa;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public sendEmptyMessage(I)Z
    .locals 0

    iget-object p0, p0, Lbaa;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public sendEmptyMessageAtTime(IJ)Z
    .locals 0

    iget-object p0, p0, Lbaa;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p0

    return p0
.end method
