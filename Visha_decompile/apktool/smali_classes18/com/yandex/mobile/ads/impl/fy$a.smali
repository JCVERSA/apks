.class final Lcom/yandex/mobile/ads/impl/fy$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/fy;->a(Lcom/yandex/mobile/ads/impl/ey;)V
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
.field final synthetic b:Lcom/yandex/mobile/ads/impl/fy;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fy;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fy$a;->b:Lcom/yandex/mobile/ads/impl/fy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/yandex/mobile/ads/impl/l11;->a:Lcom/yandex/mobile/ads/impl/l11;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/l11;->b()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fy$a;->b:Lcom/yandex/mobile/ads/impl/fy;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fy;->a(Lcom/yandex/mobile/ads/impl/fy;)Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    move-result-object v0

    sget v1, Lcom/yandex/mobile/ads/R$string;->logging_is_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/fy;->a(Lcom/yandex/mobile/ads/impl/fy;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
