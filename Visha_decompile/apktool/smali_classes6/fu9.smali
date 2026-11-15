.class public final Lfu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leu9;


# instance fields
.field public final a:Lgu9;


# direct methods
.method public constructor <init>(Lgu9;)V
    .locals 1

    const-string v0, "spaceService"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfu9;->a:Lgu9;

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/cloud_drive/base/api/request/MccMap;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    new-instance v0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;

    invoke-direct {v0, p1}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;-><init>(Lcom/transsion/cloud_drive/base/api/request/MccMap;)V

    iget-object p0, p0, Lfu9;->a:Lgu9;

    invoke-interface {p0, v0}, Lgu9;->b(Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/transsion/cloud_drive/base/api/request/MccMap;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    new-instance v0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceRequest;

    invoke-direct {v0, p1}, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceRequest;-><init>(Lcom/transsion/cloud_drive/base/api/request/MccMap;)V

    iget-object p0, p0, Lfu9;->a:Lgu9;

    invoke-interface {p0, v0}, Lgu9;->a(Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public c()Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 0

    iget-object p0, p0, Lfu9;->a:Lgu9;

    invoke-interface {p0}, Lgu9;->c()Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method
