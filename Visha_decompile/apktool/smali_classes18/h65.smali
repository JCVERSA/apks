.class public final Lh65;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh65$a;
    }
.end annotation


# static fields
.field public static final a:Lh65;

.field public static b:Lh65$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh65;

    invoke-direct {v0}, Lh65;-><init>()V

    sput-object v0, Lh65;->a:Lh65;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Member;)Lh65$a;
    .locals 3

    const-string p0, "member"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "getParameters"

    invoke-virtual {p0, v0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->f(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "java.lang.reflect.Parameter"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Lh65$a;

    const-string v2, "getName"

    invoke-virtual {p0, v2, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lh65$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v1

    :catch_0
    new-instance p0, Lh65$a;

    invoke-direct {p0, p1, p1}, Lh65$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object p0
.end method

.method public final b(Ljava/lang/reflect/Member;)Ljava/util/List;
    .locals 6

    const-string v0, "member"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lh65;->b:Lh65$a;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lh65;->b:Lh65$a;

    if-nez v0, :cond_0

    sget-object v0, Lh65;->a:Lh65;

    invoke-virtual {v0, p1}, Lh65;->a(Ljava/lang/reflect/Member;)Lh65$a;

    move-result-object v0

    sput-object v0, Lh65;->b:Lh65$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lh65$a;->b()Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lh65$a;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v4, v5}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object p1
.end method
