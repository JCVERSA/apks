.class public abstract Lcom/yandex/varioqub/appmetricaadapter/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/yandex/varioqub/appmetricaadapter/impl/d;
    .locals 5

    const-class v0, Lcom/yandex/varioqub/appmetricaadapter/impl/j;

    const-string v1, "io.appmetrica.analytics.AppMetrica"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v1, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    new-instance v0, Lcom/yandex/varioqub/appmetricaadapter/impl/c;

    invoke-direct {v0}, Lcom/yandex/varioqub/appmetricaadapter/impl/c;-><init>()V

    goto :goto_1

    :cond_0
    const-string v1, "com.yandex.metrica.YandexMetrica"

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    if-eqz v2, :cond_1

    new-instance v0, Lcom/yandex/varioqub/appmetricaadapter/impl/i;

    invoke-direct {v0}, Lcom/yandex/varioqub/appmetricaadapter/impl/i;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/yandex/varioqub/appmetricaadapter/impl/f;

    invoke-direct {v0}, Lcom/yandex/varioqub/appmetricaadapter/impl/f;-><init>()V

    :goto_1
    return-object v0
.end method
