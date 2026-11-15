.class public final Lcom/yandex/mobile/ads/impl/ls$b;
.super Lcom/yandex/mobile/ads/impl/ls;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final c:Lcom/yandex/mobile/ads/impl/r31;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/r31;Lcom/yandex/mobile/ads/impl/k31;Lcom/yandex/mobile/ads/impl/g31;)V
    .locals 1

    const-string v0, "multiBannerSwiper"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiBannerEventTracker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/ls;-><init>(Lcom/yandex/mobile/ads/impl/k31;Lcom/yandex/mobile/ads/impl/g31;I)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ls$b;->c:Lcom/yandex/mobile/ads/impl/r31;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ls$b;->c:Lcom/yandex/mobile/ads/impl/r31;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r31;->a()V

    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/ls;->onClick(Landroid/view/View;)V

    return-void
.end method
