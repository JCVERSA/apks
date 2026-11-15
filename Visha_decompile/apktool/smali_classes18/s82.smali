.class public abstract Ls82;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls82$a;
    }
.end annotation


# direct methods
.method public static synthetic a(I)V
    .locals 11

    const/16 v0, 0x19

    const/16 v1, 0x17

    const/16 v2, 0xc

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v8, "propertyDescriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "owner"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "descriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "enumClass"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "containingClass"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_7
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "sourceElement"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_9
    const-string v8, "parameterAnnotations"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_a
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "createSetter"

    const-string v8, "createEnumValuesMethod"

    const-string v9, "createEnumValueOfMethod"

    const/4 v10, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v10

    goto :goto_3

    :cond_2
    aput-object v9, v5, v10

    goto :goto_3

    :cond_3
    aput-object v8, v5, v10

    goto :goto_3

    :cond_4
    aput-object v7, v5, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v6, "createDefaultSetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_b
    const-string v6, "createContextReceiverParameterForClass"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_c
    const-string v6, "createContextReceiverParameterForCallable"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_d
    const-string v6, "createExtensionReceiverParameterForCallable"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_e
    const-string v6, "isEnumSpecialMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_f
    const-string v6, "isEnumValueOfMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_10
    const-string v6, "isEnumValuesMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_11
    const-string v6, "createEnumEntriesProperty"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_12
    aput-object v9, v5, v4

    goto :goto_4

    :pswitch_13
    aput-object v8, v5, v4

    goto :goto_4

    :pswitch_14
    const-string v6, "createPrimaryConstructorForObject"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_15
    const-string v6, "createGetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_16
    const-string v6, "createDefaultGetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_17
    aput-object v7, v5, v4

    :goto_4
    :pswitch_18
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_18
        :pswitch_12
        :pswitch_18
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lby6;Lmd;I)Lro8;
    .locals 3

    if-nez p0, :cond_0

    const/16 v0, 0x20

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    if-nez p3, :cond_1

    const/16 v0, 0x21

    invoke-static {v0}, Ls82;->a(I)V

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lso8;

    new-instance v2, Lsh1;

    invoke-direct {v2, p0, p1, p2, v0}, Lsh1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lby6;Lto8;)V

    invoke-static {p4}, Lfy6;->a(I)Lby6;

    move-result-object p1

    invoke-direct {v1, p0, v2, p3, p1}, Lso8;-><init>(Lxt1;Lto8;Lmd;Lby6;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static c(Lqw0;Leh5;Lby6;Lmd;I)Lro8;
    .locals 3

    if-nez p0, :cond_0

    const/16 v0, 0x22

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    if-nez p3, :cond_1

    const/16 v0, 0x23

    invoke-static {v0}, Ls82;->a(I)V

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lso8;

    new-instance v2, Lnh1;

    invoke-direct {v2, p0, p1, p2, v0}, Lnh1;-><init>(Lqw0;Leh5;Lby6;Lto8;)V

    invoke-static {p4}, Lfy6;->a(I)Lby6;

    move-result-object p1

    invoke-direct {v1, p0, v2, p3, p1}, Lso8;-><init>(Lxt1;Lto8;Lmd;Lby6;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static d(Lti8;Lmd;)Lwi8;
    .locals 2

    if-nez p0, :cond_0

    const/16 v0, 0xd

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0xe

    invoke-static {v0}, Ls82;->a(I)V

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Ls82;->j(Lti8;Lmd;ZZZ)Lwi8;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lti8;Lmd;Lmd;)Lyi8;
    .locals 8

    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ls82;->a(I)V

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Ls82;->a(I)V

    :cond_2
    invoke-interface {p0}, Ldu1;->getSource()Lyt9;

    move-result-object v7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Ls82;->n(Lti8;Lmd;Lmd;ZZZLyt9;)Lyi8;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lqw0;)Lti8;
    .locals 26

    if-nez p0, :cond_0

    const/16 v0, 0x1a

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    invoke-static/range {p0 .. p0}, Ly82;->g(Lxt1;)Lqq6;

    move-result-object v0

    sget-object v1, Lcw9;->a:Lcw9;

    invoke-virtual {v1}, Lcw9;->i()Lxw0;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->a(Lqq6;Lxw0;)Lqw0;

    move-result-object v14

    const/4 v15, 0x0

    if-nez v14, :cond_1

    return-object v15

    :cond_1
    sget-object v16, Lmd;->u1:Lmd$a;

    invoke-virtual/range {v16 .. v16}, Lmd$a;->b()Lmd;

    move-result-object v1

    sget-object v17, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v18, Lb92;->e:Lc92;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/builtins/e;->e:Lby6;

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    invoke-interface/range {p0 .. p0}, Ldu1;->getSource()Lyt9;

    move-result-object v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v6, v19

    invoke-static/range {v0 .. v13}, Lui8;->J0(Lxt1;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;ZZZZZZ)Lui8;

    move-result-object v0

    new-instance v1, Lwi8;

    invoke-virtual/range {v16 .. v16}, Lmd$a;->b()Lmd;

    move-result-object v4

    const/4 v11, 0x0

    invoke-interface/range {p0 .. p0}, Ldu1;->getSource()Lyt9;

    move-result-object v12

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v0

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v12}, Lwi8;-><init>(Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lvi8;Lyt9;)V

    invoke-virtual {v0, v1, v15}, Lui8;->P0(Lwi8;Lxi8;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->h()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v2

    invoke-interface {v14}, Lpx0;->m()Lsbb;

    move-result-object v3

    new-instance v4, Locb;

    invoke-interface/range {p0 .. p0}, Lqw0;->q()Lsm9;

    move-result-object v5

    invoke-direct {v4, v5}, Locb;-><init>(Leh5;)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->h(Lkotlin/reflect/jvm/internal/impl/types/j;Lsbb;Ljava/util/List;Z)Lsm9;

    move-result-object v21

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    const/16 v24, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v25

    const/16 v23, 0x0

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v25}, Lui8;->W0(Leh5;Ljava/util/List;Lro8;Lro8;Ljava/util/List;)V

    invoke-virtual {v0}, Lui8;->getReturnType()Leh5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwi8;->K0(Leh5;)V

    return-object v0
