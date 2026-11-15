.class public final synthetic Lh8d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/wu0;

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/c31$a;

.field public final synthetic e:Lcom/yandex/mobile/ads/impl/c31;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/c31$a;Lcom/yandex/mobile/ads/impl/c31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh8d;->b:Landroid/content/Context;

    iput-object p2, p0, Lh8d;->c:Lcom/yandex/mobile/ads/impl/wu0;

    iput-object p3, p0, Lh8d;->d:Lcom/yandex/mobile/ads/impl/c31$a;

    iput-object p4, p0, Lh8d;->e:Lcom/yandex/mobile/ads/impl/c31;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lh8d;->b:Landroid/content/Context;

    iget-object v1, p0, Lh8d;->c:Lcom/yandex/mobile/ads/impl/wu0;

    iget-object v2, p0, Lh8d;->d:Lcom/yandex/mobile/ads/impl/c31$a;

    iget-object p0, p0, Lh8d;->e:Lcom/yandex/mobile/ads/impl/c31;

    invoke-static {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/c31;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/c31$a;Lcom/yandex/mobile/ads/impl/c31;)V

    return-void
.end method
