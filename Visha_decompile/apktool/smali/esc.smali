.class public final synthetic Lesc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/common/InitializationListener;


# instance fields
.field public final synthetic a:Lcom/hisavana/yandex/executer/YandexBanner;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/yandex/executer/YandexBanner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lesc;->a:Lcom/hisavana/yandex/executer/YandexBanner;

    return-void
.end method


# virtual methods
.method public final onInitializationCompleted()V
    .locals 0

    iget-object p0, p0, Lesc;->a:Lcom/hisavana/yandex/executer/YandexBanner;

    invoke-static {p0}, Lcom/hisavana/yandex/executer/YandexBanner;->a(Lcom/hisavana/yandex/executer/YandexBanner;)V

    return-void
.end method
