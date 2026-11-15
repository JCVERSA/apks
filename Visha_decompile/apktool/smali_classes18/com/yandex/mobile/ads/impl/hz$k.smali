.class final Lcom/yandex/mobile/ads/impl/hz$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/zh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/hz;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/hz;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hz$k;->a:Lcom/yandex/mobile/ads/impl/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/hz;Ljid;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/hz$k;-><init>(Lcom/yandex/mobile/ads/impl/hz;)V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 10

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hz$k;->a:Lcom/yandex/mobile/ads/impl/hz;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hz;->f(Lcom/yandex/mobile/ads/impl/hz;)Lcom/yandex/mobile/ads/impl/wh$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$k;->a:Lcom/yandex/mobile/ads/impl/hz;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hz;->d(Lcom/yandex/mobile/ads/impl/hz;)J

    move-result-wide v2

    sub-long v8, v0, v2

    .line 13
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hz;->f(Lcom/yandex/mobile/ads/impl/hz;)Lcom/yandex/mobile/ads/impl/wh$c;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/yandex/mobile/ads/impl/hv0$a;

    move v5, p1

    move-wide v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/yandex/mobile/ads/impl/hv0$a;->a(IJJ)V

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$k;->a:Lcom/yandex/mobile/ads/impl/hz;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hz;->f(Lcom/yandex/mobile/ads/impl/hz;)Lcom/yandex/mobile/ads/impl/wh$c;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    check-cast p0, Lcom/yandex/mobile/ads/impl/hv0$a;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hv0$a;->a(J)V

    :cond_0
    return-void
.end method

.method public final a(JJJJ)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Spurious audio timestamp (frame position mismatch): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/hz$k;->a:Lcom/yandex/mobile/ads/impl/hz;

    .line 4
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/hz;->g(Lcom/yandex/mobile/ads/impl/hz;)Lcom/yandex/mobile/ads/impl/hz$f;

    move-result-object p3

    .line 5
    iget p4, p3, Lcom/yandex/mobile/ads/impl/hz$f;->c:I

    if-nez p4, :cond_0

    .line 6
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/hz;->a(Lcom/yandex/mobile/ads/impl/hz;)J

    move-result-wide p4

    iget p2, p3, Lcom/yandex/mobile/ads/impl/hz$f;->b:I

    int-to-long p2, p2

    div-long/2addr p4, p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/hz;->b(Lcom/yandex/mobile/ads/impl/hz;)J

    move-result-wide p4

    .line 8
    :goto_0
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$k;->a:Lcom/yandex/mobile/ads/impl/hz;

    .line 9
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hz;->i(Lcom/yandex/mobile/ads/impl/hz;)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    const-string p1, "DefaultAudioSink"

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(J)V
    .locals 1

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring impossibly large audio latency: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultAudioSink"

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(JJJJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Spurious audio timestamp (system clock mismatch): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/hz$k;->a:Lcom/yandex/mobile/ads/impl/hz;

    .line 2
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/hz;->g(Lcom/yandex/mobile/ads/impl/hz;)Lcom/yandex/mobile/ads/impl/hz$f;

    move-result-object p3

    .line 3
    iget p4, p3, Lcom/yandex/mobile/ads/impl/hz$f;->c:I

    if-nez p4, :cond_0

    .line 4
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/hz;->a(Lcom/yandex/mobile/ads/impl/hz;)J

    move-result-wide p4

    iget p2, p3, Lcom/yandex/mobile/ads/impl/hz$f;->b:I

    int-to-long p2, p2

    div-long/2addr p4, p2

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/hz;->b(Lcom/yandex/mobile/ads/impl/hz;)J

    move-result-wide p4

    .line 6
    :goto_0
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$k;->a:Lcom/yandex/mobile/ads/impl/hz;

    .line 7
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hz;->i(Lcom/yandex/mobile/ads/impl/hz;)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    const-string p1, "DefaultAudioSink"

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
