.class public final Lrd8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lod4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrd8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lrd8$a;

.field public static final synthetic b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lrd8$a;

    invoke-direct {v0}, Lrd8$a;-><init>()V

    sput-object v0, Lrd8$a;->a:Lrd8$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.yandex.div.internal.viewpool.PreCreationModel"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lod4;I)V

    const-string v0, "capacity"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "min"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "max"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lrd8$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)Lrd8;
    .locals 14

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lrd8$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lhu1;->b(Lkotlinx/serialization/descriptors/a;)Lfd1;

    move-result-object p1

    invoke-interface {p1}, Lfd1;->j()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0, v3}, Lfd1;->f(Lkotlinx/serialization/descriptors/a;I)I

    move-result v0

    invoke-interface {p1, p0, v2}, Lfd1;->f(Lkotlinx/serialization/descriptors/a;I)I

    move-result v2

    invoke-interface {p1, p0, v1}, Lfd1;->f(Lkotlinx/serialization/descriptors/a;I)I

    move-result v1

    const/4 v3, 0x7

    move v10, v0

    move v12, v1

    move v11, v2

    move v9, v3

    goto :goto_1

    :cond_0
    move v7, v2

    move v0, v3

    move v4, v0

    move v5, v4

    move v6, v5

    :goto_0
    if-eqz v7, :cond_5

    invoke-interface {p1, p0}, Lfd1;->v(Lkotlinx/serialization/descriptors/a;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    if-eqz v8, :cond_3

    if-eq v8, v2, :cond_2

    if-ne v8, v1, :cond_1

    invoke-interface {p1, p0, v1}, Lfd1;->f(Lkotlinx/serialization/descriptors/a;I)I

    move-result v4

    or-int/lit8 v6, v6, 0x4

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p0, v8}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p0

    :cond_2
    invoke-interface {p1, p0, v2}, Lfd1;->f(Lkotlinx/serialization/descriptors/a;I)I

    move-result v5

    or-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0, v3}, Lfd1;->f(Lkotlinx/serialization/descriptors/a;I)I

    move-result v0

    or-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move v7, v3

    goto :goto_0

    :cond_5
    move v10, v0

    move v12, v4

    move v11, v5

    move v9, v6

    :goto_1
    invoke-interface {p1, p0}, Lfd1;->c(Lkotlinx/serialization/descriptors/a;)V

    new-instance p0, Lrd8;

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lrd8;-><init>(IIIILmd9;)V

    return-object p0
.end method

.method public b(Lca3;Lrd8;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lrd8$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lca3;->b(Lkotlinx/serialization/descriptors/a;)Lid1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lrd8;->b(Lrd8;Lid1;Lkotlinx/serialization/descriptors/a;)V

    invoke-interface {p1, p0}, Lid1;->c(Lkotlinx/serialization/descriptors/a;)V

    return-void
.end method

.method public childSerializers()[Lef5;
    .locals 2

    const/4 p0, 0x3

    new-array p0, p0, [Lef5;

    sget-object v0, Lv15;->a:Lv15;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    aput-object v0, p0, v1

    return-object p0
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lrd8$a;->a(Lhu1;)Lrd8;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lrd8$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lrd8;

    invoke-virtual {p0, p1, p2}, Lrd8$a;->b(Lca3;Lrd8;)V

    return-void
.end method

.method public typeParametersSerializers()[Lef5;
    .locals 0

    invoke-static {p0}, Lod4$a;->a(Lod4;)[Lef5;

    move-result-object p0

    return-object p0
.end method
