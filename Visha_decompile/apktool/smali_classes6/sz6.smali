.class public final Lsz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    const-string p0, "chain"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ld07;->a:Ld07;

    invoke-virtual {p0}, Ld07;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/cloud_drive/base/exceptions/NoConnectivityException;

    invoke-direct {p0}, Lcom/transsion/cloud_drive/base/exceptions/NoConnectivityException;-><init>()V

    throw p0
.end method
