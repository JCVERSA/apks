.class public final synthetic Lmyd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/yz0;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/iy$g;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/yz0;Lcom/yandex/mobile/ads/impl/iy$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyd;->b:Lcom/yandex/mobile/ads/impl/yz0;

    iput-object p2, p0, Lmyd;->c:Lcom/yandex/mobile/ads/impl/iy$g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lmyd;->b:Lcom/yandex/mobile/ads/impl/yz0;

    iget-object p0, p0, Lmyd;->c:Lcom/yandex/mobile/ads/impl/iy$g;

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/yz0;->c(Lcom/yandex/mobile/ads/impl/yz0;Lcom/yandex/mobile/ads/impl/iy$g;Landroid/view/View;)V

    return-void
.end method
