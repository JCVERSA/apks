.class public abstract Lcom/yandex/div/internal/util/SingleThreadExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;

.field public c:Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;

.field public d:Ljava/util/List;


# direct methods
.method public static final synthetic a(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor;->c:Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor;->d:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/div/internal/util/SingleThreadExecutor;Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor;->c:Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/internal/util/SingleThreadExecutor;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract g(Ljava/lang/RuntimeException;)V
.end method
