.class public La85;
.super Lui8;
.source "SourceFile"

# interfaces
.implements Lr65;


# instance fields
.field public final D:Z

.field public final E:Lkotlin/Pair;

.field public F:Leh5;


# direct methods
.method public constructor <init>(Lxt1;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lyt9;Lti8;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZLkotlin/Pair;)V
    .locals 17

    move-object/from16 v15, p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, La85;->Q(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, La85;->Q(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, La85;->Q(I)V

    :cond_2
    if-nez p4, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, La85;->Q(I)V

    :cond_3
    if-nez p6, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, La85;->Q(I)V

    :cond_4
    if-nez p7, :cond_5

    const/4 v0, 0x5

    invoke-static {v0}, La85;->Q(I)V

    :cond_5
    if-nez p9, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, La85;->Q(I)V

    :cond_6
    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    move-object/from16 v9, p7

    move/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lui8;-><init>(Lxt1;Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;ZZZZZZ)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-object v0, v1, La85;->F:Leh5;

    move/from16 v0, p10

    iput-boolean v0, v1, La85;->D:Z

    move-object/from16 v0, p11

    iput-object v0, v1, La85;->E:Lkotlin/Pair;

    return-void
.end method

.method private static synthetic Q(I)V
    .locals 7

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v6, "containingDeclaration"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_1
    const-string v6, "inType"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_2
    aput-object v4, v3, v5

    goto :goto_2

    :pswitch_3
    const-string v6, "enhancedReturnType"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_4
    const-string v6, "enhancedValueParameterTypes"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_5
    const-string v6, "newName"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_6
    const-string v6, "newVisibility"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_7
    const-string v6, "newModality"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_8
    const-string v6, "newOwner"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_9
    const-string v6, "kind"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_a
    const-string v6, "source"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_b
    const-string v6, "name"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_c
    const-string v6, "visibility"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_d
    const-string v6, "modality"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_e
    const-string v6, "annotations"

    aput-object v6, v3, v5

    :goto_2
    const-string v5, "enhance"

    const/4 v6, 0x1

    if-eq p0, v0, :cond_2

    aput-object v4, v3, v6

    goto :goto_3

    :cond_2
    aput-object v5, v3, v6

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v4, "<init>"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_f
    const-string v4, "setInType"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_10
    aput-object v5, v3, v2

    goto :goto_4

    :pswitch_11
    const-string v4, "createSubstitutedCopy"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_12
    const-string v4, "create"

    aput-object v4, v3, v2

    :goto_4
    :pswitch_13
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method public static a1(Lxt1;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lyt9;Z)La85;
    .locals 13

    if-nez p0, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, La85;->Q(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x8

    invoke-static {v0}, La85;->Q(I)V

    :cond_1
    if-nez p2, :cond_2

    const/16 v0, 0x9

    invoke-static {v0}, La85;->Q(I)V

    :cond_2
    if-nez p3, :cond_3

    const/16 v0, 0xa

    invoke-static {v0}, La85;->Q(I)V

    :cond_3
    if-nez p5, :cond_4

    const/16 v0, 0xb

    invoke-static {v0}, La85;->Q(I)V

    :cond_4
    if-nez p6, :cond_5

    const/16 v0, 0xc

    invoke-static {v0}, La85;->Q(I)V

    :cond_5
    new-instance v12, La85;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v11}, La85;-><init>(Lxt1;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lyt9;Lti8;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZLkotlin/Pair;)V

    return-object v12
.end method


# virtual methods
.method public I(Leh5;Ljava/util/List;Leh5;Lkotlin/Pair;)Lr65;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-nez p2, :cond_0

    const/16 v3, 0x13

    invoke-static {v3}, La85;->Q(I)V

    :cond_0
    if-nez v2, :cond_1

    const/16 v3, 0x14

    invoke-static {v3}, La85;->Q(I)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lui8;->a()Lti8;

    move-result-object v3

    if-ne v3, v0, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lui8;->a()Lti8;

    move-result-object v3

    :goto_0
    new-instance v15, La85;

    invoke-virtual/range {p0 .. p0}, Lau1;->b()Lxt1;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Led;->getAnnotations()Lmd;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lui8;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lui8;->getVisibility()Lc92;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->y()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lyt1;->getName()Lby6;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lau1;->getSource()Lyt9;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lui8;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v14

    iget-boolean v13, v0, La85;->D:Z

    move-object v5, v15

    move/from16 v16, v13

    move-object v13, v3

    move-object/from16 p2, v15

    move/from16 v15, v16

    move-object/from16 v16, p4

    invoke-direct/range {v5 .. v16}, La85;-><init>(Lxt1;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lyt9;Lti8;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZLkotlin/Pair;)V

    invoke-virtual/range {p0 .. p0}, Lui8;->M0()Lwi8;

    move-result-object v16

    if-eqz v16, :cond_4

    new-instance v15, Lwi8;

    invoke-virtual/range {v16 .. v16}, Led;->getAnnotations()Lmd;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lsi8;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lsi8;->getVisibility()Lc92;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Lsi8;->V()Z

    move-result v10

    invoke-virtual/range {v16 .. v16}, Lsi8;->isExternal()Z

    move-result v11

    invoke-virtual/range {v16 .. v16}, Lsi8;->isInline()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lui8;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v13

    if-nez v3, :cond_3

    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Lti8;->getGetter()Lvi8;

    move-result-object v5

    move-object v14, v5

    :goto_1
    invoke-virtual/range {v16 .. v16}, Lau1;->getSource()Lyt9;

    move-result-object v17

    move-object v5, v15

    move-object/from16 v6, p2

    move-object v4, v15

    move-object/from16 v15, v17

    invoke-direct/range {v5 .. v15}, Lwi8;-><init>(Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lvi8;Lyt9;)V

    invoke-virtual/range {v16 .. v16}, Lsi8;->v0()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsi8;->H0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)V

    invoke-virtual {v4, v2}, Lwi8;->K0(Leh5;)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lui8;->getSetter()Lxi8;

    move-result-object v16

    if-eqz v16, :cond_6

    new-instance v15, Lyi8;

    invoke-interface/range {v16 .. v16}, Ldd;->getAnnotations()Lmd;

    move-result-object v7

    invoke-interface/range {v16 .. v16}, Lbn6;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v8

    invoke-interface/range {v16 .. v16}, Lbn6;->getVisibility()Lc92;

    move-result-object v9

    invoke-interface/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->V()Z

    move-result v10

    invoke-interface/range {v16 .. v16}, Lbn6;->isExternal()Z

    move-result v11

    invoke-interface/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isInline()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lui8;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v13

    if-nez v3, :cond_5

    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Lti8;->getSetter()Lxi8;

    move-result-object v3

    move-object v14, v3

    :goto_3
    invoke-interface/range {v16 .. v16}, Ldu1;->getSource()Lyt9;

    move-result-object v3

    move-object v5, v15

    move-object/from16 v6, p2

    move-object/from16 p4, v15

    move-object v15, v3

    invoke-direct/range {v5 .. v15}, Lyi8;-><init>(Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lxi8;Lyt9;)V

    invoke-virtual/range {p4 .. p4}, Lsi8;->v0()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v3

    move-object/from16 v5, p4

    invoke-virtual {v5, v3}, Lsi8;->H0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)V

    invoke-interface/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-virtual {v5, v3}, Lyi8;->L0(Lkotlin/reflect/jvm/internal/impl/descriptors/h;)V

    move-object v15, v5

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lui8;->L()Lwp3;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lui8;->z()Lwp3;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-virtual {v6, v4, v15, v3, v5}, Lui8;->Q0(Lwi8;Lxi8;Lwp3;Lwp3;)V

    invoke-virtual/range {p0 .. p0}, Lui8;->R0()Z

    move-result v3

    invoke-virtual {v6, v3}, Lui8;->V0(Z)V

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->i:Lc74;

    if-eqz v3, :cond_7

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->h:Lo37;

    invoke-virtual {v6, v4, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->F0(Lo37;Lc74;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lui8;->e()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v6, v3}, Lui8;->O(Ljava/util/Collection;)V

    if-nez v1, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    sget-object v3, Lmd;->u1:Lmd$a;

    invoke-virtual {v3}, Lmd$a;->b()Lmd;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ls82;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lmd;)Lro8;

    move-result-object v1

    move-object v4, v1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lui8;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lui8;->Z()Lro8;

    move-result-object v5

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v7

    move-object v0, v6

    move-object/from16 v1, p3

    move-object v2, v3

    move-object v3, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lui8;->W0(Leh5;Ljava/util/List;Lro8;Lro8;Ljava/util/List;)V

    return-object v6
