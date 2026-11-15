.class Lcom/mgtv/ssp/activity/SspCommonWebActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/apkDownload/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$3$1;->b:Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;

    iput-object p2, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$3$1;->b:Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;

    iget-object v0, v0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;->a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    const-string v1, "3"

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$3$1;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->a(Lcom/mgtv/ssp/activity/SspCommonWebActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
