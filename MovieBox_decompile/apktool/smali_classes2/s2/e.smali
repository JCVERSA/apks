.class public final Ls2/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/t;


# instance fields
.field private final a:J

.field private final b:Lk2/t;


# direct methods
.method public constructor <init>(JLk2/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ls2/e;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Ls2/e;->b:Lk2/t;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Ls2/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Ls2/e;->a:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public d(Lk2/m0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls2/e;->b:Lk2/t;

    .line 2
    .line 3
    new-instance v1, Ls2/e$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p1}, Ls2/e$a;-><init>(Ls2/e;Lk2/m0;Lk2/m0;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lk2/t;->d(Lk2/m0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public endTracks()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls2/e;->b:Lk2/t;

    .line 2
    .line 3
    invoke-interface {v0}, Lk2/t;->endTracks()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public track(II)Lk2/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls2/e;->b:Lk2/t;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lk2/t;->track(II)Lk2/s0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
