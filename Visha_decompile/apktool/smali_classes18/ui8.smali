.class public Lui8;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;
.source "SourceFile"

# interfaces
.implements Lti8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui8$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Lwp3;

.field public C:Lwp3;

.field public final j:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field public k:Lc92;

.field public l:Ljava/util/Collection;

.field public final m:Lti8;

.field public final n:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public u:Ljava/util/List;

.field public v:Lro8;

.field public w:Lro8;

.field public x:Ljava/util/List;

.field public y:Lwi8;

.field public z:Lxi8;


# direct methods
.method public constructor <init>(Lxt1;Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;ZZZZZZ)V
    .locals 11

    move-object v7, p0

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_1
    if-nez v8, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_2
    if-nez v9, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_3
    if-nez p7, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_4
    if-nez v10, :cond_5

    const/4 v0, 0x5

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_5
    if-nez p9, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_6
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p7

    move/from16 v5, p6

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;-><init>(Lxt1;Lmd;Lby6;Leh5;ZLyt9;)V

    const/4 v0, 0x0

    iput-object v0, v7, Lui8;->l:Ljava/util/Collection;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lui8;->u:Ljava/util/List;

    iput-object v8, v7, Lui8;->j:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    iput-object v9, v7, Lui8;->k:Lc92;

    if-nez p2, :cond_7

    move-object v0, v7

    goto :goto_0

    :cond_7
    move-object v0, p2

    :goto_0
    iput-object v0, v7, Lui8;->m:Lti8;

    iput-object v10, v7, Lui8;->n:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move/from16 v0, p10

    iput-boolean v0, v7, Lui8;->o:Z

    move/from16 v0, p11

    iput-boolean v0, v7, Lui8;->p:Z

    move/from16 v0, p12

    iput-boolean v0, v7, Lui8;->q:Z

    move/from16 v0, p13

    iput-boolean v0, v7, Lui8;->r:Z

    move/from16 v0, p14

    iput-boolean v0, v7, Lui8;->s:Z

    move/from16 v0, p15

    iput-boolean v0, v7, Lui8;->t:Z

    return-void
.end method

.method public static synthetic H0(Lui8;)Lro8;
    .locals 0

    iget-object p0, p0, Lui8;->v:Lro8;

    return-object p0
.end method

.method public static J0(Lxt1;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;ZZZZZZ)Lui8;
    .locals 17

    if-nez p0, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x8

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_1
    if-nez p2, :cond_2

    const/16 v0, 0x9

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_2
    if-nez p3, :cond_3

    const/16 v0, 0xa

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_3
    if-nez p5, :cond_4

    const/16 v0, 0xb

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_4
    if-nez p6, :cond_5

    const/16 v0, 0xc

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_5
    if-nez p7, :cond_6

    const/16 v0, 0xd

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_6
    new-instance v16, Lui8;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    invoke-direct/range {v0 .. v15}, Lui8;-><init>(Lxt1;Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;ZZZZZZ)V

    return-object v16
.end method

