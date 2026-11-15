.class public final synthetic Lcom/transsion/cloud/viewmodel/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/f;->b:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/f;->b:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    invoke-static {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getFreeSpaceInfo$1;->g(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;)Lzfb;

    move-result-object p0

    return-object p0
.end method
