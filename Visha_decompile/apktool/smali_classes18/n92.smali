.class public final Ln92;
.super Lnw0;
.source "SourceFile"

# interfaces
.implements Lm92;


# instance fields
.field public final G:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

.field public final H:Lcy6;

.field public final I:Lxcb;

.field public final J:Lqob;

.field public final K:Lp92;


# direct methods
.method public constructor <init>(Lqw0;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lmd;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lcy6;Lxcb;Lqob;Lp92;Lyt9;)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v3, p3

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

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

    if-nez p11, :cond_0

    .line 2
    sget-object v0, Lyt9;->a:Lyt9;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p11

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lnw0;-><init>(Lqw0;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lmd;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)V

    .line 3
    iput-object v8, v7, Ln92;->G:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    .line 4
    iput-object v9, v7, Ln92;->H:Lcy6;

    .line 5
    iput-object v10, v7, Ln92;->I:Lxcb;

    .line 6
    iput-object v11, v7, Ln92;->J:Lqob;

    move-object/from16 v0, p10

    .line 7
    iput-object v0, v7, Ln92;->K:Lp92;

    return-void
.end method

.method public synthetic constructor <init>(Lqw0;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lmd;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lcy6;Lxcb;Lqob;Lp92;Lyt9;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p11

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 1
    invoke-direct/range {v1 .. v12}, Ln92;-><init>(Lqw0;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lmd;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lcy6;Lxcb;Lqob;Lp92;Lyt9;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Lkotlin/reflect/jvm/internal/impl/protobuf/g;
    .locals 0

    invoke-virtual {p0}, Ln92;->o1()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic G0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lmd;Lyt9;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Ln92;->n1(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lmd;Lyt9;)Ln92;

    move-result-object p0

    return-object p0
.end method

.method public X()Lcy6;
    .locals 0

    iget-object p0, p0, Ln92;->H:Lcy6;

    return-object p0
.end method

.method public Y()Lp92;
    .locals 0

    iget-object p0, p0, Ln92;->K:Lp92;

    return-object p0
.end method

.method public isExternal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuspend()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic j1(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lmd;Lyt9;)Lnw0;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Ln92;->n1(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lmd;Lyt9;)Ln92;

    move-result-object p0

    return-object p0
.end method

.method public n1(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lmd;Lyt9;)Ln92;
    .locals 14

    move-object v0, p1

    const-string v1, "newOwner"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "annotations"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    move-object/from16 v13, p6

    invoke-static {v13, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ln92;

    move-object v3, v0

    check-cast v3, Lqw0;

    move-object/from16 v4, p2

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-object v0, p0

    iget-boolean v6, v0, Lnw0;->F:Z

    invoke-virtual {p0}, Ln92;->o1()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    move-result-object v8

    invoke-virtual {p0}, Ln92;->X()Lcy6;

    move-result-object v9

    invoke-virtual {p0}, Ln92;->x()Lxcb;

    move-result-object v10

    invoke-virtual {p0}, Ln92;->p1()Lqob;

    move-result-object v11

    invoke-virtual {p0}, Ln92;->Y()Lp92;

    move-result-object v12

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Ln92;-><init>(Lqw0;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lmd;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lcy6;Lxcb;Lqob;Lp92;Lyt9;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->L0()Z

    move-result v0

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->T0(Z)V

    return-object v1
.end method

.method public o1()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;
    .locals 0

    iget-object p0, p0, Ln92;->G:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    return-object p0
.end method

.method public p1()Lqob;
    .locals 0

    iget-object p0, p0, Ln92;->J:Lqob;

    return-object p0
.end method

.method public v()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public x()Lxcb;
    .locals 0

    iget-object p0, p0, Ln92;->I:Lxcb;

    return-object p0
.end method
