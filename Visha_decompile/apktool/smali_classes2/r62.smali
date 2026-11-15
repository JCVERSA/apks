.class public final Lr62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnab$c;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lr62;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lr62;->a:I

    .line 4
    iput-object p2, p0, Lr62;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(ILnab$b;)Lnab;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d

    const/16 v2, 0x15

    if-eq p1, v2, :cond_c

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_a

    const/16 v1, 0x24

    if-eq p1, v1, :cond_9

    const/16 v1, 0x59

    if-eq p1, v1, :cond_8

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_7

    const/16 v1, 0xac

    if-eq p1, v1, :cond_6

    const/16 v1, 0x101

    if-eq p1, v1, :cond_5

    const/16 v1, 0x86

    if-eq p1, v1, :cond_3

    const/16 v1, 0x87

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-object v3

    :pswitch_0
    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lr62;->e(I)Z

    move-result p0

    if-nez p0, :cond_7

    return-object v3

    :pswitch_1
    invoke-virtual {p0, v0}, Lr62;->e(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lx08;

    new-instance p0, Lri5;

    iget-object p1, p2, Lnab$b;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lri5;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0}, Lx08;-><init>(Lm83;)V

    :goto_0
    return-object v3

    :pswitch_2
    new-instance p1, Lx08;

    new-instance v0, Lpk4;

    invoke-virtual {p0, p2}, Lr62;->c(Lnab$b;)Lekb;

    move-result-object p0

    invoke-direct {v0, p0}, Lpk4;-><init>(Lekb;)V

    invoke-direct {p1, v0}, Lx08;-><init>(Lm83;)V

    return-object p1

    :pswitch_3
    invoke-virtual {p0, v0}, Lr62;->e(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lx08;

    new-instance p0, Lg9;

    const/4 p1, 0x0

    iget-object p2, p2, Lnab$b;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lg9;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p0}, Lx08;-><init>(Lm83;)V

    :goto_1
    return-object v3

    :cond_2
    :pswitch_4
    new-instance p0, Lx08;

    new-instance p1, Lm4;

    iget-object p2, p2, Lnab$b;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Lm4;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lx08;-><init>(Lm83;)V

    return-object p0

    :cond_3
    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lr62;->e(I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Lca9;

    new-instance p0, Lrx7;

    const-string p1, "application/x-scte35"

    invoke-direct {p0, p1}, Lrx7;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0}, Lca9;-><init>(Lba9;)V

    :goto_2
    return-object v3

    :cond_5
    new-instance p0, Lca9;

    new-instance p1, Lrx7;

    const-string p2, "application/vnd.dvb.ait"

    invoke-direct {p1, p2}, Lrx7;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lca9;-><init>(Lba9;)V

    return-object p0

    :cond_6
    new-instance p0, Lx08;

    new-instance p1, Lr4;

    iget-object p2, p2, Lnab$b;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Lr4;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lx08;-><init>(Lm83;)V

    return-object p0

    :cond_7
    new-instance p0, Lx08;

    new-instance p1, Lp33;

    iget-object p2, p2, Lnab$b;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Lp33;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lx08;-><init>(Lm83;)V

    return-object p0

    :cond_8
    new-instance p0, Lx08;

    new-instance p1, Lc43;

    iget-object p2, p2, Lnab$b;->c:Ljava/util/List;

    invoke-direct {p1, p2}, Lc43;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lx08;-><init>(Lm83;)V

    return-object p0

    :cond_9
    new-instance p1, Lx08;

    new-instance v0, Lrk4;

    invoke-virtual {p0, p2}, Lr62;->b(Lnab$b;)Lra9;

    move-result-object p0

    invoke-direct {v0, p0}, Lrk4;-><init>(Lra9;)V

    invoke-direct {p1, v0}, Lx08;-><init>(Lm83;)V

    return-object p1

    :cond_a
    invoke-virtual {p0, v1}, Lr62;->e(I)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    new-instance v3, Lx08;

    new-instance p1, Lqk4;

    invoke-virtual {p0, p2}, Lr62;->b(Lnab$b;)Lra9;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr62;->e(I)Z

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lr62;->e(I)Z

    move-result p0

    invoke-direct {p1, p2, v0, p0}, Lqk4;-><init>(Lra9;ZZ)V

    invoke-direct {v3, p1}, Lx08;-><init>(Lm83;)V

    :goto_3
    return-object v3

    :cond_c
    new-instance p0, Lx08;

    new-instance p1, Lnx4;

    invoke-direct {p1}, Lnx4;-><init>()V

    invoke-direct {p0, p1}, Lx08;-><init>(Lm83;)V

    return-object p0

    :cond_d
    new-instance p0, Lx08;

    new-instance p1, Ltr6;

    iget-object p2, p2, Lnab$b;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Ltr6;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lx08;-><init>(Lm83;)V

    return-object p0

    :cond_e
    :pswitch_5
    new-instance p1, Lx08;

    new-instance v0, Lok4;

    invoke-virtual {p0, p2}, Lr62;->c(Lnab$b;)Lekb;

    move-result-object p0

    invoke-direct {v0, p0}, Lok4;-><init>(Lekb;)V

    invoke-direct {p1, v0}, Lx08;-><init>(Lm83;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lnab$b;)Lra9;
    .locals 1

    new-instance v0, Lra9;

    invoke-virtual {p0, p1}, Lr62;->d(Lnab$b;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lra9;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final c(Lnab$b;)Lekb;
    .locals 1

    new-instance v0, Lekb;

    invoke-virtual {p0, p1}, Lr62;->d(Lnab$b;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lekb;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .locals 0

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method

.method public final d(Lnab$b;)Ljava/util/List;
    .locals 10

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lr62;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lr62;->b:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Lqw7;

    iget-object p1, p1, Lnab$b;->d:[B

    invoke-direct {v0, p1}, Lqw7;-><init>([B)V

    iget-object p0, p0, Lr62;->b:Ljava/util/List;

    :goto_0
    invoke-virtual {v0}, Lqw7;->a()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {v0}, Lqw7;->C()I

    move-result p1

    invoke-virtual {v0}, Lqw7;->C()I

    move-result v1

    invoke-virtual {v0}, Lqw7;->e()I

    move-result v2

    add-int/2addr v2, v1

    const/16 v1, 0x86

    if-ne p1, v1, :cond_5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lqw7;->C()I

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_5

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lqw7;->z(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lqw7;->C()I

    move-result v5

    and-int/lit16 v6, v5, 0x80

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    if-eqz v6, :cond_2

    and-int/lit8 v5, v5, 0x3f

    const-string v8, "application/cea-708"

    goto :goto_3

    :cond_2
    const-string v8, "application/cea-608"

    move v5, v7

    :goto_3
    invoke-virtual {v0}, Lqw7;->C()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v0, v7}, Lqw7;->P(I)V

    if-eqz v6, :cond_4

    and-int/lit8 v6, v9, 0x40

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    move v7, v1

    :goto_4
    invoke-static {v7}, Lb51;->b(Z)Ljava/util/List;

    move-result-object v6

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    :goto_5
    new-instance v7, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/k$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/k$b;->F(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/k$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v2}, Lqw7;->O(I)V

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final e(I)Z
    .locals 0

    iget p0, p0, Lr62;->a:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
