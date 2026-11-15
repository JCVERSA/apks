.class public final Lz7j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:F

.field public final c:J


# direct methods
.method public synthetic constructor <init>(Lv7j;Lx7j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lv7j;->c(Lv7j;)J

    move-result-wide v0

    iput-wide v0, p0, Lz7j;->a:J

    invoke-static {p1}, Lv7j;->a(Lv7j;)F

    move-result p2

    iput p2, p0, Lz7j;->b:F

    invoke-static {p1}, Lv7j;->b(Lv7j;)J

    move-result-wide p1

    iput-wide p1, p0, Lz7j;->c:J

    return-void
.end method


# virtual methods
.method public final a()Lv7j;
    .locals 2

    new-instance v0, Lv7j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lv7j;-><init>(Lz7j;Lx7j;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lz7j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lz7j;

    iget-wide v3, p0, Lz7j;->a:J

    iget-wide v5, p1, Lz7j;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lz7j;->b:F

    iget v3, p1, Lz7j;->b:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v3, p0, Lz7j;->c:J

    iget-wide p0, p1, Lz7j;->c:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lz7j;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Lz7j;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-wide v2, p0, Lz7j;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
