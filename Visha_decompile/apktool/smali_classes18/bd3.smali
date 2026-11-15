.class public final Lbd3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lti8;


# instance fields
.field public final synthetic b:Lui8;


# direct methods
.method public constructor <init>()V
    .locals 21

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lid3;->a:Lid3;

    invoke-virtual {v0}, Lid3;->h()Lsc3;

    move-result-object v1

    sget-object v2, Lmd;->u1:Lmd$a;

    invoke-virtual {v2}, Lmd$a;->b()Lmd;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v4, Lb92;->e:Lc92;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_PROPERTY:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->getDebugText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lby6;->j(Ljava/lang/String;)Lby6;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    sget-object v8, Lyt9;->a:Lyt9;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v1 .. v14}, Lui8;->J0(Lxt1;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;ZZZZZZ)Lui8;

    move-result-object v1

    invoke-virtual {v0}, Lid3;->k()Leh5;

    move-result-object v16

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v17

    const/16 v19, 0x0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v20

    const/16 v18, 0x0

    move-object v15, v1

    invoke-virtual/range {v15 .. v20}, Lui8;->W0(Leh5;Ljava/util/List;Lro8;Lro8;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lbd3;->b:Lui8;

    return-void
.end method


# virtual methods
.method public J(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 6

    iget-object v0, p0, Lbd3;->b:Lui8;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lui8;->I0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lti8;

    move-result-object p0

    return-object p0
.end method

.method public K(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0, p1}, Lui8;->K(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public L()Lwp3;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->L()Lwp3;

    move-result-object p0

    return-object p0
.end method

.method public O(Ljava/util/Collection;)V
    .locals 1

    const-string v0, "overriddenDescriptors"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0, p1}, Lui8;->O(Ljava/util/Collection;)V

    return-void
.end method

.method public U()Z
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->U()Z

    move-result p0

    return p0
.end method

.method public Z()Lro8;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->Z()Lro8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lbd3;->a()Lti8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lbd3;->a()Lti8;

    move-result-object p0

    return-object p0
.end method

.method public a()Lti8;
    .locals 0

    .line 1
    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->a()Lti8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lxt1;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lbd3;->a()Lti8;

    move-result-object p0

    return-object p0
.end method

.method public b()Lxt1;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lau1;->b()Lxt1;

    move-result-object p0

    return-object p0
.end method

.method public b0()Lro8;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->b0()Lro8;

    move-result-object p0

    return-object p0
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lti8;
    .locals 1

    .line 1
    const-string v0, "substitutor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0, p1}, Lui8;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lti8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lzt1;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lbd3;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lti8;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->e()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f0()Z
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->f0()Z

    move-result p0

    return p0
.end method

.method public getAnnotations()Lmd;
    .locals 1

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Led;->getAnnotations()Lmd;

    move-result-object p0

    const-string v0, "<get-annotations>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getGetter()Lvi8;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->M0()Lwi8;

    move-result-object p0

    return-object p0
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object p0

    return-object p0
.end method

.method public getName()Lby6;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lyt1;->getName()Lby6;

    move-result-object p0

    return-object p0
.end method

.method public getReturnType()Leh5;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->getReturnType()Leh5;

    move-result-object p0

    return-object p0
.end method

.method public getSetter()Lxi8;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->getSetter()Lxi8;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Lyt9;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lau1;->getSource()Lyt9;

    move-result-object p0

    return-object p0
.end method

.method public getType()Leh5;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->getType()Leh5;

    move-result-object p0

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVisibility()Lc92;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->getVisibility()Lc92;

    move-result-object p0

    return-object p0
.end method

.method public isConst()Z
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->isConst()Z

    move-result p0

    return p0
.end method

.method public isExternal()Z
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->isExternal()Z

    move-result p0

    return p0
.end method

.method public j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object p0

    return-object p0
.end method

.method public k0()Z
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->k0()Z

    move-result p0

    return p0
.end method

.method public m0()Z
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->m0()Z

    move-result p0

    return p0
.end method

.method public p0()Lpf1;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->p0()Lpf1;

    move-result-object p0

    return-object p0
.end method

.method public q0(Lbu1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0, p1, p2}, Lui8;->q0(Lbu1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public t()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->t()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public y()Z
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->y()Z

    move-result p0

    return p0
.end method

.method public y0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->y0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public z()Lwp3;
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->z()Lwp3;

    move-result-object p0

    return-object p0
.end method

.method public z0()Z
    .locals 0

    iget-object p0, p0, Lbd3;->b:Lui8;

    invoke-virtual {p0}, Lui8;->z0()Z

    move-result p0

    return p0
.end method
