.class public final Lcom/yandex/mobile/ads/impl/y90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/j01;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/j01;)V
    .locals 1

    const-string v0, "memoryUtils"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y90;->a:Lcom/yandex/mobile/ads/impl/j01;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y90;->a:Lcom/yandex/mobile/ads/impl/j01;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/j01;->a()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