.end method

.method public static g(Lqw0;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 18

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/16 v1, 0x18

    invoke-static {v1}, Ls82;->a(I)V

    :cond_0
    sget-object v1, Lmd;->u1:Lmd$a;

    invoke-virtual {v1}, Lmd$a;->b()Lmd;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/e;->f:Lby6;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    invoke-interface/range {p0 .. p0}, Ldu1;->getSource()Lyt9;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lbm9;->g1(Lxt1;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)Lbm9;

    move-result-object v2

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    invoke-virtual {v1}, Lmd$a;->b()Lmd;

    move-result-object v10

    const-string v1, "value"

    invoke-static {v1}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->j(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->W()Lsm9;

    move-result-object v12

    const/16 v16, 0x0

    invoke-interface/range {p0 .. p0}, Ldu1;->getSource()Lyt9;

    move-result-object v17

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v6, v3

    move-object v7, v2

    invoke-direct/range {v6 .. v17}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/h;ILmd;Lby6;Leh5;ZZZLeh5;Lyt9;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lqw0;->q()Lsm9;

    move-result-object v12

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v14, Lb92;->e:Lc92;

    const/4 v7, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v14}, Lbm9;->i1(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;)Lbm9;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v1, 0x19

    invoke-static {v1}, Ls82;->a(I)V

    :cond_1
    return-object v0
.end method

.method public static h(Lqw0;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 13

    if-nez p0, :cond_0

    const/16 v0, 0x16

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    sget-object v0, Lmd;->u1:Lmd$a;

    invoke-virtual {v0}, Lmd$a;->b()Lmd;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/e;->d:Lby6;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    invoke-interface {p0}, Ldu1;->getSource()Lyt9;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lbm9;->g1(Lxt1;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)Lbm9;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->j(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-interface {p0}, Lqw0;->q()Lsm9;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->l(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)Lsm9;

    move-result-object v10

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v12, Lb92;->e:Lc92;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v12}, Lbm9;->i1(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;)Lbm9;

    move-result-object p0

    if-nez p0, :cond_1

    const/16 v0, 0x17

    invoke-static {v0}, Ls82;->a(I)V

    :cond_1
    return-object p0
.end method

.method public static i(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lmd;)Lro8;
    .locals 3

    if-nez p0, :cond_0

    const/16 v0, 0x1e

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x1f

    invoke-static {v0}, Ls82;->a(I)V

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lso8;

    new-instance v2, Lek3;

    invoke-direct {v2, p0, p1, v0}, Lek3;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lto8;)V

    invoke-direct {v1, p0, v2, p2}, Lso8;-><init>(Lxt1;Lto8;Lmd;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static j(Lti8;Lmd;ZZZ)Lwi8;
    .locals 7

    if-nez p0, :cond_0

    const/16 v0, 0xf

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x10

    invoke-static {v0}, Ls82;->a(I)V

    :cond_1
    invoke-interface {p0}, Ldu1;->getSource()Lyt9;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Ls82;->k(Lti8;Lmd;ZZZLyt9;)Lwi8;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lti8;Lmd;ZZZLyt9;)Lwi8;
    .locals 12

    if-nez p0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x12

    invoke-static {v0}, Ls82;->a(I)V

    :cond_1
    if-nez p5, :cond_2

    const/16 v0, 0x13

    invoke-static {v0}, Ls82;->a(I)V

    :cond_2
    new-instance v11, Lwi8;

    invoke-interface {p0}, Lbn6;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v3

    invoke-interface {p0}, Lbn6;->getVisibility()Lc92;

    move-result-object v4

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lwi8;-><init>(Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lvi8;Lyt9;)V

    return-object v11
.end method

.method public static l(Lqw0;Lyt9;)Lnw0;
    .locals 2

    if-nez p0, :cond_0

    const/16 v0, 0x14

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x15

    invoke-static {v0}, Ls82;->a(I)V

    :cond_1
    new-instance v0, Ls82$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ls82$a;-><init>(Lqw0;Lyt9;Z)V

    return-object v0
.end method

.method public static m(Lti8;Lmd;Lmd;ZZZLc92;Lyt9;)Lyi8;
    .locals 13

    move-object v0, p2

    if-nez p0, :cond_0

    const/4 v1, 0x7

    invoke-static {v1}, Ls82;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v1, 0x8

    invoke-static {v1}, Ls82;->a(I)V

    :cond_1
    if-nez v0, :cond_2

    const/16 v1, 0x9

    invoke-static {v1}, Ls82;->a(I)V

    :cond_2
    if-nez p6, :cond_3

    const/16 v1, 0xa

    invoke-static {v1}, Ls82;->a(I)V

    :cond_3
    if-nez p7, :cond_4

    const/16 v1, 0xb

    invoke-static {v1}, Ls82;->a(I)V

    :cond_4
    new-instance v12, Lyi8;

    invoke-interface {p0}, Lbn6;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v4

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    const/4 v10, 0x0

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p6

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lyi8;-><init>(Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lxi8;Lyt9;)V

    invoke-interface {p0}, Lknb;->getType()Leh5;

    move-result-object v1

    invoke-static {v12, v1, p2}, Lyi8;->J0(Lxi8;Leh5;Lmd;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    move-result-object v0

    invoke-virtual {v12, v0}, Lyi8;->L0(Lkotlin/reflect/jvm/internal/impl/descriptors/h;)V

    return-object v12
.end method

.method public static n(Lti8;Lmd;Lmd;ZZZLyt9;)Lyi8;
    .locals 9

    if-nez p0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x4

    invoke-static {v0}, Ls82;->a(I)V

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x5

    invoke-static {v0}, Ls82;->a(I)V

    :cond_2
    if-nez p6, :cond_3

    const/4 v0, 0x6

    invoke-static {v0}, Ls82;->a(I)V

    :cond_3
    invoke-interface {p0}, Lbn6;->getVisibility()Lc92;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Ls82;->m(Lti8;Lmd;Lmd;ZZZLc92;Lyt9;)Lyi8;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z
    .locals 2

    if-nez p0, :cond_0

    const/16 v0, 0x1d

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->b()Lxt1;

    move-result-object p0

    invoke-static {p0}, Ly82;->A(Lxt1;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static p(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z
    .locals 2

    if-nez p0, :cond_0

    const/16 v0, 0x1c

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/e;->f:Lby6;

    invoke-virtual {v0, v1}, Lby6;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ls82;->o(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z
    .locals 2

    if-nez p0, :cond_0

    const/16 v0, 0x1b

    invoke-static {v0}, Ls82;->a(I)V

    :cond_0
    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/e;->d:Lby6;

    invoke-virtual {v0, v1}, Lby6;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ls82;->o(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
