.class public final Lcom/yandex/mobile/ads/impl/zb2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/uu;

.field private final b:Lcom/yandex/mobile/ads/impl/mb2;

.field private final c:Lcom/yandex/mobile/ads/impl/ew0;

.field private final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/mobile/ads/impl/i12;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/yandex/mobile/ads/impl/w9;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/uu;Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/ew0;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i12;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/w9;)V
    .locals 1

    const-string v0, "creative"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaFile"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadRequestId"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zb2;->a:Lcom/yandex/mobile/ads/impl/uu;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zb2;->b:Lcom/yandex/mobile/ads/impl/mb2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/zb2;->c:Lcom/yandex/mobile/ads/impl/ew0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/zb2;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/zb2;->e:Lcom/yandex/mobile/ads/impl/i12;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/zb2;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/zb2;->g:Lcom/yandex/mobile/ads/impl/w9;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/w9;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zb2;->g:Lcom/yandex/mobile/ads/impl/w9;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/uu;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zb2;->a:Lcom/yandex/mobile/ads/impl/uu;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/ew0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zb2;->c:Lcom/yandex/mobile/ads/impl/ew0;

    return-object p0
.end method

.method public final d()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zb2;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zb2;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/i12;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zb2;->e:Lcom/yandex/mobile/ads/impl/i12;

    return-object p0
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/mb2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zb2;->b:Lcom/yandex/mobile/ads/impl/mb2;

    return-object p0
.end method
