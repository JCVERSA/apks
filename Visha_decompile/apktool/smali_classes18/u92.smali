.class public final Lu92;
.super Lbm9;
.source "SourceFile"

# interfaces
.implements Lm92;


# instance fields
.field public final F:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

.field public final G:Lcy6;

.field public final H:Lxcb;

.field public final I:Lqob;

.field public final J:Lp92;


# direct methods
.method public constructor <init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lcy6;Lxcb;Lqob;Lp92;Lyt9;)V
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

    const-string v0, "name"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

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

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lbm9;-><init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)V

    .line 4
    iput-object v8, v7, Lu92;->F:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    .line 5
    iput-object v9, v7, Lu92;->G:Lcy6;

    .line 6
    iput-object v10, v7, Lu92;->H:Lxcb;

    .line 7
    iput-object v11, v7, Lu92;->I:Lqob;

    move-object/from16 v0, p10

    .line 8
    iput-object v0, v7, Lu92;->J:Lp92;

    return-void
.end method

.method public synthetic constructor <init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lcy6;Lxcb;Lqob;Lp92;Lyt9;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 1
    invoke-direct/range {v1 .. v12}, Lu92;-><init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lcy6;Lxcb;Lqob;Lp92;Lyt9;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Lkotlin/reflect/jvm/internal/impl/protobuf/g;
    .locals 0

    invoke-virtual {p0}, Lu92;->k1()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    move-result-object p0

    return-object p0
.end method

.method public G0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lmd;Lyt9;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;
    .locals 13

    const-string v0, "newOwner"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v6, p3

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu92;

    move-object v3, p2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    if-nez p4, :cond_0

    invoke-virtual {p0}, Lyt1;->getName()Lby6;

    move-result-object v1

    const-string v5, "name"

    invoke-static {v1, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p4

    :goto_0
    invoke-virtual {p0}, Lu92;->k1()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    move-result-object v7

    invoke-virtual {p0}, Lu92;->X()Lcy6;

    move-result-object v8

    invoke-virtual {p0}, Lu92;->x()Lxcb;

    move-result-object v9

    invoke-virtual {p0}, Lu92;->l1()Lqob;

    move-result-object v10

    invoke-virtual {p0}, Lu92;->Y()Lp92;

    move-result-object v11

    move-object v1, v0

    move-object v2, p1

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move-object/from16 v12, p6

    invoke-direct/range {v1 .. v12}, Lu92;-><init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lcy6;Lxcb;Lqob;Lp92;Lyt9;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->L0()Z

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->T0(Z)V

    return-object v0
.end method

.method public X()Lcy6;
    .locals 0

    iget-object p0, p0, Lu92;->G:Lcy6;

    return-object p0
.end method

.method public Y()Lp92;
    .locals 0

    iget-object p0, p0, Lu92;->J:Lp92;

    return-object p0
.end method

.method public k1()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;
    .locals 0

    iget-object p0, p0, Lu92;->F:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    return-object p0
.end method

.method public l1()Lqob;
    .locals 0

    iget-object p0, p0, Lu92;->I:Lqob;

    return-object p0
.end method

.method public x()Lxcb;
    .locals 0

    iget-object p0, p0, Lu92;->H:Lxcb;

    return-object p0
.end method
