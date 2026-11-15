.class public Lcom/mgadplus/netlib/base/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/netlib/base/a$a;
    }
.end annotation


# static fields
.field private static a:Lokhttp3/OkHttpClient;

.field private static b:Lcom/mgadplus/netlib/base/a$a;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/mgadplus/netlib/base/a;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Lcom/mgadplus/netlib/base/a$a;

    invoke-direct {v1}, Lcom/mgadplus/netlib/base/a$a;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/mgadplus/netlib/base/a$a;->a(Ljava/util/HashMap;)Lcom/mgadplus/netlib/base/a$a;

    .line 4
    invoke-static {}, Lcom/mgmi/f/f;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mgadplus/netlib/base/a$a;->a(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/mgadplus/netlib/base/a$1;

    invoke-direct {v0}, Lcom/mgadplus/netlib/base/a$1;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mgadplus/netlib/base/a$a;->a(Lokhttp3/Interceptor;)Lcom/mgadplus/netlib/base/a$a;

    .line 6
    invoke-static {v1}, Lcom/mgadplus/netlib/base/a;->a(Lcom/mgadplus/netlib/base/a$a;)V

    return-void
.end method

.method public static a(Lcom/mgadplus/netlib/base/a$a;)V
    .locals 3

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/mgadplus/netlib/base/a;->a:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    if-eqz p0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/mgadplus/netlib/base/a$a;->c()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/mgadplus/netlib/base/a$a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    .line 12
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Lcom/mgadplus/netlib/base/a$2;

    invoke-direct {v1, p0}, Lcom/mgadplus/netlib/base/a$2;-><init>(Lcom/mgadplus/netlib/base/a$a;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 14
    invoke-virtual {p0}, Lcom/mgadplus/netlib/base/a$a;->b()Lokhttp3/CookieJar;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/mgadplus/netlib/base/a$a;->b()Lokhttp3/CookieJar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 16
    :cond_3
    sput-object p0, Lcom/mgadplus/netlib/base/a;->b:Lcom/mgadplus/netlib/base/a$a;

    .line 17
    :cond_4
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/mgadplus/netlib/base/a;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static b()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/mgadplus/netlib/base/a;->a:Lokhttp3/OkHttpClient;

    return-object v0
.end method
