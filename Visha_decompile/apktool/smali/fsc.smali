.class public final synthetic Lfsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/common/InitializationListener;


# instance fields
.field public final synthetic a:Lcom/hisavana/yandex/executer/YandexInterstitial;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/yandex/executer/YandexInterstitial;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfsc;->a:Lcom/hisavana/yandex/executer/YandexInterstitial;

    return-void
.end method


# virtual methods
.method public final onInitializationCompleted()V
    .locals 0

    iget-object p0, p0, Lfsc;->a:Lcom/hisavana/yandex/executer/YandexInterstitial;

    invoke-static {p0}, Lcom/hisavana/yandex/executer/YandexInterstitial;->a(Lcom/hisavana/yandex/executer/YandexInterstitial;)V

    return-void
.end method
