.class public final Lcge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhge;


# instance fields
.field public final a:Ln9e;

.field public final b:Lm9e;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Ln9e;Lm9e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcge;->a:Ln9e;

    iput-object p2, p0, Lcge;->b:Lm9e;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcge;->c:J

    iput-wide p1, p0, Lcge;->d:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lcge;->b:Lm9e;

    iget-object v0, v0, Lm9e;->a:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lkfh;->y([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    iput-wide p1, p0, Lcge;->d:J

    return-void
.end method

.method public final b(Ld9e;)J
    .locals 6

    iget-wide v0, p0, Lcge;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    iput-wide v2, p0, Lcge;->d:J

    neg-long p0, v0

    return-wide p0

    :cond_0
    return-wide v2
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lcge;->c:J

    return-void
.end method

.method public final zze()Lkae;
    .locals 4

    iget-wide v0, p0, Lcge;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    new-instance v0, Ll9e;

    iget-wide v1, p0, Lcge;->c:J

    iget-object p0, p0, Lcge;->a:Ln9e;

    invoke-direct {v0, p0, v1, v2}, Ll9e;-><init>(Ln9e;J)V

    return-object v0
.end method
