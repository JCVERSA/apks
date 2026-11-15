.class final Lcom/yandex/mobile/ads/impl/hv0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/wh$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/hv0;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/hv0;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hv0$a;->a:Lcom/yandex/mobile/ads/impl/hv0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/hv0;Leid;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/hv0$a;-><init>(Lcom/yandex/mobile/ads/impl/hv0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hv0$a;->a:Lcom/yandex/mobile/ads/impl/hv0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hv0;->T(Lcom/yandex/mobile/ads/impl/hv0;)Lcom/yandex/mobile/ads/impl/yo1$a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yo1$a;->b()V

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 6

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hv0$a;->a:Lcom/yandex/mobile/ads/impl/hv0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hv0;->o(Lcom/yandex/mobile/ads/impl/hv0;)Lcom/yandex/mobile/ads/impl/vh$a;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/vh$a;->b(IJJ)V

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hv0$a;->a:Lcom/yandex/mobile/ads/impl/hv0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hv0;->o(Lcom/yandex/mobile/ads/impl/hv0;)Lcom/yandex/mobile/ads/impl/vh$a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/vh$a;->b(J)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/et0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hv0$a;->a:Lcom/yandex/mobile/ads/impl/hv0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hv0;->o(Lcom/yandex/mobile/ads/impl/hv0;)Lcom/yandex/mobile/ads/impl/vh$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/vh$a;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hv0$a;->a:Lcom/yandex/mobile/ads/impl/hv0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hv0;->o(Lcom/yandex/mobile/ads/impl/hv0;)Lcom/yandex/mobile/ads/impl/vh$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/vh$a;->b(Z)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hv0$a;->a:Lcom/yandex/mobile/ads/impl/hv0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hv0;->T(Lcom/yandex/mobile/ads/impl/hv0;)Lcom/yandex/mobile/ads/impl/yo1$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yo1$a;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hv0$a;->a:Lcom/yandex/mobile/ads/impl/hv0;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/hv0;->U(Lcom/yandex/mobile/ads/impl/hv0;Z)V

    return-void
.end method
