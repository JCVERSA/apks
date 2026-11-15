.class public final Lcb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final a:Lcb5;

.field public static final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcb5;

    invoke-direct {v0}, Lcb5;-><init>()V

    sput-object v0, Lcb5;->a:Lcb5;

    sget-object v2, Lid9$b;->a:Lid9$b;

    const/4 v0, 0x0

    new-array v3, v0, [Lkotlinx/serialization/descriptors/a;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "kotlinx.serialization.json.JsonNull"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->d(Ljava/lang/String;Lid9;[Lkotlinx/serialization/descriptors/a;Le74;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    sput-object v0, Lcb5;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)Lkotlinx/serialization/json/JsonNull;
    .locals 0

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lma5;->b(Lhu1;)V

    invoke-interface {p1}, Lhu1;->E()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lhu1;->g()Ljava/lang/Void;

    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    return-object p0

    :cond_0
    new-instance p0, Lkotlinx/serialization/json/internal/JsonDecodingException;

    const-string p1, "Expected \'null\' literal"

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/JsonDecodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lca3;Lkotlinx/serialization/json/JsonNull;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lma5;->c(Lca3;)V

    invoke-interface {p1}, Lca3;->A()V

    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcb5;->a(Lhu1;)Lkotlinx/serialization/json/JsonNull;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lcb5;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/JsonNull;

    invoke-virtual {p0, p1, p2}, Lcb5;->b(Lca3;Lkotlinx/serialization/json/JsonNull;)V

    return-void
.end method
