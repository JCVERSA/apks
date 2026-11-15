.class public Lmt5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:[J

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lmt5;->a:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, p0, Lmt5;->b:[J

    const/4 v0, 0x0

    iput v0, p0, Lmt5;->c:I

    iput v0, p0, Lmt5;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lmt5;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget p1, p0, Lmt5;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmt5;->d:I

    return-void

    :cond_0
    iget-object v1, p0, Lmt5;->a:[Ljava/lang/String;

    aput-object p1, v1, v0

    iget-object v1, p0, Lmt5;->b:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    invoke-static {p1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget p1, p0, Lmt5;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmt5;->c:I

    return-void
.end method

.method public b(Ljava/lang/String;)F
    .locals 3

    iget v0, p0, Lmt5;->d:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmt5;->d:I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lmt5;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmt5;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lmt5;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object p1, p0, Lmt5;->b:[J

    iget p0, p0, Lmt5;->c:I

    aget-wide p0, p1, p0

    sub-long/2addr v0, p0

    long-to-float p0, v0

    const p1, 0x49742400    # 1000000.0f

    div-float/2addr p0, p1

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbalanced trace call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Expected "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmt5;->a:[Ljava/lang/String;

    iget p0, p0, Lmt5;->c:I

    aget-object p0, p1, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t end trace section. There are none."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
