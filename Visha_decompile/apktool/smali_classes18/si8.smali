.class public abstract Lsi8;
.super Lau1;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/f;


# instance fields
.field public f:Z

.field public final g:Z

.field public final h:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field public final i:Lti8;

.field public final j:Z

.field public final k:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

.field public l:Lc92;

.field public m:Lkotlin/reflect/jvm/internal/impl/descriptors/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lti8;Lmd;Lby6;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lsi8;->Q(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lsi8;->Q(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lsi8;->Q(I)V

    :cond_2
    if-nez p4, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lsi8;->Q(I)V

    :cond_3
    if-nez p5, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, Lsi8;->Q(I)V

    :cond_4
    if-nez p10, :cond_5

    const/4 v0, 0x5

    invoke-static {v0}, Lsi8;->Q(I)V

    :cond_5
    invoke-interface {p3}, Lknb;->b()Lxt1;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5, p10}, Lau1;-><init>(Lxt1;Lmd;Lby6;Lyt9;)V

    const/4 p4, 0x0

    iput-object p4, p0, Lsi8;->m:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    iput-object p1, p0, Lsi8;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    iput-object p2, p0, Lsi8;->l:Lc92;

    iput-object p3, p0, Lsi8;->i:Lti8;

    iput-boolean p6, p0, Lsi8;->f:Z

    iput-boolean p7, p0, Lsi8;->g:Z

    iput-boolean p8, p0, Lsi8;->j:Z

    iput-object p9, p0, Lsi8;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

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

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "overriddenDescriptors"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "correspondingProperty"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "visibility"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "substitute"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_c
    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_d
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_e
    const-string v3, "getContextReceiverParameters"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_f
    const-string v3, "getCorrespondingProperty"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_10
    const-string v3, "getCorrespondingVariable"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_11
    const-string v3, "getVisibility"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_12
    const-string v3, "getModality"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_13
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_14
    aput-object v4, v2, v5

    goto :goto_3

    :pswitch_15
    const-string v3, "getKind"

    aput-object v3, v2, v5

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_16
    const-string v3, "setOverriddenDescriptors"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_17
    aput-object v4, v2, v1

    :goto_4
    :pswitch_18
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
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
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6
        :pswitch_15
        :pswitch_c
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x6
        :pswitch_1a
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public C0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/f;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Accessors must be copied by the corresponding property"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public F0(Z)Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lsi8;->e0()Lti8;

    move-result-object p0

    invoke-interface {p0}, Lti8;->e()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti8;

    if-eqz p1, :cond_1

    invoke-interface {v1}, Lti8;->getGetter()Lvi8;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lti8;->getSetter()Lxi8;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public G0(Z)V
    .locals 0

    iput-boolean p1, p0, Lsi8;->f:Z

    return-void
.end method

.method public H0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)V
    .locals 0

    iput-object p1, p0, Lsi8;->m:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-void
.end method

.method public I0(Lc92;)V
    .locals 0

    iput-object p1, p0, Lsi8;->l:Lc92;

    return-void
.end method

.method public bridge synthetic J(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lsi8;->C0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p0

    return-object p0
.end method

.method public K(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public O(Ljava/util/Collection;)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p0, 0x10

    invoke-static {p0}, Lsi8;->Q(I)V

    :cond_0
    return-void
.end method

.method public P()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public V()Z
    .locals 0

    iget-boolean p0, p0, Lsi8;->f:Z

    return p0
.end method

.method public Z()Lro8;
    .locals 0

    invoke-virtual {p0}, Lsi8;->e0()Lti8;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->Z()Lro8;

    move-result-object p0

    return-object p0
.end method

.method public b0()Lro8;
    .locals 0

    invoke-virtual {p0}, Lsi8;->e0()Lti8;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->b0()Lro8;

    move-result-object p0

    return-object p0
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x7

    invoke-static {p1}, Lsi8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lzt1;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsi8;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    return-object p0
.end method

.method public e0()Lti8;
    .locals 1

    iget-object p0, p0, Lsi8;->i:Lti8;

    if-nez p0, :cond_0

    const/16 v0, 0xd

    invoke-static {v0}, Lsi8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public f0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;
    .locals 1

    iget-object p0, p0, Lsi8;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-nez p0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lsi8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x9

    invoke-static {v0}, Lsi8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public getVisibility()Lc92;
    .locals 1

    iget-object p0, p0, Lsi8;->l:Lc92;

    if-nez p0, :cond_0

    const/16 v0, 0xb

    invoke-static {v0}, Lsi8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public isExternal()Z
    .locals 0

    iget-boolean p0, p0, Lsi8;->g:Z

    return p0
.end method

.method public isInfix()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInline()Z
    .locals 0

    iget-boolean p0, p0, Lsi8;->j:Z

    return p0
.end method

.method public isOperator()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuspend()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 1

    iget-object p0, p0, Lsi8;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-nez p0, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Lsi8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public k0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public m0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public v()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public v0()Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 0

    iget-object p0, p0, Lsi8;->m:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object p0
.end method

.method public y0()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lsi8;->e0()Lti8;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->y0()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0xe

    invoke-static {v0}, Lsi8;->Q(I)V

    :cond_0
    return-object p0
.end method
