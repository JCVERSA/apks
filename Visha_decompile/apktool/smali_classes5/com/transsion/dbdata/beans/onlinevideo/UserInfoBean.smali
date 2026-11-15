.class public Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;,
        Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;,
        Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private target:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target"
    .end annotation
.end field

.field private userInfoVo:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_info_vo"
    .end annotation
.end field

.field private vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vip_info_vos_map"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVIPInfo()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;
    .locals 5

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->b(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->b(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->b(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->b(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->target:I

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->target:I

    if-ne v3, v4, :cond_3

    return-object v2

    :cond_4
    iget v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->target:I

    if-lez v0, :cond_5

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;-><init>()V

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->target:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->setId(Ljava/lang/Integer;)V

    return-object v0

    :cond_5
    return-object v1
.end method

.method public getTarget()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->target:I

    return p0
.end method

.method public getUserInfoVo()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->userInfoVo:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    return-object p0
.end method

.method public getVIP(I)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;
    .locals 6

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    const/4 v1, 0x0

    const-string v2, "not get vip info by source type "

    if-nez v0, :cond_0

    sget-object p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->b(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    move-result-object v0

    const-string v3, "get vip info by source type "

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->b(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->b(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->b(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getSourceType()I

    move-result v5

    if-ne v5, p1, :cond_1

    sget-object p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-static {p0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getSourceType()I

    move-result v4

    if-ne v4, p1, :cond_3

    sget-object p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    sget-object p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public getVipInfoVosMap()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    return-object p0
.end method

.method public isLoggedIn()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->userInfoVo:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->userInfoVo:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    invoke-static {p0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;->a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setUserInfoVo(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->userInfoVo:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    return-void
.end method

.method public setVipInfoVosMap(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfoBean{target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->target:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "userInfoVo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->userInfoVo:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$UserInfoVoBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vipInfoVosMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;->vipInfoVosMap:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
