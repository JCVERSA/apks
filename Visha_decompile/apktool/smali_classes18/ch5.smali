.class public final Lch5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp92;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;

.field public final c:Lcz4;

.field public final d:Z

.field public final e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerAbiStability;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;Lcz4;ZLkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerAbiStability;)V
    .locals 1

    const-string v0, "binaryClass"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abiStability"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch5;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;

    iput-object p2, p0, Lch5;->c:Lcz4;

    iput-boolean p3, p0, Lch5;->d:Z

    iput-object p4, p0, Lch5;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerAbiStability;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lch5;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->c()Lxw0;

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

.method public final d()Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;
    .locals 0

    iget-object p0, p0, Lch5;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lch5;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lch5;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
