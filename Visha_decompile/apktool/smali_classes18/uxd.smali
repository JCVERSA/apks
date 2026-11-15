.class public final synthetic Luxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/y;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/iy$c;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/y;Lcom/yandex/mobile/ads/impl/iy$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luxd;->b:Lcom/yandex/mobile/ads/impl/y;

    iput-object p2, p0, Luxd;->c:Lcom/yandex/mobile/ads/impl/iy$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Luxd;->b:Lcom/yandex/mobile/ads/impl/y;

    iget-object p0, p0, Luxd;->c:Lcom/yandex/mobile/ads/impl/iy$c;

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/y;->b(Lcom/yandex/mobile/ads/impl/y;Lcom/yandex/mobile/ads/impl/iy$c;Landroid/view/View;)V

    return-void
.end method
