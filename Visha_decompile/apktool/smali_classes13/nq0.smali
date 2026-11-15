.class public final Lnq0;
.super Lmc7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnq0$a;
    }
.end annotation


# instance fields
.field public final b:Ljq0;


# direct methods
.method public constructor <init>(Ljq0;)V
    .locals 0

    invoke-direct {p0}, Lmc7;-><init>()V

    iput-object p1, p0, Lnq0;->b:Ljq0;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 1

    iget-object p0, p0, Lnq0;->b:Ljq0;

    invoke-interface {p0}, Ljq0;->clone()Ljq0;

    move-result-object p0

    new-instance v0, Lnq0$a;

    invoke-direct {v0, p0, p1}, Lnq0$a;-><init>(Ljq0;Lpd7;)V

    invoke-interface {p1, v0}, Lpd7;->onSubscribe(Lrc2;)V

    invoke-virtual {v0}, Lnq0$a;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0, v0}, Ljq0;->enqueue(Ltq0;)V

    :cond_0
    return-void
.end method
