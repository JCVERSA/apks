.class public final Lcom/yandex/mobile/ads/impl/cq0;
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

.field private final b:Lcom/yandex/mobile/ads/impl/e1;

.field private final c:Lcom/yandex/mobile/ads/impl/zr;

.field private final d:Lcom/yandex/mobile/ads/impl/op;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/op;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/e1;",
            "Lcom/yandex/mobile/ads/impl/zr;",
            "Lcom/yandex/mobile/ads/impl/op;",
            ")V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityEventController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeAppearanceController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cq0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/cq0;->b:Lcom/yandex/mobile/ads/impl/e1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/cq0;->c:Lcom/yandex/mobile/ads/impl/zr;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/cq0;->d:Lcom/yandex/mobile/ads/impl/op;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/c51;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/f52;)Lcom/yandex/mobile/ads/impl/fq;
    .locals 9

    const-string v0, "nativeAdControlViewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugEventsReporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProviderContainer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/fq;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/cq0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/cq0;->b:Lcom/yandex/mobile/ads/impl/e1;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/cq0;->d:Lcom/yandex/mobile/ads/impl/op;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/cq0;->c:Lcom/yandex/mobile/ads/impl/zr;

    move-object v1, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/fq;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/op;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/b51;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/f52;)V

    return-object v0
.end method
