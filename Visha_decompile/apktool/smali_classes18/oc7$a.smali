.class public final Loc7$a;
.super Lid0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final g:Ljava/util/Collection;

.field public final h:Lt74;


# direct methods
.method public constructor <init>(Lpd7;Lt74;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lid0;-><init>(Lpd7;)V

    iput-object p2, p0, Loc7$a;->h:Lt74;

    iput-object p3, p0, Loc7$a;->g:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Loc7$a;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    invoke-super {p0}, Lid0;->clear()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lid0;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lid0;->e:Z

    iget-object v0, p0, Loc7$a;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object p0, p0, Lid0;->b:Lpd7;

    invoke-interface {p0}, Lpd7;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lid0;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lid0;->e:Z

    iget-object v0, p0, Loc7$a;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object p0, p0, Lid0;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lid0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lid0;->f:I

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Loc7$a;->h:Lt74;

    invoke-interface {v0, p1}, Lt74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The keySelector returned a null key"

    invoke-static {v0, v1}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Loc7$a;->g:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lid0;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lid0;->c(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object p0, p0, Lid0;->b:Lpd7;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lpd7;->onNext(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 4

    :cond_0
    iget-object v0, p0, Lid0;->d:Lfm8;

    invoke-interface {v0}, Lom9;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Loc7$a;->g:Ljava/util/Collection;

    iget-object v2, p0, Loc7$a;->h:Lt74;

    invoke-interface {v2, v0}, Lt74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The keySelector returned a null key"

    invoke-static {v2, v3}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public requestFusion(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lid0;->d(I)I

    move-result p0

    return p0
.end method