.method public static O0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x1e

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x1f

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->v0()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->v0()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p1

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static synthetic Q(I)V
    .locals 11

    const/16 v0, 0x2a

    const/16 v1, 0x29

    const/16 v2, 0x27

    const/16 v3, 0x26

    const/16 v4, 0x1c

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v6, 0x2

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_1

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v7, v6

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl"

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_2

    :pswitch_2
    const-string v10, "containingDeclaration"

    aput-object v10, v7, v9

    goto/16 :goto_2

    :pswitch_3
    const-string v10, "overriddenDescriptors"

    aput-object v10, v7, v9

    goto/16 :goto_2

    :pswitch_4
    const-string v10, "newName"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_5
    const-string v10, "newVisibility"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_6
    const-string v10, "newModality"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_7
    const-string v10, "newOwner"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_8
    const-string v10, "accessorDescriptor"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_9
    const-string v10, "substitutor"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_a
    const-string v10, "copyConfiguration"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_b
    const-string v10, "originalSubstitutor"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_c
    aput-object v8, v7, v9

    goto :goto_2

    :pswitch_d
    const-string v10, "contextReceiverParameters"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_e
    const-string v10, "typeParameters"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_f
    const-string v10, "outType"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_10
    const-string v10, "inType"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_11
    const-string v10, "source"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_12
    const-string v10, "kind"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_13
    const-string v10, "name"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_14
    const-string v10, "visibility"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_15
    const-string v10, "modality"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_16
    const-string v10, "annotations"

    aput-object v10, v7, v9

    :goto_2
    const/4 v9, 0x1

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_3

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_17
    const-string v8, "getAccessors"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_18
    const-string v8, "getVisibility"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_19
    const-string v8, "getModality"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_1a
    const-string v8, "getReturnType"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_1b
    const-string v8, "getContextReceiverParameters"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_1c
    const-string v8, "getTypeParameters"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_2
    const-string v8, "copy"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_3
    const-string v8, "getOverriddenDescriptors"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_4
    const-string v8, "getKind"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_5
    const-string v8, "getOriginal"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_6
    const-string v8, "getSourceToUseForCopy"

    aput-object v8, v7, v9

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v8, "<init>"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1d
    const-string v8, "setOverriddenDescriptors"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1e
    const-string v8, "createSubstitutedCopy"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1f
    const-string v8, "getSubstitutedInitialSignatureDescriptor"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_20
    const-string v8, "doSubstitute"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_21
    const-string v8, "substitute"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_22
    const-string v8, "setVisibility"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_23
    const-string v8, "setType"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_24
    const-string v8, "setInType"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_25
    const-string v8, "create"

    aput-object v8, v7, v6

    :goto_4
    :pswitch_26
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :pswitch_27
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_2
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_14
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_12
        :pswitch_4
        :pswitch_11
        :pswitch_c
        :pswitch_c
        :pswitch_3
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x15
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_21
        :pswitch_26
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_26
        :pswitch_26
        :pswitch_1d
        :pswitch_26
        :pswitch_26
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x15
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public static T0(Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lc92;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lc92;->f()Lc92;

    move-result-object p1

    invoke-static {p1}, Lb92;->g(Lc92;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lb92;->h:Lc92;

    :cond_0
    return-object p0
.end method

.method public static Y0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lti8;Lro8;)Lro8;
    .locals 4

    invoke-interface {p2}, Lknb;->getType()Leh5;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lso8;

    new-instance v1, Lsh1;

    invoke-interface {p2}, Lro8;->getValue()Lto8;

    move-result-object v2

    check-cast v2, Lxy4;

    invoke-interface {v2}, Lxy4;->a()Lby6;

    move-result-object v2

    invoke-interface {p2}, Lro8;->getValue()Lto8;

    move-result-object v3

    invoke-direct {v1, p1, p0, v2, v3}, Lsh1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lby6;Lto8;)V

    invoke-interface {p2}, Ldd;->getAnnotations()Lmd;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lso8;-><init>(Lxt1;Lto8;Lmd;)V

    return-object v0
.end method

.method public static Z0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lti8;Lro8;)Lro8;
    .locals 3

    invoke-interface {p2}, Lknb;->getType()Leh5;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lso8;

    new-instance v1, Lek3;

    invoke-interface {p2}, Lro8;->getValue()Lto8;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lek3;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lto8;)V

    invoke-interface {p2}, Ldd;->getAnnotations()Lmd;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lso8;-><init>(Lxt1;Lto8;Lmd;)V

    return-object v0
.end method


