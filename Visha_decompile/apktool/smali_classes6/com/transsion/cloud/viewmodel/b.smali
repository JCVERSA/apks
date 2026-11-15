.class public final synthetic Lcom/transsion/cloud/viewmodel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

.field public final synthetic c:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/b;->b:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/b;->c:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/b;->b:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/b;->c:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$renameFile$1;->g(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;ZLcom/transsion/cloud_drive/base/api/model/FileInfo;)Lzfb;

    move-result-object p0

    return-object p0
.end method
