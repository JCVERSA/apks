.class Lcom/mgtv/ssp/apkDownload/d$1;
.super Lcom/hunantv/imgo/b/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/apkDownload/d;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/apkDownload/d;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/apkDownload/d;Lcom/hunantv/imgo/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/apkDownload/d$1;->a:Lcom/mgtv/ssp/apkDownload/d;

    invoke-direct {p0, p2}, Lcom/hunantv/imgo/b/b$b;-><init>(Lcom/hunantv/imgo/b/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/hunantv/imgo/b/b$b;->a()V

    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d$1;->a:Lcom/mgtv/ssp/apkDownload/d;

    invoke-static {p0}, Lcom/mgtv/ssp/apkDownload/d;->a(Lcom/mgtv/ssp/apkDownload/d;)Lcom/hunantv/imgo/b/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/apkDownload/d;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/hunantv/imgo/b/b$b;->b()V

    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d$1;->a:Lcom/mgtv/ssp/apkDownload/d;

    invoke-static {p0}, Lcom/mgtv/ssp/apkDownload/d;->a(Lcom/mgtv/ssp/apkDownload/d;)Lcom/hunantv/imgo/b/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/apkDownload/d;->a(Landroid/app/Dialog;)V

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/r;->a(Landroid/content/Context;)V

    return-void
.end method
