.class public Lcom/mgtv/data/aphone/core/bean/AppInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# instance fields
.field public appName:Ljava/lang/String;

.field public appPermissions:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/AppInfoBean;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/AppInfoBean;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/AppInfoBean;->versionName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/data/aphone/core/bean/AppInfoBean;->versionCode:I

    return-void
.end method
