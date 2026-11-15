.class public final Lcom/yandex/mobile/ads/impl/y91;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/y91$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 1

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/ms0;->f:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ms0$a;->a()Lcom/yandex/mobile/ads/impl/ms0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ms0;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/y91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/y91;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/y91;->b:Ljava/util/concurrent/Executor;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y91;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/dr1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/dr1;",
            ")V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseConverterListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/y91$a;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/y91;->c:Landroid/content/Context;

    const-string v1, "appContext"

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/y91;->a:Lcom/yandex/mobile/ads/impl/sp1;

    new-instance v6, Lcom/yandex/mobile/ads/impl/aa1;

    invoke-direct {v6, v2, v3}, Lcom/yandex/mobile/ads/impl/aa1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/y91$a;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/dr1;Lcom/yandex/mobile/ads/impl/aa1;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y91;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
