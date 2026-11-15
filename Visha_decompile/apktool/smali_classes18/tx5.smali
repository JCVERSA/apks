.class public final Ltx5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltx5;

.field public static final b:Lrx5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ltx5;

    invoke-direct {v0}, Ltx5;-><init>()V

    sput-object v0, Ltx5;->a:Ltx5;

    const-string v1, "kotlinx.coroutines.fast.service.loader"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnaa;->f(Ljava/lang/String;Z)Z

    invoke-virtual {v0}, Ltx5;->a()Lrx5;

    move-result-object v0

    sput-object v0, Ltx5;->b:Lrx5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lrx5;
    .locals 6

    const-class p0, Lsx5;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lzc9;->g(Ljava/util/Iterator;)Lpc9;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->c0(Lpc9;)Ljava/util/List;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    check-cast v3, Lsx5;

    invoke-interface {v3}, Lsx5;->a()I

    move-result v3

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lsx5;

    invoke-interface {v5}, Lsx5;->a()I

    move-result v5

    if-ge v3, v5, :cond_3

    move-object v2, v4

    move v3, v5

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    check-cast v2, Lsx5;

    if-eqz v2, :cond_4

    invoke-static {v2, p0}, Lux5;->e(Lsx5;Ljava/util/List;)Lrx5;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x3

    invoke-static {v0, v0, p0, v0}, Lux5;->b(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lyp6;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lux5;->b(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lyp6;

    move-result-object p0

    :cond_5
    :goto_3
    return-object p0
.end method
