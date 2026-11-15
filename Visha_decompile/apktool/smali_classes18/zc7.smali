.class public final Lzc7;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzc7$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lld7;)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 1

    iget-object p0, p0, Ln3;->b:Lld7;

    new-instance v0, Lzc7$a;

    invoke-direct {v0, p1}, Lzc7$a;-><init>(Lpd7;)V

    invoke-interface {p0, v0}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
