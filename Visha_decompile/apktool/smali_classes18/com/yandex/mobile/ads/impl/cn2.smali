.class public final Lcom/yandex/mobile/ads/impl/cn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hu;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cn2;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/cn2;)Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cn2;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ky1;)V
    .locals 2

    .line 2
    const-string v0, "adError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/il2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ky1;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/il2;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lcom/yandex/mobile/ads/impl/cn2$c;

    invoke-direct {v1, p0, v0}, Lcom/yandex/mobile/ads/impl/cn2$c;-><init>(Lcom/yandex/mobile/ads/impl/cn2;Lcom/yandex/mobile/ads/impl/il2;)V

    invoke-direct {p1, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lc74;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/yl2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/yl2;-><init>(Lcom/yandex/mobile/ads/impl/t4;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance p1, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lcom/yandex/mobile/ads/impl/cn2$d;

    invoke-direct {v1, p0, v0}, Lcom/yandex/mobile/ads/impl/cn2$d;-><init>(Lcom/yandex/mobile/ads/impl/cn2;Lcom/yandex/mobile/ads/impl/yl2;)V

    invoke-direct {p1, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lc74;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vr1;)V
    .locals 2

    .line 7
    const-string v0, "reward"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/yandex/mobile/ads/impl/an2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/an2;-><init>(Lcom/yandex/mobile/ads/impl/vr1;)V

    .line 9
    new-instance p1, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lcom/yandex/mobile/ads/impl/cn2$f;

    invoke-direct {v1, p0, v0}, Lcom/yandex/mobile/ads/impl/cn2$f;-><init>(Lcom/yandex/mobile/ads/impl/cn2;Lcom/yandex/mobile/ads/impl/an2;)V

    invoke-direct {p1, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lc74;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 2

    new-instance v0, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lcom/yandex/mobile/ads/impl/cn2$a;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/cn2$a;-><init>(Lcom/yandex/mobile/ads/impl/cn2;)V

    invoke-direct {v0, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lc74;)V

    return-void
.end method

.method public final onAdDismissed()V
    .locals 2

    new-instance v0, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lcom/yandex/mobile/ads/impl/cn2$b;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/cn2$b;-><init>(Lcom/yandex/mobile/ads/impl/cn2;)V

    invoke-direct {v0, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lc74;)V

    return-void
.end method

.method public final onAdShown()V
    .locals 2

    new-instance v0, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lcom/yandex/mobile/ads/impl/cn2$e;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/cn2$e;-><init>(Lcom/yandex/mobile/ads/impl/cn2;)V

    invoke-direct {v0, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lc74;)V

    return-void
.end method
