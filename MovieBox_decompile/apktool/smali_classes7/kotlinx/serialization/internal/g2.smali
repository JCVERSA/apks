.class public final Lkotlinx/serialization/internal/g2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final a:Lkotlinx/serialization/internal/g2;

.field private static final b:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/internal/g2;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/serialization/internal/g2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/serialization/internal/g2;->a:Lkotlinx/serialization/internal/g2;

    .line 7
    .line 8
    sget-object v0, Lkotlin/jvm/internal/ByteCompanionObject;->a:Lkotlin/jvm/internal/ByteCompanionObject;

    .line 9
    .line 10
    invoke-static {v0}, Lry/a;->z(Lkotlin/jvm/internal/ByteCompanionObject;)Lkotlinx/serialization/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "kotlin.UByte"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lkotlinx/serialization/internal/o0;->a(Ljava/lang/String;Lkotlinx/serialization/b;)Lkotlinx/serialization/descriptors/f;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lkotlinx/serialization/internal/g2;->b:Lkotlinx/serialization/descriptors/f;

    .line 21
    .line 22
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
.method public a(Lsy/e;)B
    .locals 1

    .line 1
    const-string v0, "decoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/serialization/internal/g2;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Lsy/e;->q(Lkotlinx/serialization/descriptors/f;)Lsy/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Lsy/e;->H()B

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Lkotlin/UByte;->b(B)B

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public b(Lsy/f;B)V
    .locals 1

    .line 1
    const-string v0, "encoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/serialization/internal/g2;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Lsy/f;->l(Lkotlinx/serialization/descriptors/f;)Lsy/f;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1, p2}, Lsy/f;->h(B)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public bridge synthetic deserialize(Lsy/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/g2;->a(Lsy/e;)B

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lkotlin/UByte;->a(B)Lkotlin/UByte;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/g2;->b:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic serialize(Lsy/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lkotlin/UByte;

    .line 2
    .line 3
    invoke-virtual {p2}, Lkotlin/UByte;->g()B

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/g2;->b(Lsy/f;B)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
