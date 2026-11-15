.class public final Lcom/yandex/mobile/ads/impl/gt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Lcom/yandex/mobile/ads/impl/p2;

.field private final f:Lcom/yandex/mobile/ads/impl/ht;

.field private final g:J


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/p2;Lcom/yandex/mobile/ads/impl/ht;J)V
    .locals 1

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfoList"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAds"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreak"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreakPosition"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gt;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gt;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gt;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/gt;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/gt;->e:Lcom/yandex/mobile/ads/impl/p2;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/gt;->f:Lcom/yandex/mobile/ads/impl/ht;

    iput-wide p7, p0, Lcom/yandex/mobile/ads/impl/gt;->g:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/p2;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gt;->e:Lcom/yandex/mobile/ads/impl/p2;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/a00;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/ht;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gt;->f:Lcom/yandex/mobile/ads/impl/ht;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/a00;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/bv1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gt;->a:Lcom/yandex/mobile/ads/impl/bv1;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gt;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gt;->b:Ljava/util/List;

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gt;->c:Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/gt;->g:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad_break_#"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
