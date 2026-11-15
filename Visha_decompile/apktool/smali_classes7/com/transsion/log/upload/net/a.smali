.class public final Lcom/transsion/log/upload/net/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/log/upload/net/a$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/log/upload/net/a$a;

.field public static c:Z

.field public static final d:Lyi5;


# instance fields
.field public final a:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/log/upload/net/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/log/upload/net/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/log/upload/net/a;->b:Lcom/transsion/log/upload/net/a$a;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/log/upload/net/a;->c:Z

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lhz6;

    invoke-direct {v1}, Lhz6;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/log/upload/net/a;->d:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/log/upload/net/a;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static synthetic a()Lcom/transsion/log/upload/net/a;
    .locals 1

    invoke-static {}, Lcom/transsion/log/upload/net/a;->e()Lcom/transsion/log/upload/net/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b()Lyi5;
    .locals 1

    sget-object v0, Lcom/transsion/log/upload/net/a;->d:Lyi5;

    return-object v0
.end method

.method public static final e()Lcom/transsion/log/upload/net/a;
    .locals 1

    new-instance v0, Lcom/transsion/log/upload/net/a;

    invoke-direct {v0}, Lcom/transsion/log/upload/net/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    const-string p0, "url"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    sget-object p0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final d()Lokhttp3/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/upload/net/a;->a:Lokhttp3/OkHttpClient;

    return-object p0
.end method
