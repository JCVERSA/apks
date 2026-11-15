.class public Lcom/hunantv/imgo/net/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "ounion.api.mgtv.com"

.field public static b:Ljava/lang/String; = "ounion.bz.mgtv.com"

.field public static c:Ljava/lang/String; = "cp.bz.mgtv.com"

.field public static d:Ljava/lang/String; = "odsun.log.mgtv.com"

.field public static e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    const-string v1, "https://"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->apiDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    iget-object v1, v1, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->apiDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "https://union.api.mgtv.com"

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    const-string v1, "https://"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->cpDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    iget-object v1, v1, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->cpDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "https://cp.bz.mgtv.com"

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    const-string v1, "https://"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->dsunDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    iget-object v1, v1, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->dsunDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "https://dsun.log.mgtv.com"

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->dataDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    iget-object v1, v1, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->dataDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://hd-ext-v1.log.mgtv.com"

    return-object v0

    :cond_2
    const-string v0, "https://aphone.v1.mgtv.com"

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->v2LogDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    iget-object v1, v1, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->v2LogDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://hd-ext-v2.log.mgtv.com"

    return-object v0

    :cond_2
    const-string v0, "https://v2.log.mgtv.com"

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->playLogDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    iget-object v1, v1, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->playLogDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://hd-ext-play.log.mgtv.com"

    return-object v0

    :cond_2
    const-string v0, "https://v1-play.log.mgtv.com"

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->supportDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    iget-object v1, v1, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->supportDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://support.api.mgtv.com"

    return-object v0

    :cond_2
    const-string v0, "http://support.api.hunantv.com"

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->apperrLogDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    iget-object v1, v1, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->apperrLogDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    const-string v0, "https://apperr.log.mgtv.com"

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->guidDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    iget-object v1, v1, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->guidDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    const-string v0, "https://guids.api.mgtv.com"

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->retryDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    iget-object v1, v1, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->retryDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    const-string v0, "https://cp2.bz.mgtv.com"

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->getTokenDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    iget-object v1, v1, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->getTokenDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    const-string v0, "https://nuc.api.mgtv.com"

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    const-string v0, "SDKCONFIG_RETRY_DOMAIN"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "https://union2.api.mgtv.com"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
