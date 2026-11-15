.class public Ldld;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldld$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/LruCache;

.field public final b:Lad8;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Ldld;->a:Landroid/util/LruCache;

    new-instance v0, Ldld$a;

    invoke-direct {v0, p0}, Ldld$a;-><init>(Ldld;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lbl3;->c(ILbl3$a;)Lad8;

    move-result-object v0

    iput-object v0, p0, Ldld;->b:Lad8;

    return-void
.end method


# virtual methods
.method public a(Lzad;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ldld;->a:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldld;->a:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    iget-object v0, p0, Ldld;->b:Lad8;

    invoke-interface {v0}, Lad8;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldld$b;

    :try_start_1
    invoke-static {v0}, Ldld$b;->a(Ldld$b;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-interface {p1, v1}, Lzad;->a(Ljava/security/MessageDigest;)V

    invoke-static {v0}, Ldld$b;->a(Ldld$b;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Li9d;->a([B)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Ldld;->b:Lad8;

    invoke-interface {v2, v0}, Lad8;->release(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Ldld;->b:Lad8;

    invoke-interface {p0, v0}, Lad8;->release(Ljava/lang/Object;)Z

    throw p1

    :cond_0
    :goto_0
    iget-object v2, p0, Ldld;->a:Landroid/util/LruCache;

    monitor-enter v2

    :try_start_2
    iget-object p0, p0, Ldld;->a:Landroid/util/LruCache;

    invoke-virtual {p0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method
