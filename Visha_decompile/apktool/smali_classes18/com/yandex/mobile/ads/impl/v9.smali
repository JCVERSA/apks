.class public final Lcom/yandex/mobile/ads/impl/v9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/v9$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/f41;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/f41;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/f41;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/v9;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/v9;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v9;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f42;Lcom/yandex/mobile/ads/impl/tp1;)V
    .locals 2

    .line 4
    const-string v0, "handler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/ek1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v9;->b:Landroid/content/Context;

    .line 6
    new-instance v1, Lcom/yandex/mobile/ads/impl/s82;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/s82;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-direct {v0, p0, p3, p2, v1}, Lcom/yandex/mobile/ads/impl/ek1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/tp1;Lcom/yandex/mobile/ads/impl/f42;Lcom/yandex/mobile/ads/impl/s82;)V

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 9
    new-instance p0, Lcom/yandex/mobile/ads/impl/v9$a;

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/v9$a;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/u82;)V

    .line 10
    sget-object p1, Lcom/yandex/mobile/ads/impl/v9;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/u1;)V
    .locals 4

    .line 1
    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/ep;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v9;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/v9;->a:Lcom/yandex/mobile/ads/impl/o3;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/yandex/mobile/ads/impl/ep;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/z41;)V

    .line 3
    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/mobile/ads/impl/v9;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f42;Lcom/yandex/mobile/ads/impl/tp1;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/z62;)V
    .locals 2

    .line 11
    const-string v0, "trackingUrlType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/yandex/mobile/ads/impl/lh1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v9;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v9;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-direct {v0, v1, p0, p2}, Lcom/yandex/mobile/ads/impl/lh1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/z62;)V

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 14
    new-instance p0, Lcom/yandex/mobile/ads/impl/v9$a;

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/v9$a;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/u82;)V

    .line 15
    sget-object p1, Lcom/yandex/mobile/ads/impl/v9;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
