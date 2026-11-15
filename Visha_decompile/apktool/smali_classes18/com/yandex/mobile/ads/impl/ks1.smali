.class public final Lcom/yandex/mobile/ads/impl/ks1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/zr;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/dq;

.field private final c:Lcom/yandex/mobile/ads/impl/zr;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/z20;Lcom/yandex/mobile/ads/impl/zr;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeVerificationDialogController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ks1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ks1;->b:Lcom/yandex/mobile/ads/impl/dq;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ks1;->c:Lcom/yandex/mobile/ads/impl/zr;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ks1;->d:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ks1;->b:Lcom/yandex/mobile/ads/impl/dq;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/dq;->a()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ks1;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ks1;->c:Lcom/yandex/mobile/ads/impl/zr;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/zr;->f()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ks1;->b:Lcom/yandex/mobile/ads/impl/dq;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ks1;->a:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/dq;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
