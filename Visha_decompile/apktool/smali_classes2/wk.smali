.class public Lwk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwk$b;,
        Lwk$d;,
        Lwk$c;
    }
.end annotation


# instance fields
.field public a:Lwk$b;

.field public b:[Lwk$c;

.field public c:[Lwk$d;

.field public d:I

.field public e:I

.field public f:[D


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwk$b;

    const/16 v1, 0x136

    invoke-direct {v0, p0, v1}, Lwk$b;-><init>(Lwk;I)V

    iput-object v0, p0, Lwk;->a:Lwk$b;

    new-array v0, v1, [Lwk$c;

    iput-object v0, p0, Lwk;->b:[Lwk$c;

    new-array v0, v1, [Lwk$d;

    iput-object v0, p0, Lwk;->c:[Lwk$d;

    new-array v0, v1, [D

    iput-object v0, p0, Lwk;->f:[D

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x12c

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lwk;->b:[Lwk$c;

    new-instance v2, Lwk$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lwk$c;-><init>(Lwk;Lwk$a;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lwk;->b:[Lwk$c;

    add-int/lit8 v2, v0, 0x1

    new-instance v4, Lwk$c;

    invoke-direct {v4, p0, v3}, Lwk$c;-><init>(Lwk;Lwk$a;)V

    aput-object v4, v1, v2

    iget-object v1, p0, Lwk;->c:[Lwk$d;

    new-instance v4, Lwk$d;

    invoke-direct {v4, p0, v3}, Lwk$d;-><init>(Lwk;Lwk$a;)V

    aput-object v4, v1, v0

    iget-object v1, p0, Lwk;->c:[Lwk$d;

    new-instance v4, Lwk$d;

    invoke-direct {v4, p0, v3}, Lwk$d;-><init>(Lwk;Lwk$a;)V

    aput-object v4, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lwk;)[D
    .locals 0

    iget-object p0, p0, Lwk;->f:[D

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 7

    iget-object v0, p0, Lwk;->c:[Lwk$d;

    iget v1, p0, Lwk;->d:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    iput v2, p0, Lwk;->e:I

    move v0, v2

    :goto_0
    iget v1, p0, Lwk;->d:I

    mul-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_2

    if-le v0, v2, :cond_0

    iget-object v1, p0, Lwk;->c:[Lwk$d;

    aget-object v3, v1, v0

    iget-wide v3, v3, Lwk$d;->c:D

    add-int/lit8 v5, v0, -0x1

    aget-object v1, v1, v5

    iget-wide v5, v1, Lwk$d;->c:D

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_0

    iget v1, p0, Lwk;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lwk;->e:I

    :cond_0
    iget-object v1, p0, Lwk;->f:[D

    iget v3, p0, Lwk;->e:I

    iget-object v4, p0, Lwk;->c:[Lwk$d;

    aget-object v4, v4, v0

    iget-wide v5, v4, Lwk$d;->c:D

    aput-wide v5, v1, v3

    iget v1, v4, Lwk$d;->b:I

    if-lez v1, :cond_1

    iget-object v4, p0, Lwk;->b:[Lwk$c;

    aget-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v4, v1

    iput v3, v1, Lwk$c;->b:I

    iput v3, v5, Lwk$c;->b:I

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lwk;->b:[Lwk$c;

    neg-int v1, v1

    aget-object v5, v4, v1

    add-int/2addr v1, v2

    aget-object v1, v4, v1

    iput v3, v1, Lwk$c;->c:I

    iput v3, v5, Lwk$c;->c:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Ljava/util/List;)D
    .locals 13

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lwk;->d:I

    invoke-virtual {p0, p1}, Lwk;->d(Ljava/util/List;)V

    invoke-virtual {p0}, Lwk;->b()V

    iget-object p1, p0, Lwk;->b:[Lwk$c;

    iget v2, p0, Lwk;->d:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-static {p1, v4, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    iget-object p1, p0, Lwk;->a:Lwk$b;

    iget v2, p0, Lwk;->e:I

    sub-int/2addr v2, v4

    invoke-virtual {p1, v4, v2, v4}, Lwk$b;->a(III)V

    iget-object p1, p0, Lwk;->a:Lwk$b;

    iget-object v2, p0, Lwk;->b:[Lwk$c;

    aget-object v2, v2, v4

    iget v5, v2, Lwk$c;->b:I

    iget v2, v2, Lwk$c;->c:I

    sub-int/2addr v2, v4

    invoke-virtual {p1, v5, v2, v4, v4}, Lwk$b;->c(IIII)V

    move p1, v3

    :goto_0
    iget v2, p0, Lwk;->d:I

    mul-int/2addr v2, v3

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Lwk;->a:Lwk$b;

    iget-object v5, v2, Lwk$b;->a:[Lwk$b$a;

    aget-object v5, v5, v4

    iget-wide v5, v5, Lwk$b$a;->d:D

    iget-object v7, p0, Lwk;->b:[Lwk$c;

    aget-object v8, v7, p1

    iget-wide v9, v8, Lwk$c;->e:D

    add-int/lit8 v11, p1, -0x1

    aget-object v7, v7, v11

    iget-wide v11, v7, Lwk$c;->e:D

    sub-double/2addr v9, v11

    mul-double/2addr v5, v9

    add-double/2addr v0, v5

    iget v5, v8, Lwk$c;->b:I

    iget v6, v8, Lwk$c;->c:I

    sub-int/2addr v6, v4

    iget v7, v8, Lwk$c;->d:I

    invoke-virtual {v2, v5, v6, v4, v7}, Lwk$b;->c(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance p0, Ljava/text/DecimalFormat;

    const-string p1, "0.00"

    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-wide v0
.end method

.method public final d(Ljava/util/List;)V
    .locals 8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lap8;

    iget-object v3, p0, Lwk;->b:[Lwk$c;

    aget-object v4, v3, v1

    iget-wide v5, v2, Lap8;->a:D

    iput-wide v5, v4, Lwk$c;->e:D

    iput v0, v4, Lwk$c;->d:I

    iget-object v4, p0, Lwk;->c:[Lwk$d;

    aget-object v5, v4, v1

    iput v1, v5, Lwk$d;->b:I

    iget-wide v6, v2, Lap8;->b:D

    iput-wide v6, v5, Lwk$d;->c:D

    add-int/lit8 v5, v1, 0x1

    aget-object v3, v3, v5

    iget-wide v6, v2, Lap8;->c:D

    iput-wide v6, v3, Lwk$c;->e:D

    const/4 v6, -0x1

    iput v6, v3, Lwk$c;->d:I

    aget-object v3, v4, v5

    neg-int v4, v1

    iput v4, v3, Lwk$d;->b:I

    iget-wide v4, v2, Lap8;->d:D

    iput-wide v4, v3, Lwk$d;->c:D

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method
