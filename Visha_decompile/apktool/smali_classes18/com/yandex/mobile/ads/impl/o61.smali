.class public final Lcom/yandex/mobile/ads/impl/o61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/cd1<",
        "Lcom/yandex/mobile/ads/impl/y61;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/hq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/hq1<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/aj2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/aj2<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/hq1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/z61;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/z61;-><init>(Lcom/yandex/mobile/ads/impl/hq1;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/o61;-><init>(Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/aj2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/aj2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/hq1<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/aj2<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;)V"
        }
    .end annotation

    .line 3
    const-string v0, "requestPolicy"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseBodyParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o61;->a:Lcom/yandex/mobile/ads/impl/hq1;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/o61;->b:Lcom/yandex/mobile/ads/impl/aj2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/xi2;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o61;->b:Lcom/yandex/mobile/ads/impl/aj2;

    invoke-static {p2, p0}, Lcom/yandex/mobile/ads/impl/wc1;->a(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/aj2;)Lcom/yandex/mobile/ads/impl/xi2;

    move-result-object p0

    return-object p0
.end method
