.class public final Lmd7;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd7$a;
    }
.end annotation


# instance fields
.field public final c:J


# direct methods
.method public constructor <init>(Lld7;J)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-wide p2, p0, Lmd7;->c:J

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 4

    iget-object v0, p0, Ln3;->b:Lld7;

    new-instance v1, Lmd7$a;

    iget-wide v2, p0, Lmd7;->c:J

    invoke-direct {v1, p1, v2, v3}, Lmd7$a;-><init>(Lpd7;J)V

    invoke-interface {v0, v1}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
