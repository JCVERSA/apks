.class public final Lcom/yandex/mobile/ads/impl/qi1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q9;

.field private final b:Lcom/yandex/mobile/ads/impl/m3;

.field private final c:Lcom/yandex/mobile/ads/impl/le2;

.field private final d:Lcom/yandex/mobile/ads/impl/y5;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/m3;Lcom/yandex/mobile/ads/impl/le2;Lcom/yandex/mobile/ads/impl/y5;)V
    .locals 1

    const-string v0, "adStateHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCompletionListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCompletedNotifier"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlayerEventsController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qi1;->a:Lcom/yandex/mobile/ads/impl/q9;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qi1;->b:Lcom/yandex/mobile/ads/impl/m3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qi1;->c:Lcom/yandex/mobile/ads/impl/le2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/qi1;->d:Lcom/yandex/mobile/ads/impl/y5;

    return-void
.end method


# virtual methods
.method public final a(ZI)V
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qi1;->a:Lcom/yandex/mobile/ads/impl/q9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/q9;->c()Lcom/yandex/mobile/ads/impl/bj1;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bj1;->a()Lcom/yandex/mobile/ads/impl/u4;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bj1;->b()Lcom/yandex/mobile/ads/impl/go0;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/qi1;->a:Lcom/yandex/mobile/ads/impl/q9;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/q9;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/vm0;

    move-result-object v2

    sget-object v3, Lcom/yandex/mobile/ads/impl/vm0;->b:Lcom/yandex/mobile/ads/impl/vm0;

    const/4 v4, 0x2

    if-ne v3, v2, :cond_1

    if-eqz p1, :cond_4

    if-ne p2, v4, :cond_4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qi1;->c:Lcom/yandex/mobile/ads/impl/le2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/le2;->c()V

    goto :goto_0

    :cond_1
    if-ne p2, v4, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/qi1;->e:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qi1;->d:Lcom/yandex/mobile/ads/impl/y5;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/y5;->i(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/qi1;->e:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/qi1;->e:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qi1;->d:Lcom/yandex/mobile/ads/impl/y5;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/y5;->h(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qi1;->b:Lcom/yandex/mobile/ads/impl/m3;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/m3;->a(Lcom/yandex/mobile/ads/impl/u4;Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_4
    :goto_0
    return-void
.end method
