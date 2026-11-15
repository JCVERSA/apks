.class public Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;


# instance fields
.field private mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    invoke-direct {v0}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    return-void
.end method


# virtual methods
.method public getAsset(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getAsset(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getConfigs(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getConfigs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getConfigs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getConfigsList(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getConfigsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConfigsList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getConfigsList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLibrary(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getMedia(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getMedia(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getNativeLibrary(Ljava/lang/String;Z)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getNativeLibrary(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->initialize(Ljava/lang/String;)V

    return-void
.end method
