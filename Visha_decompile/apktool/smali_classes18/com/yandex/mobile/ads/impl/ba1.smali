.class public final Lcom/yandex/mobile/ads/impl/ba1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ek$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/ek$a<",
        "Lcom/yandex/mobile/ads/impl/y61;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/i81;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/v71;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/v71;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ba1;-><init>(Lcom/yandex/mobile/ads/impl/i81;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/i81;)V
    .locals 1

    .line 3
    const-string v0, "nativeCommonReportDataProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ba1;->a:Lcom/yandex/mobile/ads/impl/i81;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xq1;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xq1<",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;>;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            ")",
            "Lcom/yandex/mobile/ads/impl/pp1;"
        }
    .end annotation

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/xq1;->a:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/o8;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ba1;->a:Lcom/yandex/mobile/ads/impl/i81;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->I()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/y61;

    :cond_1
    invoke-interface {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/i81;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y61;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    return-object p0
.end method
