.class public Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VipInfoVosMapBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;,
        Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;
    }
.end annotation


# instance fields
.field private vip:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vip"
    .end annotation
.end field

.field private withoutVip:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withoutVip"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->vip:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->withoutVip:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    return-object p0
.end method


# virtual methods
.method public getVip()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->vip:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    return-object p0
.end method

.method public getWithoutVip()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->withoutVip:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    return-object p0
.end method

.method public setVip(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->vip:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    return-void
.end method

.method public setWithoutVip(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->withoutVip:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VipInfoVosMapBean{withoutVip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->withoutVip:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$WithoutVipBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean;->vip:Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosMapBean$VipBean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
