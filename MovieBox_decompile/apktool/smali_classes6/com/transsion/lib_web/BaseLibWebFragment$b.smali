.class public final Lcom/transsion/lib_web/BaseLibWebFragment$b;
.super Landroidx/activity/u;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/BaseLibWebFragment;->Z(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

.field final synthetic b:Lcom/transsion/lib_web/BaseLibWebFragment;


# direct methods
.method constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Lcom/transsion/lib_web/BaseLibWebFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$b;->a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment$b;->b:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$b;->a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$b;->b:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$b;->b:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
