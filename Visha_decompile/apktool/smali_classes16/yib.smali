.class public abstract Lyib;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    sget v0, Ljb0;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "https://dev-account.palm.tech"

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "https://test-account.palm.tech"

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string v0, "https://pre-account.palm.tech"

    goto :goto_0

    :cond_2
    const-string v0, "https://account.palm.tech"

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    sget v0, Ljb0;->a:I

    const-string v1, "https://test-auth-account.palm.tech"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v1, "https://pre-auth-account.palm.tech"

    goto :goto_0

    :cond_2
    const-string v1, "https://auth-account.palm.tech"

    :goto_0
    invoke-static {v1, v2}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
