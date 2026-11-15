.class public final Lcom/yandex/mobile/ads/impl/pg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/i3;

.field private final c:Lcom/yandex/mobile/ads/impl/wo1;

.field private final d:Lcom/yandex/mobile/ads/impl/pk0;

.field private final e:Lcom/yandex/mobile/ads/impl/vr0;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/i3;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/vr0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;",
            "Lcom/yandex/mobile/ads/impl/i3;",
            "Lcom/yandex/mobile/ads/impl/wo1;",
            "Lcom/yandex/mobile/ads/impl/pk0;",
            "Lcom/yandex/mobile/ads/impl/vr0;",
            ")V"
        }
    .end annotation

    const-string v0, "assets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adClickHandler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderedTimer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionEventsObservable"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pg;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/pg;->b:Lcom/yandex/mobile/ads/impl/i3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/pg;->c:Lcom/yandex/mobile/ads/impl/wo1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/pg;->d:Lcom/yandex/mobile/ads/impl/pk0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/pg;->e:Lcom/yandex/mobile/ads/impl/vr0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/dp;Lcom/yandex/mobile/ads/impl/g71;)Lcom/yandex/mobile/ads/impl/og;
    .locals 9

    const-string v0, "clickListenerFactory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/og;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/pg;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/pg;->b:Lcom/yandex/mobile/ads/impl/i3;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/pg;->c:Lcom/yandex/mobile/ads/impl/wo1;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/pg;->d:Lcom/yandex/mobile/ads/impl/pk0;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/pg;->e:Lcom/yandex/mobile/ads/impl/vr0;

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/og;-><init>(Lcom/yandex/mobile/ads/impl/dp;Ljava/util/List;Lcom/yandex/mobile/ads/impl/i3;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/vr0;)V

    return-object v0
.end method
