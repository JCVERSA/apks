.class public final Lcom/yandex/mobile/ads/impl/o81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/yc0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/o81$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zp;

.field private final b:Lcom/yandex/mobile/ads/impl/aq;

.field private final c:J

.field private final d:Lcom/yandex/mobile/ads/impl/mg1;

.field private final e:Lcom/yandex/mobile/ads/impl/o81$a;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zp;Lcom/yandex/mobile/ads/impl/f52;)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/f52;->c()Lcom/yandex/mobile/ads/impl/aq;

    move-result-object v4

    .line 2
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/p81;->a(Lcom/yandex/mobile/ads/impl/o8;)J

    move-result-wide v5

    .line 3
    sget v0, Lcom/yandex/mobile/ads/impl/mg1;->a:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/mg1$a;->a(Z)Lcom/yandex/mobile/ads/impl/mg1;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/o81;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zp;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/aq;JLcom/yandex/mobile/ads/impl/mg1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zp;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/aq;JLcom/yandex/mobile/ads/impl/mg1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/zp;",
            "Lcom/yandex/mobile/ads/impl/f52;",
            "Lcom/yandex/mobile/ads/impl/aq;",
            "J",
            "Lcom/yandex/mobile/ads/impl/mg1;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "closeShowListener"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "timeProviderContainer"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "closeTimerProgressIncrementer"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pausableTimer"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/o81;->a:Lcom/yandex/mobile/ads/impl/zp;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/o81;->b:Lcom/yandex/mobile/ads/impl/aq;

    .line 9
    iput-wide p5, p0, Lcom/yandex/mobile/ads/impl/o81;->c:J

    .line 10
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/o81;->d:Lcom/yandex/mobile/ads/impl/mg1;

    .line 11
    new-instance p1, Lcom/yandex/mobile/ads/impl/o81$a;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/o81$a;-><init>(Lcom/yandex/mobile/ads/impl/o81;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o81;->e:Lcom/yandex/mobile/ads/impl/o81$a;

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/o81;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o81;->a:Lcom/yandex/mobile/ads/impl/zp;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/zp;->a()V

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o81;->d:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->invalidate()V

    return-void
.end method

.method public final pause()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o81;->d:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->pause()V

    return-void
.end method

.method public final resume()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o81;->d:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->resume()V

    return-void
.end method

.method public final start()V
    .locals 4

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/o81;->c:J

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/o81;->b:Lcom/yandex/mobile/ads/impl/aq;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/aq;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/o81;->d:Lcom/yandex/mobile/ads/impl/mg1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/o81;->b:Lcom/yandex/mobile/ads/impl/aq;

    invoke-interface {v2, v3}, Lcom/yandex/mobile/ads/impl/mg1;->a(Lcom/yandex/mobile/ads/impl/m52;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/o81;->d:Lcom/yandex/mobile/ads/impl/mg1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o81;->e:Lcom/yandex/mobile/ads/impl/o81$a;

    invoke-interface {v2, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/mg1;->a(JLcom/yandex/mobile/ads/impl/og1;)V

    return-void
.end method
