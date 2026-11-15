.class public final Lc1j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lc1j;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc1j;

    invoke-direct {v0}, Lc1j;-><init>()V

    sput-object v0, Lc1j;->b:Lc1j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc1j;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Ldgi;->a()Ldgi;

    return-void
.end method

.method public static a()Lc1j;
    .locals 1

    sget-object v0, Lc1j;->b:Lc1j;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Lu1j;
    .locals 1

    iget-object v0, p0, Lc1j;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lc1j;->c(Ljava/lang/Class;)Lu1j;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast v0, Lu1j;

    return-object v0
.end method

.method public final c(Ljava/lang/Class;)Lu1j;
    .locals 10

    sget-object v0, Ly1j;->a:Lg3j;

    const-class v0, Lkli;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lonh;->a:I

    :cond_0
    sget v1, Lonh;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkli;->q(Ljava/lang/Class;)Lkli;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lkli;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lb0j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v4}, Lb0j;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ly1j;->r()Lg3j;

    move-result-object v0

    invoke-static {}, Lwai;->a()Ls8i;

    move-result-object v1

    invoke-interface {v4}, Lb0j;->zza()Lg0j;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lt0j;->g(Lg3j;Ls8i;Lg0j;)Lt0j;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lz0j;->a()Lw0j;

    move-result-object v5

    invoke-static {}, Lhyi;->a()Lhxi;

    move-result-object v6

    invoke-static {}, Ly1j;->r()Lg3j;

    move-result-object v7

    invoke-interface {v4}, Lb0j;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lwai;->a()Ls8i;

    move-result-object v2

    :cond_2
    move-object v8, v2

    invoke-static {}, Lzzi;->a()Lwzi;

    move-result-object v9

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lq0j;->y(Ljava/lang/Class;Lb0j;Lw0j;Lhxi;Lg3j;Ls8i;Lwzi;)Lq0j;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lc1j;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu1j;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to get message info for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported message type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
