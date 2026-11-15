.class public final Lcom/yandex/div/core/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div/core/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/yandex/div/core/b;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/div/core/b;->c()Lcom/yandex/div/core/b;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/yandex/div/core/b;->c()Lcom/yandex/div/core/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/yandex/div/core/b;

    invoke-static {}, Lcom/yandex/div/core/b;->a()Lcom/yandex/div/core/c;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/yandex/div/core/b;->b()Lcom/yandex/div/core/c;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/div/core/b;-><init>(Landroid/content/Context;Lcom/yandex/div/core/c;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/yandex/div/core/b;->d(Lcom/yandex/div/core/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "31.13.0"

    return-object p0
.end method
