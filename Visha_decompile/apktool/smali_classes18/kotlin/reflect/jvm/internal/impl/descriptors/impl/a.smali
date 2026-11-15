.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;
.super Lau1;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    }
.end annotation


# instance fields
.field public volatile A:Lc74;

.field public final B:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

.field public final C:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

.field public D:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

.field public E:Ljava/util/Map;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Leh5;

.field public i:Ljava/util/List;

.field public j:Lro8;

.field public k:Lro8;

.field public l:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field public m:Lc92;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    const/4 v1, 0x1

    if-nez p3, :cond_1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_1
    if-nez p4, :cond_2

    const/4 v2, 0x2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_2
    if-nez p5, :cond_3

    const/4 v2, 0x3

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_3
    if-nez p6, :cond_4

    const/4 v2, 0x4

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_4
    invoke-direct {p0, p1, p3, p4, p6}, Lau1;-><init>(Lxt1;Lmd;Lby6;Lyt9;)V

    sget-object p1, Lb92;->i:Lc92;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->m:Lc92;

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->n:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->o:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->p:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->q:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->r:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->s:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->t:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->u:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->v:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->w:Z

    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->x:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->y:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->z:Ljava/util/Collection;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->A:Lc74;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->D:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->E:Ljava/util/Map;

    if-nez p2, :cond_5

    move-object p2, p0

    :cond_5
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->B:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->C:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-void
.end method

.method public static synthetic C0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;)Lro8;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->k:Lro8;

    return-object p0
.end method

