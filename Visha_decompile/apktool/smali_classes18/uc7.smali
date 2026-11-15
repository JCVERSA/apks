.class public final Luc7;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luc7$a;
    }
.end annotation


# instance fields
.field public final c:Lie8;


# direct methods
.method public constructor <init>(Lld7;Lie8;)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-object p2, p0, Luc7;->c:Lie8;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 2

    iget-object v0, p0, Ln3;->b:Lld7;

    new-instance v1, Luc7$a;

    iget-object p0, p0, Luc7;->c:Lie8;

    invoke-direct {v1, p1, p0}, Luc7$a;-><init>(Lpd7;Lie8;)V

    invoke-interface {v0, v1}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
