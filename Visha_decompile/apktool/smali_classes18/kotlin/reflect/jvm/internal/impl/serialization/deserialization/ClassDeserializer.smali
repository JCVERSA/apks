.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$a;,
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$b;
    }
.end annotation


# static fields
.field public static final c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$b;

.field public static final d:Ljava/util/Set;


# instance fields
.field public final a:Le92;

.field public final b:Le74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$b;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->d:Lp54;

    invoke-virtual {v0}, Lp54;->l()Lo54;

    move-result-object v0

    invoke-static {v0}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v0

    invoke-static {v0}, Lxe9;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Le92;)V
    .locals 1

    const-string v0, "components"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->a:Le92;

    invoke-virtual {p1}, Le92;->u()Lvx9;

    move-result-object p1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$classes$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$classes$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;)V

    invoke-interface {p1, v0}, Lvx9;->a(Le74;)Lgn6;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->b:Le74;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$a;)Lqw0;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->c(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$a;)Lqw0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Ljava/util/Set;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->d:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic e(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;Lxw0;Low0;ILjava/lang/Object;)Lqw0;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->d(Lxw0;Low0;)Lqw0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$a;)Lqw0;
    .locals 12

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$a;->b()Lxw0;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->a:Le92;

    invoke-virtual {v1}, Le92;->k()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsw0;

    invoke-interface {v2, v0}, Lsw0;->b(Lxw0;)Lqw0;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$a;->a()Low0;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->a:Le92;

    invoke-virtual {p1}, Le92;->e()Lpw0;

    move-result-object p1

    invoke-interface {p1, v0}, Lpw0;->a(Lxw0;)Low0;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p1}, Low0;->a()Lcy6;

    move-result-object v1

    invoke-virtual {p1}, Low0;->b()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    move-result-object v10

    invoke-virtual {p1}, Low0;->c()Lse0;

    move-result-object v11

    invoke-virtual {p1}, Low0;->d()Lyt9;

    move-result-object p1

    invoke-virtual {v0}, Lxw0;->g()Lxw0;

    move-result-object v3

    const-string v4, "classId.shortClassName"

    if-eqz v3, :cond_7

    const/4 v5, 0x2

    invoke-static {p0, v3, v2, v5, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->e(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;Lxw0;Low0;ILjava/lang/Object;)Lqw0;

    move-result-object p0

    instance-of v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz v3, :cond_4

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    goto :goto_0

    :cond_4
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {v0}, Lxw0;->j()Lby6;

    move-result-object v0

    invoke-static {v0, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->b1(Lby6;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v2

    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->U0()Li92;

    move-result-object p0

    :goto_1
    move-object v4, p0

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->a:Le92;

    invoke-virtual {v3}, Le92;->r()Lfv7;

    move-result-object v3

    invoke-virtual {v0}, Lxw0;->h()Lo54;

    move-result-object v5

    const-string v6, "classId.packageFqName"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lgv7;->c(Lfv7;Lo54;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ldv7;

    instance-of v7, v6, Lr92;

    if-eqz v7, :cond_a

    check-cast v6, Lr92;

    invoke-virtual {v0}, Lxw0;->j()Lby6;

    move-result-object v7

    invoke-static {v7, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lr92;->F0(Lby6;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_9
    move-object v5, v2

    :cond_a
    :goto_2
    move-object v4, v5

    check-cast v4, Ldv7;

    if-nez v4, :cond_b

    return-object v2

    :cond_b
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->a:Le92;

    new-instance v6, Lxcb;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object p0

    const-string v0, "classProto.typeTable"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, p0}, Lxcb;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    sget-object p0, Lqob;->b:Lqob$a;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getVersionRequirementTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    move-result-object v0

    const-string v2, "classProto.versionRequirementTable"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lqob$a;->a(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)Lqob;

    move-result-object v7

    const/4 v9, 0x0

    move-object v5, v1

    move-object v8, v11

    invoke-virtual/range {v3 .. v9}, Le92;->a(Ldv7;Lcy6;Lxcb;Lqob;Lse0;Lp92;)Li92;

    move-result-object p0

    goto :goto_1

    :goto_3
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    move-object v3, p0

    move-object v5, v10

    move-object v6, v1

    move-object v7, v11

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;-><init>(Li92;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lcy6;Lse0;Lyt9;)V

    return-object p0
.end method

.method public final d(Lxw0;Low0;)Lqw0;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->b:Le74;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$a;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$a;-><init>(Lxw0;Low0;)V

    invoke-interface {p0, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqw0;

    return-object p0
.end method