.method public static J0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Ljava/util/List;
    .locals 7

    if-nez p1, :cond_0

    const/16 v0, 0x1c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x1d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->K0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;ZZ[Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static K0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;ZZ[Z)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p2

    if-nez p1, :cond_0

    const/16 v1, 0x1e

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    if-nez v0, :cond_1

    const/16 v1, 0x1f

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v3}, Lknb;->getType()Leh5;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v0, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object v11

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->x0()Leh5;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v4, :cond_2

    move-object v15, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object v5

    move-object v15, v5

    :goto_1
    if-nez v11, :cond_3

    return-object v6

    :cond_3
    invoke-interface {v3}, Lknb;->getType()Leh5;

    move-result-object v5

    if-ne v11, v5, :cond_4

    if-eq v4, v15, :cond_5

    :cond_4
    if-eqz p5, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, p5, v4

    :cond_5
    instance-of v4, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl$WithDestructuringDeclaration;

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl$WithDestructuringDeclaration;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl$WithDestructuringDeclaration;->I0()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$b;

    invoke-direct {v5, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$b;-><init>(Ljava/util/List;)V

    move-object/from16 v17, v5

    goto :goto_2

    :cond_6
    move-object/from16 v17, v6

    :goto_2
    if-eqz p3, :cond_7

    move-object v7, v6

    goto :goto_3

    :cond_7
    move-object v7, v3

    :goto_3
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getIndex()I

    move-result v8

    invoke-interface {v3}, Ldd;->getAnnotations()Lmd;

    move-result-object v9

    invoke-interface {v3}, Lgy6;->getName()Lby6;

    move-result-object v10

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->N()Z

    move-result v12

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->u0()Z

    move-result v13

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->r0()Z

    move-result v14

    if-eqz p4, :cond_8

    invoke-interface {v3}, Ldu1;->getSource()Lyt9;

    move-result-object v3

    :goto_4
    move-object/from16 v16, v3

    goto :goto_5

    :cond_8
    sget-object v3, Lyt9;->a:Lyt9;

    goto :goto_4

    :goto_5
    move-object/from16 v6, p0

    invoke-static/range {v6 .. v17}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->F0(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/h;ILmd;Lby6;Leh5;ZZZLeh5;Lyt9;Lc74;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    return-object v1
.end method

.method private static synthetic Q(I)V
    .locals 7

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

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "configuration"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "originalSubstitutor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "overriddenDescriptors"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "extensionReceiverParameter"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "unsubstitutedReturnType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_c
    const-string v5, "unsubstitutedValueParameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_d
    const-string v5, "typeParameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_e
    const-string v5, "contextReceiverParameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_f
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_10
    const-string v5, "kind"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_11
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_12
    const-string v5, "annotations"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "initialize"

    const-string v5, "newCopyBuilder"

    const/4 v6, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_13
    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_14
    const-string v3, "getSourceToUseForCopy"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_15
    const-string v3, "copy"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_16
    aput-object v5, v2, v6

    goto :goto_3

    :pswitch_17
    const-string v3, "getKind"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_18
    const-string v3, "getOriginal"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_19
    const-string v3, "getValueParameters"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1a
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1b
    const-string v3, "getVisibility"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1c
    const-string v3, "getModality"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1d
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1e
    const-string v3, "getContextReceiverParameters"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1f
    aput-object v4, v2, v6

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_20
    const-string v3, "getSubstitutedValueParameters"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_21
    const-string v3, "doSubstitute"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_22
    aput-object v5, v2, v1

    goto :goto_4

    :pswitch_23
    const-string v3, "substitute"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_24
    const-string v3, "setOverriddenDescriptors"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_25
    const-string v3, "setExtensionReceiverParameter"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_26
    const-string v3, "setReturnType"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_27
    const-string v3, "setVisibility"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_28
    aput-object v4, v2, v1

    :goto_4
    :pswitch_29
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_5
        :pswitch_c
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_1f
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_13
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_13
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_29
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_24
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_23
        :pswitch_29
        :pswitch_22
        :pswitch_21
        :pswitch_29
        :pswitch_29
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x9
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method private Y0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->D:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-void
.end method


# virtual methods
.method public B0()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->u:Z

    return p0
.end method

.method public F0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->q(Lxt1;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p0

    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->r(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p0

    invoke-interface {p0, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->n(Lc92;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p0

    invoke-interface {p0, p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->s(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p0

    invoke-interface {p0, p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->h(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p1, 0x1a

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public abstract G0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lmd;Lyt9;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;
.end method

.method public H0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_0

    const/16 v0, 0x19

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    const/4 v9, 0x1

    new-array v10, v9, [Z

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->v(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Lmd;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Led;->getAnnotations()Lmd;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->v(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Lmd;

    move-result-object v1

    invoke-static {v0, v1}, Lod;->a(Lmd;Lmd;)Lmd;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Led;->getAnnotations()Lmd;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v1, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->b:Lxt1;

    iget-object v2, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    iget-object v4, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->l:Lby6;

    iget-boolean v0, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->o:Z

    invoke-virtual {v7, v0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->I0(ZLkotlin/reflect/jvm/internal/impl/descriptors/e;)Lyt9;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->G0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lmd;Lyt9;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->w(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->w(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Ljava/util/List;

    move-result-object v0

    :goto_2
    const/4 v11, 0x0

    aget-boolean v1, v10, v11

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v9

    or-int/2addr v1, v2

    aput-boolean v1, v10, v11

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-static {v0, v1, v6, v15, v10}, Lw82;->c(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/l;Lxt1;Ljava/util/List;[Z)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v14

    const/4 v12, 0x0

    if-nez v14, :cond_3

    return-object v12

    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v11

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lro8;

    invoke-interface {v2}, Lknb;->getType()Leh5;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v14, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object v3

    if-nez v3, :cond_4

    return-object v12

    :cond_4
    invoke-interface {v2}, Lro8;->getValue()Lto8;

    move-result-object v4

    check-cast v4, Lxy4;

    invoke-interface {v4}, Lxy4;->a()Lby6;

    move-result-object v4

    invoke-interface {v2}, Ldd;->getAnnotations()Lmd;

    move-result-object v5

    add-int/lit8 v16, v1, 0x1

    invoke-static {v6, v3, v4, v5, v1}, Ls82;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lby6;Lmd;I)Lro8;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-boolean v1, v10, v11

    invoke-interface {v2}, Lknb;->getType()Leh5;

    move-result-object v2

    if-eq v3, v2, :cond_5

    move v2, v9

    goto :goto_4

    :cond_5
    move v2, v11

    :goto_4
    or-int/2addr v1, v2

    aput-boolean v1, v10, v11

    move/from16 v1, v16

    goto :goto_3

    :cond_6
    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->i:Lro8;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lknb;->getType()Leh5;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v14, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v12

    :cond_7
    new-instance v1, Lso8;

    new-instance v2, Lek3;

    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->i:Lro8;

    invoke-interface {v3}, Lro8;->getValue()Lto8;

    move-result-object v3

    invoke-direct {v2, v6, v0, v3}, Lek3;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lto8;)V

    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->i:Lro8;

    invoke-interface {v3}, Ldd;->getAnnotations()Lmd;

    move-result-object v3

    invoke-direct {v1, v6, v2, v3}, Lso8;-><init>(Lxt1;Lto8;Lmd;)V

    aget-boolean v2, v10, v11

    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->i:Lro8;

    invoke-interface {v3}, Lknb;->getType()Leh5;

    move-result-object v3

    if-eq v0, v3, :cond_8

    move v0, v9

    goto :goto_5

    :cond_8
    move v0, v11

    :goto_5
    or-int/2addr v0, v2

    aput-boolean v0, v10, v11

    move-object/from16 v16, v1

    goto :goto_6

    :cond_9
    move-object/from16 v16, v12

    :goto_6
    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->j:Lro8;

    if-eqz v0, :cond_c

    invoke-interface {v0, v14}, Lro8;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lro8;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v12

    :cond_a
    aget-boolean v1, v10, v11

    iget-object v2, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->j:Lro8;

    if-eq v0, v2, :cond_b

    move v2, v9

    goto :goto_7

    :cond_b
    move v2, v11

    :goto_7
    or-int/2addr v1, v2

    aput-boolean v1, v10, v11

    move-object/from16 v17, v0

    goto :goto_8

    :cond_c
    move-object/from16 v17, v12

    :goto_8
    iget-object v1, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->g:Ljava/util/List;

    iget-boolean v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->p:Z

    iget-boolean v4, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->o:Z

    move-object v0, v6

    move-object v2, v14

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->K0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;ZZ[Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v12

    :cond_d
    iget-object v1, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->k:Leh5;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v14, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object v1

    if-nez v1, :cond_e

    return-object v12

    :cond_e
    aget-boolean v2, v10, v11

    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->k:Leh5;

    if-eq v1, v3, :cond_f

    move v3, v9

    goto :goto_9

    :cond_f
    move v3, v11

    :goto_9
    or-int/2addr v2, v3

    aput-boolean v2, v10, v11

    if-nez v2, :cond_10

    iget-boolean v2, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->w:Z

    if-eqz v2, :cond_10

    return-object v7

    :cond_10
    iget-object v2, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->d:Lc92;

    move-object v11, v6

    move-object/from16 v12, v16

    move-object v4, v13

    move-object/from16 v13, v17

    move-object v5, v14

    move-object v14, v4

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v11 .. v19}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->M0(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    iget-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->n:Z

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->a1(Z)V

    iget-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->o:Z

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->X0(Z)V

    iget-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->p:Z

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->S0(Z)V

    iget-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->q:Z

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Z0(Z)V

    iget-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->r:Z

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->d1(Z)V

    iget-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->w:Z

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->c1(Z)V

    iget-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->s:Z

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->R0(Z)V

    iget-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->t:Z

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q0(Z)V

    iget-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->x:Z

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->T0(Z)V

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->x(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->W0(Z)V

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->y(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->V0(Z)V

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->z(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->z(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_a

    :cond_11
    iget-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->y:Z

    :goto_a
    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->U0(Z)V

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->A(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->E:Ljava/util/Map;

    if-eqz v0, :cond_16

    :cond_12
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->A(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->E:Ljava/util/Map;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_14
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v9, :cond_15

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->E:Ljava/util/Map;

    goto :goto_c

    :cond_15
    iput-object v0, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->E:Ljava/util/Map;

    :cond_16
    :goto_c
    iget-boolean v0, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->n:Z

    if-nez v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->v0()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v0

    if-eqz v0, :cond_19

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->v0()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->v0()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v0

    goto :goto_d

    :cond_18
    move-object v0, v7

    :goto_d
    invoke-interface {v0, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v0

    invoke-direct {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Y0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)V

    :cond_19
    iget-boolean v0, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->m:Z

    if-eqz v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/l;->f()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->A:Lc74;

    if-eqz v0, :cond_1a

    iput-object v0, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->A:Lc74;

    goto :goto_e

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->O(Ljava/util/Collection;)V

    goto :goto_e

    :cond_1b
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a;

    invoke-direct {v0, v7, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)V

    iput-object v0, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->A:Lc74;

    :cond_1c
    :goto_e
    return-object v6
.end method

.method public final I0(ZLkotlin/reflect/jvm/internal/impl/descriptors/e;)Lyt9;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ldu1;->getSource()Lyt9;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lyt9;->a:Lyt9;

    :goto_1
    if-nez p0, :cond_2

    const/16 p1, 0x1b

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_2
    return-object p0
.end method

.method public K(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->E:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public L0()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->x:Z

    return p0
.end method

.method public M0(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;
    .locals 1

    if-nez p3, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    if-nez p4, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_1
    if-nez p5, :cond_2

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_2
    if-nez p8, :cond_3

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_3
    invoke-static {p4}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->f:Ljava/util/List;

    invoke-static {p5}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->g:Ljava/util/List;

    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->h:Leh5;

    iput-object p7, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    iput-object p8, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->m:Lc92;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->j:Lro8;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->k:Lro8;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->i:Ljava/util/List;

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    const-string p6, " but position is "

    if-ge p2, p3, :cond_5

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lhcb;

    invoke-interface {p3}, Lhcb;->getIndex()I

    move-result p7

    if-ne p7, p2, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " index is "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lhcb;->getIndex()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getIndex()I

    move-result p3

    if-ne p3, p1, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "index is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getIndex()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-object p0
.end method

.method public N0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 13

    if-nez p1, :cond_0

    const/16 v0, 0x18

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->j()Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object v3

    invoke-virtual {p0}, Lau1;->b()Lxt1;

    move-result-object v4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->getVisibility()Lc92;

    move-result-object v6

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v7

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->f()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->y0()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->b0()Lro8;

    move-result-object v10

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->getReturnType()Leh5;

    move-result-object v11

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;Lkotlin/reflect/jvm/internal/impl/types/l;Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Ljava/util/List;Ljava/util/List;Lro8;Leh5;Lby6;)V

    return-object v0
.end method

.method public O(Ljava/util/Collection;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->z:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->v:Z

    :cond_2
    return-void
.end method

.method public final O0()V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->A:Lc74;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->z:Ljava/util/Collection;

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->A:Lc74;

    :cond_0
    return-void
.end method

.method public P()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->v:Z

    return p0
.end method

.method public P0(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->E:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->E:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->E:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Q0(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->t:Z

    return-void
.end method

.method public R0(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->s:Z

    return-void
.end method

.method public S0(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->p:Z

    return-void
.end method

.method public T0(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->x:Z

    return-void
.end method

.method public U0(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->y:Z

    return-void
.end method

.method public final V0(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->v:Z

    return-void
.end method

.method public final W0(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->u:Z

    return-void
.end method

.method public X0(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->o:Z

    return-void
.end method

.method public Z()Lro8;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->k:Lro8;

    return-object p0
.end method

.method public Z0(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->q:Z

    return-void
.end method

.method public a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->B:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/16 v0, 0x14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_1
    return-object p0
.end method

.method public a1(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->n:Z

    return-void
.end method

.method public b0()Lro8;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->j:Lro8;

    return-object p0
.end method

.method public b1(Leh5;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->h:Leh5;

    return-void
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x16

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->N0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->N(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->P()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->J(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lzt1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    return-object p0
.end method

.method public c1(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->w:Z

    return-void
.end method

.method public d1(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->r:Z

    return-void
.end method

.method public e()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->O0()V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->z:Ljava/util/Collection;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_1
    return-object p0
.end method

.method public e1(Lc92;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->m:Lc92;

    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->g:Ljava/util/List;

    if-nez p0, :cond_0

    const/16 v0, 0x13

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public f0()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->t:Z

    return p0
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->C:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-nez p0, :cond_0

    const/16 v0, 0x15

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public getReturnType()Leh5;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->h:Leh5;

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "typeParameters == null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVisibility()Lc92;
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->m:Lc92;

    if-nez p0, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public isExternal()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->p:Z

    return p0
.end method

.method public isInfix()Z
    .locals 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->e()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isInfix()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isInline()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->q:Z

    return p0
.end method

.method public isOperator()Z
    .locals 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->e()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isSuspend()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->w:Z

    return p0
.end method

.method public j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-nez p0, :cond_0

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public k0()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->y:Z

    return p0
.end method

.method public l()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->b:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->N0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x17

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public m0()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->s:Z

    return p0
.end method

.method public q0(Lbu1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lbu1;->l(Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public v()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->r:Z

    return p0
.end method

.method public v0()Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->D:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object p0
.end method

.method public y0()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->i:Ljava/util/List;

    if-nez p0, :cond_0

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Q(I)V

    :cond_0
    return-object p0
.end method
