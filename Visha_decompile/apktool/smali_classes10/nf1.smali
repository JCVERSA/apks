.class public final Lnf1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnf1;->a:I

    iput p2, p0, Lnf1;->b:I

    iput-object p3, p0, Lnf1;->d:Ljava/lang/String;

    iput-object p4, p0, Lnf1;->e:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p4

    mul-int/2addr p3, p4

    add-int/2addr p2, p3

    xor-int/2addr p1, p2

    iput p1, p0, Lnf1;->f:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lnf1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnf1;

    iget v0, p0, Lnf1;->a:I

    iget v2, p1, Lnf1;->a:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_4

    const/16 v2, 0x12

    if-ne v0, v2, :cond_3

    iget v0, p0, Lnf1;->b:I

    iget v2, p1, Lnf1;->b:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lnf1;->d:Ljava/lang/String;

    iget-object v2, p1, Lnf1;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnf1;->e:Ljava/lang/String;

    iget-object p1, p1, Lnf1;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v3

    :cond_2
    return v1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported constant type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lnf1;->d:Ljava/lang/String;

    iget-object v2, p1, Lnf1;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lnf1;->e:Ljava/lang/String;

    iget-object p1, p1, Lnf1;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v3

    :cond_5
    return v1

    :cond_6
    iget-wide v4, p0, Lnf1;->c:J

    iget-wide p0, p1, Lnf1;->c:J

    cmp-long p0, v4, p0

    if-nez p0, :cond_7

    move v1, v3

    :cond_7
    return v1

    :cond_8
    iget p0, p0, Lnf1;->b:I

    iget p1, p1, Lnf1;->b:I

    if-ne p0, p1, :cond_9

    move v1, v3

    :cond_9
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lnf1;->f:I

    return p0
.end method
