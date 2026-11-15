.class Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/activity/SspCommonWebActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/activity/SspCommonWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;->a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iget-object p2, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;->a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    iget-boolean p3, p2, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->a:Z

    if-nez p3, :cond_0

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->a:Z

    const-string p3, "2"

    invoke-static {p2, p3, p1}, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->a(Lcom/mgtv/ssp/activity/SspCommonWebActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/hunantv/imgo/util/u;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/mgtv/ssp/apkDownload/d;->a()Lcom/mgtv/ssp/apkDownload/d;

    move-result-object p2

    iget-object p3, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;->a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    invoke-static {p3}, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->a(Lcom/mgtv/ssp/activity/SspCommonWebActivity;)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lcom/mgtv/ssp/activity/SspCommonWebActivity$3$1;

    invoke-direct {p5, p0, p1}, Lcom/mgtv/ssp/activity/SspCommonWebActivity$3$1;-><init>(Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4, p1, p5}, Lcom/mgtv/ssp/apkDownload/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/apkDownload/d$b;)V

    :cond_1
    return-void
.end method
