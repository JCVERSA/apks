.class public final Lcom/yandex/mobile/ads/impl/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/eq;


# instance fields
.field private final a:Landroid/app/Dialog;

.field private final b:Lcom/yandex/mobile/ads/impl/zr;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/yandex/mobile/ads/impl/zr;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bq;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bq;->b:Lcom/yandex/mobile/ads/impl/zr;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bq;->a:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/n10;->a(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bq;->b:Lcom/yandex/mobile/ads/impl/zr;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/zr;->f()V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bq;->a:Landroid/app/Dialog;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/n10;->a(Landroid/app/Dialog;)V

    return-void
.end method
