.class public abstract Lcom/android/net/toolbox/m;
.super Lcom/android/net/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/net/n<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field private final m:Ljava/lang/Object;

.field private n:Lcom/android/net/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/net/p$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "utf-8"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "application/json; charset=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/net/toolbox/m;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/net/p$b;Lcom/android/net/p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/net/p$b<",
            "TT;>;",
            "Lcom/android/net/p$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lcom/android/net/n;-><init>(ILjava/lang/String;Lcom/android/net/p$a;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/net/toolbox/m;->m:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/net/toolbox/m;->n:Lcom/android/net/p$b;

    iput-object p3, p0, Lcom/android/net/toolbox/m;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/net/k;)Lcom/android/net/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/k;",
            ")",
            "Lcom/android/net/p<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/net/n;->a()V

    iget-object v0, p0, Lcom/android/net/toolbox/m;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/net/toolbox/m;->n:Lcom/android/net/p$b;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/net/toolbox/m;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/net/toolbox/m;->n:Lcom/android/net/p$b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/net/p$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object p0, Lcom/android/net/toolbox/m;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final e()[B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/net/toolbox/m;->h()[B

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/net/toolbox/m;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final h()[B
    .locals 3

    const-string/jumbo v0, "utf-8"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/net/toolbox/m;->o:Ljava/lang/String;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lcom/android/net/toolbox/m;->o:Ljava/lang/String;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    invoke-static {v0, p0}, Lcom/android/net/v;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method
