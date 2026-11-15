.class public final Lcom/yandex/div/internal/viewpool/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcdc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/viewpool/a$a;,
        Lcom/yandex/div/internal/viewpool/a$b;
    }
.end annotation


# static fields
.field public static final e:Lcom/yandex/div/internal/viewpool/a$b;


# instance fields
.field public final a:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;

.field public final b:Lr08;

.field public final c:Lcom/yandex/div/internal/viewpool/ViewCreator;

.field public final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/internal/viewpool/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/internal/viewpool/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/internal/viewpool/a;->e:Lcom/yandex/div/internal/viewpool/a$b;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;Lr08;Lcom/yandex/div/internal/viewpool/ViewCreator;)V
    .locals 1

    const-string v0, "sessionProfiler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewCreator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/viewpool/a;->a:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;

    iput-object p2, p0, Lcom/yandex/div/internal/viewpool/a;->b:Lr08;

    iput-object p3, p0, Lcom/yandex/div/internal/viewpool/a;->c:Lcom/yandex/div/internal/viewpool/ViewCreator;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/viewpool/a;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/a;->d:Ljava/util/Map;

    const-string v1, "Factory is not registered"

    invoke-static {p0, p1, v1}, Lemb;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/internal/viewpool/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p0}, Lcom/yandex/div/internal/viewpool/a$a;->a()Landroid/view/View;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type T of com.yandex.div.internal.viewpool.AdvanceViewPool.obtain"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/a;->d:Ljava/util/Map;

    const-string v1, "Factory is not registered"

    invoke-static {p0, p1, v1}, Lemb;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/yandex/div/internal/viewpool/a$a;

    invoke-virtual {p1, p2}, Lcom/yandex/div/internal/viewpool/a$a;->l(I)V

    check-cast p0, Lcom/yandex/div/internal/viewpool/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public c(Ljava/lang/String;Lhcc;I)V
    .locals 10

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Factory is already registered"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/a;->d:Ljava/util/Map;

    new-instance v9, Lcom/yandex/div/internal/viewpool/a$a;

    iget-object v4, p0, Lcom/yandex/div/internal/viewpool/a;->a:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;

    iget-object v5, p0, Lcom/yandex/div/internal/viewpool/a;->b:Lr08;

    iget-object v7, p0, Lcom/yandex/div/internal/viewpool/a;->c:Lcom/yandex/div/internal/viewpool/ViewCreator;

    move-object v2, v9

    move-object v3, p1

    move-object v6, p2

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/yandex/div/internal/viewpool/a$a;-><init>(Ljava/lang/String;Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;Lr08;Lhcc;Lcom/yandex/div/internal/viewpool/ViewCreator;I)V

    invoke-interface {v1, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p0
.end method
