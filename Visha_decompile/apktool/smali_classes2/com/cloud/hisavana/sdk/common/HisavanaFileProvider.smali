.class public Lcom/cloud/hisavana/sdk/common/HisavanaFileProvider;
.super Landroidx/core/content/FileProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "HisavanaFileProvider"

    const-string v2, "onCreate"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/core/content/FileProvider;->onCreate()Z

    move-result p0

    return p0
.end method
