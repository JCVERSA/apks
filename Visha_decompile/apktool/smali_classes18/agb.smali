.class public final Lagb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final b:Lagb;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/internal/ObjectSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lagb;

    invoke-direct {v0}, Lagb;-><init>()V

    sput-object v0, Lagb;->b:Lagb;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v1, "kotlin.Unit"

    sget-object v2, Lzfb;->a:Lzfb;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lagb;->a:Lkotlinx/serialization/internal/ObjectSerializer;

    return-void
.end method


# virtual methods
.method public a(Lhu1;)V
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lagb;->a:Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ObjectSerializer;->deserialize(Lhu1;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lca3;Lzfb;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lagb;->a:Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/ObjectSerializer;->serialize(Lca3;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lagb;->a(Lhu1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lagb;->a:Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-virtual {p0}, Lkotlinx/serialization/internal/ObjectSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lzfb;

    invoke-virtual {p0, p1, p2}, Lagb;->b(Lca3;Lzfb;)V

    return-void
.end method
