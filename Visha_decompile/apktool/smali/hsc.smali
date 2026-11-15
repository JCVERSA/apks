.class public final synthetic Lhsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/common/InitializationListener;


# instance fields
.field public final synthetic a:Lcom/hisavana/yandex/executer/YandexSplash;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/yandex/executer/YandexSplash;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhsc;->a:Lcom/hisavana/yandex/executer/YandexSplash;

    return-void
.end method


# virtual methods
.method public final onInitializationCompleted()V
    .locals 0

    iget-object p0, p0, Lhsc;->a:Lcom/hisavana/yandex/executer/YandexSplash;

    invoke-static {p0}, Lcom/hisavana/yandex/executer/YandexSplash;->a(Lcom/hisavana/yandex/executer/YandexSplash;)V

    return-void
.end method
