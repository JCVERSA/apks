.class public final Lis8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget-wide v0, p0, Lis8;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lis8;->e:J

    return-void
.end method

.method public final b(J)V
    .locals 2

    iget-wide v0, p0, Lis8;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lis8;->d:J

    return-void
.end method

.method public final c(J)V
    .locals 2

    iget-wide v0, p0, Lis8;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lis8;->c:J

    return-void
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lis8;->a:J

    return-void
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lis8;->e:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lis8;->d:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lis8;->c:J

    return-wide v0
.end method

.method public final h()J
    .locals 4

    iget-wide v0, p0, Lis8;->a:J

    iget-wide v2, p0, Lis8;->b:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lis8;->c:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lis8;->d:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lis8;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final i(J)V
    .locals 0

    iput-wide p1, p0, Lis8;->b:J

    return-void
.end method

.method public final j()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lis8;->c:J

    iput-wide v0, p0, Lis8;->d:J

    iput-wide v0, p0, Lis8;->e:J

    iput-wide v0, p0, Lis8;->a:J

    iput-wide v0, p0, Lis8;->b:J

    return-void
.end method
