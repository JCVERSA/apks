.class public final Lcom/yandex/mobile/ads/impl/np1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/nc2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/np1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sa1;

.field private final b:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/gd2;

.field private final d:Lcom/yandex/mobile/ads/impl/np1$a;

.field private e:Lcom/yandex/mobile/ads/impl/tc2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/dd2;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/yandex/mobile/ads/impl/ua1;

    invoke-direct {v4, p1}, Lcom/yandex/mobile/ads/impl/ua1;-><init>(Lcom/yandex/mobile/ads/impl/sa1;)V

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/gd2;

    invoke-direct {v5, v4, p3}, Lcom/yandex/mobile/ads/impl/gd2;-><init>(Lcom/yandex/mobile/ads/impl/wc2;Lcom/yandex/mobile/ads/impl/dd2;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/np1;-><init>(Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/dd2;Lcom/yandex/mobile/ads/impl/wc2;Lcom/yandex/mobile/ads/impl/gd2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/dd2;Lcom/yandex/mobile/ads/impl/wc2;Lcom/yandex/mobile/ads/impl/gd2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/sa1;",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/dd2;",
            "Lcom/yandex/mobile/ads/impl/wc2<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/gd2;",
            ")V"
        }
    .end annotation

    .line 4
    const-string v0, "nativeVideoAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdProgressEventsObservable"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "videoAdPlayer"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "videoAdProgressTrackingManager"

    invoke-static {p5, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/np1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/np1;->b:Lcom/yandex/mobile/ads/impl/zb2;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/np1;->c:Lcom/yandex/mobile/ads/impl/gd2;

    .line 9
    new-instance p1, Lcom/yandex/mobile/ads/impl/np1$a;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/np1$a;-><init>(Lcom/yandex/mobile/ads/impl/np1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/np1;->d:Lcom/yandex/mobile/ads/impl/np1$a;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/np1;)Lcom/yandex/mobile/ads/impl/sa1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/np1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/np1;)Lcom/yandex/mobile/ads/impl/tc2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/np1;->e:Lcom/yandex/mobile/ads/impl/tc2;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/np1;)Lcom/yandex/mobile/ads/impl/gd2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/np1;->c:Lcom/yandex/mobile/ads/impl/gd2;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/tc2;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/np1;->e:Lcom/yandex/mobile/ads/impl/tc2;

    return-void
.end method

.method public final play()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/np1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/np1;->d:Lcom/yandex/mobile/ads/impl/np1$a;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/sa1;->a(Lcom/yandex/mobile/ads/impl/yc2;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/np1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/np1;->b:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/kb1;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/sa1;->a(Lcom/yandex/mobile/ads/impl/kb1;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/np1;->c:Lcom/yandex/mobile/ads/impl/gd2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gd2;->b()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/np1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/sa1;->pauseAd()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/np1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sa1;->a()V

    return-void
.end method
