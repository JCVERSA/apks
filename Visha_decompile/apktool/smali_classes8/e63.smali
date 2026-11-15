.class public final Le63;
.super Ldj;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public d:Lf63;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-static {p1}, Le63;->c([B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le63;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ldj;-><init>(Z)V

    const/16 v0, 0x39

    new-array v1, v0, [B

    iput-object v1, p0, Le63;->c:[B

    const/4 p0, 0x0

    invoke-static {p1, p2, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static c([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'buf\' must have length 57"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()Lf63;
    .locals 4

    iget-object v0, p0, Le63;->c:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le63;->d:Lf63;

    if-nez v1, :cond_0

    new-instance v1, Lf63;

    iget-object v2, p0, Le63;->c:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ld63;->i([BI)Ld63$e;

    move-result-object v2

    invoke-direct {v1, v2}, Lf63;-><init>(Ld63$e;)V

    iput-object v1, p0, Le63;->d:Lf63;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Le63;->d:Lf63;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Le63;->c:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method
