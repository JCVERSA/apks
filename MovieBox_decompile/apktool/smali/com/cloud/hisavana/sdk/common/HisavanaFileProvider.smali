.class public Lcom/cloud/hisavana/sdk/common/HisavanaFileProvider;
.super Landroidx/core/content/FileProvider;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "HisavanaFileProvider"

    .line 6
    .line 7
    const-string v2, "onCreate"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Landroidx/core/content/FileProvider;->onCreate()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method
