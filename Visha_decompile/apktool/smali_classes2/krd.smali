.class public final synthetic Lkrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/r;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/r;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkrd;->b:Lcom/cloud/hisavana/sdk/r;

    iput-object p2, p0, Lkrd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lkrd;->d:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lkrd;->b:Lcom/cloud/hisavana/sdk/r;

    iget-object v1, p0, Lkrd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object p0, p0, Lkrd;->d:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/cloud/hisavana/sdk/r;->a(Lcom/cloud/hisavana/sdk/r;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
