.class Lcom/transsion/vishatransfer/activity/WifiActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/activity/WifiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

.field final synthetic val$transfer:Lcom/transsion/vishatransfer/manager/ITransferHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/activity/WifiActivity;Lcom/transsion/vishatransfer/manager/ITransferHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$8;->this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

    iput-object p2, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$8;->val$transfer:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    new-instance v0, Lcom/transsion/vishatransfer/data/FileData;

    invoke-direct {v0}, Lcom/transsion/vishatransfer/data/FileData;-><init>()V

    const-string v1, "/storage/emulated/0/Movies/20240805/\u6cd5\u8bed\u8bc6\u522b\u6cd5\u8bed/\u5b78\u6cd5\u6587___Extra_French___L_arriv\u00e9e_de_Sam_(1_13)_-_\u770b\u5f71\u7247\u5b78\u6cd5\u6587.mp4"

    invoke-virtual {v0, v1}, Lcom/transsion/vishatransfer/data/FileData;->setPath(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/test1233211.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/vishatransfer/data/FileData;->setReceivePath(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/vishatransfer/data/FileData;->setCover(Z)V

    new-instance v3, Lcom/transsion/vishatransfer/data/FileData;

    invoke-direct {v3}, Lcom/transsion/vishatransfer/data/FileData;-><init>()V

    invoke-virtual {v3, v1}, Lcom/transsion/vishatransfer/data/FileData;->setPath(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/test1233212.mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/vishatransfer/data/FileData;->setReceivePath(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/transsion/vishatransfer/data/FileData;->setCover(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/transsion/vishatransfer/data/FileData;

    invoke-direct {v6}, Lcom/transsion/vishatransfer/data/FileData;-><init>()V

    invoke-virtual {v6, v1}, Lcom/transsion/vishatransfer/data/FileData;->setPath(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/transsion/vishatransfer/data/FileData;->setReceivePath(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/transsion/vishatransfer/data/FileData;->setCover(Z)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/transsion/vishatransfer/data/FileData;

    invoke-direct {v3}, Lcom/transsion/vishatransfer/data/FileData;-><init>()V

    invoke-virtual {v3, v1}, Lcom/transsion/vishatransfer/data/FileData;->setPath(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/test1233212+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "+.mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/transsion/vishatransfer/data/FileData;->setReceivePath(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/transsion/vishatransfer/data/FileData;->setCover(Z)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$8;->val$transfer:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    invoke-interface {p0, v4}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->sendFileDataToServerAsync(Ljava/util/List;)V

    return-void
.end method
