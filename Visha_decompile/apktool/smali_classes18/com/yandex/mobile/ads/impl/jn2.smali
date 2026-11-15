.class public final Lcom/yandex/mobile/ads/impl/jn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/t92;


# static fields
.field public static final a:Lcom/yandex/mobile/ads/impl/jn2;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/yandex/mobile/ads/impl/in2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/jn2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jn2;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/jn2;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/r92;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/jn2;->c:Lcom/yandex/mobile/ads/impl/in2;

    if-nez p0, :cond_2

    sget-object p0, Lcom/yandex/mobile/ads/impl/jn2;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/impl/jn2;->c:Lcom/yandex/mobile/ads/impl/in2;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/pa;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "322a737a-a0ca-44e0-bc85-649b1c7c1db6"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "478cb909-6ad1-4e12-84cc-b3629a789f93"

    :goto_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/we;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/we;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/we;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/in2;

    sget v2, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/yandex/mobile/ads/impl/in2;-><init>(Lcom/yandex/mobile/ads/impl/we;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ju1;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/jn2;->c:Lcom/yandex/mobile/ads/impl/in2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    move-object p0, v0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_2
    :goto_2
    return-object p0
.end method