# virtual methods
.method public I0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lti8;
    .locals 0

    invoke-virtual {p0}, Lui8;->S0()Lui8$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lui8$a;->u(Lxt1;)Lui8$a;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lui8$a;->t(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lui8$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lui8$a;->s(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lui8$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lui8$a;->w(Lc92;)Lui8$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lui8$a;->r(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lui8$a;

    move-result-object p0

    invoke-virtual {p0, p5}, Lui8$a;->q(Z)Lui8$a;

    move-result-object p0

    invoke-virtual {p0}, Lui8$a;->n()Lti8;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p1, 0x2a

    invoke-static {p1}, Lui8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic J(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lui8;->I0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lti8;

    move-result-object p0

    return-object p0
.end method

.method public K(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public K0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lti8;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lyt9;)Lui8;
    .locals 17

    if-nez p1, :cond_0

    const/16 v0, 0x20

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x21

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_1
    if-nez p3, :cond_2

    const/16 v0, 0x22

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_2
    if-nez p5, :cond_3

    const/16 v0, 0x23

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_3
    if-nez p6, :cond_4

    const/16 v0, 0x24

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_4
    if-nez p7, :cond_5

    const/16 v0, 0x25

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_5
    new-instance v16, Lui8;

    invoke-virtual/range {p0 .. p0}, Led;->getAnnotations()Lmd;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->y()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lui8;->z0()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lui8;->isConst()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lui8;->m0()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lui8;->f0()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lui8;->isExternal()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lui8;->U()Z

    move-result v15

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v15}, Lui8;-><init>(Lxt1;Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;ZZZZZZ)V

    return-object v16
.end method

.method public L()Lwp3;
    .locals 0

    iget-object p0, p0, Lui8;->B:Lwp3;

    return-object p0
.end method

.method public L0(Lui8$a;)Lti8;
    .locals 20

    move-object/from16 v8, p0

    if-nez p1, :cond_0

    const/16 v0, 0x1d

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    invoke-static/range {p1 .. p1}, Lui8$a;->b(Lui8$a;)Lxt1;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lui8$a;->f(Lui8$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lui8$a;->g(Lui8$a;)Lc92;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lui8$a;->h(Lui8$a;)Lti8;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lui8$a;->i(Lui8$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lui8$a;->j(Lui8$a;)Lby6;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lui8$a;->k(Lui8$a;)Z

    move-result v0

    invoke-static/range {p1 .. p1}, Lui8$a;->h(Lui8$a;)Lti8;

    move-result-object v7

    invoke-virtual {v8, v0, v7}, Lui8;->N0(ZLti8;)Lyt9;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lui8;->K0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lti8;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lyt9;)Lui8;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lui8$a;->l(Lui8$a;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lui8;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Lui8$a;->l(Lui8$a;)Ljava/util/List;

    move-result-object v1

    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static/range {p1 .. p1}, Lui8$a;->m(Lui8$a;)Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object v2

    invoke-static {v1, v2, v0, v11}, Lw82;->b(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/l;Lxt1;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lui8$a;->c(Lui8$a;)Leh5;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object v10

    const/4 v3, 0x0

    if-nez v10, :cond_2

    return-object v3

    :cond_2
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lui8;->U0(Leh5;)V

    :cond_3
    invoke-static/range {p1 .. p1}, Lui8$a;->d(Lui8$a;)Lro8;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Lro8;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lro8;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v3

    :cond_4
    move-object v12, v2

    goto :goto_1

    :cond_5
    move-object v12, v3

    :goto_1
    iget-object v2, v8, Lui8;->w:Lro8;

    if-eqz v2, :cond_6

    invoke-static {v1, v0, v2}, Lui8;->Z0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lti8;Lro8;)Lro8;

    move-result-object v2

    move-object v13, v2

    goto :goto_2

    :cond_6
    move-object v13, v3

    :goto_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v8, Lui8;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lro8;

    invoke-static {v1, v0, v4}, Lui8;->Y0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lti8;Lro8;)Lro8;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object v9, v0

    invoke-virtual/range {v9 .. v14}, Lui8;->W0(Leh5;Ljava/util/List;Lro8;Lro8;Ljava/util/List;)V

    iget-object v2, v8, Lui8;->y:Lwi8;

    if-nez v2, :cond_9

    move-object v2, v3

    goto :goto_4

    :cond_9
    new-instance v2, Lwi8;

    iget-object v4, v8, Lui8;->y:Lwi8;

    invoke-virtual {v4}, Led;->getAnnotations()Lmd;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lui8$a;->f(Lui8$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v12

    iget-object v4, v8, Lui8;->y:Lwi8;

    invoke-virtual {v4}, Lsi8;->getVisibility()Lc92;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lui8$a;->i(Lui8$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v5

    invoke-static {v4, v5}, Lui8;->T0(Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lc92;

    move-result-object v13

    iget-object v4, v8, Lui8;->y:Lwi8;

    invoke-virtual {v4}, Lsi8;->V()Z

    move-result v14

    iget-object v4, v8, Lui8;->y:Lwi8;

    invoke-virtual {v4}, Lsi8;->isExternal()Z

    move-result v15

    iget-object v4, v8, Lui8;->y:Lwi8;

    invoke-virtual {v4}, Lsi8;->isInline()Z

    move-result v16

    invoke-static/range {p1 .. p1}, Lui8$a;->i(Lui8$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lui8$a;->o()Lvi8;

    move-result-object v18

    sget-object v19, Lyt9;->a:Lyt9;

    move-object v9, v2

    move-object v10, v0

    invoke-direct/range {v9 .. v19}, Lwi8;-><init>(Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lvi8;Lyt9;)V

    :goto_4
    if-eqz v2, :cond_b

    iget-object v4, v8, Lui8;->y:Lwi8;

    invoke-virtual {v4}, Lwi8;->getReturnType()Leh5;

    move-result-object v4

    iget-object v5, v8, Lui8;->y:Lwi8;

    invoke-static {v1, v5}, Lui8;->O0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v5

    invoke-virtual {v2, v5}, Lsi8;->H0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)V

    if-eqz v4, :cond_a

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object v4

    goto :goto_5

    :cond_a
    move-object v4, v3

    :goto_5
    invoke-virtual {v2, v4}, Lwi8;->K0(Leh5;)V

    :cond_b
    iget-object v4, v8, Lui8;->z:Lxi8;

    if-nez v4, :cond_c

    move-object v4, v3

    goto :goto_6

    :cond_c
    new-instance v4, Lyi8;

    iget-object v5, v8, Lui8;->z:Lxi8;

    invoke-interface {v5}, Ldd;->getAnnotations()Lmd;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lui8$a;->f(Lui8$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v12

    iget-object v5, v8, Lui8;->z:Lxi8;

    invoke-interface {v5}, Lbn6;->getVisibility()Lc92;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lui8$a;->i(Lui8$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v6

    invoke-static {v5, v6}, Lui8;->T0(Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lc92;

    move-result-object v13

    iget-object v5, v8, Lui8;->z:Lxi8;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->V()Z

    move-result v14

    iget-object v5, v8, Lui8;->z:Lxi8;

    invoke-interface {v5}, Lbn6;->isExternal()Z

    move-result v15

    iget-object v5, v8, Lui8;->z:Lxi8;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isInline()Z

    move-result v16

    invoke-static/range {p1 .. p1}, Lui8$a;->i(Lui8$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lui8$a;->p()Lxi8;

    move-result-object v18

    sget-object v19, Lyt9;->a:Lyt9;

    move-object v9, v4

    move-object v10, v0

    invoke-direct/range {v9 .. v19}, Lyi8;-><init>(Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lxi8;Lyt9;)V

    :goto_6
    if-eqz v4, :cond_f

    iget-object v5, v8, Lui8;->z:Lxi8;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v12, v4

    move-object v14, v1

    invoke-static/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->K0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;ZZ[Z)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_d

    invoke-virtual {v0, v7}, Lui8;->V0(Z)V

    invoke-static/range {p1 .. p1}, Lui8$a;->b(Lui8$a;)Lxt1;

    move-result-object v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->j(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->H()Lsm9;

    move-result-object v5

    iget-object v9, v8, Lui8;->z:Lxi8;

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v9}, Ldd;->getAnnotations()Lmd;

    move-result-object v9

    invoke-static {v4, v5, v9}, Lyi8;->J0(Lxi8;Leh5;Lmd;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :cond_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v7, :cond_e

    iget-object v7, v8, Lui8;->z:Lxi8;

    invoke-static {v1, v7}, Lui8;->O0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v7

    invoke-virtual {v4, v7}, Lsi8;->H0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)V

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-virtual {v4, v5}, Lyi8;->L0(Lkotlin/reflect/jvm/internal/impl/descriptors/h;)V

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_f
    :goto_7
    iget-object v5, v8, Lui8;->B:Lwp3;

    if-nez v5, :cond_10

    move-object v6, v3

    goto :goto_8

    :cond_10
    new-instance v6, Lxp3;

    invoke-interface {v5}, Ldd;->getAnnotations()Lmd;

    move-result-object v5

    invoke-direct {v6, v5, v0}, Lxp3;-><init>(Lmd;Lti8;)V

    :goto_8
    iget-object v5, v8, Lui8;->C:Lwp3;

    if-nez v5, :cond_11

    goto :goto_9

    :cond_11
    new-instance v3, Lxp3;

    invoke-interface {v5}, Ldd;->getAnnotations()Lmd;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lxp3;-><init>(Lmd;Lti8;)V

    :goto_9
    invoke-virtual {v0, v2, v4, v6, v3}, Lui8;->Q0(Lwi8;Lxi8;Lwp3;Lwp3;)V

    invoke-static/range {p1 .. p1}, Lui8$a;->e(Lui8$a;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcq9;->b()Lcq9;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lui8;->e()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lti8;

    invoke-interface {v4, v1}, Lti8;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lti8;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    invoke-virtual {v0, v2}, Lui8;->O(Ljava/util/Collection;)V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lui8;->isConst()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->i:Lc74;

    if-eqz v1, :cond_14

    iget-object v2, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->h:Lo37;

    invoke-virtual {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->F0(Lo37;Lc74;)V

    :cond_14
    return-object v0
.end method

.method public M0()Lwi8;
    .locals 0

    iget-object p0, p0, Lui8;->y:Lwi8;

    return-object p0
.end method

.method public final N0(ZLti8;)Lyt9;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lui8;->a()Lti8;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ldu1;->getSource()Lyt9;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lyt9;->a:Lyt9;

    :goto_1
    if-nez p0, :cond_2

    const/16 p1, 0x1c

    invoke-static {p1}, Lui8;->Q(I)V

    :cond_2
    return-object p0
.end method

.method public O(Ljava/util/Collection;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x28

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    iput-object p1, p0, Lui8;->l:Ljava/util/Collection;

    return-void
.end method

.method public P0(Lwi8;Lxi8;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lui8;->Q0(Lwi8;Lxi8;Lwp3;Lwp3;)V

    return-void
.end method

.method public Q0(Lwi8;Lxi8;Lwp3;Lwp3;)V
    .locals 0

    iput-object p1, p0, Lui8;->y:Lwi8;

    iput-object p2, p0, Lui8;->z:Lxi8;

    iput-object p3, p0, Lui8;->B:Lwp3;

    iput-object p4, p0, Lui8;->C:Lwp3;

    return-void
.end method

.method public R0()Z
    .locals 0

    iget-boolean p0, p0, Lui8;->A:Z

    return p0
.end method

.method public S0()Lui8$a;
    .locals 1

    new-instance v0, Lui8$a;

    invoke-direct {v0, p0}, Lui8$a;-><init>(Lui8;)V

    return-object v0
.end method

.method public U()Z
    .locals 0

    iget-boolean p0, p0, Lui8;->t:Z

    return p0
.end method

.method public U0(Leh5;)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p0, 0xe

    invoke-static {p0}, Lui8;->Q(I)V

    :cond_0
    return-void
.end method

.method public V0(Z)V
    .locals 0

    iput-boolean p1, p0, Lui8;->A:Z

    return-void
.end method

.method public W0(Leh5;Ljava/util/List;Lro8;Lro8;Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x12

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_1
    if-nez p5, :cond_2

    const/16 v0, 0x13

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->C0(Leh5;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lui8;->x:Ljava/util/List;

    iput-object p4, p0, Lui8;->w:Lro8;

    iput-object p3, p0, Lui8;->v:Lro8;

    iput-object p5, p0, Lui8;->u:Ljava/util/List;

    return-void
.end method

.method public X0(Lc92;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x14

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    iput-object p1, p0, Lui8;->k:Lc92;

    return-void
.end method

.method public Z()Lro8;
    .locals 0

    iget-object p0, p0, Lui8;->v:Lro8;

    return-object p0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lui8;->a()Lti8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lui8;->a()Lti8;

    move-result-object p0

    return-object p0
.end method

.method public a()Lti8;
    .locals 1

    .line 4
    iget-object v0, p0, Lui8;->m:Lti8;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lti8;->a()Lti8;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/16 v0, 0x26

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic a()Lxt1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lui8;->a()Lti8;

    move-result-object p0

    return-object p0
.end method

.method public b0()Lro8;
    .locals 0

    iget-object p0, p0, Lui8;->w:Lro8;

    return-object p0
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lti8;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x1b

    invoke-static {v0}, Lui8;->Q(I)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lui8;->S0()Lui8$a;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->j()Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object p1

    invoke-virtual {v0, p1}, Lui8$a;->v(Lkotlin/reflect/jvm/internal/impl/types/l;)Lui8$a;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lui8;->a()Lti8;

    move-result-object p0

    invoke-virtual {p1, p0}, Lui8$a;->t(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lui8$a;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lui8$a;->n()Lti8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lzt1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lui8;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lti8;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/util/Collection;
    .locals 1

    iget-object p0, p0, Lui8;->l:Ljava/util/Collection;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/16 v0, 0x29

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_1
    return-object p0
.end method

.method public f0()Z
    .locals 0

    iget-boolean p0, p0, Lui8;->r:Z

    return p0
.end method

.method public bridge synthetic getGetter()Lvi8;
    .locals 0

    invoke-virtual {p0}, Lui8;->M0()Lwi8;

    move-result-object p0

    return-object p0
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;
    .locals 1

    iget-object p0, p0, Lui8;->n:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-nez p0, :cond_0

    const/16 v0, 0x27

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public getReturnType()Leh5;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->getType()Leh5;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x17

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public getSetter()Lxi8;
    .locals 0

    iget-object p0, p0, Lui8;->z:Lxi8;

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lui8;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "typeParameters == null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyt1;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVisibility()Lc92;
    .locals 1

    iget-object p0, p0, Lui8;->k:Lc92;

    if-nez p0, :cond_0

    const/16 v0, 0x19

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public isConst()Z
    .locals 0

    iget-boolean p0, p0, Lui8;->p:Z

    return p0
.end method

.method public isExternal()Z
    .locals 0

    iget-boolean p0, p0, Lui8;->s:Z

    return p0
.end method

.method public j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 1

    iget-object p0, p0, Lui8;->j:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-nez p0, :cond_0

    const/16 v0, 0x18

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic l0()Ldu1;
    .locals 0

    invoke-virtual {p0}, Lui8;->a()Lti8;

    move-result-object p0

    return-object p0
.end method

.method public m0()Z
    .locals 0

    iget-boolean p0, p0, Lui8;->q:Z

    return p0
.end method

.method public q0(Lbu1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lbu1;->i(Lti8;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public t()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lui8;->y:Lwi8;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lui8;->z:Lxi8;

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public y0()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lui8;->u:Ljava/util/List;

    if-nez p0, :cond_0

    const/16 v0, 0x16

    invoke-static {v0}, Lui8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public z()Lwp3;
    .locals 0

    iget-object p0, p0, Lui8;->C:Lwp3;

    return-object p0
.end method

.method public z0()Z
    .locals 0

    iget-boolean p0, p0, Lui8;->o:Z

    return p0
.end method
