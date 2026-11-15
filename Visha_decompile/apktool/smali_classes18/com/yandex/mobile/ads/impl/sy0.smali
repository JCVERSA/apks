.class public final Lcom/yandex/mobile/ads/impl/sy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sx0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/sx0<",
        "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zx0<",
            "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zx0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zx0<",
            "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mediatedAdProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sy0;->a:Lcom/yandex/mobile/ads/impl/zx0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/qx0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/yandex/mobile/ads/impl/qx0<",
            "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sy0;->a:Lcom/yandex/mobile/ads/impl/zx0;

    const-class v0, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/zx0;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/yandex/mobile/ads/impl/qx0;

    move-result-object p0

    return-object p0
.end method
