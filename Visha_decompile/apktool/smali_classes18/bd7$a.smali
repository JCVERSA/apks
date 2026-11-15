.class public final Lbd7$a;
.super Lid0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbd7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final g:Lt74;


# direct methods
.method public constructor <init>(Lpd7;Lt74;)V
    .locals 0

    invoke-direct {p0, p1}, Lid0;-><init>(Lpd7;)V

    iput-object p2, p0, Lbd7$a;->g:Lt74;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lid0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lid0;->f:I

    if-eqz v0, :cond_1

    iget-object p0, p0, Lid0;->b:Lpd7;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lpd7;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lbd7$a;->g:Lt74;

    invoke-interface {v0, p1}, Lt74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lid0;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lid0;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lid0;->d:Lfm8;

    invoke-interface {v0}, Lom9;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lbd7$a;->g:Lt74;

    invoke-interface {p0, v0}, Lt74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The mapper function returned a null value."

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public requestFusion(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lid0;->d(I)I

    move-result p0

    return p0
.end method
