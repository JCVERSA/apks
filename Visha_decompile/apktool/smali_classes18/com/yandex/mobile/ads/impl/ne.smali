.class public final Lcom/yandex/mobile/ads/impl/ne;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/me;
    .locals 2

    const-string v0, "textView"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/me;

    new-instance v1, Lcom/yandex/mobile/ads/impl/pe;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/pe;-><init>(Landroid/widget/TextView;)V

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/me;-><init>(Landroid/widget/TextView;Lcom/yandex/mobile/ads/impl/pe;)V

    return-object v0
.end method
