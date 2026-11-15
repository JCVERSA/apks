.class public final Lxc7$a;
.super Ljd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lpd7;

.field public final c:Ljava/util/Iterator;

.field public volatile d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lpd7;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljd0;-><init>()V

    iput-object p1, p0, Lxc7$a;->b:Lpd7;

    iput-object p2, p0, Lxc7$a;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lxc7$a;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lxc7$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The iterator returned a null value"

    invoke-static {v0, v1}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lxc7$a;->b:Lpd7;

    invoke-interface {v1, v0}, Lpd7;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lxc7$a;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lxc7$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lxc7$a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lxc7$a;->b:Lpd7;

    invoke-interface {p0}, Lpd7;->onComplete()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lre3;->b(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lxc7$a;->b:Lpd7;

    invoke-interface {p0, v0}, Lpd7;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lre3;->b(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lxc7$a;->b:Lpd7;

    invoke-interface {p0, v0}, Lpd7;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxc7$a;->f:Z

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxc7$a;->d:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lxc7$a;->d:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lxc7$a;->f:Z

    return p0
.end method

.method public poll()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lxc7$a;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lxc7$a;->g:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxc7$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lxc7$a;->f:Z

    return-object v1

    :cond_1
    iput-boolean v2, p0, Lxc7$a;->g:Z

    :cond_2
    iget-object p0, p0, Lxc7$a;->c:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The iterator returned a null value"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lxc7$a;->e:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
