.class public final synthetic Lgsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/common/InitializationListener;


# instance fields
.field public final synthetic a:Lcom/hisavana/yandex/executer/YandexNative;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/yandex/executer/YandexNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgsc;->a:Lcom/hisavana/yandex/executer/YandexNative;

    return-void
.end method


# virtual methods
.method public final onInitializationCompleted()V
    .locals 0

    iget-object p0, p0, Lgsc;->a:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-static {p0}, Lcom/hisavana/yandex/executer/YandexNative;->a(Lcom/hisavana/yandex/executer/YandexNative;)V

    return-void
.end method
