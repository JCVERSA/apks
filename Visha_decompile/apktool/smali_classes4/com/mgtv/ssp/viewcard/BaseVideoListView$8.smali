.class Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/authbase/MgSspAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/viewcard/BaseVideoListView;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoLogin(Lcom/mgtv/ssp/MgSspLoginStatusReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-static {v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->b(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-static {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->b(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->gotoLogin(Lcom/mgtv/ssp/MgSspLoginStatusReceiver;)V

    :cond_0
    return-void
.end method

.method public onResult(ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object p1, p1, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    new-instance p2, Lcom/mgtv/ssp/viewcard/BaseVideoListView$8$1;

    invoke-direct {p2, p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$8$1;-><init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;)V

    invoke-static {p1, p2}, Lcom/mgtv/ssp/authbase/b;->a(Landroid/content/Context;Lcom/mgtv/ssp/authbase/b$a;)V

    :cond_0
    return-void
.end method
