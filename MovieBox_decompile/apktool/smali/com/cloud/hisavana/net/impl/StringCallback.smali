.class public abstract Lcom/cloud/hisavana/net/impl/StringCallback;
.super Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;
.source "source.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;-><init>(Z)V

    return-void
.end method

.method public static w([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    move-object p0, v0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    :try_start_0
    const-string p1, "\ufeff"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    :cond_1
    return-object p0
.end method


# virtual methods
.method public i(I[BLjava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/cloud/hisavana/net/impl/StringCallback;->w([BLjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lcom/cloud/hisavana/net/impl/StringCallback$3;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/net/impl/StringCallback$3;-><init>(Lcom/cloud/hisavana/net/impl/StringCallback;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->q(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p2

    .line 17
    new-instance p3, Lcom/cloud/hisavana/net/impl/StringCallback$4;

    .line 18
    .line 19
    invoke-direct {p3, p0, p1, p2}, Lcom/cloud/hisavana/net/impl/StringCallback$4;-><init>(Lcom/cloud/hisavana/net/impl/StringCallback;ILjava/lang/Exception;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p3}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->q(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public l(Lokhttp3/Headers;)V
    .locals 0

    .line 1
    return-void
.end method

.method public n(I[B)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/cloud/hisavana/net/impl/StringCallback;->w([BLjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lcom/cloud/hisavana/net/impl/StringCallback$1;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/net/impl/StringCallback$1;-><init>(Lcom/cloud/hisavana/net/impl/StringCallback;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->q(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p2

    .line 17
    new-instance v0, Lcom/cloud/hisavana/net/impl/StringCallback$2;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/net/impl/StringCallback$2;-><init>(Lcom/cloud/hisavana/net/impl/StringCallback;ILjava/lang/Exception;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->q(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public abstract x(ILjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract y(ILjava/lang/String;)V
.end method
