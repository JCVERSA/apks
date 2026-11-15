.class public final Li92;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le92;

.field public final b:Lcy6;

.field public final c:Lxt1;

.field public final d:Lxcb;

.field public final e:Lqob;

.field public final f:Lse0;

.field public final g:Lp92;

.field public final h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

.field public final i:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;


# direct methods
.method public constructor <init>(Le92;Lcy6;Lxt1;Lxcb;Lqob;Lse0;Lp92;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;Ljava/util/List;)V
    .locals 1

    const-string v0, "components"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameters"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li92;->a:Le92;

    iput-object p2, p0, Li92;->b:Lcy6;

    iput-object p3, p0, Li92;->c:Lxt1;

    iput-object p4, p0, Li92;->d:Lxcb;

    iput-object p5, p0, Li92;->e:Lqob;

    iput-object p6, p0, Li92;->f:Lse0;

    iput-object p7, p0, Li92;->g:Lp92;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Deserializer for \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lgy6;->getName()Lby6;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    if-eqz p7, :cond_1

    invoke-interface {p7}, Lp92;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object p6, p1

    goto :goto_2

    :cond_1
    :goto_1
    const-string p1, "[container not found]"

    goto :goto_0

    :goto_2
    move-object p1, v0

    move-object p2, p0

    move-object p3, p8

    move-object p4, p9

    invoke-direct/range {p1 .. p6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;-><init>(Li92;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Li92;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;-><init>(Li92;)V

    iput-object p1, p0, Li92;->i:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    return-void
.end method

.method public static synthetic b(Li92;Lxt1;Ljava/util/List;Lcy6;Lxcb;Lqob;Lse0;ILjava/lang/Object;)Li92;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    iget-object p3, p0, Li92;->b:Lcy6;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    iget-object p4, p0, Li92;->d:Lxcb;

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    iget-object p5, p0, Li92;->e:Lqob;

    :cond_2
    move-object v5, p5

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    iget-object p6, p0, Li92;->f:Lse0;

    :cond_3
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Li92;->a(Lxt1;Ljava/util/List;Lcy6;Lxcb;Lqob;Lse0;)Li92;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lxt1;Ljava/util/List;Lcy6;Lxcb;Lqob;Lse0;)Li92;
    .locals 12

    move-object v0, p0

    const-string v1, "descriptor"

    move-object v5, p1

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeParameterProtos"

    move-object v11, p2

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object v4, p3

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeTable"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "versionRequirementTable"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Li92;

    iget-object v3, v0, Li92;->a:Le92;

    invoke-static/range {p6 .. p6}, Lrob;->b(Lse0;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_0
    iget-object v2, v0, Li92;->e:Lqob;

    goto :goto_0

    :goto_1
    iget-object v9, v0, Li92;->g:Lp92;

    iget-object v10, v0, Li92;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    move-object v2, v1

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move-object v11, p2

    invoke-direct/range {v2 .. v11}, Li92;-><init>(Le92;Lcy6;Lxt1;Lxcb;Lqob;Lse0;Lp92;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;Ljava/util/List;)V

    return-object v1
.end method

.method public final c()Le92;
    .locals 0

    iget-object p0, p0, Li92;->a:Le92;

    return-object p0
.end method

.method public final d()Lp92;
    .locals 0

    iget-object p0, p0, Li92;->g:Lp92;

    return-object p0
.end method

.method public final e()Lxt1;
    .locals 0

    iget-object p0, p0, Li92;->c:Lxt1;

    return-object p0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;
    .locals 0

    iget-object p0, p0, Li92;->i:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    return-object p0
.end method

.method public final g()Lcy6;
    .locals 0

    iget-object p0, p0, Li92;->b:Lcy6;

    return-object p0
.end method

.method public final h()Lvx9;
    .locals 0

    iget-object p0, p0, Li92;->a:Le92;

    invoke-virtual {p0}, Le92;->u()Lvx9;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;
    .locals 0

    iget-object p0, p0, Li92;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    return-object p0
.end method

.method public final j()Lxcb;
    .locals 0

    iget-object p0, p0, Li92;->d:Lxcb;

    return-object p0
.end method

.method public final k()Lqob;
    .locals 0

    iget-object p0, p0, Li92;->e:Lqob;

    return-object p0
.end method
