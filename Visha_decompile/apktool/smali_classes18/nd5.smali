.class public final Lnd5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp92;


# instance fields
.field public final b:Lfd5;

.field public final c:Lfd5;

.field public final d:Lcz4;

.field public final e:Z

.field public final f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerAbiStability;

.field public final g:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfd5;Lfd5;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;Lcy6;Lcz4;ZLkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerAbiStability;Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;)V
    .locals 1

    const-string v0, "className"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageProto"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abiStability"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnd5;->b:Lfd5;

    .line 3
    iput-object p2, p0, Lnd5;->c:Lfd5;

    .line 4
    iput-object p5, p0, Lnd5;->d:Lcz4;

    .line 5
    iput-boolean p6, p0, Lnd5;->e:Z

    .line 6
    iput-object p7, p0, Lnd5;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerAbiStability;

    .line 7
    iput-object p8, p0, Lnd5;->g:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;

    .line 8
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->m:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;

    const-string p2, "packageModuleName"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p1}, Lcj8;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p4, p1}, Lcy6;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 9
    :cond_0
    const-string p1, "main"

    .line 10
    :cond_1
    iput-object p1, p0, Lnd5;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;Lcy6;Lcz4;ZLkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerAbiStability;)V
    .locals 10

    const-string v0, "kotlinClass"

    move-object v9, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageProto"

    move-object v4, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    move-object v5, p3

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abiStability"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->c()Lxw0;

    move-result-object v0

    invoke-static {v0}, Lfd5;->b(Lxw0;)Lfd5;

    move-result-object v2

    const-string v0, "byClassId(kotlinClass.classId)"

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->b()Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v0}, Lfd5;->d(Ljava/lang/String;)Lfd5;

    move-result-object v1

    :cond_0
    move-object v3, v1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object v9, p1

    .line 14
    invoke-direct/range {v1 .. v9}, Lnd5;-><init>(Lfd5;Lfd5;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;Lcy6;Lcz4;ZLkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerAbiStability;Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnd5;->d()Lxw0;

    move-result-object p0

    invoke-virtual {p0}, Lxw0;->b()Lo54;

    move-result-object p0

    invoke-virtual {p0}, Lo54;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Lzt9;
    .locals 1

    sget-object p0, Lzt9;->a:Lzt9;

    const-string v0, "NO_SOURCE_FILE"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d()Lxw0;
    .locals 2

    new-instance v0, Lxw0;

    invoke-virtual {p0}, Lnd5;->e()Lfd5;

    move-result-object v1

    invoke-virtual {v1}, Lfd5;->g()Lo54;

    move-result-object v1

    invoke-virtual {p0}, Lnd5;->h()Lby6;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lxw0;-><init>(Lo54;Lby6;)V

    return-object v0
.end method

.method public e()Lfd5;
    .locals 0

    iget-object p0, p0, Lnd5;->b:Lfd5;

    return-object p0
.end method

.method public f()Lfd5;
    .locals 0

    iget-object p0, p0, Lnd5;->c:Lfd5;

    return-object p0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;
    .locals 0

    iget-object p0, p0, Lnd5;->g:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;

    return-object p0
.end method

.method public final h()Lby6;
    .locals 3

    invoke-virtual {p0}, Lnd5;->e()Lfd5;

    move-result-object p0

    invoke-virtual {p0}, Lfd5;->f()Ljava/lang/String;

    move-result-object p0

    const-string v0, "className.internalName"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x2f

    invoke-static {p0, v2, v0, v1, v0}, Lj1a;->a1(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object p0

    const-string v0, "identifier(className.int\u2026.substringAfterLast(\'/\'))"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lnd5;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnd5;->e()Lfd5;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
