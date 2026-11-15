.class public final synthetic Lild;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/ka;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/iy$a;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ka;Lcom/yandex/mobile/ads/impl/iy$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lild;->b:Lcom/yandex/mobile/ads/impl/ka;

    iput-object p2, p0, Lild;->c:Lcom/yandex/mobile/ads/impl/iy$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lild;->b:Lcom/yandex/mobile/ads/impl/ka;

    iget-object p0, p0, Lild;->c:Lcom/yandex/mobile/ads/impl/iy$a;

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/ka;->b(Lcom/yandex/mobile/ads/impl/ka;Lcom/yandex/mobile/ads/impl/iy$a;Landroid/view/View;)V

    return-void
.end method
