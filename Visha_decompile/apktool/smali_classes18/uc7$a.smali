.class public final Luc7$a;
.super Lid0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final g:Lie8;


# direct methods
.method public constructor <init>(Lpd7;Lie8;)V
    .locals 0

    invoke-direct {p0, p1}, Lid0;-><init>(Lpd7;)V

    iput-object p2, p0, Luc7$a;->g:Lie8;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lid0;->f:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Luc7$a;->g:Lie8;

    invoke-interface {v0, p1}, Lie8;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lid0;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lid0;->c(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p0, p0, Lid0;->b:Lpd7;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lpd7;->onNext(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 2

    :cond_0
    iget-object v0, p0, Lid0;->d:Lfm8;

    invoke-interface {v0}, Lom9;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Luc7$a;->g:Lie8;

    invoke-interface {v1, v0}, Lie8;->test(Ljava/lang/Object;)Z

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
