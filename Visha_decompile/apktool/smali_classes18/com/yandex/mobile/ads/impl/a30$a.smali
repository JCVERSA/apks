.class final Lcom/yandex/mobile/ads/impl/a30$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/a30;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/v20;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/v20;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/v20;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a30$a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/a30$a;->c:Lcom/yandex/mobile/ads/impl/v20;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    new-instance v0, Lcom/yandex/mobile/ads/impl/j20;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/a30$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/j20;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/z10;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/z10;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/d20;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/d20;-><init>()V

    new-instance v3, Lcom/yandex/mobile/ads/impl/c20;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/c20;-><init>()V

    new-instance v4, Lcom/yandex/mobile/ads/impl/y10;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/y10;-><init>()V

    new-instance v5, Lcom/yandex/mobile/ads/impl/e20;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/e20;-><init>()V

    new-instance v6, Lcom/yandex/mobile/ads/impl/a20;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/a20;-><init>()V

    new-instance v7, Lcom/yandex/mobile/ads/impl/x10;

    const/4 v8, 0x6

    new-array v8, v8, [Lcom/yandex/div/core/a;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    const/4 v1, 0x2

    aput-object v3, v8, v1

    const/4 v1, 0x3

    aput-object v4, v8, v1

    const/4 v1, 0x4

    aput-object v5, v8, v1

    const/4 v1, 0x5

    aput-object v6, v8, v1

    invoke-direct {v7, v8}, Lcom/yandex/mobile/ads/impl/x10;-><init>([Lcom/yandex/div/core/a;)V

    new-instance v1, Ljh2$b;

    invoke-direct {v1, v0}, Ljh2$b;-><init>(Lwk2;)V

    invoke-virtual {v1, v7}, Ljh2$b;->c(Lcom/yandex/div/core/a;)Ljh2$b;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/m30;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/a30$a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/m30;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljh2$b;->e(Lbu2;)Ljh2$b;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a30$a;->c:Lcom/yandex/mobile/ads/impl/v20;

    if-eqz p0, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/w20;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/w20;-><init>(Lcom/yandex/mobile/ads/impl/v20;)V

    invoke-virtual {v0, v1}, Ljh2$b;->d(Lwi2;)Ljh2$b;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljh2$b;->b()Ljh2;

    move-result-object p0

    return-object p0
.end method
