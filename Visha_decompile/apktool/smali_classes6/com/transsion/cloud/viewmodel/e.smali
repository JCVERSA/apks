.class public final synthetic Lcom/transsion/cloud/viewmodel/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu74;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/e;->b:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/e;->b:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    check-cast p3, Ljava/lang/Integer;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudStorageInfo$1;->g(Lcom/transsion/cloud/viewmodel/CloudViewModel;ZLcom/transsion/cloud_drive/base/api/model/SpaceStatistics;Ljava/lang/Integer;)Lzfb;

    move-result-object p0

    return-object p0
.end method
