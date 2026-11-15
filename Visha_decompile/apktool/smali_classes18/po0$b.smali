.class public final Lpo0$b;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final g:[B


# instance fields
.field public final b:I

.field public final c:Ljava/util/ArrayList;

.field public d:I

.field public e:[B

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lpo0$b;->g:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lpo0$b;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpo0$b;->c:Ljava/util/ArrayList;

    new-array p1, p1, [B

    iput-object p1, p0, Lpo0$b;->e:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Buffer size < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([BI)[B
    .locals 1

    new-array p0, p2, [B

    array-length v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lpo0$b;->c:Ljava/util/ArrayList;

    new-instance v1, Lqm5;

    iget-object v2, p0, Lpo0$b;->e:[B

    invoke-direct {v1, v2}, Lqm5;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lpo0$b;->d:I

    iget-object v1, p0, Lpo0$b;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lpo0$b;->d:I

    iget v1, p0, Lpo0$b;->b:I

    ushr-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lpo0$b;->e:[B

    const/4 p1, 0x0

    iput p1, p0, Lpo0$b;->f:I

    return-void
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Lpo0$b;->f:I

    iget-object v1, p0, Lpo0$b;->e:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, v0}, Lpo0$b;->a([BI)[B

    move-result-object v0

    iget-object v1, p0, Lpo0$b;->c:Ljava/util/ArrayList;

    new-instance v2, Lqm5;

    invoke-direct {v2, v0}, Lqm5;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpo0$b;->c:Ljava/util/ArrayList;

    new-instance v1, Lqm5;

    iget-object v2, p0, Lpo0$b;->e:[B

    invoke-direct {v1, v2}, Lqm5;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lpo0$b;->g:[B

    iput-object v0, p0, Lpo0$b;->e:[B

    :cond_1
    :goto_0
    iget v0, p0, Lpo0$b;->d:I

    iget v1, p0, Lpo0$b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lpo0$b;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lpo0$b;->f:I

    return-void
.end method

.method public declared-synchronized e()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lpo0$b;->d:I

    iget v1, p0, Lpo0$b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized g()Lpo0;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lpo0$b;->d()V

    iget-object v0, p0, Lpo0$b;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lpo0;->f(Ljava/lang/Iterable;)Lpo0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lpo0$b;->e()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<ByteString.Output@%s size=%d>"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lpo0$b;->f:I

    iget-object v1, p0, Lpo0$b;->e:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lpo0$b;->b(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lpo0$b;->e:[B

    iget v1, p0, Lpo0$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lpo0$b;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 3

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lpo0$b;->e:[B

    array-length v1, v0

    iget v2, p0, Lpo0$b;->f:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_0

    .line 6
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget p1, p0, Lpo0$b;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lpo0$b;->f:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 9
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 10
    invoke-virtual {p0, p3}, Lpo0$b;->b(I)V

    .line 11
    iget-object v0, p0, Lpo0$b;->e:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput p3, p0, Lpo0$b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
