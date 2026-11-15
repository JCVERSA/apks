.class public final Lv92;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;
.source "SourceFile"

# interfaces
.implements Lq92;


# instance fields
.field public final i:Lvx9;

.field public final j:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

.field public final k:Lcy6;

.field public final l:Lxcb;

.field public final m:Lqob;

.field public final n:Lp92;

.field public o:Ljava/util/Collection;

.field public p:Lsm9;

.field public q:Lsm9;

.field public r:Ljava/util/List;

.field public s:Lsm9;


# direct methods
.method public constructor <init>(Lvx9;Lxt1;Lmd;Lby6;Lc92;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;Lcy6;Lxcb;Lqob;Lp92;)V
    .locals 12

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    move-object v1, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v2, p3

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lyt9;->a:Lyt9;

    const-string v0, "NO_SOURCE"

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;-><init>(Lxt1;Lmd;Lby6;Lyt9;Lc92;)V

    iput-object v7, v6, Lv92;->i:Lvx9;

    iput-object v8, v6, Lv92;->j:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

    iput-object v9, v6, Lv92;->k:Lcy6;

    iput-object v10, v6, Lv92;->l:Lxcb;

    iput-object v11, v6, Lv92;->m:Lqob;

    move-object/from16 v0, p10

    iput-object v0, v6, Lv92;->n:Lp92;

    return-void
.end method


# virtual methods
.method public H0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lv92;->r:Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, "typeConstructorParameters"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public J0()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;
    .locals 0

    iget-object p0, p0, Lv92;->j:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

    return-object p0
.end method

.method public K0()Lqob;
    .locals 0

    iget-object p0, p0, Lv92;->m:Lqob;

    return-object p0
.end method

.method public final L0(Ljava/util/List;Lsm9;Lsm9;)V
    .locals 1

    const-string v0, "declaredTypeParameters"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "underlyingType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandedType"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->I0(Ljava/util/List;)V

    iput-object p2, p0, Lv92;->p:Lsm9;

    iput-object p3, p0, Lv92;->q:Lsm9;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt;->d(Lqx0;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lv92;->r:Ljava/util/List;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->C0()Lsm9;

    move-result-object p1

    iput-object p1, p0, Lv92;->s:Lsm9;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->G0()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lv92;->o:Ljava/util/Collection;

    return-void
.end method

.method public M0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lebb;
    .locals 12

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lv92;

    invoke-virtual {p0}, Lv92;->a0()Lvx9;

    move-result-object v2

    invoke-virtual {p0}, Lau1;->b()Lxt1;

    move-result-object v3

    const-string v1, "containingDeclaration"

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Led;->getAnnotations()Lmd;

    move-result-object v4

    const-string v1, "annotations"

    invoke-static {v4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyt1;->getName()Lby6;

    move-result-object v5

    const-string v1, "name"

    invoke-static {v5, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->getVisibility()Lc92;

    move-result-object v6

    invoke-virtual {p0}, Lv92;->J0()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

    move-result-object v7

    invoke-virtual {p0}, Lv92;->X()Lcy6;

    move-result-object v8

    invoke-virtual {p0}, Lv92;->x()Lxcb;

    move-result-object v9

    invoke-virtual {p0}, Lv92;->K0()Lqob;

    move-result-object v10

    invoke-virtual {p0}, Lv92;->Y()Lp92;

    move-result-object v11

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lv92;-><init>(Lvx9;Lxt1;Lmd;Lby6;Lc92;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;Lcy6;Lxcb;Lqob;Lp92;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->r()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lv92;->w0()Lsm9;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->n(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object v2

    const-string v4, "substitutor.safeSubstitu\u2026Type, Variance.INVARIANT)"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lscb;->a(Leh5;)Lsm9;

    move-result-object v2

    invoke-virtual {p0}, Lv92;->W()Lsm9;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->n(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lscb;->a(Leh5;)Lsm9;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lv92;->L0(Ljava/util/List;Lsm9;Lsm9;)V

    return-object v0
.end method

.method public W()Lsm9;
    .locals 0

    iget-object p0, p0, Lv92;->q:Lsm9;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "expandedType"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public X()Lcy6;
    .locals 0

    iget-object p0, p0, Lv92;->k:Lcy6;

    return-object p0
.end method

.method public Y()Lp92;
    .locals 0

    iget-object p0, p0, Lv92;->n:Lp92;

    return-object p0
.end method

.method public a0()Lvx9;
    .locals 0

    iget-object p0, p0, Lv92;->i:Lvx9;

    return-object p0
.end method

.method public bridge synthetic c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lzt1;
    .locals 0

    invoke-virtual {p0, p1}, Lv92;->M0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lebb;

    move-result-object p0

    return-object p0
.end method

.method public k()Lqw0;
    .locals 2

    invoke-virtual {p0}, Lv92;->W()Lsm9;

    move-result-object v0

    invoke-static {v0}, Lfh5;->a(Leh5;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv92;->W()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->c()Lpx0;

    move-result-object p0

    instance-of v0, p0, Lqw0;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lqw0;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public q()Lsm9;
    .locals 0

    iget-object p0, p0, Lv92;->s:Lsm9;

    if-nez p0, :cond_0

    const-string p0, "defaultTypeImpl"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public w0()Lsm9;
    .locals 0

    iget-object p0, p0, Lv92;->p:Lsm9;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "underlyingType"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public x()Lxcb;
    .locals 0

    iget-object p0, p0, Lv92;->l:Lxcb;

    return-object p0
.end method
