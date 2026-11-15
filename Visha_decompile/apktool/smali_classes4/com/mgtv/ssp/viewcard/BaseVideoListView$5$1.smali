.class Lcom/mgtv/ssp/viewcard/BaseVideoListView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/MgSspLoginStatusReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;->toLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5$1;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(ILcom/mgtv/ssp/authbase/AccountInfo;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/mgtv/ssp/authbase/AccountInfo;->getOpenId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->j(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mgtv/ssp/authbase/AccountInfo;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->o(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5$1;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->m()V

    :cond_0
    return-void
.end method
