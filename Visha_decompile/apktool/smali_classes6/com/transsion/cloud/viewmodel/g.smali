.class public final synthetic Lcom/transsion/cloud/viewmodel/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/VideoCloudData;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;Lcom/transsion/cloud/viewmodel/CloudViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/g;->b:Lcom/transsion/dbdata/beans/VideoCloudData;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/g;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/cloud/viewmodel/g;->d:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/g;->b:Lcom/transsion/dbdata/beans/VideoCloudData;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/g;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/g;->d:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->g(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;Lcom/transsion/cloud/viewmodel/CloudViewModel;ZLcom/transsion/cloud_drive/base/api/model/FileInfo;)Lzfb;

    move-result-object p0

    return-object p0
.end method
