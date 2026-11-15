.class public final Lcom/yandex/mobile/ads/impl/e20;
.super Lcom/yandex/mobile/ads/impl/b20;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/b20;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCustomTypeSupported(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "type"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "video_progress"

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic preload(Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/DivPreloader$a;)Lcom/yandex/div/core/DivPreloader$d;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/yandex/div/core/a;->preload(Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/DivPreloader$a;)Lcom/yandex/div/core/DivPreloader$d;

    move-result-object p0

    return-object p0
.end method
