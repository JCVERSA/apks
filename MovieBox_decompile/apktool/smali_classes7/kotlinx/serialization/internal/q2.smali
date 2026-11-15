.class public final Lkotlinx/serialization/internal/q2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final b:Lkotlinx/serialization/internal/q2;


# instance fields
.field private final synthetic a:Lkotlinx/serialization/internal/ObjectSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/serialization/internal/q2;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/serialization/internal/q2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/serialization/internal/q2;->b:Lkotlinx/serialization/internal/q2;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 5
    .line 6
    const-string v1, "kotlin.Unit"

    .line 7
    .line 8
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lkotlinx/serialization/internal/q2;->a:Lkotlinx/serialization/internal/ObjectSerializer;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Lsy/e;)V
    .locals 1

    .line 1
    const-string v0, "decoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/serialization/internal/q2;->a:Lkotlinx/serialization/internal/ObjectSerializer;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lkotlinx/serialization/internal/ObjectSerializer;->deserialize(Lsy/e;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b(Lsy/f;Lkotlin/Unit;)V
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
    iget-object v0, p0, Lkotlinx/serialization/internal/q2;->a:Lkotlinx/serialization/internal/ObjectSerializer;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/internal/ObjectSerializer;->serialize(Lsy/f;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public bridge synthetic deserialize(Lsy/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/q2;->a(Lsy/e;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/internal/q2;->a:Lkotlinx/serialization/internal/ObjectSerializer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/serialization/internal/ObjectSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic serialize(Lsy/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lkotlin/Unit;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/q2;->b(Lsy/f;Lkotlin/Unit;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
