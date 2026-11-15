.class public final Lad7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lrc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lad7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lqb1;

.field public c:Lrc2;


# direct methods
.method public constructor <init>(Lqb1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad7$a;->b:Lqb1;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Lad7$a;->c:Lrc2;

    invoke-interface {p0}, Lrc2;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lad7$a;->c:Lrc2;

    invoke-interface {p0}, Lrc2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lad7$a;->b:Lqb1;

    invoke-interface {p0}, Lqb1;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lad7$a;->b:Lqb1;

    invoke-interface {p0, p1}, Lqb1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    iput-object p1, p0, Lad7$a;->c:Lrc2;

    iget-object p1, p0, Lad7$a;->b:Lqb1;

    invoke-interface {p1, p0}, Lqb1;->onSubscribe(Lrc2;)V

    return-void
.end method
