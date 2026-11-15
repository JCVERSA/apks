.class public final Lcom/yandex/mobile/ads/impl/pd1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wk0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/wk0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/wk0;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/pd1;-><init>(Lcom/yandex/mobile/ads/impl/wk0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wk0;)V
    .locals 1

    .line 3
    const-string v0, "impressionTrackingReportTypesProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pd1;->a:Lcom/yandex/mobile/ads/impl/wk0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/tk0;Lcom/yandex/mobile/ads/impl/s9;)Lcom/yandex/mobile/ads/impl/od1;
    .locals 2

    const-string v0, "impressionReporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adStructureType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pd1;->a:Lcom/yandex/mobile/ads/impl/wk0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/wk0;->a(Lcom/yandex/mobile/ads/impl/s9;)Lcom/yandex/mobile/ads/impl/vk0;

    move-result-object p0

    new-instance p2, Lcom/yandex/mobile/ads/impl/s62;

    invoke-direct {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/s62;-><init>(Lcom/yandex/mobile/ads/impl/tk0;Lcom/yandex/mobile/ads/impl/vk0;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/pd1;->a:Lcom/yandex/mobile/ads/impl/wk0;

    sget-object v0, Lcom/yandex/mobile/ads/impl/s9;->d:Lcom/yandex/mobile/ads/impl/s9;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/wk0;->a(Lcom/yandex/mobile/ads/impl/s9;)Lcom/yandex/mobile/ads/impl/vk0;

    move-result-object p2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pd1;->a:Lcom/yandex/mobile/ads/impl/wk0;

    sget-object v0, Lcom/yandex/mobile/ads/impl/s9;->c:Lcom/yandex/mobile/ads/impl/s9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/wk0;->a(Lcom/yandex/mobile/ads/impl/s9;)Lcom/yandex/mobile/ads/impl/vk0;

    move-result-object p0

    new-instance v0, Lcom/yandex/mobile/ads/impl/xy1;

    new-instance v1, Lcom/yandex/mobile/ads/impl/s62;

    invoke-direct {v1, p1, p2}, Lcom/yandex/mobile/ads/impl/s62;-><init>(Lcom/yandex/mobile/ads/impl/tk0;Lcom/yandex/mobile/ads/impl/vk0;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/s62;

    invoke-direct {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/s62;-><init>(Lcom/yandex/mobile/ads/impl/tk0;Lcom/yandex/mobile/ads/impl/vk0;)V

    invoke-direct {v0, v1, p2}, Lcom/yandex/mobile/ads/impl/xy1;-><init>(Lcom/yandex/mobile/ads/impl/s62;Lcom/yandex/mobile/ads/impl/s62;)V

    move-object p2, v0

    :goto_1
    return-object p2
.end method
