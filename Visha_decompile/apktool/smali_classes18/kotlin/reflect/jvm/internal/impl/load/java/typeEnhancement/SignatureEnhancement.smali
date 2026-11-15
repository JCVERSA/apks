.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr85;


# direct methods
.method public constructor <init>(Lr85;)V
    .locals 1

    const-string v0, "typeEnhancement"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->a:Lr85;

    return-void
.end method

.method public static synthetic d(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lzi9;Leh5;Ljava/util/List;Lvbb;ZILjava/lang/Object;)Leh5;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->b(Lzi9;Leh5;Ljava/util/List;Lvbb;Z)Leh5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Ldd;ZLgj5;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lvbb;ZLe74;ILjava/lang/Object;)Leh5;
    .locals 10

    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Ldd;ZLgj5;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lvbb;ZLe74;)Leh5;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Leh5;)Z
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$containsFunctionN$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$containsFunctionN$1;

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/n;->c(Leh5;Le74;)Z

    move-result p0

    return p0
.end method

.method public final b(Lzi9;Leh5;Ljava/util/List;Lvbb;Z)Leh5;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->a:Lr85;

    check-cast p3, Ljava/lang/Iterable;

    invoke-virtual {p1, p2, p3, p4, p5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts;->b(Lgh5;Ljava/lang/Iterable;Lvbb;Z)Le74;

    move-result-object p3

    invoke-virtual {p1}, Lzi9;->u()Z

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lr85;->a(Leh5;Le74;Z)Leh5;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Ldd;ZLgj5;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lvbb;ZLe74;)Leh5;
    .locals 10

    move-object/from16 v0, p8

    new-instance v9, Lzi9;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v8}, Lzi9;-><init>(Ldd;ZLgj5;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p1

    invoke-interface {v0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh5;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->e()Ljava/util/Collection;

    move-result-object v1

    const-string v3, "overriddenDescriptors"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    const-string v5, "it"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leh5;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, v9

    move-object p2, v2

    move-object p3, v3

    move-object/from16 p4, p6

    move/from16 p5, p7

    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->b(Lzi9;Leh5;Ljava/util/List;Lvbb;Z)Leh5;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lgj5;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 20

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    instance-of v0, v12, Lr65;

    if-nez v0, :cond_0

    return-object v12

    :cond_0
    move-object v13, v12

    check-cast v13, Lr65;

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    const/4 v14, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v14, :cond_1

    return-object v12

    :cond_1
    invoke-virtual/range {p0 .. p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lgj5;)Lmd;

    move-result-object v0

    move-object/from16 v7, p2

    invoke-static {v7, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->h(Lgj5;Lmd;)Lgj5;

    move-result-object v8

    instance-of v0, v12, La85;

    if-eqz v0, :cond_2

    move-object v0, v12

    check-cast v0, La85;

    invoke-virtual {v0}, Lui8;->M0()Lwi8;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lsi8;->V()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lui8;->M0()Lwi8;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    move-object v9, v0

    goto :goto_0

    :cond_2
    move-object v9, v12

    :goto_0
    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->b0()Lro8;

    move-result-object v0

    const/4 v15, 0x0

    if-eqz v0, :cond_5

    instance-of v0, v9, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-eqz v0, :cond_3

    move-object v0, v9

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    goto :goto_1

    :cond_3
    move-object v0, v15

    :goto_1
    if-eqz v0, :cond_4

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->H:Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->K(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    move-object v2, v0

    goto :goto_2

    :cond_4
    move-object v2, v15

    :goto_2
    const/4 v5, 0x0

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$receiverTypeEnhancement$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$receiverTypeEnhancement$1;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->j(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/h;Lgj5;Lvbb;ZLe74;)Leh5;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_3

    :cond_5
    move-object/from16 v16, v15

    :goto_3
    instance-of v0, v12, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    if-eqz v0, :cond_6

    move-object v0, v12

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    goto :goto_4

    :cond_6
    move-object v0, v15

    :goto_4
    const/4 v10, 0x0

    if-eqz v0, :cond_7

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    invoke-virtual {v0}, Lau1;->b()Lxt1;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v2, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lqw0;

    const/4 v3, 0x3

    invoke-static {v0, v10, v10, v3, v15}, Lko6;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/e;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljo6;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Lqw0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe8;

    move-object/from16 v17, v0

    goto :goto_5

    :cond_7
    move-object/from16 v17, v15

    :goto_5
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lbe8;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->i()Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-result-object v0

    invoke-static {v0}, Lgmb;->c(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v8}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->q()Lf85;

    move-result-object v0

    invoke-interface {v0}, Lf85;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-static/range {p1 .. p1}, Lgmb;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v7, v14

    goto :goto_6

    :cond_a
    move v7, v10

    :goto_6
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v0

    const-string v1, "annotationOwnerForMember.valueParameters"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Lbe8;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvbb;

    move-object v4, v0

    goto :goto_8

    :cond_b
    move-object v4, v15

    :goto_8
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$valueParameterEnhancements$1$1;

    invoke-direct {v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$valueParameterEnhancements$1$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/h;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v19, v3

    move-object v3, v8

    move v15, v5

    move v5, v7

    move-object v15, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->j(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/h;Lgj5;Lvbb;ZLe74;)Leh5;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v6, v15

    const/16 v5, 0xa

    const/4 v15, 0x0

    goto :goto_7

    :cond_c
    move-object v15, v6

    instance-of v0, v12, Lti8;

    if-eqz v0, :cond_d

    move-object v0, v12

    check-cast v0, Lti8;

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_e

    invoke-static {v0}, Li75;->a(Lti8;)Z

    move-result v0

    if-ne v0, v14, :cond_e

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->FIELD:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    :goto_a
    move-object v5, v0

    goto :goto_b

    :cond_e
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->METHOD_RETURN_TYPE:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    goto :goto_a

    :goto_b
    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Lbe8;->b()Lvbb;

    move-result-object v0

    move-object v6, v0

    goto :goto_c

    :cond_f
    const/4 v6, 0x0

    :goto_c
    sget-object v17, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$returnTypeEnhancement$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$returnTypeEnhancement$1;

    const/16 v18, 0x20

    const/16 v19, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v4, v8

    move-object/from16 v8, v17

    move/from16 v9, v18

    move/from16 v17, v10

    move-object/from16 v10, v19

    invoke-static/range {v0 .. v10}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->e(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Ldd;ZLgj5;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lvbb;ZLe74;ILjava/lang/Object;)Leh5;

    move-result-object v0

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Leh5;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v11, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->a(Leh5;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->b0()Lro8;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lknb;->getType()Leh5;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v11, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->a(Leh5;)Z

    move-result v10

    goto :goto_d

    :cond_10
    move/from16 v10, v17

    :goto_d
    if-nez v10, :cond_15

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v1

    const-string v2, "valueParameters"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_12

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    move/from16 v10, v17

    goto :goto_e

    :cond_12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v2}, Lknb;->getType()Leh5;

    move-result-object v2

    const-string v3, "it.type"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->a(Leh5;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v10, v14

    :goto_e
    if-eqz v10, :cond_14

    goto :goto_f

    :cond_14
    move/from16 v10, v17

    goto :goto_10

    :cond_15
    :goto_f
    move v10, v14

    :goto_10
    if-eqz v10, :cond_16

    invoke-static {}, Lp82;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    move-result-object v1

    new-instance v2, Ll82;

    invoke-direct {v2, v12}, Ll82;-><init>(Lxt1;)V

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_11

    :cond_16
    const/4 v1, 0x0

    :goto_11
    if-nez v16, :cond_1c

    if-nez v0, :cond_1c

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    move/from16 v14, v17

    goto :goto_13

    :cond_18
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh5;

    if-eqz v3, :cond_1a

    move v10, v14

    goto :goto_12

    :cond_1a
    move/from16 v10, v17

    :goto_12
    if-eqz v10, :cond_19

    :goto_13
    if-nez v14, :cond_1c

    if-eqz v1, :cond_1b

    goto :goto_14

    :cond_1b
    return-object v12

    :cond_1c
    :goto_14
    if-nez v16, :cond_1e

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->b0()Lro8;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-interface {v2}, Lknb;->getType()Leh5;

    move-result-object v2

    goto :goto_15

    :cond_1d
    const/4 v2, 0x0

    goto :goto_15

    :cond_1e
    move-object/from16 v2, v16

    :goto_15
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v15, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v10, v17

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v10, 0x1

    if-gez v10, :cond_1f

    invoke-static {}, Ly71;->u()V

    :cond_1f
    check-cast v5, Leh5;

    if-nez v5, :cond_20

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v5}, Lknb;->getType()Leh5;

    move-result-object v5

    const-string v7, "valueParameters[index].type"

    invoke-static {v5, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_20
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v10, v6

    goto :goto_16

    :cond_21
    if-nez v0, :cond_22

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Leh5;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    :cond_22
    invoke-interface {v13, v2, v3, v0, v1}, Lr65;->I(Leh5;Ljava/util/List;Leh5;Lkotlin/Pair;)Lr65;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type D of org.jetbrains.kotlin.load.java.typeEnhancement.SignatureEnhancement.enhanceSignature"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g(Lgj5;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformSignatures"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-virtual {p0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lgj5;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final h(Leh5;Lgj5;)Leh5;
    .locals 9

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lzi9;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_USE:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lzi9;-><init>(Ldd;ZLgj5;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Z)V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    invoke-static/range {v1 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->d(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lzi9;Leh5;Ljava/util/List;Lvbb;ZILjava/lang/Object;)Leh5;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public final i(Lhcb;Ljava/util/List;Lgj5;)Ljava/util/List;
    .locals 12

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bounds"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh5;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceTypeParameterBounds$1$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceTypeParameterBounds$1$1;

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->b(Leh5;Le74;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v11, Lzi9;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, v11

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v3 .. v10}, Lzi9;-><init>(Ldd;ZLgj5;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, v1

    invoke-static/range {v2 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->d(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lzi9;Leh5;Ljava/util/List;Lvbb;ZILjava/lang/Object;)Leh5;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final j(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/h;Lgj5;Lvbb;ZLe74;)Leh5;
    .locals 9

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ldd;->getAnnotations()Lmd;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->h(Lgj5;Lmd;)Lgj5;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, p3

    :goto_1
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Ldd;ZLgj5;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lvbb;ZLe74;)Leh5;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lgj5;)Lmd;
    .locals 4

    invoke-static {p1}, Lx82;->a(Lxt1;)Lpx0;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Ldd;->getAnnotations()Lmd;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->L0()Ljava/util/List;

    move-result-object v1

    :cond_2
    move-object p0, v1

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    check-cast v1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk65;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;-><init>(Lgj5;Lk65;Z)V

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object p2, Lmd;->u1:Lmd$a;

    invoke-interface {p1}, Ldd;->getAnnotations()Lmd;

    move-result-object p1

    invoke-static {p1, p0}, Li81;->H0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lmd$a;->a(Ljava/util/List;)Lmd;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    invoke-interface {p1}, Ldd;->getAnnotations()Lmd;

    move-result-object p0

    return-object p0
.end method
