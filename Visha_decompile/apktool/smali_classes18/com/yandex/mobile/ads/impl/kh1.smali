.class public final Lcom/yandex/mobile/ads/impl/kh1;
.super Lcom/yandex/mobile/ads/impl/qk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/qk<",
        "Lcom/yandex/mobile/ads/impl/xc1;",
        ">;"
    }
.end annotation


# static fields
.field private static final x:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/yandex/mobile/ads/impl/kh1;->x:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/qk$a<",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/qk;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/kh1;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->r()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->s()V

    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .locals 3

    .line 3
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->Q()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lcom/yandex/mobile/ads/impl/kh1;->x:I

    .line 6
    :goto_0
    const-string v1, "context"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ju1;->H()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_1
    new-instance v1, Lcom/yandex/mobile/ads/impl/m00;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    invoke-direct {v1, v2, v0, p1}, Lcom/yandex/mobile/ads/impl/m00;-><init>(FII)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/up1;->a(Lcom/yandex/mobile/ads/impl/m00;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/xq1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            ")",
            "Lcom/yandex/mobile/ads/impl/xq1<",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            ">;"
        }
    .end annotation

    .line 1
    const-string p0, "response"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wh0;->a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/tm$a;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/xq1;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/tm$a;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    const-string p1, "success(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
