.class public final Lcom/yandex/mobile/ads/impl/c9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vf1;

.field private final b:Lcom/yandex/mobile/ads/impl/vf1;

.field private final c:Z

.field private final d:Lcom/yandex/mobile/ads/impl/cv;

.field private final e:Lcom/yandex/mobile/ads/impl/xk0;


# direct methods
.method private constructor <init>()V
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/cv;->c:Lcom/yandex/mobile/ads/impl/cv;

    sget-object v1, Lcom/yandex/mobile/ads/impl/xk0;->c:Lcom/yandex/mobile/ads/impl/xk0;

    sget-object v2, Lcom/yandex/mobile/ads/impl/vf1;->c:Lcom/yandex/mobile/ads/impl/vf1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/c9;->d:Lcom/yandex/mobile/ads/impl/cv;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/c9;->e:Lcom/yandex/mobile/ads/impl/xk0;

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/c9;->a:Lcom/yandex/mobile/ads/impl/vf1;

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/c9;->b:Lcom/yandex/mobile/ads/impl/vf1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/c9;->c:Z

    return-void
.end method

.method public static a()Lcom/yandex/mobile/ads/impl/c9;
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/c9;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/c9;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/vf1;->c:Lcom/yandex/mobile/ads/impl/vf1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c9;->a:Lcom/yandex/mobile/ads/impl/vf1;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/vf1;->c:Lcom/yandex/mobile/ads/impl/vf1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c9;->b:Lcom/yandex/mobile/ads/impl/vf1;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c9;->a:Lcom/yandex/mobile/ads/impl/vf1;

    const-string v2, "impressionOwner"

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c9;->b:Lcom/yandex/mobile/ads/impl/vf1;

    const-string v2, "mediaEventsOwner"

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c9;->d:Lcom/yandex/mobile/ads/impl/cv;

    const-string v2, "creativeType"

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c9;->e:Lcom/yandex/mobile/ads/impl/xk0;

    const-string v2, "impressionType"

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/c9;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "isolateVerificationScripts"

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
