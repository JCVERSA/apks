.class public final Lcom/yandex/mobile/ads/impl/u80;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/it0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/it0;)V
    .locals 1

    const-string v0, "mainThreadHandler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u80;->a:Lcom/yandex/mobile/ads/impl/it0;

    return-void
.end method

.method private static final a(JLc74;)V
    .locals 2

    .line 4
    const-string v0, "$successCallback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x1388

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    .line 6
    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic b(JLc74;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/u80;->a(JLc74;)V

    return-void
.end method


# virtual methods
.method public final a(Lc74;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "successCallback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u80;->a:Lcom/yandex/mobile/ads/impl/it0;

    new-instance v2, Lwud;

    invoke-direct {v2, v0, v1, p1}, Lwud;-><init>(JLc74;)V

    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/it0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
