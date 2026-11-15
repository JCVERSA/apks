.class public Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;,
        Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$Condition;
    }
.end annotation


# static fields
.field public static final TYPE_CAPTURE_OPEN:I = 0x7

.field public static final TYPE_CODE_REMAIN_TIME:I = 0x8

.field public static final TYPE_PRIVACY_UPDATE:I = 0xf

.field public static final TYPE_SUPPORT_LIST:I = 0xe

.field public static final UNIT_HOUR:Ljava/lang/String; = "hour"

.field public static final UNIT_TIMES:Ljava/lang/String; = "times"


# instance fields
.field public cloudClientConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field public sysTime:J

.field public timeStamp:J

.field public validPeriod:J

.field public versionId:Ljava/lang/String;

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureOpen(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->getConfig(Landroid/content/Context;I)Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v1, "capture-open"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static conversionVersion(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getCloudClientConfigs(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "AccountPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key_cloud_config"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->cloudClientConfigs:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getConfig(Landroid/content/Context;I)Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;
    .locals 2

    invoke-static {p0}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->getCloudClientConfigs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;

    iget v1, v1, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->type:I

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCount(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->getCloudClientConfigs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;

    iget v1, v1, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->type:I

    const/16 v2, 0x8

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    const-string v2, "remainTime"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x64

    return p0
.end method

.method public static getValidPeriod(Landroid/content/Context;)J
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "AccountPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key_cloud_config"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;

    iget-wide v0, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->validPeriod:J

    return-wide v0

    :cond_0
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "AccountPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key_cloud_config"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->versionId:Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static needRefresh(Landroid/content/Context;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "AccountPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key_cloud_config"

    const-string v2, ""

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;

    invoke-virtual {v0, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->timeStamp:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    cmp-long p0, v3, v5

    if-ltz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public static privacyAgree(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {p0, v1}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->getConfig(Landroid/content/Context;I)Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    const-string v2, "privacyVersion"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    const-string v2, "userAgreementVersion"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "privacy_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "user_agreement_version"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static privacyNeedAgree(Landroid/content/Context;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v3, 0xf

    invoke-static {p0, v3}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->getConfig(Landroid/content/Context;I)Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object v3, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    const-string v4, "privacyVersion"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    const-string v4, "userAgreementVersion"

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->conversionVersion(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_version:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "privacy_version"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->conversionVersion(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-le v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {p0}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->conversionVersion(Ljava/lang/String;)I

    move-result p0

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_user_agreement_version:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "user_agreement_version"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->conversionVersion(Ljava/lang/String;)I

    move-result v0

    if-le p0, v0, :cond_1

    move p0, v5

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-nez v3, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v2, v5

    :cond_3
    return v2
.end method

.method public static privacyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    const/16 v0, 0xf

    invoke-static {p0, v0}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->getConfig(Landroid/content/Context;I)Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    const-string v0, "privacyVersion"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static support(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->getConfig(Landroid/content/Context;I)Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v1, "support"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ", Carlcare Account"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Hi Account,X Account"

    return-object p0
.end method
