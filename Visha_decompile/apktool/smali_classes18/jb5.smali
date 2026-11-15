.class public final Ljb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljb5$a;
    }
.end annotation


# static fields
.field public static final a:Ljb5;

.field public static final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljb5;

    invoke-direct {v0}, Ljb5;-><init>()V

    sput-object v0, Ljb5;->a:Ljb5;

    sget-object v0, Ljb5$a;->b:Ljb5$a;

    sput-object v0, Ljb5;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)Lkotlinx/serialization/json/JsonObject;
    .locals 2

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lma5;->b(Lhu1;)V

    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    sget-object v0, Lhz9;->a:Lhz9;

    invoke-static {v0}, Lqn0;->D(Lhz9;)Lef5;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-static {v0, v1}, Lqn0;->k(Lef5;Lef5;)Lef5;

    move-result-object v0

    invoke-interface {v0, p1}, Lk92;->deserialize(Lhu1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public b(Lca3;Lkotlinx/serialization/json/JsonObject;)V
    .locals 1

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lma5;->c(Lca3;)V

    sget-object p0, Lhz9;->a:Lhz9;

    invoke-static {p0}, Lqn0;->D(Lhz9;)Lef5;

    move-result-object p0

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-static {p0, v0}, Lqn0;->k(Lef5;Lef5;)Lef5;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lnd9;->serialize(Lca3;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljb5;->a(Lhu1;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Ljb5;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {p0, p1, p2}, Ljb5;->b(Lca3;Lkotlinx/serialization/json/JsonObject;)V

    return-void
.end method
