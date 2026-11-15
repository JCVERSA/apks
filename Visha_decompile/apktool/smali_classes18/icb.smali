.class public Licb;
.super Lf4;
.source "SourceFile"


# instance fields
.field public final l:Le74;

.field public final m:Ljava/util/List;

.field public n:Z


# direct methods
.method public constructor <init>(Lxt1;Lmd;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lby6;ILyt9;Le74;Lt6a;Lvx9;)V
    .locals 11

    move-object v10, p0

    if-nez p1, :cond_0

    const/16 v0, 0x13

    invoke-static {v0}, Licb;->Q(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x14

    invoke-static {v0}, Licb;->Q(I)V

    :cond_1
    if-nez p4, :cond_2

    const/16 v0, 0x15

    invoke-static {v0}, Licb;->Q(I)V

    :cond_2
    if-nez p5, :cond_3

    const/16 v0, 0x16

    invoke-static {v0}, Licb;->Q(I)V

    :cond_3
    if-nez p7, :cond_4

    const/16 v0, 0x17

    invoke-static {v0}, Licb;->Q(I)V

    :cond_4
    if-nez p9, :cond_5

    const/16 v0, 0x18

    invoke-static {v0}, Licb;->Q(I)V

    :cond_5
    if-nez p10, :cond_6

    const/16 v0, 0x19

    invoke-static {v0}, Licb;->Q(I)V

    :cond_6
    move-object v0, p0

    move-object/from16 v1, p10

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p5

    move-object v5, p4

    move v6, p3

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lf4;-><init>(Lvx9;Lxt1;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILyt9;Lt6a;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v10, Licb;->m:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, v10, Licb;->n:Z

    move-object/from16 v0, p8

    iput-object v0, v10, Licb;->l:Le74;

    return-void
.end method

.method public static K0(Lxt1;Lmd;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lby6;ILyt9;Le74;Lt6a;Lvx9;)Licb;
    .locals 12

    if-nez p0, :cond_0

    const/16 v0, 0xc

    invoke-static {v0}, Licb;->Q(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Licb;->Q(I)V

    :cond_1
    if-nez p3, :cond_2

    const/16 v0, 0xe

    invoke-static {v0}, Licb;->Q(I)V

    :cond_2
    if-nez p4, :cond_3

    const/16 v0, 0xf

    invoke-static {v0}, Licb;->Q(I)V

    :cond_3
    if-nez p6, :cond_4

    const/16 v0, 0x10

    invoke-static {v0}, Licb;->Q(I)V

    :cond_4
    if-nez p8, :cond_5

    const/16 v0, 0x11

    invoke-static {v0}, Licb;->Q(I)V

    :cond_5
    if-nez p9, :cond_6

    const/16 v0, 0x12

    invoke-static {v0}, Licb;->Q(I)V

    :cond_6
    new-instance v11, Licb;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Licb;-><init>(Lxt1;Lmd;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lby6;ILyt9;Le74;Lt6a;Lvx9;)V

    return-object v11
.end method

.method public static L0(Lxt1;Lmd;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lby6;ILyt9;Lvx9;)Licb;
    .locals 10

    if-nez p0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Licb;->Q(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x7

    invoke-static {v0}, Licb;->Q(I)V

    :cond_1
    if-nez p3, :cond_2

    const/16 v0, 0x8

    invoke-static {v0}, Licb;->Q(I)V

    :cond_2
    if-nez p4, :cond_3

    const/16 v0, 0x9

    invoke-static {v0}, Licb;->Q(I)V

    :cond_3
    if-nez p6, :cond_4

    const/16 v0, 0xa

    invoke-static {v0}, Licb;->Q(I)V

    :cond_4
    if-nez p7, :cond_5

    const/16 v0, 0xb

    invoke-static {v0}, Licb;->Q(I)V

    :cond_5
    const/4 v7, 0x0

    sget-object v8, Lt6a$a;->a:Lt6a$a;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Licb;->K0(Lxt1;Lmd;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lby6;ILyt9;Le74;Lt6a;Lvx9;)Licb;

    move-result-object v0

    return-object v0
.end method

.method public static M0(Lxt1;Lmd;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lby6;ILvx9;)Lhcb;
    .locals 9

    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Licb;->Q(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Licb;->Q(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Licb;->Q(I)V

    :cond_2
    if-nez p4, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Licb;->Q(I)V

    :cond_3
    if-nez p6, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, Licb;->Q(I)V

    :cond_4
    sget-object v7, Lyt9;->a:Lyt9;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Licb;->L0(Lxt1;Lmd;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lby6;ILyt9;Lvx9;)Licb;

    move-result-object p1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->j(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->y()Lsm9;

    move-result-object p0

    invoke-virtual {p1, p0}, Licb;->H0(Leh5;)V

    invoke-virtual {p1}, Licb;->Q0()V

    return-object p1
.end method

.method private static synthetic Q(I)V
    .locals 8

    const/16 v0, 0x1c

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_1
    const-string v7, "type"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_2
    const-string v7, "bound"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    const-string v7, "supertypeLoopsChecker"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_4
    const-string v7, "supertypeLoopsResolver"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_5
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_6
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_7
    const-string v7, "storageManager"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_8
    const-string v7, "name"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_9
    const-string v7, "variance"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_a
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_2
    const-string v6, "createWithDefaultBound"

    const/4 v7, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v5, v4, v7

    goto :goto_3

    :cond_2
    const-string v5, "resolveUpperBounds"

    aput-object v5, v4, v7

    goto :goto_3

    :cond_3
    aput-object v6, v4, v7

    :goto_3
    packed-switch p0, :pswitch_data_1

    aput-object v6, v4, v3

    goto :goto_4

    :pswitch_b
    const-string v5, "reportSupertypeLoopError"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_c
    const-string v5, "addUpperBound"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_d
    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_e
    const-string v5, "createForFurtherModification"

    aput-object v5, v4, v3

    :goto_4
    :pswitch_f
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public F0(Leh5;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x1b

    invoke-static {v0}, Licb;->Q(I)V

    :cond_0
    iget-object p0, p0, Licb;->l:Le74;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public G0()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Licb;->I0()V

    iget-object p0, p0, Licb;->m:Ljava/util/List;

    if-nez p0, :cond_0

    const/16 v0, 0x1c

    invoke-static {v0}, Licb;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public H0(Leh5;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x1a

    invoke-static {v0}, Licb;->Q(I)V

    :cond_0
    invoke-virtual {p0}, Licb;->J0()V

    invoke-virtual {p0, p1}, Licb;->N0(Leh5;)V

    return-void
.end method

.method public final I0()V
    .locals 3

    iget-boolean v0, p0, Licb;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type parameter descriptor is not initialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Licb;->P0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final J0()V
    .locals 3

    iget-boolean v0, p0, Licb;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type parameter descriptor is already initialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Licb;->P0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final N0(Leh5;)V
    .locals 1

    invoke-static {p1}, Lfh5;->a(Leh5;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Licb;->m:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public O0()Z
    .locals 0

    iget-boolean p0, p0, Licb;->n:Z

    return p0
.end method

.method public final P0()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lyt1;->getName()Lby6;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " declared in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lau1;->b()Lxt1;

    move-result-object p0

    invoke-static {p0}, Ly82;->m(Lxt1;)Lp54;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Q0()V
    .locals 1

    invoke-virtual {p0}, Licb;->J0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Licb;->n:Z

    return-void
.end method
