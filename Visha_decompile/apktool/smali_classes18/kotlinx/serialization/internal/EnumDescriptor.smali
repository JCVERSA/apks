.class public final Lkotlinx/serialization/internal/EnumDescriptor;
.super Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;
.source "SourceFile"


# instance fields
.field public final m:Lid9;

.field public final n:Lyi5;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lod4;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lid9$b;->a:Lid9$b;

    iput-object v0, p0, Lkotlinx/serialization/internal/EnumDescriptor;->m:Lid9;

    new-instance v0, Lkotlinx/serialization/internal/EnumDescriptor$elementDescriptors$2;

    invoke-direct {v0, p2, p1, p0}, Lkotlinx/serialization/internal/EnumDescriptor$elementDescriptors$2;-><init>(ILjava/lang/String;Lkotlinx/serialization/internal/EnumDescriptor;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/EnumDescriptor;->n:Lyi5;

    return-void
.end method


# virtual methods
.method public d(I)Lkotlinx/serialization/descriptors/a;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/EnumDescriptor;->s()[Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lkotlinx/serialization/descriptors/a;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lkotlinx/serialization/descriptors/a;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object v2

    sget-object v3, Lid9$b;->a:Lid9$b;

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    invoke-static {p0}, Le28;->a(Lkotlinx/serialization/descriptors/a;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Le28;->a(Lkotlinx/serialization/descriptors/a;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getKind()Lid9;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/EnumDescriptor;->m:Lid9;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p0}, Lgd9;->b(Lkotlinx/serialization/descriptors/a;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x1f

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final s()[Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/EnumDescriptor;->n:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    invoke-static {p0}, Lgd9;->b(Lkotlinx/serialization/descriptors/a;)Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x28

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x38

    const/4 v8, 0x0

    const-string v1, ", "

    const-string v3, ")"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
