.class public final Lrb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final a:Lrb5;

.field public static final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lrb5;

    invoke-direct {v0}, Lrb5;-><init>()V

    sput-object v0, Lrb5;->a:Lrb5;

    sget-object v2, Lef8$i;->a:Lef8$i;

    const/4 v0, 0x0

    new-array v3, v0, [Lkotlinx/serialization/descriptors/a;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "kotlinx.serialization.json.JsonPrimitive"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->d(Ljava/lang/String;Lid9;[Lkotlinx/serialization/descriptors/a;Le74;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    sput-object v0, Lrb5;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)Lkotlinx/serialization/json/c;
    .locals 1

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lma5;->d(Lhu1;)Lia5;

    move-result-object p0

    invoke-interface {p0}, Lia5;->s()Lkotlinx/serialization/json/b;

    move-result-object p0

    instance-of p1, p0, Lkotlinx/serialization/json/c;

    if-eqz p1, :cond_0

    check-cast p0, Lkotlinx/serialization/json/c;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected JSON element, expected JsonPrimitive, had "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Loa5;->e(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public b(Lca3;Lkotlinx/serialization/json/c;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lma5;->c(Lca3;)V

    instance-of p0, p2, Lkotlinx/serialization/json/JsonNull;

    if-eqz p0, :cond_0

    sget-object p0, Lcb5;->a:Lcb5;

    sget-object p2, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    invoke-interface {p1, p0, p2}, Lca3;->C(Lnd9;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lxa5;->a:Lxa5;

    check-cast p2, Lwa5;

    invoke-interface {p1, p0, p2}, Lca3;->C(Lnd9;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lrb5;->a(Lhu1;)Lkotlinx/serialization/json/c;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lrb5;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/c;

    invoke-virtual {p0, p1, p2}, Lrb5;->b(Lca3;Lkotlinx/serialization/json/c;)V

    return-void
.end method
