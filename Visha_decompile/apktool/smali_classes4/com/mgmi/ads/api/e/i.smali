.class public Lcom/mgmi/ads/api/e/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/e/i$a;
    }
.end annotation


# static fields
.field private static b:Lcom/mgmi/ads/api/e/i;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mgmi/ads/api/e/i$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/mgmi/ads/api/e/j;

.field private final d:Ljava/lang/Object;

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/e/i;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/ads/api/e/i;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/e/i;->a:Ljava/util/Map;

    new-instance v0, Lcom/mgmi/ads/api/e/j;

    invoke-direct {v0}, Lcom/mgmi/ads/api/e/j;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/e/i;->c:Lcom/mgmi/ads/api/e/j;

    return-void
.end method

.method public static a()Lcom/mgmi/ads/api/e/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgmi/ads/api/e/i;->b:Lcom/mgmi/ads/api/e/i;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgmi/ads/api/e/i;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgmi/ads/api/e/i;->b:Lcom/mgmi/ads/api/e/i;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgmi/ads/api/e/i;

    invoke-direct {v1}, Lcom/mgmi/ads/api/e/i;-><init>()V

    sput-object v1, Lcom/mgmi/ads/api/e/i;->b:Lcom/mgmi/ads/api/e/i;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/ads/api/e/i;->b:Lcom/mgmi/ads/api/e/i;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mgmi/ads/api/e/i$a;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/mgmi/ads/api/e/i;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/mgmi/ads/api/e/i;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    .line 14
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    .line 16
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/mgmi/ads/api/e/j$a;)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/mgmi/ads/api/e/i;->c:Lcom/mgmi/ads/api/e/j;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/j;->a(Lcom/mgmi/ads/api/e/j$a;)V

    return-void
.end method

.method public a(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/mgmi/ads/api/e/i;->c:Lcom/mgmi/ads/api/e/j;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/j;->a(Lcom/mgmi/ads/api/e/j$d;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/ads/api/e/i$a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/mgmi/ads/api/e/i;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/mgmi/ads/api/e/i;->a:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/i;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/i;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/mgmi/ads/api/e/i;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Lcom/mgmi/ads/api/e/j$a;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/e/i;->c:Lcom/mgmi/ads/api/e/j;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/j;->b(Lcom/mgmi/ads/api/e/j$a;)V

    return-void
.end method

.method public b(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/ads/api/e/i;->c:Lcom/mgmi/ads/api/e/j;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/j;->b(Lcom/mgmi/ads/api/e/j$d;)V

    return-void
.end method

.method public c()I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/e/i;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public c(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/ads/api/e/i;->c:Lcom/mgmi/ads/api/e/j;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/j;->c(Lcom/mgmi/ads/api/e/j$d;)V

    return-void
.end method
