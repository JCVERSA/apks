.class public final Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/source/internal/MediaNameComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public volatile b:J


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 1

    const-string v0, "segments"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->a:Ljava/util/List;

    iput-wide p2, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->b:J

    return-wide v0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->a:Ljava/util/List;

    return-object p0
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->b:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;

    iget-object v1, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->a:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->b:J

    iget-wide p0, p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->b:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->a:Ljava/util/List;

    iget-wide v1, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->b:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SortKey(segments="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lastAccess="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
