.class public final Lpc7;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpc7$a;
    }
.end annotation


# instance fields
.field public final c:Lzf1;

.field public final d:Lzf1;

.field public final e:Ld5;

.field public final f:Ld5;


# direct methods
.method public constructor <init>(Lld7;Lzf1;Lzf1;Ld5;Ld5;)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-object p2, p0, Lpc7;->c:Lzf1;

    iput-object p3, p0, Lpc7;->d:Lzf1;

    iput-object p4, p0, Lpc7;->e:Ld5;

    iput-object p5, p0, Lpc7;->f:Ld5;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 8

    iget-object v0, p0, Ln3;->b:Lld7;

    new-instance v7, Lpc7$a;

    iget-object v3, p0, Lpc7;->c:Lzf1;

    iget-object v4, p0, Lpc7;->d:Lzf1;

    iget-object v5, p0, Lpc7;->e:Ld5;

    iget-object v6, p0, Lpc7;->f:Ld5;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lpc7$a;-><init>(Lpd7;Lzf1;Lzf1;Ld5;Ld5;)V

    invoke-interface {v0, v7}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
