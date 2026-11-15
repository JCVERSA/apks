.class public final Les0;
.super Lgs0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Les0$a;,
        Les0$b;,
        Les0$c;
    }
.end annotation


# instance fields
.field public final g:Lqw7;

.field public final h:Lpw7;

.field public i:I

.field public final j:Z

.field public final k:I

.field public final l:[Les0$b;

.field public m:Les0$b;

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:Les0$c;

.field public q:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3

    invoke-direct {p0}, Lgs0;-><init>()V

    new-instance v0, Lqw7;

    invoke-direct {v0}, Lqw7;-><init>()V

    iput-object v0, p0, Les0;->g:Lqw7;

    new-instance v0, Lpw7;

    invoke-direct {v0}, Lpw7;-><init>()V

    iput-object v0, p0, Les0;->h:Lpw7;

    const/4 v0, -0x1

    iput v0, p0, Les0;->i:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    :cond_0
    iput p1, p0, Les0;->k:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Lb51;->f(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    iput-boolean v1, p0, Les0;->j:Z

    const/16 p2, 0x8

    new-array v0, p2, [Les0$b;

    iput-object v0, p0, Les0;->l:[Les0$b;

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Les0;->l:[Les0$b;

    new-instance v2, Les0$b;

    invoke-direct {v2}, Les0$b;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Les0;->l:[Les0$b;

    aget-object p1, p2, p1

    iput-object p1, p0, Les0;->m:Les0$b;

    return-void
.end method

.method private A()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Les0;->l:[Les0$b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Les0$b;->l()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Les0;->l:[Les0$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Les0$b;->j()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Les0;->l:[Les0$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Les0$b;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Les0;->l:[Les0$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Les0$b;->c()Les0$a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Les0$a;->b()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Les0$a;

    iget-object v2, v2, Les0$a;->a:Ljm1;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ll2a;
    .locals 1

    iget-object v0, p0, Les0;->n:Ljava/util/List;

    iput-object v0, p0, Les0;->o:Ljava/util/List;

    new-instance p0, Lhs0;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lhs0;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public b(Ly4a;)V
    .locals 8

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Les0;->g:Lqw7;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lqw7;->M([BI)V

    :cond_0
    :goto_0
    iget-object p1, p0, Les0;->g:Lqw7;

    invoke-virtual {p1}, Lqw7;->a()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_9

    iget-object p1, p0, Les0;->g:Lqw7;

    invoke-virtual {p1}, Lqw7;->C()I

    move-result p1

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iget-object v5, p0, Les0;->g:Lqw7;

    invoke-virtual {v5}, Lqw7;->C()I

    move-result v5

    int-to-byte v5, v5

    iget-object v6, p0, Les0;->g:Lqw7;

    invoke-virtual {v6}, Lqw7;->C()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Cea708Decoder"

    if-ne v1, v0, :cond_6

    invoke-virtual {p0}, Les0;->k()V

    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iget v1, p0, Les0;->i:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Les0;->A()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sequence number discontinuity. previous="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Les0;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iput v0, p0, Les0;->i:I

    and-int/lit8 p1, v5, 0x3f

    if-nez p1, :cond_5

    const/16 p1, 0x40

    :cond_5
    new-instance v1, Les0$c;

    invoke-direct {v1, v0, p1}, Les0$c;-><init>(II)V

    iput-object v1, p0, Les0;->p:Les0$c;

    iget-object p1, v1, Les0$c;->c:[B

    iget v0, v1, Les0$c;->d:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Les0$c;->d:I

    aput-byte v6, p1, v0

    goto :goto_2

    :cond_6
    if-ne v1, v7, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v3}, Lzi;->a(Z)V

    iget-object v0, p0, Les0;->p:Les0$c;

    if-nez v0, :cond_8

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    invoke-static {p1, v0}, Lop5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object p1, v0, Les0$c;->c:[B

    iget v1, v0, Les0$c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Les0$c;->d:I

    aput-byte v5, p1, v1

    add-int/2addr v1, v7

    iput v1, v0, Les0$c;->d:I

    aput-byte v6, p1, v2

    :goto_2
    iget-object p1, p0, Les0;->p:Les0$c;

    iget v0, p1, Les0$c;->d:I

    iget p1, p1, Les0$c;->b:I

    mul-int/2addr p1, v7

    sub-int/2addr p1, v4

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Les0;->k()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public bridge synthetic c()Ly4a;
    .locals 0

    invoke-super {p0}, Lgs0;->c()Ly4a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d()Lk5a;
    .locals 0

    invoke-super {p0}, Lgs0;->d()Lk5a;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 3

    invoke-super {p0}, Lgs0;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Les0;->n:Ljava/util/List;

    iput-object v0, p0, Les0;->o:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Les0;->q:I

    iget-object v2, p0, Les0;->l:[Les0$b;

    aget-object v1, v2, v1

    iput-object v1, p0, Les0;->m:Les0$b;

    invoke-direct {p0}, Les0;->A()V

    iput-object v0, p0, Les0;->p:Les0$c;

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Les0;->n:Ljava/util/List;

    iget-object p0, p0, Les0;->o:Ljava/util/List;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic h(Ly4a;)V
    .locals 0

    invoke-super {p0, p1}, Lgs0;->h(Ly4a;)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Les0;->p:Les0$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Les0;->z()V

    const/4 v0, 0x0

    iput-object v0, p0, Les0;->p:Les0$c;

    return-void
.end method

.method public final m(I)V
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x11

    const-string v2, "Cea708Decoder"

    if-lt p1, v1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Les0;->h:Lpw7;

    invoke-virtual {p0, v0}, Lpw7;->r(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Les0;->h:Lpw7;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lpw7;->r(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid C0 command: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Les0;->A()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Les0;->m:Les0$b;

    invoke-virtual {p0}, Les0$b;->b()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Les0;->l()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Les0;->n:Ljava/util/List;

    :cond_4
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final n(I)V
    .locals 4

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid C1 command: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cea708Decoder"

    invoke-static {p1, p0}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1
    add-int/lit16 p1, p1, -0x98

    invoke-virtual {p0, p1}, Les0;->q(I)V

    iget v0, p0, Les0;->q:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Les0;->q:I

    iget-object v0, p0, Les0;->l:[Les0$b;

    aget-object p1, v0, p1

    iput-object p1, p0, Les0;->m:Les0$b;

    goto/16 :goto_5

    :pswitch_2
    iget-object p1, p0, Les0;->m:Les0$b;

    invoke-virtual {p1}, Les0$b;->i()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Les0;->h:Lpw7;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lpw7;->r(I)V

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Les0;->y()V

    goto/16 :goto_5

    :pswitch_3
    iget-object p1, p0, Les0;->m:Les0$b;

    invoke-virtual {p1}, Les0$b;->i()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Les0;->h:Lpw7;

    invoke-virtual {p0, v0}, Lpw7;->r(I)V

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Les0;->x()V

    goto/16 :goto_5

    :pswitch_4
    iget-object p1, p0, Les0;->m:Les0$b;

    invoke-virtual {p1}, Les0$b;->i()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Les0;->h:Lpw7;

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Lpw7;->r(I)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Les0;->w()V

    goto/16 :goto_5

    :pswitch_5
    iget-object p1, p0, Les0;->m:Les0$b;

    invoke-virtual {p1}, Les0$b;->i()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Les0;->h:Lpw7;

    invoke-virtual {p0, v0}, Lpw7;->r(I)V

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0}, Les0;->v()V

    goto/16 :goto_5

    :pswitch_6
    invoke-direct {p0}, Les0;->A()V

    goto/16 :goto_5

    :pswitch_7
    iget-object p0, p0, Les0;->h:Lpw7;

    invoke-virtual {p0, v1}, Lpw7;->r(I)V

    goto/16 :goto_5

    :goto_0
    :pswitch_8
    if-gt v2, v1, :cond_9

    iget-object p1, p0, Les0;->h:Lpw7;

    invoke-virtual {p1}, Lpw7;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Les0;->l:[Les0$b;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Les0$b;->l()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_9
    move p1, v2

    :goto_1
    if-gt p1, v1, :cond_9

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0}, Lpw7;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Les0;->l:[Les0$b;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0}, Les0$b;->k()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Les0$b;->p(Z)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :goto_2
    :pswitch_a
    if-gt v2, v1, :cond_9

    iget-object p1, p0, Les0;->h:Lpw7;

    invoke-virtual {p1}, Lpw7;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Les0;->l:[Les0$b;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Les0$b;->p(Z)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_b
    move p1, v2

    :goto_3
    if-gt p1, v1, :cond_9

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0}, Lpw7;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Les0;->l:[Les0$b;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Les0$b;->p(Z)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :goto_4
    :pswitch_c
    if-gt v2, v1, :cond_9

    iget-object p1, p0, Les0;->h:Lpw7;

    invoke-virtual {p1}, Lpw7;->g()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Les0;->l:[Les0$b;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Les0$b;->e()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :pswitch_d
    add-int/lit8 p1, p1, -0x80

    iget v0, p0, Les0;->q:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Les0;->q:I

    iget-object v0, p0, Les0;->l:[Les0$b;

    aget-object p1, v0, p1

    iput-object p1, p0, Les0;->m:Les0$b;

    :cond_9
    :goto_5
    :pswitch_e
    return-void

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final o(I)V
    .locals 1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    iget-object p0, p0, Les0;->h:Lpw7;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lpw7;->r(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    iget-object p0, p0, Les0;->h:Lpw7;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lpw7;->r(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    iget-object p0, p0, Les0;->h:Lpw7;

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Lpw7;->r(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final p(I)V
    .locals 1

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Les0;->h:Lpw7;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lpw7;->r(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    iget-object p0, p0, Les0;->h:Lpw7;

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Lpw7;->r(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Les0;->h:Lpw7;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lpw7;->r(I)V

    iget-object p1, p0, Les0;->h:Lpw7;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lpw7;->h(I)I

    move-result p1

    iget-object p0, p0, Les0;->h:Lpw7;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lpw7;->r(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final q(I)V
    .locals 14

    iget-object v0, p0, Les0;->l:[Les0$b;

    aget-object v1, v0, p1

    iget-object p1, p0, Les0;->h:Lpw7;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lpw7;->r(I)V

    iget-object p1, p0, Les0;->h:Lpw7;

    invoke-virtual {p1}, Lpw7;->g()Z

    move-result v2

    iget-object p1, p0, Les0;->h:Lpw7;

    invoke-virtual {p1}, Lpw7;->g()Z

    move-result v3

    iget-object p1, p0, Les0;->h:Lpw7;

    invoke-virtual {p1}, Lpw7;->g()Z

    move-result v4

    iget-object p1, p0, Les0;->h:Lpw7;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lpw7;->h(I)I

    move-result p1

    iget-object v6, p0, Les0;->h:Lpw7;

    invoke-virtual {v6}, Lpw7;->g()Z

    move-result v6

    iget-object v7, p0, Les0;->h:Lpw7;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lpw7;->h(I)I

    move-result v7

    iget-object v8, p0, Les0;->h:Lpw7;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lpw7;->h(I)I

    move-result v8

    iget-object v9, p0, Les0;->h:Lpw7;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lpw7;->h(I)I

    move-result v11

    iget-object v9, p0, Les0;->h:Lpw7;

    invoke-virtual {v9, v10}, Lpw7;->h(I)I

    move-result v9

    iget-object v10, p0, Les0;->h:Lpw7;

    invoke-virtual {v10, v0}, Lpw7;->r(I)V

    iget-object v10, p0, Les0;->h:Lpw7;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Lpw7;->h(I)I

    move-result v10

    iget-object v12, p0, Les0;->h:Lpw7;

    invoke-virtual {v12, v0}, Lpw7;->r(I)V

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0, v5}, Lpw7;->h(I)I

    move-result v12

    iget-object p0, p0, Les0;->h:Lpw7;

    invoke-virtual {p0, v5}, Lpw7;->h(I)I

    move-result v13

    move v5, p1

    invoke-virtual/range {v1 .. v13}, Les0$b;->f(ZZZIZIIIIIII)V

    return-void
.end method

.method public final r(I)V
    .locals 1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x266b

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Les0;->m:Les0$b;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    :goto_0
    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    invoke-super {p0}, Lgs0;->release()V

    return-void
.end method

.method public final s(I)V
    .locals 0

    iget-object p0, p0, Les0;->m:Les0$b;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lgs0;->setPositionUs(J)V

    return-void
.end method

.method public final t(I)V
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_9

    const/16 v0, 0x21

    if-eq p1, v0, :cond_8

    const/16 v0, 0x25

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x39

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid G2 character: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cea708Decoder"

    invoke-static {p1, p0}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x250c

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x2518

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x2500

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x2514

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x2510

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x2502

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x215e

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_7
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x215d

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_8
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x215c

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_9
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x215b

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_a
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x2022

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_b
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x201d

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_c
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x201c

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto/16 :goto_0

    :pswitch_d
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x2019

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :pswitch_e
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x2018

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :pswitch_f
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x2588

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x2120

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x153

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x161

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x2122

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x178

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x152

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x160

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x2026

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :cond_8
    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0xa0

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :cond_9
    iget-object p0, p0, Les0;->m:Les0$b;

    invoke-virtual {p0, v0}, Les0$b;->a(C)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u(I)V
    .locals 2

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x33c4

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G3 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Les0;->m:Les0$b;

    const/16 p1, 0x5f

    invoke-virtual {p0, p1}, Les0$b;->a(C)V

    :goto_0
    return-void
.end method

.method public final v()V
    .locals 10

    iget-object v0, p0, Les0;->h:Lpw7;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v3

    iget-object v0, p0, Les0;->h:Lpw7;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v4

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v5

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0}, Lpw7;->g()Z

    move-result v6

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0}, Lpw7;->g()Z

    move-result v7

    iget-object v0, p0, Les0;->h:Lpw7;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v8

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v9

    iget-object v2, p0, Les0;->m:Les0$b;

    invoke-virtual/range {v2 .. v9}, Les0$b;->m(IIIZZII)V

    return-void
.end method

.method public final w()V
    .locals 6

    iget-object v0, p0, Les0;->h:Lpw7;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v0

    iget-object v2, p0, Les0;->h:Lpw7;

    invoke-virtual {v2, v1}, Lpw7;->h(I)I

    move-result v2

    iget-object v3, p0, Les0;->h:Lpw7;

    invoke-virtual {v3, v1}, Lpw7;->h(I)I

    move-result v3

    iget-object v4, p0, Les0;->h:Lpw7;

    invoke-virtual {v4, v1}, Lpw7;->h(I)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Les0$b;->h(IIII)I

    move-result v0

    iget-object v2, p0, Les0;->h:Lpw7;

    invoke-virtual {v2, v1}, Lpw7;->h(I)I

    move-result v2

    iget-object v3, p0, Les0;->h:Lpw7;

    invoke-virtual {v3, v1}, Lpw7;->h(I)I

    move-result v3

    iget-object v4, p0, Les0;->h:Lpw7;

    invoke-virtual {v4, v1}, Lpw7;->h(I)I

    move-result v4

    iget-object v5, p0, Les0;->h:Lpw7;

    invoke-virtual {v5, v1}, Lpw7;->h(I)I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Les0$b;->h(IIII)I

    move-result v2

    iget-object v3, p0, Les0;->h:Lpw7;

    invoke-virtual {v3, v1}, Lpw7;->r(I)V

    iget-object v3, p0, Les0;->h:Lpw7;

    invoke-virtual {v3, v1}, Lpw7;->h(I)I

    move-result v3

    iget-object v4, p0, Les0;->h:Lpw7;

    invoke-virtual {v4, v1}, Lpw7;->h(I)I

    move-result v4

    iget-object v5, p0, Les0;->h:Lpw7;

    invoke-virtual {v5, v1}, Lpw7;->h(I)I

    move-result v1

    invoke-static {v3, v4, v1}, Les0$b;->g(III)I

    move-result v1

    iget-object p0, p0, Les0;->m:Les0$b;

    invoke-virtual {p0, v0, v2, v1}, Les0$b;->n(III)V

    return-void
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, Les0;->h:Lpw7;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lpw7;->r(I)V

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v0

    iget-object v1, p0, Les0;->h:Lpw7;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lpw7;->r(I)V

    iget-object v1, p0, Les0;->h:Lpw7;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lpw7;->h(I)I

    move-result v1

    iget-object p0, p0, Les0;->m:Les0$b;

    invoke-virtual {p0, v0, v1}, Les0$b;->o(II)V

    return-void
.end method

.method public final y()V
    .locals 13

    iget-object v0, p0, Les0;->h:Lpw7;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v0

    iget-object v2, p0, Les0;->h:Lpw7;

    invoke-virtual {v2, v1}, Lpw7;->h(I)I

    move-result v2

    iget-object v3, p0, Les0;->h:Lpw7;

    invoke-virtual {v3, v1}, Lpw7;->h(I)I

    move-result v3

    iget-object v4, p0, Les0;->h:Lpw7;

    invoke-virtual {v4, v1}, Lpw7;->h(I)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Les0$b;->h(IIII)I

    move-result v6

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v0

    iget-object v2, p0, Les0;->h:Lpw7;

    invoke-virtual {v2, v1}, Lpw7;->h(I)I

    move-result v2

    iget-object v3, p0, Les0;->h:Lpw7;

    invoke-virtual {v3, v1}, Lpw7;->h(I)I

    move-result v3

    iget-object v4, p0, Les0;->h:Lpw7;

    invoke-virtual {v4, v1}, Lpw7;->h(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Les0$b;->g(III)I

    move-result v7

    iget-object v2, p0, Les0;->h:Lpw7;

    invoke-virtual {v2}, Lpw7;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    move v9, v0

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0}, Lpw7;->g()Z

    move-result v8

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v10

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v11

    iget-object v0, p0, Les0;->h:Lpw7;

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v12

    iget-object v0, p0, Les0;->h:Lpw7;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lpw7;->r(I)V

    iget-object v5, p0, Les0;->m:Les0$b;

    invoke-virtual/range {v5 .. v12}, Les0$b;->q(IIZIIII)V

    return-void
.end method

.method public final z()V
    .locals 12

    iget-object v0, p0, Les0;->p:Les0$c;

    iget v1, v0, Les0$c;->d:I

    iget v0, v0, Les0$c;->b:I

    const/4 v2, 0x2

    mul-int/2addr v0, v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const-string v4, "Cea708Decoder"

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Les0;->p:Les0$c;

    iget v1, v1, Les0$c;->b:I

    mul-int/2addr v1, v2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but current index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Les0;->p:Les0$c;

    iget v1, v1, Les0$c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (sequence number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Les0;->p:Les0$c;

    iget v1, v1, Les0$c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lop5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Les0;->h:Lpw7;

    iget-object v1, p0, Les0;->p:Les0$c;

    iget-object v5, v1, Les0$c;->c:[B

    iget v1, v1, Les0$c;->d:I

    invoke-virtual {v0, v5, v1}, Lpw7;->o([BI)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v1, p0, Les0;->h:Lpw7;

    invoke-virtual {v1}, Lpw7;->b()I

    move-result v1

    if-lez v1, :cond_e

    iget-object v1, p0, Les0;->h:Lpw7;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lpw7;->h(I)I

    move-result v1

    iget-object v5, p0, Les0;->h:Lpw7;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lpw7;->h(I)I

    move-result v5

    const/4 v6, 0x7

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Les0;->h:Lpw7;

    invoke-virtual {v1, v2}, Lpw7;->r(I)V

    iget-object v1, p0, Les0;->h:Lpw7;

    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Lpw7;->h(I)I

    move-result v1

    if-ge v1, v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid extended service number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v5, :cond_3

    if-eqz v1, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceNumber is non-zero ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when blockSize is 0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    iget v6, p0, Les0;->k:I

    if-eq v1, v6, :cond_4

    iget-object v1, p0, Les0;->h:Lpw7;

    invoke-virtual {v1, v5}, Lpw7;->s(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Les0;->h:Lpw7;

    invoke-virtual {v1}, Lpw7;->e()I

    move-result v1

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    :goto_1
    iget-object v5, p0, Les0;->h:Lpw7;

    invoke-virtual {v5}, Lpw7;->e()I

    move-result v5

    if-ge v5, v1, :cond_1

    iget-object v5, p0, Les0;->h:Lpw7;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lpw7;->h(I)I

    move-result v5

    const/16 v7, 0x10

    const/16 v8, 0xff

    const/16 v9, 0x9f

    const/16 v10, 0x7f

    const/16 v11, 0x1f

    if-eq v5, v7, :cond_9

    if-gt v5, v11, :cond_5

    invoke-virtual {p0, v5}, Les0;->m(I)V

    goto :goto_1

    :cond_5
    if-gt v5, v10, :cond_6

    invoke-virtual {p0, v5}, Les0;->r(I)V

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_6
    if-gt v5, v9, :cond_7

    invoke-virtual {p0, v5}, Les0;->n(I)V

    goto :goto_2

    :cond_7
    if-gt v5, v8, :cond_8

    invoke-virtual {p0, v5}, Les0;->s(I)V

    goto :goto_2

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid base command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v5, p0, Les0;->h:Lpw7;

    invoke-virtual {v5, v6}, Lpw7;->h(I)I

    move-result v5

    if-gt v5, v11, :cond_a

    invoke-virtual {p0, v5}, Les0;->o(I)V

    goto :goto_1

    :cond_a
    if-gt v5, v10, :cond_b

    invoke-virtual {p0, v5}, Les0;->t(I)V

    goto :goto_2

    :cond_b
    if-gt v5, v9, :cond_c

    invoke-virtual {p0, v5}, Les0;->p(I)V

    goto :goto_1

    :cond_c
    if-gt v5, v8, :cond_d

    invoke-virtual {p0, v5}, Les0;->u(I)V

    goto :goto_2

    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid extended command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    :goto_3
    if-eqz v0, :cond_f

    invoke-direct {p0}, Les0;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Les0;->n:Ljava/util/List;

    :cond_f
    return-void
.end method
