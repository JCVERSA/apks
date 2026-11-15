.class public final Lcom/yandex/mobile/ads/impl/u71;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/y61;

.field private final c:Lcom/yandex/mobile/ads/impl/o3;

.field private final d:Lcom/yandex/mobile/ads/impl/i81;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/v71;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/v71;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/u71;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/i81;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/i81;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/y61;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/i81;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonReportDataProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u71;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/u71;->b:Lcom/yandex/mobile/ads/impl/y61;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/u71;->c:Lcom/yandex/mobile/ads/impl/o3;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/u71;->d:Lcom/yandex/mobile/ads/impl/i81;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/pp1;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u71;->d:Lcom/yandex/mobile/ads/impl/i81;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u71;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/u71;->b:Lcom/yandex/mobile/ads/impl/y61;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u71;->c:Lcom/yandex/mobile/ads/impl/o3;

    invoke-interface {v0, v1, p0, v2}, Lcom/yandex/mobile/ads/impl/i81;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y61;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    return-object p0
.end method
