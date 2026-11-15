.class public final Lcom/yandex/mobile/ads/impl/yy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tp1;

.field private final b:Lcom/yandex/mobile/ads/impl/ff1;

.field private final c:Lcom/yandex/mobile/ads/impl/p51;

.field private final d:Lcom/yandex/mobile/ads/impl/dk1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/tp1;Lcom/yandex/mobile/ads/impl/r91;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/dk1;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "openUrlHandler"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdEventController"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "preferredPackagesViewer"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yy;->a:Lcom/yandex/mobile/ads/impl/tp1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/yy;->b:Lcom/yandex/mobile/ads/impl/ff1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/yy;->c:Lcom/yandex/mobile/ads/impl/p51;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/yy;->d:Lcom/yandex/mobile/ads/impl/dk1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/uy;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/uy;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yy;->d:Lcom/yandex/mobile/ads/impl/dk1;

    invoke-virtual {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/dk1;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/yy;->a:Lcom/yandex/mobile/ads/impl/tp1;

    sget-object p2, Lcom/yandex/mobile/ads/impl/op1$b;->F:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-interface {p1, p2}, Lcom/yandex/mobile/ads/impl/tp1;->a(Lcom/yandex/mobile/ads/impl/op1$b;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yy;->c:Lcom/yandex/mobile/ads/impl/p51;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p51;->d()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/uy;->c()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yy;->b:Lcom/yandex/mobile/ads/impl/ff1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ff1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
