.class public final Lcom/yandex/mobile/ads/impl/if;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ib2;

.field private final b:Lcom/yandex/mobile/ads/impl/ue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect AppMetrica Integration. The minimum supported version of AppMetrica SDK is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "7.7.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (inclusive) and the maximum supported version is 8.0.0 (exclusive). Please, check your AppMetrica integration."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/if;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect AppMetrica Version. The minimum supported version of AppMetrica SDK is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (inclusive) and the maximum supported version is 8.0.0 (exclusive). And the current version of AppMetrica SDK is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/if;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ib2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ib2;-><init>()V

    .line 2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/ve;->a()Lcom/yandex/mobile/ads/impl/pf;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/if;-><init>(Lcom/yandex/mobile/ads/impl/ib2;Lcom/yandex/mobile/ads/impl/ue;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ib2;Lcom/yandex/mobile/ads/impl/ue;)V
    .locals 1

    .line 4
    const-string v0, "versionNameParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMetricaAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/if;->a:Lcom/yandex/mobile/ads/impl/ib2;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/if;->b:Lcom/yandex/mobile/ads/impl/ue;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 15
    sget-object v0, Lcom/yandex/mobile/ads/impl/if;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/bp0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/if;->b:Lcom/yandex/mobile/ads/impl/ue;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ue;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/if;->a:Lcom/yandex/mobile/ads/impl/ib2;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "7.7.2"

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/ib2;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/hb2;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/if;->a:Lcom/yandex/mobile/ads/impl/ib2;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "8.0.0"

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/ib2;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/hb2;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/if;->a:Lcom/yandex/mobile/ads/impl/ib2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ib2;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/hb2;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/hb2;->a(Lcom/yandex/mobile/ads/impl/hb2;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 8
    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/hb2;->a(Lcom/yandex/mobile/ads/impl/hb2;)I

    move-result p0

    if-gez p0, :cond_2

    return-void

    .line 9
    :cond_2
    new-instance p0, Lcom/yandex/mobile/ads/impl/bp0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/if;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0, v0}, Lcom/yandex/mobile/ads/impl/bp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    throw p0

    .line 12
    :cond_3
    new-instance p0, Lcom/yandex/mobile/ads/impl/bp0;

    sget-object v0, Lcom/yandex/mobile/ads/impl/if;->c:Ljava/lang/String;

    .line 13
    invoke-direct {p0, v0, v0}, Lcom/yandex/mobile/ads/impl/bp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    throw p0
.end method
