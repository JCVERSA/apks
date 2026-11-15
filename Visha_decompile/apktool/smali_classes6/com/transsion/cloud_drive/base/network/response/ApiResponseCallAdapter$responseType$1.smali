.class public final Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter$responseType$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;->responseType()Ljava/lang/reflect/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0016\u00a2\u0006\u0002\u0010\u0005J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter$responseType$1",
        "Ljava/lang/reflect/ParameterizedType;",
        "getActualTypeArguments",
        "",
        "Ljava/lang/reflect/Type;",
        "()[Ljava/lang/reflect/Type;",
        "getOwnerType",
        "getRawType",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter$responseType$1;->this$0:Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 2

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter$responseType$1;->this$0:Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;

    invoke-static {p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;->access$getResultType$p(Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;)Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 0

    const-class p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    return-object p0
.end method
