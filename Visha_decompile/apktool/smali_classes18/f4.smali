.class public abstract Lf4;
.super Lau1;
.source "SourceFile"

# interfaces
.implements Lhcb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf4$c;
    }
.end annotation


# instance fields
.field public final f:Lkotlin/reflect/jvm/internal/impl/types/Variance;

.field public final g:Z

.field public final h:I

.field public final i:Lx17;

.field public final j:Lx17;

.field public final k:Lvx9;


# direct methods
.method public constructor <init>(Lvx9;Lxt1;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILyt9;Lt6a;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_2
    if-nez p4, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_3
    if-nez p5, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_4
    if-nez p8, :cond_5

    const/4 v0, 0x5

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_5
    if-nez p9, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_6
    invoke-direct {p0, p2, p3, p4, p8}, Lau1;-><init>(Lxt1;Lmd;Lby6;Lyt9;)V

    iput-object p5, p0, Lf4;->f:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    iput-boolean p6, p0, Lf4;->g:Z

    iput p7, p0, Lf4;->h:I

    new-instance p2, Lf4$a;

    invoke-direct {p2, p0, p1, p9}, Lf4$a;-><init>(Lf4;Lvx9;Lt6a;)V

    invoke-interface {p1, p2}, Lvx9;->c(Lc74;)Lx17;

    move-result-object p2

    iput-object p2, p0, Lf4;->i:Lx17;

    new-instance p2, Lf4$b;

    invoke-direct {p2, p0, p4}, Lf4$b;-><init>(Lf4;Lby6;)V

    invoke-interface {p1, p2}, Lvx9;->c(Lc74;)Lx17;

    move-result-object p2

    iput-object p2, p0, Lf4;->j:Lx17;

    iput-object p1, p0, Lf4;->k:Lvx9;

    return-void
.end method

.method private static synthetic Q(I)V
    .locals 6

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "bounds"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "supertypeLoopChecker"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "variance"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "processBoundsWithoutCycles"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_c
    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_d
    const-string v3, "getStorageManager"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_e
    aput-object v4, v2, v5

    goto :goto_3

    :pswitch_f
    const-string v3, "getOriginal"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_10
    const-string v3, "getDefaultType"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_11
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_12
    const-string v3, "getUpperBounds"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_13
    const-string v3, "getVariance"

    aput-object v3, v2, v5

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_14
    aput-object v4, v2, v1

    :goto_4
    :pswitch_15
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_17
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_c
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public A()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public C0(Ljava/util/List;)Ljava/util/List;
    .locals 0

    if-nez p1, :cond_0

    const/16 p0, 0xc

    invoke-static {p0}, Lf4;->Q(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 p0, 0xd

    invoke-static {p0}, Lf4;->Q(I)V

    :cond_1
    return-object p1
.end method

.method public abstract F0(Leh5;)V
.end method

.method public abstract G0()Ljava/util/List;
.end method

.method public a()Lhcb;
    .locals 1

    .line 3
    invoke-super {p0}, Lau1;->l0()Ldu1;

    move-result-object p0

    check-cast p0, Lhcb;

    if-nez p0, :cond_0

    const/16 v0, 0xb

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic a()Lpx0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf4;->a()Lhcb;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lxt1;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lf4;->a()Lhcb;

    move-result-object p0

    return-object p0
.end method

.method public a0()Lvx9;
    .locals 1

    iget-object p0, p0, Lf4;->k:Lvx9;

    if-nez p0, :cond_0

    const/16 v0, 0xe

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lf4;->h:I

    return p0
.end method

.method public getUpperBounds()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lf4;->m()Lsbb;

    move-result-object p0

    check-cast p0, Lf4$c;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->q()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public h()Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 1

    iget-object p0, p0, Lf4;->f:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-nez p0, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic l0()Ldu1;
    .locals 0

    invoke-virtual {p0}, Lf4;->a()Lhcb;

    move-result-object p0

    return-object p0
.end method

.method public final m()Lsbb;
    .locals 1

    iget-object p0, p0, Lf4;->i:Lx17;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsbb;

    if-nez p0, :cond_0

    const/16 v0, 0x9

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public q()Lsm9;
    .locals 1

    iget-object p0, p0, Lf4;->j:Lx17;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsm9;

    if-nez p0, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Lf4;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public q0(Lbu1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lbu1;->m(Lhcb;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .locals 0

    iget-boolean p0, p0, Lf4;->g:Z

    return p0
.end method
