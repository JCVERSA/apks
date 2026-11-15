.class public final Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/varioqub/analyticadapter/VarioqubConfigAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000  2\u00020\u0001:\u0001!B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001d\u0010\u0013\u001a\u00020\u00082\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001a\u0010\u000fR\u001a\u0010\u001f\u001a\u00020\u000c8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;",
        "Lcom/yandex/varioqub/analyticadapter/VarioqubConfigAdapter;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;",
        "callback",
        "Lzfb;",
        "requestDeviceId",
        "(Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V",
        "requestUserId",
        "",
        "experiments",
        "setExperiments",
        "(Ljava/lang/String;)V",
        "",
        "",
        "triggeredTestIds",
        "setTriggeredTestIds",
        "(Ljava/util/Set;)V",
        "Lcom/yandex/varioqub/analyticadapter/data/ConfigData;",
        "configData",
        "reportConfigChanged",
        "(Lcom/yandex/varioqub/analyticadapter/data/ConfigData;)V",
        "apiKey",
        "a",
        "e",
        "Ljava/lang/String;",
        "getAdapterName",
        "()Ljava/lang/String;",
        "adapterName",
        "f",
        "Companion",
        "appmetrica-adapter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final f:Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter$Companion;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/yandex/varioqub/appmetricaadapter/impl/d;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Set;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->f:Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->a:Landroid/content/Context;

    invoke-static {}, Lcom/yandex/varioqub/appmetricaadapter/impl/e;->a()Lcom/yandex/varioqub/appmetricaadapter/impl/d;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->b:Lcom/yandex/varioqub/appmetricaadapter/impl/d;

    const-string p1, ""

    iput-object p1, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->c:Ljava/lang/String;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->d:Ljava/util/Set;

    const-string p1, "AppMetricaAdapter"

    iput-object p1, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->b:Lcom/yandex/varioqub/appmetricaadapter/impl/d;

    iget-object p0, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->a:Landroid/content/Context;

    invoke-interface {v0, p0, p1}, Lcom/yandex/varioqub/appmetricaadapter/impl/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getAdapterName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->e:Ljava/lang/String;

    return-object p0
.end method

.method public reportConfigChanged(Lcom/yandex/varioqub/analyticadapter/data/ConfigData;)V
    .locals 3

    iget-object p0, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->b:Lcom/yandex/varioqub/appmetricaadapter/impl/d;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/varioqub/analyticadapter/data/ConfigData;->getOldConfigVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "old_config"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yandex/varioqub/analyticadapter/data/ConfigData;->getNewConfigVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "new_config"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yandex/varioqub/analyticadapter/data/ConfigData;->getConfigLoadTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "timestamp"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v0}, Lcom/yandex/varioqub/appmetricaadapter/impl/d;->b(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public requestDeviceId(Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->b:Lcom/yandex/varioqub/appmetricaadapter/impl/d;

    iget-object p0, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->a:Landroid/content/Context;

    invoke-interface {v0, p0, p1}, Lcom/yandex/varioqub/appmetricaadapter/impl/d;->c(Landroid/content/Context;Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V

    return-void
.end method

.method public requestUserId(Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->b:Lcom/yandex/varioqub/appmetricaadapter/impl/d;

    iget-object p0, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->a:Landroid/content/Context;

    invoke-interface {v0, p0, p1}, Lcom/yandex/varioqub/appmetricaadapter/impl/d;->a(Landroid/content/Context;Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V

    return-void
.end method

.method public setExperiments(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->b:Lcom/yandex/varioqub/appmetricaadapter/impl/d;

    new-instance v0, Lcom/yandex/varioqub/appmetricaadapter/impl/k;

    invoke-direct {v0}, Lcom/yandex/varioqub/appmetricaadapter/impl/k;-><init>()V

    iget-object v1, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/varioqub/appmetricaadapter/impl/k;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->d:Ljava/util/Set;

    invoke-static {p0}, Li81;->c1(Ljava/util/Collection;)[J

    move-result-object p0

    iput-object p0, v0, Lcom/yandex/varioqub/appmetricaadapter/impl/k;->b:[J

    invoke-static {v0}, Lcom/yandex/varioqub/protobuf/nano/MessageNano;->toByteArray(Lcom/yandex/varioqub/protobuf/nano/MessageNano;)[B

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/yandex/varioqub/appmetricaadapter/impl/d;->a([B)V

    return-void
.end method

.method public setTriggeredTestIds(Ljava/util/Set;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->b:Lcom/yandex/varioqub/appmetricaadapter/impl/d;

    new-instance v0, Lcom/yandex/varioqub/appmetricaadapter/impl/k;

    invoke-direct {v0}, Lcom/yandex/varioqub/appmetricaadapter/impl/k;-><init>()V

    iget-object v1, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/varioqub/appmetricaadapter/impl/k;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->d:Ljava/util/Set;

    invoke-static {p0}, Li81;->c1(Ljava/util/Collection;)[J

    move-result-object p0

    iput-object p0, v0, Lcom/yandex/varioqub/appmetricaadapter/impl/k;->b:[J

    invoke-static {v0}, Lcom/yandex/varioqub/protobuf/nano/MessageNano;->toByteArray(Lcom/yandex/varioqub/protobuf/nano/MessageNano;)[B

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/yandex/varioqub/appmetricaadapter/impl/d;->a([B)V

    return-void
.end method
