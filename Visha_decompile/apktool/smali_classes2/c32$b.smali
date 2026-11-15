.class public final Lc32$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lja9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lc32;


# direct methods
.method public constructor <init>(Lc32;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc32$b;->a:Lc32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc32;Lc32$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc32$b;-><init>(Lc32;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 3

    iget-object v0, p0, Lc32$b;->a:Lc32;

    invoke-static {v0}, Lc32;->b(Lc32;)Lsy9;

    move-result-object v0

    iget-object p0, p0, Lc32$b;->a:Lc32;

    invoke-static {p0}, Lc32;->e(Lc32;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsy9;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lja9$a;
    .locals 10

    iget-object v0, p0, Lc32$b;->a:Lc32;

    invoke-static {v0}, Lc32;->b(Lc32;)Lsy9;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lsy9;->c(J)J

    move-result-wide v0

    iget-object v2, p0, Lc32$b;->a:Lc32;

    invoke-static {v2}, Lc32;->c(Lc32;)J

    move-result-wide v2

    iget-object v4, p0, Lc32$b;->a:Lc32;

    invoke-static {v4}, Lc32;->d(Lc32;)J

    move-result-wide v4

    iget-object v6, p0, Lc32$b;->a:Lc32;

    invoke-static {v6}, Lc32;->c(Lc32;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    mul-long/2addr v0, v4

    iget-object v4, p0, Lc32$b;->a:Lc32;

    invoke-static {v4}, Lc32;->e(Lc32;)J

    move-result-wide v4

    div-long/2addr v0, v4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x7530

    sub-long v4, v2, v0

    iget-object v0, p0, Lc32$b;->a:Lc32;

    invoke-static {v0}, Lc32;->c(Lc32;)J

    move-result-wide v6

    iget-object p0, p0, Lc32$b;->a:Lc32;

    invoke-static {p0}, Lc32;->d(Lc32;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Lblb;->q(JJJ)J

    move-result-wide v0

    new-instance p0, Lja9$a;

    new-instance v2, Lla9;

    invoke-direct {v2, p1, p2, v0, v1}, Lla9;-><init>(JJ)V

    invoke-direct {p0, v2}, Lja9$a;-><init>(Lla9;)V

    return-object p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
