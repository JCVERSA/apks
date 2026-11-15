.class public abstract Lkotlin/reflect/jvm/internal/CachesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lip0;

.field public static final b:Lip0;

.field public static final c:Lip0;

.field public static final d:Lip0;

.field public static final e:Lip0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-static {v0}, Ljp0;->a(Le74;)Lip0;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->a:Lip0;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;

    invoke-static {v0}, Ljp0;->a(Le74;)Lip0;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->b:Lip0;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_BASE_CLASSIFIERS$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_BASE_CLASSIFIERS$1;

    invoke-static {v0}, Ljp0;->a(Le74;)Lip0;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->c:Lip0;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$1;

    invoke-static {v0}, Ljp0;->a(Le74;)Lip0;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->d:Lip0;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_GENERIC_CLASSIFIERS$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_GENERIC_CLASSIFIERS$1;

    invoke-static {v0}, Ljp0;->a(Le74;)Lip0;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->e:Lip0;

    return-void
.end method

.method public static final a(Ljava/lang/Class;Ljava/util/List;Z)Lff5;
    .locals 1

    const-string v0, "jClass"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/CachesKt;->d:Lip0;

    invoke-virtual {p1, p0}, Lip0;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lff5;

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlin/reflect/jvm/internal/CachesKt;->c:Lip0;

    invoke-virtual {p1, p0}, Lip0;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lff5;

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/CachesKt;->b(Ljava/lang/Class;Ljava/util/List;Z)Lff5;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final b(Ljava/lang/Class;Ljava/util/List;Z)Lff5;
    .locals 3

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->e:Lip0;

    invoke-virtual {v0, p0}, Lip0;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/CachesKt;->c(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KClassImpl;

    move-result-object p0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Lje5;->b(Lhe5;Ljava/util/List;ZLjava/util/List;)Lff5;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :cond_1
    :goto_0
    const-string p0, "cache.getOrPut(arguments\u2026lable, emptyList())\n    }"

    invoke-static {v2, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lff5;

    return-object v2
.end method

.method public static final c(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KClassImpl;
    .locals 1

    const-string v0, "jClass"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->a:Lip0;

    invoke-virtual {v0, p0}, Lip0;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    return-object p0
.end method

.method public static final d(Ljava/lang/Class;)Lke5;
    .locals 1

    const-string v0, "jClass"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->b:Lip0;

    invoke-virtual {v0, p0}, Lip0;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lke5;

    return-object p0
.end method
