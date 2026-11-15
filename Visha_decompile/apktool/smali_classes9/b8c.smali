.class public final synthetic Lb8c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

.field public final synthetic c:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb8c;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iput-object p2, p0, Lb8c;->c:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb8c;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iget-object p0, p0, Lb8c;->c:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    check-cast p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->r0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method
