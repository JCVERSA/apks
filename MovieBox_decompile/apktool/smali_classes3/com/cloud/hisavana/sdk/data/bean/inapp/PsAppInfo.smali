.class public Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private apkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private appInfo:Ljava/lang/String;

.field private modelBlack:Ljava/lang/String;

.field private modelWhite:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getApkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->apkList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->appInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModelBlack()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->modelBlack:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModelWhite()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->modelWhite:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
