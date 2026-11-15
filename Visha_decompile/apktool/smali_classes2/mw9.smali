.class public final Lmw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk3;


# instance fields
.field public final b:J

.field public final c:Lqk3;


# direct methods
.method public constructor <init>(JLqk3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmw9;->b:J

    iput-object p3, p0, Lmw9;->c:Lqk3;

    return-void
.end method

.method public static synthetic a(Lmw9;)J
    .locals 2

    iget-wide v0, p0, Lmw9;->b:J

    return-wide v0
.end method


# virtual methods
.method public d(Lja9;)V
    .locals 2

    iget-object v0, p0, Lmw9;->c:Lqk3;

    new-instance v1, Lmw9$a;

    invoke-direct {v1, p0, p1}, Lmw9$a;-><init>(Lmw9;Lja9;)V

    invoke-interface {v0, v1}, Lqk3;->d(Lja9;)V

    return-void
.end method

.method public endTracks()V
    .locals 0

    iget-object p0, p0, Lmw9;->c:Lqk3;

    invoke-interface {p0}, Lqk3;->endTracks()V

    return-void
.end method

.method public track(II)Lfva;
    .locals 0

    iget-object p0, p0, Lmw9;->c:Lqk3;

    invoke-interface {p0, p1, p2}, Lqk3;->track(II)Lfva;

    move-result-object p0

    return-object p0
.end method
