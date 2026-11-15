.class public final synthetic Lo41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo41;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo41;->b:Ljava/lang/String;

    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Lzfb;

    move-result-object p0

    return-object p0
.end method
