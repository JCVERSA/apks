.class public final Lcom/yandex/mobile/ads/impl/ba2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/g5;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ba2;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ba2;->b:Lcom/yandex/mobile/ads/impl/g5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/dq1;)Lcom/yandex/mobile/ads/impl/aa2;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/ha2;",
            "Lcom/yandex/mobile/ads/impl/ia2;",
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Lcom/yandex/mobile/ads/impl/z92;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/aa2;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationParametersProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/x92;

    new-instance v0, Lcom/yandex/mobile/ads/impl/a8;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ha2;->a()Lcom/yandex/mobile/ads/impl/p2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/a8;-><init>(Lcom/yandex/mobile/ads/impl/p2;)V

    invoke-direct {v7, p2, v0}, Lcom/yandex/mobile/ads/impl/x92;-><init>(Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/a8;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/aa2;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ba2;->a:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/ba2;->b:Lcom/yandex/mobile/ads/impl/g5;

    new-instance v9, Lcom/yandex/mobile/ads/impl/yd2;

    invoke-direct {v9, p1, v3, v7, p3}, Lcom/yandex/mobile/ads/impl/yd2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/nd2;Lcom/yandex/mobile/ads/impl/ia2;)V

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/aa2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/x92;Lcom/yandex/mobile/ads/impl/dq1;Lcom/yandex/mobile/ads/impl/yd2;)V

    return-object v0
.end method
