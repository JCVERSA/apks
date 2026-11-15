.class public abstract Lwrd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ssp/MGTVAdFactory;->getChToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbtd;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "VlRnbUAhJDEwMDlBZEJveQ=="

    invoke-static {p1}, Lihd;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Ln4d;->b(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ssp/MGTVAdFactory;->getChToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbtd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "VlRnbUAhJDEwMDlBZEJveQ=="

    invoke-static {v0}, Lihd;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Ln4d;->b(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
