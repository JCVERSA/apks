.class public final Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;
.super Lcom/transsion/dbdata/source/internal/MediaNameComparator$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/source/internal/MediaNameComparator$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;->b:J

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/source/internal/MediaNameComparator$a;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$b;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;->b:J

    check-cast p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;

    iget-wide p0, p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;->b:J

    invoke-static {v0, v1, p0, p1}, Ly45;->m(JJ)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;->a(Lcom/transsion/dbdata/source/internal/MediaNameComparator$a;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;

    iget-wide v3, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;->b:J

    iget-wide p0, p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;->b:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;->b:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumericSegment(value="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
