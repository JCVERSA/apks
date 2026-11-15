.class public Lj9b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf9b;


# static fields
.field public static volatile e:Lk9b;


# instance fields
.field public final a:Lhy0;

.field public final b:Lhy0;

.field public final c:Lg29;

.field public final d:Lkib;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lhy0;Lhy0;Lg29;Lkib;Lcpc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj9b;->a:Lhy0;

    iput-object p2, p0, Lj9b;->b:Lhy0;

    iput-object p3, p0, Lj9b;->c:Lg29;

    iput-object p4, p0, Lj9b;->d:Lkib;

    invoke-virtual {p5}, Lcpc;->c()V

    return-void
.end method

.method public static c()Lj9b;
    .locals 2

    sget-object v0, Lj9b;->e:Lk9b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk9b;->d()Lj9b;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Lx92;)Ljava/util/Set;
    .locals 1

    instance-of v0, p0, Laa3;

    if-eqz v0, :cond_0

    check-cast p0, Laa3;

    invoke-interface {p0}, Laa3;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "proto"

    invoke-static {p0}, Lka3;->b(Ljava/lang/String;)Lka3;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lj9b;->e:Lk9b;

    if-nez v0, :cond_1

    const-class v0, Lj9b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj9b;->e:Lk9b;

    if-nez v1, :cond_0

    invoke-static {}, Lsr1;->e()Lk9b$a;

    move-result-object v1

    invoke-interface {v1, p0}, Lk9b$a;->a(Landroid/content/Context;)Lk9b$a;

    move-result-object p0

    invoke-interface {p0}, Lk9b$a;->build()Lk9b;

    move-result-object p0

    sput-object p0, Lj9b;->e:Lk9b;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Ldc9;Lm9b;)V
    .locals 3

    iget-object v0, p0, Lj9b;->c:Lg29;

    invoke-virtual {p1}, Ldc9;->f()La9b;

    move-result-object v1

    invoke-virtual {p1}, Ldc9;->c()Lrd3;

    move-result-object v2

    invoke-virtual {v2}, Lrd3;->c()Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, La9b;->f(Lcom/google/android/datatransport/Priority;)La9b;

    move-result-object v1

    invoke-virtual {p0, p1}, Lj9b;->b(Ldc9;)Lxd3;

    move-result-object p0

    invoke-interface {v0, v1, p0, p2}, Lg29;->a(La9b;Lxd3;Lm9b;)V

    return-void
.end method

.method public final b(Ldc9;)Lxd3;
    .locals 3

    invoke-static {}, Lxd3;->a()Lxd3$a;

    move-result-object v0

    iget-object v1, p0, Lj9b;->a:Lhy0;

    invoke-interface {v1}, Lhy0;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lxd3$a;->i(J)Lxd3$a;

    move-result-object v0

    iget-object p0, p0, Lj9b;->b:Lhy0;

    invoke-interface {p0}, Lhy0;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lxd3$a;->k(J)Lxd3$a;

    move-result-object p0

    invoke-virtual {p1}, Ldc9;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxd3$a;->j(Ljava/lang/String;)Lxd3$a;

    move-result-object p0

    new-instance v0, Lba3;

    invoke-virtual {p1}, Ldc9;->b()Lka3;

    move-result-object v1

    invoke-virtual {p1}, Ldc9;->d()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lba3;-><init>(Lka3;[B)V

    invoke-virtual {p0, v0}, Lxd3$a;->h(Lba3;)Lxd3$a;

    move-result-object p0

    invoke-virtual {p1}, Ldc9;->c()Lrd3;

    move-result-object p1

    invoke-virtual {p1}, Lrd3;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxd3$a;->g(Ljava/lang/Integer;)Lxd3$a;

    move-result-object p0

    invoke-virtual {p0}, Lxd3$a;->d()Lxd3;

    move-result-object p0

    return-object p0
.end method

.method public e()Lkib;
    .locals 0

    iget-object p0, p0, Lj9b;->d:Lkib;

    return-object p0
.end method

.method public g(Lx92;)Lb9b;
    .locals 4

    new-instance v0, Lc9b;

    invoke-static {p1}, Lj9b;->d(Lx92;)Ljava/util/Set;

    move-result-object v1

    invoke-static {}, La9b;->a()La9b$a;

    move-result-object v2

    invoke-interface {p1}, Lx92;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, La9b$a;->b(Ljava/lang/String;)La9b$a;

    move-result-object v2

    invoke-interface {p1}, Lx92;->getExtras()[B

    move-result-object p1

    invoke-virtual {v2, p1}, La9b$a;->c([B)La9b$a;

    move-result-object p1

    invoke-virtual {p1}, La9b$a;->a()La9b;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lc9b;-><init>(Ljava/util/Set;La9b;Lf9b;)V

    return-object v0
.end method
