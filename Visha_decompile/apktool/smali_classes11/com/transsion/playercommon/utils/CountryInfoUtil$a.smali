.class public Lcom/transsion/playercommon/utils/CountryInfoUtil$a;
.super Lcom/transsion/retrofit/callback/RetryCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/utils/CountryInfoUtil;->r(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Ljq0;IJZ)V
    .locals 0

    iput-boolean p5, p0, Lcom/transsion/playercommon/utils/CountryInfoUtil$a;->b:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/retrofit/callback/RetryCallback;-><init>(Ljq0;IJ)V

    return-void
.end method


# virtual methods
.method public onRequestFail(Ljq0;Ljava/lang/Throwable;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get_country_info_failed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "visha_CountryInfoUtil"

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->b()I

    move-result p2

    invoke-static {p1, p2}, Liz5;->b(ZI)V

    iget-boolean p0, p0, Lcom/transsion/playercommon/utils/CountryInfoUtil$a;->b:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->n()V

    :cond_1
    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->e()V

    return-void
.end method

.method public onRequestResponse(Ljq0;Lgu8;)V
    .locals 2

    invoke-virtual {p2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_CountryInfoUtil"

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get_country_info:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/CountryInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/CountryInfoBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/CountryInfoBean;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->c(Lcom/transsion/dbdata/beans/CountryInfoBean;)V

    iget-boolean p0, p0, Lcom/transsion/playercommon/utils/CountryInfoUtil$a;->b:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a()Lcom/transsion/dbdata/beans/CountryInfoBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->o(Lcom/transsion/dbdata/beans/CountryInfoBean;)V

    :cond_0
    invoke-static {}, Laz8;->a()Laz8;

    move-result-object p0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->a()Lcom/transsion/dbdata/beans/CountryInfoBean;

    move-result-object p1

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "visha_country_info"

    invoke-virtual {p0, p2, p1}, Laz8;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Laz8;->a()Laz8;

    move-result-object p0

    const-string p1, "r_t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Laz8;->g(Ljava/lang/String;J)V

    const/4 p0, 0x1

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->b()I

    move-result p1

    invoke-static {p0, p1}, Liz5;->b(ZI)V

    goto :goto_0

    :cond_1
    const-string p1, "get_country_info_failed"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->b()I

    move-result p2

    invoke-static {p1, p2}, Liz5;->b(ZI)V

    iget-boolean p0, p0, Lcom/transsion/playercommon/utils/CountryInfoUtil$a;->b:Z

    if-nez p0, :cond_2

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->n()V

    :cond_2
    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->e()V

    :goto_0
    return-void
.end method

.method public onStartRetry()V
    .locals 0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->b()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->d(I)V

    return-void
.end method
