.class public final Lt92;
.super Lui8;
.source "SourceFile"

# interfaces
.implements Lm92;


# instance fields
.field public final D:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

.field public final E:Lcy6;

.field public final F:Lxcb;

.field public final G:Lqob;

.field public final H:Lp92;


# direct methods
.method public constructor <init>(Lxt1;Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZZZZZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lcy6;Lxcb;Lqob;Lp92;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move-object/from16 v13, p15

    move-object/from16 v12, p16

    move-object/from16 v11, p17

    const-string v0, "containingDeclaration"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modality"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lyt9;->a:Lyt9;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v6, p6

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p13

    move/from16 v13, v16

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-direct/range {v0 .. v15}, Lui8;-><init>(Lxt1;Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;ZZZZZZ)V

    move-object/from16 v1, p14

    iput-object v1, v0, Lt92;->D:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-object/from16 v1, p15

    iput-object v1, v0, Lt92;->E:Lcy6;

    move-object/from16 v1, p16

    iput-object v1, v0, Lt92;->F:Lxcb;

    move-object/from16 v1, p17

    iput-object v1, v0, Lt92;->G:Lqob;

    move-object/from16 v1, p18

    iput-object v1, v0, Lt92;->H:Lp92;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Lkotlin/reflect/jvm/internal/impl/protobuf/g;
    .locals 0

    invoke-virtual {p0}, Lt92;->a1()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object p0

    return-object p0
.end method

.method public K0(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lti8;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lby6;Lyt9;)Lui8;
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v2, p4

    move-object/from16 v8, p5

    move-object/from16 v7, p6

    const-string v0, "newOwner"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newModality"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newVisibility"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v3, p5

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newName"

    move-object/from16 v3, p6

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v3, p7

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v19, Lt92;

    move-object/from16 v0, v19

    invoke-virtual/range {p0 .. p0}, Led;->getAnnotations()Lmd;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->y()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lui8;->z0()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lui8;->isConst()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lt92;->isExternal()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lui8;->U()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lui8;->m0()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lt92;->a1()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lt92;->X()Lcy6;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lt92;->x()Lxcb;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lt92;->b1()Lqob;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lt92;->Y()Lp92;

    move-result-object v18

    invoke-direct/range {v0 .. v18}, Lt92;-><init>(Lxt1;Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZZZZZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lcy6;Lxcb;Lqob;Lp92;)V

    return-object v19
.end method

.method public X()Lcy6;
    .locals 0

    iget-object p0, p0, Lt92;->E:Lcy6;

    return-object p0
.end method

.method public Y()Lp92;
    .locals 0

    iget-object p0, p0, Lt92;->H:Lp92;

    return-object p0
.end method

.method public a1()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;
    .locals 0

    iget-object p0, p0, Lt92;->D:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    return-object p0
.end method

.method public b1()Lqob;
    .locals 0

    iget-object p0, p0, Lt92;->G:Lqob;

    return-object p0
.end method

.method public isExternal()Z
    .locals 1

    sget-object v0, Lay3;->D:Lay3$b;

    invoke-virtual {p0}, Lt92;->a1()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "IS_EXTERNAL_PROPERTY.get(proto.flags)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public x()Lxcb;
    .locals 0

    iget-object p0, p0, Lt92;->F:Lxcb;

    return-object p0
.end method
