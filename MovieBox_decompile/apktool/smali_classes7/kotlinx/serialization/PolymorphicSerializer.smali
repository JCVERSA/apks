.class public final Lkotlinx/serialization/PolymorphicSerializer;
.super Lkotlinx/serialization/internal/b;
.source "source.java"


# instance fields
.field private final a:Lkotlin/reflect/KClass;

.field private b:Ljava/util/List;

.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;)V
    .locals 1

    .line 1
    const-string v0, "baseClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lkotlinx/serialization/internal/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lkotlinx/serialization/PolymorphicSerializer;->a:Lkotlin/reflect/KClass;

    .line 10
    .line 11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lkotlinx/serialization/PolymorphicSerializer;->b:Ljava/util/List;

    .line 16
    .line 17
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 18
    .line 19
    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2;-><init>(Lkotlinx/serialization/PolymorphicSerializer;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lkotlinx/serialization/PolymorphicSerializer;->c:Lkotlin/Lazy;

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic f(Lkotlinx/serialization/PolymorphicSerializer;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/PolymorphicSerializer;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public e()Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/PolymorphicSerializer;->a:Lkotlin/reflect/KClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/PolymorphicSerializer;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlinx/serialization/descriptors/f;

    .line 8
    .line 9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "kotlinx.serialization.PolymorphicSerializer(baseClass: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/serialization/PolymorphicSerializer;->e()Lkotlin/reflect/KClass;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x29

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
