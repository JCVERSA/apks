.class public final synthetic Lnfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/g11;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/dt;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/g11;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/dt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnfd;->b:Lcom/yandex/mobile/ads/impl/g11;

    iput-object p2, p0, Lnfd;->c:Landroid/content/Context;

    iput-object p3, p0, Lnfd;->d:Lcom/yandex/mobile/ads/impl/dt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnfd;->b:Lcom/yandex/mobile/ads/impl/g11;

    iget-object v1, p0, Lnfd;->c:Landroid/content/Context;

    iget-object p0, p0, Lnfd;->d:Lcom/yandex/mobile/ads/impl/dt;

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/g11;->c(Lcom/yandex/mobile/ads/impl/g11;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/dt;)V

    return-void
.end method
