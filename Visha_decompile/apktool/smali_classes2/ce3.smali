.class public final Lce3;
.super Ljm9;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljm9;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Leo6;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    new-instance p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-instance v0, Lqw7;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lqw7;-><init>([BI)V

    invoke-virtual {p0, v0}, Lce3;->c(Lqw7;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object p1
.end method

.method public c(Lqw7;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 8

    invoke-virtual {p1}, Lqw7;->w()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lqw7;->w()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lqw7;->v()J

    move-result-wide v3

    invoke-virtual {p1}, Lqw7;->v()J

    move-result-wide v5

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object p0

    invoke-virtual {p1}, Lqw7;->e()I

    move-result v0

    invoke-virtual {p1}, Lqw7;->f()I

    move-result p1

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    new-instance p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object p0
.end method
