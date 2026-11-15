.class public final Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor$a;


# instance fields
.field public final b:I

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;->d:Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor$a;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;->b:I

    iput-wide p2, p0, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;->c:J

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;->c:J

    return-wide v0
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    const/4 v0, 0x1

    if-nez p0, :cond_4

    instance-of p0, p1, Ljava/net/ConnectException;

    if-nez p0, :cond_4

    instance-of p0, p1, Ljava/net/SocketException;

    if-nez p0, :cond_4

    instance-of p0, p1, Ljava/net/UnknownHostException;

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_0
    if-eqz p0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_2

    instance-of v1, p0, Ljava/net/ConnectException;

    if-nez v1, :cond_2

    instance-of v1, p0, Ljava/net/SocketException;

    if-nez v1, :cond_2

    instance-of v1, p0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_2
    return v0
.end method

.method public final c(Ljava/lang/Throwable;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;->b(Ljava/lang/Throwable;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toLowerCase(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_2

    :cond_1
    const-string p0, ""

    :cond_2
    const-string p1, "network"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v2, v3}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "connection"

    invoke-static {p0, p1, v1, v2, v3}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "timeout"

    invoke-static {p0, p1, v1, v2, v3}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "unreachable"

    invoke-static {p0, p1, v1, v2, v3}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "refused"

    invoke-static {p0, p1, v1, v2, v3}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "ms\u540e\u91cd\u8bd5\uff0c\u5f53\u524d\u5c1d\u8bd5\u6b21\u6570\uff1a"

    const-string v4, "NetworkRetryInterceptor"

    const-string v0, "chain"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v5

    iget v6, v1, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;->b:I

    const/4 v7, 0x0

    if-ltz v6, :cond_4

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v7

    :goto_0
    const/4 v9, 0x1

    :try_start_0
    sget-object v10, Ld07;->a:Ld07;

    invoke-virtual {v10}, Ld07;->a()Z

    move-result v10

    if-nez v10, :cond_1

    iget v10, v1, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;->b:I

    if-ge v8, v10, :cond_0

    sget-object v10, Loq5;->a:Loq5;

    iget-wide v11, v1, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;->c:J

    add-int/lit8 v13, v8, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u7b49\u5f85"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v10, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor$intercept$1;

    invoke-direct {v10, v1, v7}, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor$intercept$1;-><init>(Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;Lwh1;)V

    invoke-static {v7, v10, v9, v7}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/cloud_drive/base/exceptions/NoConnectivityException;

    invoke-direct {v0}, Lcom/transsion/cloud_drive/base/exceptions/NoConnectivityException;-><init>()V

    throw v0

    :cond_1
    invoke-interface {v2, v5}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;->c(Ljava/lang/Throwable;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, v1, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;->b:I

    if-ge v8, v10, :cond_3

    sget-object v10, Loq5;->a:Loq5;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v1, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;->c:J

    add-int/lit8 v14, v8, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u7f51\u7edc\u5f02\u5e38\uff1a"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\uff0c\u7b49\u5f85"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v4, v9}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v9, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor$intercept$2;

    invoke-direct {v9, v1, v7}, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor$intercept$2;-><init>(Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;Lwh1;)V

    const/4 v10, 0x1

    invoke-static {v7, v9, v10, v7}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eq v8, v6, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_2
    move-object v7, v0

    goto :goto_3

    :cond_3
    throw v0

    :cond_4
    :goto_3
    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    new-instance v7, Ljava/io/IOException;

    const-string v0, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25"

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw v7
.end method
