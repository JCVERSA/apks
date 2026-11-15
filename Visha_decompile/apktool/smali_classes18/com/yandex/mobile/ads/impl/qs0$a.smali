.class final Lcom/yandex/mobile/ads/impl/qs0$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/qs0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/by1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/qs0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qs0;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qs0$a;->b:Lcom/yandex/mobile/ads/impl/qs0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qs0$a;->b:Lcom/yandex/mobile/ads/impl/qs0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/qs0;->c(Lcom/yandex/mobile/ads/impl/qs0;)Lcom/yandex/mobile/ads/impl/by1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qs0$a;->b:Lcom/yandex/mobile/ads/impl/qs0;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/qs0;->a(Lcom/yandex/mobile/ads/impl/qs0;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qs0$a;->b:Lcom/yandex/mobile/ads/impl/qs0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/qs0;->b(Lcom/yandex/mobile/ads/impl/qs0;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/by1;->a(Lcom/yandex/mobile/ads/impl/by1;Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
