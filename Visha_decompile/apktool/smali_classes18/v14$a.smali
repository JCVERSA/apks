.class public final Lv14$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lf2a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ld2a;

.field public c:Lrc2;


# direct methods
.method public constructor <init>(Ld2a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv14$a;->b:Ld2a;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lv14$a;->c:Lrc2;

    invoke-interface {p0}, Lrc2;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lv14$a;->b:Ld2a;

    invoke-interface {p0}, Ld2a;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lv14$a;->b:Ld2a;

    invoke-interface {p0, p1}, Ld2a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lv14$a;->b:Ld2a;

    invoke-interface {p0, p1}, Ld2a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    iput-object p1, p0, Lv14$a;->c:Lrc2;

    iget-object p1, p0, Lv14$a;->b:Ld2a;

    invoke-interface {p1, p0}, Ld2a;->onSubscribe(Lf2a;)V

    return-void
.end method

.method public request(J)V
    .locals 0

    return-void
.end method
