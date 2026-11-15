.class public final Lkotlinx/serialization/json/JsonElementSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final a:Lkotlinx/serialization/json/JsonElementSerializer;

.field public static final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonElementSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    sget-object v0, Lmc8$b;->a:Lmc8$b;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/a;

    sget-object v2, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;

    const-string v3, "kotlinx.serialization.json.JsonElement"

    invoke-static {v3, v0, v1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->c(Ljava/lang/String;Lid9;[Lkotlinx/serialization/descriptors/a;Le74;)Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)Lkotlinx/serialization/json/b;
    .locals 0

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lma5;->d(Lhu1;)Lia5;

    move-result-object p0

    invoke-interface {p0}, Lia5;->s()Lkotlinx/serialization/json/b;

    move-result-object p0

    return-object p0
.end method

.method public b(Lca3;Lkotlinx/serialization/json/b;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lma5;->c(Lca3;)V

    instance-of p0, p2, Lkotlinx/serialization/json/c;

    if-eqz p0, :cond_0

    sget-object p0, Lrb5;->a:Lrb5;

    invoke-interface {p1, p0, p2}, Lca3;->C(Lnd9;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of p0, p2, Lkotlinx/serialization/json/JsonObject;

    if-eqz p0, :cond_1

    sget-object p0, Ljb5;->a:Ljb5;

    invoke-interface {p1, p0, p2}, Lca3;->C(Lnd9;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of p0, p2, Lkotlinx/serialization/json/a;

    if-eqz p0, :cond_2

    sget-object p0, Ly95;->a:Ly95;

    invoke-interface {p1, p0, p2}, Lca3;->C(Lnd9;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonElementSerializer;->a(Lhu1;)Lkotlinx/serialization/json/b;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/JsonElementSerializer;->b(Lca3;Lkotlinx/serialization/json/b;)V

    return-void
.end method
