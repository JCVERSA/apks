.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li92;

.field public final b:Lid;


# direct methods
.method public constructor <init>(Li92;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    new-instance v0, Lid;

    invoke-virtual {p1}, Li92;->c()Le92;

    move-result-object v1

    invoke-virtual {v1}, Le92;->p()Lqq6;

    move-result-object v1

    invoke-virtual {p1}, Li92;->c()Le92;

    move-result-object p1

    invoke-virtual {p1}, Le92;->q()Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lid;-><init>(Lqq6;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->b:Lid;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lxt1;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c(Lxt1;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;)Li92;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    return-object p0
.end method


# virtual methods
.method public final c(Lxt1;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;
    .locals 3

    instance-of v0, p1, Ldv7;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$b;

    check-cast p1, Ldv7;

    invoke-interface {p1}, Ldv7;->d()Lo54;

    move-result-object p1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->g()Lcy6;

    move-result-object v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v2}, Li92;->j()Lxcb;

    move-result-object v2

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {p0}, Li92;->d()Lp92;

    move-result-object p0

    invoke-direct {v0, p1, v1, v2, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$b;-><init>(Lo54;Lcy6;Lxcb;Lyt9;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz p0, :cond_1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->Z0()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d(Lkotlin/reflect/jvm/internal/impl/protobuf/g;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lmd;
    .locals 2

    sget-object v0, Lay3;->c:Lay3$b;

    invoke-virtual {v0, p2}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lmd;->u1:Lmd$a;

    invoke-virtual {p0}, Lmd$a;->b()Lmd;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p2, Ll17;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v0}, Li92;->h()Lvx9;

    move-result-object v0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;

    invoke-direct {v1, p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)V

    invoke-direct {p2, v0, v1}, Ll17;-><init>(Lvx9;Lc74;)V

    return-object p2
.end method

.method public final e()Lro8;
    .locals 2

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {p0}, Li92;->e()Lxt1;

    move-result-object p0

    instance-of v0, p0, Lqw0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lqw0;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lqw0;->R()Lro8;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final f(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Z)Lmd;
    .locals 3

    sget-object v0, Lay3;->c:Lay3$b;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lmd;->u1:Lmd$a;

    invoke-virtual {p0}, Lmd$a;->b()Lmd;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ll17;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->h()Lvx9;

    move-result-object v1

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getPropertyFieldAnnotations$1;

    invoke-direct {v2, p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getPropertyFieldAnnotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;ZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)V

    invoke-direct {v0, v1, v2}, Ll17;-><init>(Lvx9;Lc74;)V

    return-object v0
.end method

.method public final g(Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lmd;
    .locals 3

    new-instance v0, Ll92;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->h()Lvx9;

    move-result-object v1

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getReceiverParameterAnnotations$1;

    invoke-direct {v2, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getReceiverParameterAnnotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)V

    invoke-direct {v0, v1, v2}, Ll92;-><init>(Lvx9;Lc74;)V

    return-object v0
.end method

.method public final h(Lu92;Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Ljava/util/Map;)V
    .locals 0

    invoke-virtual/range {p1 .. p10}, Lbm9;->j1(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Ljava/util/Map;)Lbm9;

    return-void
.end method

.method public final i(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const-string v1, "proto"

    invoke-static {v15, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->e()Lxt1;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v1

    check-cast v16, Lqw0;

    new-instance v14, Ln92;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->getFlags()I

    move-result v1

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v0, v15, v1, v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/g;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lmd;

    move-result-object v4

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->g()Lcy6;

    move-result-object v8

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->j()Lxcb;

    move-result-object v9

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->k()Lqob;

    move-result-object v10

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->d()Lp92;

    move-result-object v11

    const/16 v17, 0x400

    const/16 v18, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    move-object v1, v14

    move-object/from16 v2, v16

    move/from16 v5, p2

    move-object/from16 v7, p1

    move-object/from16 v19, v13

    move/from16 v13, v17

    move-object/from16 p2, v14

    move-object/from16 v14, v18

    invoke-direct/range {v1 .. v14}, Ln92;-><init>(Lqw0;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lmd;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lcy6;Lxcb;Lqob;Lp92;Lyt9;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v8}, Li92;->b(Li92;Lxt1;Ljava/util/List;Lcy6;Lxcb;Lqob;Lse0;ILjava/lang/Object;)Li92;

    move-result-object v0

    invoke-virtual {v0}, Li92;->f()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->getValueParameterList()Ljava/util/List;

    move-result-object v1

    const-string v2, "proto.valueParameterList"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v15, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->o(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lgj8;->a:Lgj8;

    sget-object v2, Lay3;->d:Lay3$d;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->getFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v1, v2}, Lhj8;->a(Lgj8;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lc92;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v0, v1}, Lnw0;->l1(Ljava/util/List;Lc92;)Lnw0;

    invoke-interface/range {v16 .. v16}, Lqw0;->q()Lsm9;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->b1(Leh5;)V

    invoke-interface/range {v16 .. v16}, Lbn6;->m0()Z

    move-result v0

    invoke-virtual {v2, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->R0(Z)V

    sget-object v0, Lay3;->n:Lay3$b;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->T0(Z)V

    return-object v2
.end method

.method public final j(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 31

    move-object/from16 v11, p0

    move-object/from16 v10, p1

    const-string v0, "proto"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->hasFlags()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getFlags()I

    move-result v0

    :goto_0
    move v9, v0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getOldFlags()I

    move-result v0

    invoke-virtual {v11, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->k(I)I

    move-result v0

    goto :goto_0

    :goto_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v11, v10, v9, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/g;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lmd;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lij8;->g(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v11, v10, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->g(Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lmd;

    move-result-object v0

    goto :goto_2

    :cond_1
    sget-object v0, Lmd;->u1:Lmd$a;

    invoke-virtual {v0}, Lmd$a;->b()Lmd;

    move-result-object v0

    :goto_2
    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->e()Lxt1;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->l(Lxt1;)Lo54;

    move-result-object v1

    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v2}, Li92;->g()Lcy6;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getName()I

    move-result v3

    invoke-static {v2, v3}, Ley6;->b(Lcy6;I)Lby6;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo54;->c(Lby6;)Lo54;

    move-result-object v1

    sget-object v2, Lc7a;->a:Lo54;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lqob;->b:Lqob$a;

    invoke-virtual {v1}, Lqob$a;->b()Lqob;

    move-result-object v1

    :goto_3
    move-object/from16 v21, v1

    goto :goto_4

    :cond_2
    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->k()Lqob;

    move-result-object v1

    goto :goto_3

    :goto_4
    new-instance v8, Lu92;

    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->e()Lxt1;

    move-result-object v13

    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->g()Lcy6;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getName()I

    move-result v2

    invoke-static {v1, v2}, Ley6;->b(Lcy6;I)Lby6;

    move-result-object v16

    sget-object v1, Lgj8;->a:Lgj8;

    sget-object v2, Lay3;->o:Lay3$d;

    invoke-virtual {v2, v9}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    invoke-static {v1, v2}, Lhj8;->b(Lgj8;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v17

    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->g()Lcy6;

    move-result-object v19

    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->j()Lxcb;

    move-result-object v20

    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->d()Lp92;

    move-result-object v22

    const/16 v24, 0x400

    const/16 v25, 0x0

    const/4 v14, 0x0

    const/16 v23, 0x0

    move-object v12, v8

    move-object/from16 v18, p1

    invoke-direct/range {v12 .. v25}, Lu92;-><init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lcy6;Lxcb;Lqob;Lp92;Lyt9;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getTypeParameterList()Ljava/util/List;

    move-result-object v2

    const-string v3, "proto.typeParameterList"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v29, 0x3c

    const/16 v30, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v1

    move-object/from16 v23, v8

    move-object/from16 v24, v2

    invoke-static/range {v22 .. v30}, Li92;->b(Li92;Lxt1;Ljava/util/List;Lcy6;Lxcb;Lqob;Lse0;ILjava/lang/Object;)Li92;

    move-result-object v12

    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->j()Lxcb;

    move-result-object v1

    invoke-static {v10, v1}, Lij8;->k(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lxcb;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v12}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->q(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Leh5;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v8, v1, v0}, Ls82;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lmd;)Lro8;

    move-result-object v0

    :goto_5
    move-object v2, v0

    goto :goto_6

    :cond_3
    const/4 v0, 0x0

    goto :goto_5

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->e()Lro8;

    move-result-object v3

    iget-object v0, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v0}, Li92;->j()Lxcb;

    move-result-object v0

    invoke-static {v10, v0}, Lij8;->c(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lxcb;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    if-gez v1, :cond_4

    invoke-static {}, Ly71;->u()V

    :cond_4
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-virtual {v11, v5, v12, v8, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->n(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Li92;Lkotlin/reflect/jvm/internal/impl/descriptors/a;I)Lro8;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move v1, v6

    goto :goto_7

    :cond_6
    invoke-virtual {v12}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->j()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v12}, Li92;->f()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getValueParameterList()Ljava/util/List;

    move-result-object v1

    const-string v6, "proto.valueParameterList"

    invoke-static {v1, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v0, v1, v10, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->o(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v12}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v0

    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->j()Lxcb;

    move-result-object v1

    invoke-static {v10, v1}, Lij8;->m(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lxcb;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->q(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Leh5;

    move-result-object v7

    sget-object v0, Lgj8;->a:Lgj8;

    sget-object v1, Lay3;->e:Lay3$d;

    invoke-virtual {v1, v9}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-virtual {v0, v1}, Lgj8;->b(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v13

    sget-object v1, Lay3;->d:Lay3$d;

    invoke-virtual {v1, v9}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v0, v1}, Lhj8;->a(Lgj8;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lc92;

    move-result-object v14

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v16, v12

    move-object v12, v8

    move-object v8, v13

    move v13, v9

    move-object v9, v14

    move-object v14, v10

    move-object v10, v15

    invoke-virtual/range {v0 .. v10}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->h(Lu92;Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Ljava/util/Map;)V

    sget-object v0, Lay3;->p:Lay3$b;

    invoke-virtual {v0, v13}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_OPERATOR.get(flags)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->a1(Z)V

    sget-object v0, Lay3;->q:Lay3$b;

    invoke-virtual {v0, v13}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_INFIX.get(flags)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->X0(Z)V

    sget-object v0, Lay3;->t:Lay3$b;

    invoke-virtual {v0, v13}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_EXTERNAL_FUNCTION.get(flags)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->S0(Z)V

    sget-object v0, Lay3;->r:Lay3$b;

    invoke-virtual {v0, v13}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_INLINE.get(flags)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->Z0(Z)V

    sget-object v0, Lay3;->s:Lay3$b;

    invoke-virtual {v0, v13}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_TAILREC.get(flags)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->d1(Z)V

    sget-object v0, Lay3;->u:Lay3$b;

    invoke-virtual {v0, v13}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_SUSPEND.get(flags)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->c1(Z)V

    sget-object v0, Lay3;->v:Lay3$b;

    invoke-virtual {v0, v13}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_EXPECT_FUNCTION.get(flags)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->R0(Z)V

    sget-object v0, Lay3;->w:Lay3$b;

    invoke-virtual {v0, v13}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->T0(Z)V

    iget-object v0, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v0}, Li92;->c()Le92;

    move-result-object v0

    invoke-virtual {v0}, Le92;->h()Lzh1;

    move-result-object v0

    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->j()Lxcb;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v2

    invoke-interface {v0, v14, v12, v1, v2}, Lzh1;->a(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lxcb;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->P0(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;Ljava/lang/Object;)V

    :cond_7
    return-object v12
.end method

.method public final k(I)I
    .locals 0

    and-int/lit8 p0, p1, 0x3f

    shr-int/lit8 p1, p1, 0x8

    shl-int/lit8 p1, p1, 0x6

    add-int/2addr p0, p1

    return p0
.end method

.method public final l(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Lti8;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const-string v1, "proto"

    invoke-static {v15, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasFlags()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getFlags()I

    move-result v1

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getOldFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->k(I)I

    move-result v1

    goto :goto_0

    :goto_1
    new-instance v14, Lt92;

    move-object v1, v14

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v2}, Li92;->e()Lxt1;

    move-result-object v2

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v0, v15, v3, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/g;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lmd;

    move-result-object v4

    sget-object v9, Lgj8;->a:Lgj8;

    sget-object v5, Lay3;->e:Lay3$d;

    invoke-virtual {v5, v3}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-virtual {v9, v5}, Lgj8;->b(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v5

    sget-object v6, Lay3;->d:Lay3$d;

    invoke-virtual {v6, v3}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v9, v6}, Lhj8;->a(Lgj8;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lc92;

    move-result-object v6

    sget-object v7, Lay3;->x:Lay3$b;

    invoke-virtual {v7, v3}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "IS_VAR.get(flags)"

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v8}, Li92;->g()Lcy6;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getName()I

    move-result v10

    invoke-static {v8, v10}, Ley6;->b(Lcy6;I)Lby6;

    move-result-object v8

    sget-object v10, Lay3;->o:Lay3$d;

    invoke-virtual {v10, v3}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    invoke-static {v9, v10}, Lhj8;->b(Lgj8;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v9

    sget-object v10, Lay3;->B:Lay3$b;

    invoke-virtual {v10, v3}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "IS_LATEINIT.get(flags)"

    invoke-static {v10, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v11, Lay3;->A:Lay3$b;

    invoke-virtual {v11, v3}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "IS_CONST.get(flags)"

    invoke-static {v11, v12}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    sget-object v12, Lay3;->D:Lay3$b;

    invoke-virtual {v12, v3}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v12

    const-string v13, "IS_EXTERNAL_PROPERTY.get(flags)"

    invoke-static {v12, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    sget-object v13, Lay3;->E:Lay3$b;

    invoke-virtual {v13, v3}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v16, v14

    const-string v14, "IS_DELEGATED.get(flags)"

    invoke-static {v13, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    sget-object v14, Lay3;->F:Lay3$b;

    invoke-virtual {v14, v3}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v14

    move/from16 v20, v3

    const-string v3, "IS_EXPECT_PROPERTY.get(flags)"

    invoke-static {v14, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object/from16 v3, v16

    move-object/from16 v21, v3

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v3}, Li92;->g()Lcy6;

    move-result-object v16

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v3}, Li92;->j()Lxcb;

    move-result-object v17

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v3}, Li92;->k()Lqob;

    move-result-object v18

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v3}, Li92;->d()Lp92;

    move-result-object v19

    const/4 v3, 0x0

    move/from16 v22, v20

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v19}, Lt92;-><init>(Lxt1;Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZZZZZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lcy6;Lxcb;Lqob;Lp92;)V

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getTypeParameterList()Ljava/util/List;

    move-result-object v6

    const-string v1, "proto.typeParameterList"

    invoke-static {v6, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x3c

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, v21

    invoke-static/range {v4 .. v12}, Li92;->b(Li92;Lxt1;Ljava/util/List;Lcy6;Lxcb;Lqob;Lse0;ILjava/lang/Object;)Li92;

    move-result-object v1

    sget-object v2, Lay3;->y:Lay3$b;

    move/from16 v3, v22

    invoke-virtual {v2, v3}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "HAS_GETTER.get(flags)"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Lij8;->h(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    move-object/from16 v15, p1

    invoke-virtual {v0, v15, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->g(Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lmd;

    move-result-object v4

    goto :goto_2

    :cond_1
    move-object/from16 v15, p1

    sget-object v4, Lmd;->u1:Lmd$a;

    invoke-virtual {v4}, Lmd$a;->b()Lmd;

    move-result-object v4

    :goto_2
    invoke-virtual {v1}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v5

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v6}, Li92;->j()Lxcb;

    move-result-object v6

    invoke-static {v15, v6}, Lij8;->n(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lxcb;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->q(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Leh5;

    move-result-object v5

    invoke-virtual {v1}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->j()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->e()Lro8;

    move-result-object v7

    iget-object v8, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v8}, Li92;->j()Lxcb;

    move-result-object v8

    invoke-static {v15, v8}, Lij8;->l(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lxcb;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v8

    const/16 v16, 0x0

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v9

    invoke-virtual {v9, v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->q(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Leh5;

    move-result-object v8

    if-eqz v8, :cond_2

    move-object/from16 v14, v21

    invoke-static {v14, v8, v4}, Ls82;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lmd;)Lro8;

    move-result-object v4

    move-object v8, v4

    goto :goto_3

    :cond_2
    move-object/from16 v14, v21

    move-object/from16 v8, v16

    :goto_3
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v4}, Li92;->j()Lxcb;

    move-result-object v4

    invoke-static {v15, v4}, Lij8;->d(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lxcb;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v4, v10}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v13, 0x0

    move v10, v13

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-gez v10, :cond_3

    invoke-static {}, Ly71;->u()V

    :cond_3
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-virtual {v0, v11, v1, v14, v10}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->n(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Li92;Lkotlin/reflect/jvm/internal/impl/descriptors/a;I)Lro8;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v10, v12

    goto :goto_4

    :cond_4
    move-object v4, v14

    invoke-virtual/range {v4 .. v9}, Lui8;->W0(Leh5;Ljava/util/List;Lro8;Lro8;Ljava/util/List;)V

    sget-object v4, Lay3;->c:Lay3$b;

    invoke-virtual {v4, v3}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "HAS_ANNOTATIONS.get(flags)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget-object v12, Lay3;->d:Lay3$d;

    invoke-virtual {v12, v3}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    sget-object v5, Lay3;->e:Lay3$d;

    invoke-virtual {v5, v3}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lay3;->b(ZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;ZZZ)I

    move-result v17

    const/4 v11, 0x1

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasGetterFlags()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getGetterFlags()I

    move-result v2

    goto :goto_5

    :cond_5
    move/from16 v2, v17

    :goto_5
    sget-object v4, Lay3;->J:Lay3$b;

    invoke-virtual {v4, v2}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "IS_NOT_DEFAULT.get(getterFlags)"

    invoke-static {v4, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v6, Lay3;->K:Lay3$b;

    invoke-virtual {v6, v2}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "IS_EXTERNAL_ACCESSOR.get(getterFlags)"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v6, Lay3;->L:Lay3$b;

    invoke-virtual {v6, v2}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "IS_INLINE_ACCESSOR.get(getterFlags)"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v0, v15, v2, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/g;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lmd;

    move-result-object v6

    if-eqz v4, :cond_6

    new-instance v19, Lwi8;

    sget-object v7, Lgj8;->a:Lgj8;

    invoke-virtual {v5, v2}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-virtual {v7, v8}, Lgj8;->b(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v8

    invoke-virtual {v12, v2}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v7, v2}, Lhj8;->a(Lgj8;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lc92;

    move-result-object v2

    xor-int/lit8 v9, v4, 0x1

    invoke-virtual {v14}, Lui8;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v20

    const/16 v21, 0x0

    sget-object v22, Lyt9;->a:Lyt9;

    move-object/from16 v4, v19

    move-object v7, v5

    move-object v5, v14

    move-object/from16 v32, v7

    move-object v7, v8

    move-object v8, v2

    move v2, v11

    move/from16 v11, v18

    move-object v2, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v20, v1

    move-object v1, v14

    move-object/from16 v14, v22

    invoke-direct/range {v4 .. v14}, Lwi8;-><init>(Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lvi8;Lyt9;)V

    goto :goto_6

    :cond_6
    move-object/from16 v20, v1

    move-object/from16 v32, v5

    move-object v2, v12

    move-object v1, v14

    invoke-static {v1, v6}, Ls82;->d(Lti8;Lmd;)Lwi8;

    move-result-object v4

    const-string v5, "{\n                Descri\u2026nnotations)\n            }"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v1}, Lui8;->getReturnType()Leh5;

    move-result-object v5

    invoke-virtual {v4, v5}, Lwi8;->K0(Leh5;)V

    move-object v14, v4

    goto :goto_7

    :cond_7
    move-object/from16 v20, v1

    move-object/from16 v32, v5

    move-object v2, v12

    move-object v1, v14

    move-object/from16 v14, v16

    :goto_7
    sget-object v4, Lay3;->z:Lay3$b;

    invoke-virtual {v4, v3}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "HAS_SETTER.get(flags)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasSetterFlags()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getSetterFlags()I

    move-result v17

    :cond_8
    move/from16 v4, v17

    sget-object v5, Lay3;->J:Lay3$b;

    invoke-virtual {v5, v4}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "IS_NOT_DEFAULT.get(setterFlags)"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget-object v6, Lay3;->K:Lay3$b;

    invoke-virtual {v6, v4}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "IS_EXTERNAL_ACCESSOR.get(setterFlags)"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v6, Lay3;->L:Lay3$b;

    invoke-virtual {v6, v4}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "IS_INLINE_ACCESSOR.get(setterFlags)"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v0, v15, v4, v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/g;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lmd;

    move-result-object v6

    if-eqz v5, :cond_9

    new-instance v12, Lyi8;

    sget-object v7, Lgj8;->a:Lgj8;

    move-object/from16 v8, v32

    invoke-virtual {v8, v4}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-virtual {v7, v8}, Lgj8;->b(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v8

    invoke-virtual {v2, v4}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v7, v2}, Lhj8;->a(Lgj8;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lc92;

    move-result-object v2

    const/4 v4, 0x1

    xor-int/lit8 v9, v5, 0x1

    invoke-virtual {v1}, Lui8;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v17

    const/16 v19, 0x0

    sget-object v21, Lyt9;->a:Lyt9;

    move-object v4, v12

    move-object v5, v1

    move-object v7, v8

    move-object v8, v2

    move-object v2, v12

    move-object/from16 v12, v17

    move-object v0, v13

    move-object/from16 v13, v19

    move-object/from16 v33, v14

    move-object/from16 v14, v21

    invoke-direct/range {v4 .. v14}, Lyi8;-><init>(Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lxi8;Lyt9;)V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v25

    const/16 v30, 0x3c

    const/16 v31, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v20

    move-object/from16 v24, v2

    invoke-static/range {v23 .. v31}, Li92;->b(Li92;Lxt1;Ljava/util/List;Lcy6;Lxcb;Lqob;Lse0;ILjava/lang/Object;)Li92;

    move-result-object v4

    invoke-virtual {v4}, Li92;->f()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getSetterValueParameter()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    move-result-object v5

    invoke-static {v5}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5, v15, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->o(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li81;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-virtual {v2, v0}, Lyi8;->L0(Lkotlin/reflect/jvm/internal/impl/descriptors/h;)V

    move-object v12, v2

    goto :goto_8

    :cond_9
    move-object/from16 v33, v14

    sget-object v0, Lmd;->u1:Lmd$a;

    invoke-virtual {v0}, Lmd$a;->b()Lmd;

    move-result-object v0

    invoke-static {v1, v6, v0}, Ls82;->e(Lti8;Lmd;Lmd;)Lyi8;

    move-result-object v12

    const-string v0, "{\n                Descri\u2026          )\n            }"

    invoke-static {v12, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    move-object/from16 v33, v14

    move-object/from16 v12, v16

    :goto_8
    sget-object v0, Lay3;->C:Lay3$b;

    invoke-virtual {v0, v3}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "HAS_CONSTANT.get(flags)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$loadProperty$4;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v15, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$loadProperty$4;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lt92;)V

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->G0(Lc74;)V

    goto :goto_9

    :cond_b
    move-object/from16 v2, p0

    :goto_9
    iget-object v0, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v0}, Li92;->e()Lxt1;

    move-result-object v0

    instance-of v3, v0, Lqw0;

    if-eqz v3, :cond_c

    check-cast v0, Lqw0;

    goto :goto_a

    :cond_c
    move-object/from16 v0, v16

    :goto_a
    if-eqz v0, :cond_d

    invoke-interface {v0}, Lqw0;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v16

    :cond_d
    move-object/from16 v0, v16

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-ne v0, v3, :cond_e

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$loadProperty$5;

    invoke-direct {v0, v2, v15, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$loadProperty$5;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lt92;)V

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->G0(Lc74;)V

    :cond_e
    new-instance v0, Lxp3;

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->f(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Z)Lmd;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lxp3;-><init>(Lmd;Lti8;)V

    new-instance v3, Lxp3;

    const/4 v4, 0x1

    invoke-virtual {v2, v15, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->f(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Z)Lmd;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lxp3;-><init>(Lmd;Lti8;)V

    move-object/from16 v4, v33

    invoke-virtual {v1, v4, v12, v0, v3}, Lui8;->Q0(Lwi8;Lxi8;Lwp3;Lwp3;)V

    return-object v1
.end method

.method public final m(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;)Lebb;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const-string v1, "proto"

    invoke-static {v12, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lmd;->u1:Lmd$a;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->getAnnotationList()Ljava/util/List;

    move-result-object v2

    const-string v3, "proto.annotationList"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->b:Lid;

    const-string v6, "it"

    invoke-static {v4, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v6}, Li92;->g()Lcy6;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lid;->a(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lcy6;)Lgd;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Lmd$a;->a(Ljava/util/List;)Lmd;

    move-result-object v4

    sget-object v1, Lgj8;->a:Lgj8;

    sget-object v2, Lay3;->d:Lay3$d;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->getFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v1, v2}, Lhj8;->a(Lgj8;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lc92;

    move-result-object v6

    new-instance v15, Lv92;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->h()Lvx9;

    move-result-object v2

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->e()Lxt1;

    move-result-object v3

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->g()Lcy6;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->getName()I

    move-result v5

    invoke-static {v1, v5}, Ley6;->b(Lcy6;I)Lby6;

    move-result-object v5

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->g()Lcy6;

    move-result-object v8

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->j()Lxcb;

    move-result-object v9

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->k()Lqob;

    move-result-object v10

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->d()Lp92;

    move-result-object v11

    move-object v1, v15

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v11}, Lv92;-><init>(Lvx9;Lxt1;Lmd;Lby6;Lc92;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;Lcy6;Lxcb;Lqob;Lp92;)V

    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->getTypeParameterList()Ljava/util/List;

    move-result-object v1

    const-string v2, "proto.typeParameterList"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x3c

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v15

    move-object v2, v15

    move-object v15, v1

    invoke-static/range {v13 .. v21}, Li92;->b(Li92;Lxt1;Ljava/util/List;Lcy6;Lxcb;Lqob;Lse0;ILjava/lang/Object;)Li92;

    move-result-object v1

    invoke-virtual {v1}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->j()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v4

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v5}, Li92;->j()Lxcb;

    move-result-object v5

    invoke-static {v12, v5}, Lij8;->r(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;Lxcb;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->l(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lsm9;

    move-result-object v4

    invoke-virtual {v1}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v1

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v0}, Li92;->j()Lxcb;

    move-result-object v0

    invoke-static {v12, v0}, Lij8;->e(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;Lxcb;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->l(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lsm9;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lv92;->L0(Ljava/util/List;Lsm9;Lsm9;)V

    return-object v2
.end method

.method public final n(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Li92;Lkotlin/reflect/jvm/internal/impl/descriptors/a;I)Lro8;
    .locals 0

    invoke-virtual {p2}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->q(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Leh5;

    move-result-object p0

    sget-object p1, Lmd;->u1:Lmd$a;

    invoke-virtual {p1}, Lmd$a;->b()Lmd;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p3, p0, p2, p1, p4}, Ls82;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lby6;Lmd;I)Lro8;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;
    .locals 25

    move-object/from16 v7, p0

    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v0}, Li92;->e()Lxt1;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v0

    check-cast v20, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-interface/range {v20 .. v20}, Lzt1;->b()Lxt1;

    move-result-object v0

    const-string v1, "callableDescriptor.containingDeclaration"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c(Lxt1;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;

    move-result-object v21

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v11, v23

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v24, v11, 0x1

    if-gez v11, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    move-object v8, v0

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->hasFlags()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->getFlags()I

    move-result v0

    move v9, v0

    goto :goto_1

    :cond_1
    move/from16 v9, v23

    :goto_1
    if-eqz v21, :cond_2

    sget-object v0, Lay3;->c:Lay3$b;

    invoke-virtual {v0, v9}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "HAS_ANNOTATIONS.get(flags)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v10, Ll17;

    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v0}, Li92;->h()Lvx9;

    move-result-object v12

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$valueParameters$1$annotations$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v11

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$valueParameters$1$annotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;ILkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)V

    invoke-direct {v10, v12, v13}, Ll17;-><init>(Lvx9;Lc74;)V

    move-object v12, v10

    goto :goto_2

    :cond_2
    sget-object v0, Lmd;->u1:Lmd$a;

    invoke-virtual {v0}, Lmd$a;->b()Lmd;

    move-result-object v0

    move-object v12, v0

    :goto_2
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v0}, Li92;->g()Lcy6;

    move-result-object v0

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->getName()I

    move-result v1

    invoke-static {v0, v1}, Ley6;->b(Lcy6;I)Lby6;

    move-result-object v13

    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v0}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v0

    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->j()Lxcb;

    move-result-object v1

    invoke-static {v8, v1}, Lij8;->q(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lxcb;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->q(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Leh5;

    move-result-object v14

    sget-object v0, Lay3;->G:Lay3$b;

    invoke-virtual {v0, v9}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DECLARES_DEFAULT_VALUE.get(flags)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lay3;->H:Lay3$b;

    invoke-virtual {v1, v9}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IS_CROSSINLINE.get(flags)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    sget-object v1, Lay3;->I:Lay3$b;

    invoke-virtual {v1, v9}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IS_NOINLINE.get(flags)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v1}, Li92;->j()Lxcb;

    move-result-object v1

    invoke-static {v8, v1}, Lij8;->t(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lxcb;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->a:Li92;

    invoke-virtual {v2}, Li92;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->q(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Leh5;

    move-result-object v1

    :goto_3
    move-object/from16 v18, v1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    sget-object v1, Lyt9;->a:Lyt9;

    const-string v2, "NO_SOURCE"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    const/4 v10, 0x0

    move-object v8, v2

    move-object/from16 v9, v20

    move-object v3, v15

    move v15, v0

    move-object/from16 v19, v1

    invoke-direct/range {v8 .. v19}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/h;ILmd;Lby6;Leh5;ZZZLeh5;Lyt9;)V

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v15, v3

    move/from16 v11, v24

    goto/16 :goto_0

    :cond_4
    move-object v3, v15

    invoke-static {v3}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
