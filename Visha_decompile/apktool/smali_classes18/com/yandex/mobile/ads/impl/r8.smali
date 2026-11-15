.class public final Lcom/yandex/mobile/ads/impl/r8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ek$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/ek$a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wq;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/wq;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/wq;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/r8;-><init>(Lcom/yandex/mobile/ads/impl/wq;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wq;)V
    .locals 1

    .line 3
    const-string v0, "commonReportDataProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/r8;->a:Lcom/yandex/mobile/ads/impl/wq;

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
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            ")",
            "Lcom/yandex/mobile/ads/impl/pp1;"
        }
    .end annotation

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r8;->a:Lcom/yandex/mobile/ads/impl/wq;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/xq1;->a:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/o8;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/wq;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    return-object p0
.end method
