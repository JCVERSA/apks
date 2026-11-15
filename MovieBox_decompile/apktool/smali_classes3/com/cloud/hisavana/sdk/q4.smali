.class public final synthetic Lcom/cloud/hisavana/sdk/q4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/q;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/q;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q4;->a:Lcom/cloud/hisavana/sdk/q;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/q4;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/q4;->c:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q4;->a:Lcom/cloud/hisavana/sdk/q;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/q4;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/q4;->c:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1, p2}, Lcom/cloud/hisavana/sdk/q;->a(Lcom/cloud/hisavana/sdk/q;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
