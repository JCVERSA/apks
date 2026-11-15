.class public abstract Lkotlinx/serialization/SerializersCacheKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lqd9;

.field public static final b:Lqd9;

.field public static final c:Llw7;

.field public static final d:Llw7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;

    invoke-static {v0}, Lhq0;->a(Le74;)Lqd9;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt;->a:Lqd9;

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;

    invoke-static {v0}, Lhq0;->a(Le74;)Lqd9;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt;->b:Lqd9;

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE$1;

    invoke-static {v0}, Lhq0;->b(Ls74;)Llw7;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt;->c:Llw7;

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;

    invoke-static {v0}, Lhq0;->b(Ls74;)Llw7;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt;->d:Llw7;

    return-void
.end method

.method public static final a(Lde5;Z)Lef5;
    .locals 1

    const-string v0, "clazz"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->a:Lqd9;

    invoke-interface {p1, p0}, Lqd9;->a(Lde5;)Lef5;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->b:Lqd9;

    invoke-interface {p1, p0}, Lqd9;->a(Lde5;)Lef5;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final b(Lde5;Ljava/util/List;Z)Ljava/lang/Object;
    .locals 1

    const-string v0, "clazz"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p2, Lkotlinx/serialization/SerializersCacheKt;->c:Llw7;

    invoke-interface {p2, p0, p1}, Llw7;->a(Lde5;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p2, Lkotlinx/serialization/SerializersCacheKt;->d:Llw7;

    invoke-interface {p2, p0, p1}, Llw7;->a(Lde5;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
