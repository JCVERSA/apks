.class public abstract Lcom/yandex/mobile/ads/impl/qk;
.super Lcom/yandex/mobile/ads/impl/up1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/qk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/mobile/ads/impl/up1<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final w:I


# instance fields
.field private final s:Landroid/content/Context;

.field private final t:Lcom/yandex/mobile/ads/impl/qk$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/qk$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final u:Lcom/yandex/mobile/ads/impl/eq1;

.field private final v:Lcom/yandex/mobile/ads/impl/mq1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/yandex/mobile/ads/impl/qk;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;Lcom/yandex/mobile/ads/impl/eq1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/qk$a<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/eq1;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/up1;-><init>(ILjava/lang/String;Lcom/yandex/mobile/ads/impl/xq1$a;)V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qk;->s:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/qk;->t:Lcom/yandex/mobile/ads/impl/qk$a;

    .line 5
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/qk;->u:Lcom/yandex/mobile/ads/impl/eq1;

    .line 6
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->q()V

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/m00;

    .line 8
    sget p2, Lcom/yandex/mobile/ads/impl/qk;->w:I

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    .line 9
    invoke-direct {p1, p3, p2, p4}, Lcom/yandex/mobile/ads/impl/m00;-><init>(FII)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/up1;->a(Lcom/yandex/mobile/ads/impl/m00;)V

    .line 10
    sget-object p1, Lcom/yandex/mobile/ads/impl/mq1;->b:Lcom/yandex/mobile/ads/impl/mq1;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qk;->v:Lcom/yandex/mobile/ads/impl/mq1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/qk;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;Lcom/yandex/mobile/ads/impl/eq1;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk;->s:Landroid/content/Context;

    .line 2
    const-string v1, "context"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v1, Lcom/yandex/mobile/ads/impl/n2;->e:I

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/n2$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/n2;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qk;->w()Lcom/yandex/mobile/ads/impl/mq1;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/n2;->a(Lcom/yandex/mobile/ads/impl/mq1;Ljava/lang/Integer;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk;->t:Lcom/yandex/mobile/ads/impl/qk$a;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/xq1$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    const-string v0, "headers"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/yandex/mobile/ads/impl/vh0;->c0:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    sget-object v0, Lcom/yandex/mobile/ads/impl/ox1;->a:Lcom/yandex/mobile/ads/impl/ox1$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ox1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ox1;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ox1;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/si2;
    .locals 1

    const-string v0, "volleyError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/si2;->b:Lcom/yandex/mobile/ads/impl/xc1;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/yandex/mobile/ads/impl/xc1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/qk;->a(Ljava/lang/Integer;)V

    const-string p0, "parseNetworkError(...)"

    invoke-static {p1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public w()Lcom/yandex/mobile/ads/impl/mq1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk;->v:Lcom/yandex/mobile/ads/impl/mq1;

    return-object p0
.end method

.method public final x()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk;->u:Lcom/yandex/mobile/ads/impl/eq1;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/eq1;->b()V

    :cond_0
    return-void
.end method
