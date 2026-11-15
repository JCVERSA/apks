.class public Lfreemarker/core/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbga;


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:J

.field public f:Ljava/math/BigInteger;

.field public final synthetic g:Lfreemarker/core/ListableRightUnboundedRangeModel;


# direct methods
.method public constructor <init>(Lfreemarker/core/ListableRightUnboundedRangeModel;)V
    .locals 1

    iput-object p1, p0, Lfreemarker/core/d1;->g:Lfreemarker/core/ListableRightUnboundedRangeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lfreemarker/core/d1;->c:I

    invoke-virtual {p1}, Lfreemarker/core/RangeModel;->getBegining()I

    move-result p1

    iput p1, p0, Lfreemarker/core/d1;->d:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public next()Lzfa;
    .locals 9

    iget-boolean v0, p0, Lfreemarker/core/d1;->b:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lfreemarker/core/d1;->c:I

    const-wide/16 v3, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lfreemarker/core/d1;->f:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/d1;->f:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lfreemarker/core/d1;->e:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lfreemarker/core/d1;->e:J

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lfreemarker/core/d1;->c:I

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/d1;->f:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/d1;->f:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    iget v0, p0, Lfreemarker/core/d1;->d:I

    const v5, 0x7fffffff

    if-ge v0, v5, :cond_3

    add-int/2addr v0, v2

    iput v0, p0, Lfreemarker/core/d1;->d:I

    goto :goto_0

    :cond_3
    iput v1, p0, Lfreemarker/core/d1;->c:I

    int-to-long v5, v0

    add-long/2addr v5, v3

    iput-wide v5, p0, Lfreemarker/core/d1;->e:J

    :cond_4
    :goto_0
    iput-boolean v2, p0, Lfreemarker/core/d1;->b:Z

    iget v0, p0, Lfreemarker/core/d1;->c:I

    if-ne v0, v2, :cond_5

    new-instance v0, Lfreemarker/template/SimpleNumber;

    iget p0, p0, Lfreemarker/core/d1;->d:I

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    goto :goto_1

    :cond_5
    if-ne v0, v1, :cond_6

    new-instance v0, Lfreemarker/template/SimpleNumber;

    iget-wide v1, p0, Lfreemarker/core/d1;->e:J

    invoke-direct {v0, v1, v2}, Lfreemarker/template/SimpleNumber;-><init>(J)V

    goto :goto_1

    :cond_6
    new-instance v0, Lfreemarker/template/SimpleNumber;

    iget-object p0, p0, Lfreemarker/core/d1;->f:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    :goto_1
    return-object v0
.end method