.end method

.method public K(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La85;->E:Lkotlin/Pair;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, La85;->E:Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public K0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lti8;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lyt9;)Lui8;
    .locals 13

    move-object v0, p0

    if-nez p1, :cond_0

    const/16 v1, 0xd

    invoke-static {v1}, La85;->Q(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v1, 0xe

    invoke-static {v1}, La85;->Q(I)V

    :cond_1
    if-nez p3, :cond_2

    const/16 v1, 0xf

    invoke-static {v1}, La85;->Q(I)V

    :cond_2
    if-nez p5, :cond_3

    const/16 v1, 0x10

    invoke-static {v1}, La85;->Q(I)V

    :cond_3
    if-nez p6, :cond_4

    const/16 v1, 0x11

    invoke-static {v1}, La85;->Q(I)V

    :cond_4
    if-nez p7, :cond_5

    const/16 v1, 0x12

    invoke-static {v1}, La85;->Q(I)V

    :cond_5
    new-instance v12, La85;

    invoke-virtual {p0}, Led;->getAnnotations()Lmd;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->y()Z

    move-result v5

    iget-boolean v10, v0, La85;->D:Z

    iget-object v11, v0, La85;->E:Lkotlin/Pair;

    move-object v0, v12

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v11}, La85;-><init>(Lxt1;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lyt9;Lti8;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZLkotlin/Pair;)V

    return-object v12
.end method

.method public U0(Leh5;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x16

    invoke-static {v0}, La85;->Q(I)V

    :cond_0
    iput-object p1, p0, La85;->F:Leh5;

    return-void
.end method

.method public isConst()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->getType()Leh5;

    move-result-object v0

    iget-boolean p0, p0, La85;->D:Z

    if-eqz p0, :cond_1

    invoke-static {v0}, Lif1;->a(Leh5;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lwbb;->i(Leh5;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->v0(Leh5;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
