.class public Lcom/android/net/toolbox/o;
.super Lcom/android/net/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/net/n<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final l:Ljava/lang/Object;

.field private m:Lcom/android/net/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/net/p$b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/net/p$b;Lcom/android/net/p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/net/p$b<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/net/p$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/android/net/n;-><init>(ILjava/lang/String;Lcom/android/net/p$a;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/net/toolbox/o;->l:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/net/toolbox/o;->m:Lcom/android/net/p$b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/net/k;)Lcom/android/net/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/k;",
            ")",
            "Lcom/android/net/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    iget-object v0, p1, Lcom/android/net/k;->b:[B

    iget-object v1, p1, Lcom/android/net/k;->c:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/net/toolbox/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/String;

    iget-object v0, p1, Lcom/android/net/k;->b:[B

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {p1}, Lcom/android/net/toolbox/g;->a(Lcom/android/net/k;)Lcom/android/net/b$a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/net/p;->a(Ljava/lang/Object;Lcom/android/net/b$a;)Lcom/android/net/p;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/android/net/n;->a()V

    iget-object v0, p0, Lcom/android/net/toolbox/o;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/net/toolbox/o;->m:Lcom/android/net/p$b;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 3
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/net/toolbox/o;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/net/toolbox/o;->m:Lcom/android/net/p$b;

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
