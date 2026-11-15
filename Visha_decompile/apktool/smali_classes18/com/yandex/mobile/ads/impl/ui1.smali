.class public final Lcom/yandex/mobile/ads/impl/ui1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/media3/common/Timeline$Period;

.field private b:Landroidx/media3/common/Timeline;

.field private c:Z


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 2
    sget-object v1, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    const-string v2, "EMPTY"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/ui1;-><init>(Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline;Z)V
    .locals 1

    .line 4
    const-string v0, "period"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeline"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ui1;->a:Landroidx/media3/common/Timeline$Period;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ui1;->b:Landroidx/media3/common/Timeline;

    .line 8
    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/ui1;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/Timeline$Period;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ui1;->a:Landroidx/media3/common/Timeline$Period;

    return-object p0
.end method

.method public final a(Landroidx/media3/common/Timeline;)V
    .locals 1

    .line 3
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ui1;->b:Landroidx/media3/common/Timeline;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ui1;->c:Z

    return-void
.end method

.method public final b()Landroidx/media3/common/Timeline;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ui1;->b:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ui1;->c:Z

    return p0
.end method
