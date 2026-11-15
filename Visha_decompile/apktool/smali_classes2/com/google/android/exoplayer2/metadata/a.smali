.class public final Lcom/google/android/exoplayer2/metadata/a;
.super Lcom/google/android/exoplayer2/d;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final o:Ldo6;

.field public final p:Lfo6;

.field public final q:Landroid/os/Handler;

.field public final r:Leo6;

.field public s:Lco6;

.field public t:Z

.field public u:Z

.field public v:J

.field public w:J

.field public x:Lcom/google/android/exoplayer2/metadata/Metadata;


# direct methods
.method public constructor <init>(Lfo6;Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Ldo6;->a:Ldo6;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/metadata/a;-><init>(Lfo6;Landroid/os/Looper;Ldo6;)V

    return-void
.end method

.method public constructor <init>(Lfo6;Landroid/os/Looper;Ldo6;)V
    .locals 1

    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/d;-><init>(I)V

    .line 3
    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfo6;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->p:Lfo6;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lblb;->t(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Landroid/os/Handler;

    .line 5
    invoke-static {p3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldo6;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->o:Ldo6;

    .line 6
    new-instance p1, Leo6;

    invoke-direct {p1}, Leo6;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Leo6;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/a;->w:J

    return-void
.end method


# virtual methods
.method public final A(J)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->x:Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/a;->w:J

    cmp-long p1, v2, p1

    if-gtz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/metadata/a;->y(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->x:Lcom/google/android/exoplayer2/metadata/Metadata;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/a;->w:J

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/metadata/a;->t:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/a;->x:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez p2, :cond_1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/metadata/a;->u:Z

    :cond_1
    return p1
.end method

.method public final B()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/a;->t:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->x:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Leo6;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->i()Lo44;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Leo6;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/d;->u(Lo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Leo6;

    invoke-virtual {v0}, Lwk0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/a;->t:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Leo6;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/metadata/a;->v:J

    iput-wide v1, v0, Leo6;->j:J

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->n()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->s:Lco6;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco6;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Leo6;

    invoke-interface {v0, v1}, Lco6;->a(Leo6;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/metadata/a;->x(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->x:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Leo6;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/a;->w:J

    goto :goto_0

    :cond_1
    const/4 v2, -0x5

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lo44;->b:Lcom/google/android/exoplayer2/k;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/k;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/k;->q:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/a;->v:J

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/k;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/a;->o:Ldo6;

    invoke-interface {p0, p1}, Ldo6;->a(Lcom/google/android/exoplayer2/k;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/google/android/exoplayer2/k;->F:I

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-static {p0}, Lks8;->create(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    invoke-static {p0}, Lks8;->create(I)I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "MetadataRenderer"

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/a;->z(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public isEnded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/metadata/a;->u:Z

    return p0
.end method

.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public n()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->x:Lcom/google/android/exoplayer2/metadata/Metadata;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/metadata/a;->w:J

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->s:Lco6;

    return-void
.end method

.method public p(JZ)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->x:Lcom/google/android/exoplayer2/metadata/Metadata;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/a;->w:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/a;->t:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/a;->u:Z

    return-void
.end method

.method public render(JJ)V
    .locals 0

    const/4 p3, 0x1

    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/a;->B()V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/metadata/a;->A(J)Z

    move-result p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t([Lcom/google/android/exoplayer2/k;JJ)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/a;->o:Ldo6;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Ldo6;->b(Lcom/google/android/exoplayer2/k;)Lco6;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->s:Lco6;

    return-void
.end method

.method public final x(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->getWrappedMetadataFormat()Lcom/google/android/exoplayer2/k;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->o:Ldo6;

    invoke-interface {v2, v1}, Ldo6;->a(Lcom/google/android/exoplayer2/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->o:Ldo6;

    invoke-interface {v2, v1}, Ldo6;->b(Lcom/google/android/exoplayer2/k;)Lco6;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->getWrappedMetadataBytes()[B

    move-result-object v2

    invoke-static {v2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Leo6;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Leo6;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Leo6;

    iget-object v3, v3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Leo6;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->n()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Leo6;

    invoke-interface {v1, v2}, Lco6;->a(Leo6;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, p2}, Lcom/google/android/exoplayer2/metadata/a;->x(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final y(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/a;->z(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    :goto_0
    return-void
.end method

.method public final z(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/a;->p:Lfo6;

    invoke-interface {p0, p1}, Lfo6;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method
