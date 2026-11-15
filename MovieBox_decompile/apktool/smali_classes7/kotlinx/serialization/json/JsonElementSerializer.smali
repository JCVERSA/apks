.class public final Lkotlinx/serialization/json/JsonElementSerializer;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final a:Lkotlinx/serialization/json/JsonElementSerializer;

.field private static final b:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/serialization/json/JsonElementSerializer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 7
    .line 8
    sget-object v0, Lkotlinx/serialization/descriptors/d$b;->a:Lkotlinx/serialization/descriptors/d$b;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [Lkotlinx/serialization/descriptors/f;

    .line 12
    .line 13
    sget-object v2, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;

    .line 14
    .line 15
    const-string v3, "kotlinx.serialization.json.JsonElement"

    .line 16
    .line 17
    invoke-static {v3, v0, v1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->c(Ljava/lang/String;Lkotlinx/serialization/descriptors/h;[Lkotlinx/serialization/descriptors/f;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->b:Lkotlinx/serialization/descriptors/f;

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lsy/e;)Lkotlinx/serialization/json/h;
    .locals 1

    .line 1
    const-string v0, "decoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlinx/serialization/json/k;->d(Lsy/e;)Lkotlinx/serialization/json/g;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Lkotlinx/serialization/json/g;->g()Lkotlinx/serialization/json/h;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public b(Lsy/f;Lkotlinx/serialization/json/h;)V
    .locals 1

    .line 1
    const-string v0, "encoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlinx/serialization/json/k;->c(Lsy/f;)V

    .line 12
    .line 13
    .line 14
    instance-of v0, p2, Lkotlinx/serialization/json/u;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lkotlinx/serialization/json/v;->a:Lkotlinx/serialization/json/v;

    .line 19
    .line 20
    invoke-interface {p1, v0, p2}, Lsy/f;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p2, Lkotlinx/serialization/json/JsonObject;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sget-object v0, Lkotlinx/serialization/json/t;->a:Lkotlinx/serialization/json/t;

    .line 29
    .line 30
    invoke-interface {p1, v0, p2}, Lsy/f;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    instance-of v0, p2, Lkotlinx/serialization/json/b;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    sget-object v0, Lkotlinx/serialization/json/c;->a:Lkotlinx/serialization/json/c;

    .line 39
    .line 40
    invoke-interface {p1, v0, p2}, Lsy/f;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic deserialize(Lsy/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonElementSerializer;->a(Lsy/e;)Lkotlinx/serialization/json/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->b:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lsy/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lkotlinx/serialization/json/h;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/JsonElementSerializer;->b(Lsy/f;Lkotlinx/serialization/json/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
