.class public Lbm9;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/g;


# direct methods
.method public constructor <init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_1
    if-nez p4, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_2
    if-nez p5, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_3
    if-nez p6, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_4
    invoke-direct/range {p0 .. p6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;-><init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)V

    return-void
.end method

.method private static synthetic Q(I)V
    .locals 12

    const/16 v0, 0x1e

    const/16 v1, 0x1d

    const/16 v2, 0x18

    const/16 v3, 0x17

    const/16 v4, 0x12

    const/16 v5, 0xd

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v6, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v6, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v7, 0x2

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v8, 0x3

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl"

    const/4 v10, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v11, "containingDeclaration"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_1
    const-string v11, "newOwner"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_2
    const-string v11, "contextReceiverParameters"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_3
    aput-object v9, v8, v10

    goto :goto_2

    :pswitch_4
    const-string v11, "visibility"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_5
    const-string v11, "unsubstitutedValueParameters"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_6
    const-string v11, "typeParameters"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_7
    const-string v11, "source"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_8
    const-string v11, "kind"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_9
    const-string v11, "name"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_a
    const-string v11, "annotations"

    aput-object v11, v8, v10

    :goto_2
    const-string v10, "initialize"

    const/4 v11, 0x1

    if-eq p0, v5, :cond_5

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v9, v8, v11

    goto :goto_3

    :cond_2
    const-string v9, "newCopyBuilder"

    aput-object v9, v8, v11

    goto :goto_3

    :cond_3
    const-string v9, "copy"

    aput-object v9, v8, v11

    goto :goto_3

    :cond_4
    const-string v9, "getOriginal"

    aput-object v9, v8, v11

    goto :goto_3

    :cond_5
    aput-object v10, v8, v11

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v9, "<init>"

    aput-object v9, v8, v7

    goto :goto_4

    :pswitch_b
    const-string v9, "createSubstitutedCopy"

    aput-object v9, v8, v7

    goto :goto_4

    :pswitch_c
    aput-object v10, v8, v7

    goto :goto_4

    :pswitch_d
    const-string v9, "create"

    aput-object v9, v8, v7

    :goto_4
    :pswitch_e
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eq p0, v5, :cond_6

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public static g1(Lxt1;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)Lbm9;
    .locals 8

    if-nez p0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x7

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_2
    if-nez p3, :cond_3

    const/16 v0, 0x8

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_3
    if-nez p4, :cond_4

    const/16 v0, 0x9

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_4
    new-instance v0, Lbm9;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lbm9;-><init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)V

    return-object v0
.end method


# virtual methods
.method public G0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lmd;Lyt9;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;
    .locals 8

    if-nez p1, :cond_0

    const/16 v0, 0x19

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_0
    if-nez p3, :cond_1

    const/16 v0, 0x1a

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_1
    if-nez p5, :cond_2

    const/16 v0, 0x1b

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_2
    if-nez p6, :cond_3

    const/16 v0, 0x1c

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_3
    new-instance v0, Lbm9;

    move-object v3, p2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    if-eqz p4, :cond_4

    :goto_0
    move-object v5, p4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lyt1;->getName()Lby6;

    move-result-object p4

    goto :goto_0

    :goto_1
    move-object v1, v0

    move-object v2, p1

    move-object v4, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lbm9;-><init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)V

    return-object v0
.end method

.method public bridge synthetic J(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lbm9;->f1(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic M0(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lbm9;->i1(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;)Lbm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lbm9;->h1()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lbm9;->h1()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lbm9;->h1()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lxt1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbm9;->h1()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public f1(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 0

    invoke-super/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->F0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    if-nez p0, :cond_0

    const/16 p1, 0x1d

    invoke-static {p1}, Lbm9;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public h1()Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 1

    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    if-nez p0, :cond_0

    const/16 v0, 0x18

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public i1(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;)Lbm9;
    .locals 10

    if-nez p3, :cond_0

    const/16 v0, 0xe

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_0
    if-nez p4, :cond_1

    const/16 v0, 0xf

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_1
    if-nez p5, :cond_2

    const/16 v0, 0x10

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_2
    if-nez p8, :cond_3

    const/16 v0, 0x11

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_3
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lbm9;->j1(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Ljava/util/Map;)Lbm9;

    move-result-object v0

    if-nez v0, :cond_4

    const/16 v1, 0x12

    invoke-static {v1}, Lbm9;->Q(I)V

    :cond_4
    return-object v0
.end method

.method public j1(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Ljava/util/Map;)Lbm9;
    .locals 1

    if-nez p3, :cond_0

    const/16 v0, 0x13

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_0
    if-nez p4, :cond_1

    const/16 v0, 0x14

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_1
    if-nez p5, :cond_2

    const/16 v0, 0x15

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_2
    if-nez p8, :cond_3

    const/16 v0, 0x16

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_3
    invoke-super/range {p0 .. p8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->M0(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    if-eqz p9, :cond_4

    invoke-interface {p9}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->E:Ljava/util/Map;

    :cond_4
    return-object p0
.end method

.method public l()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 1

    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x1e

    invoke-static {v0}, Lbm9;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic l0()Ldu1;
    .locals 0

    invoke-virtual {p0}, Lbm9;->h1()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    return-object p0
.end method
