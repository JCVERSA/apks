.class public final Lcom/transsion/web/fragment/WebFragmentV2$b;
.super Lcom/transsion/athena/jsbridge/AthenaJsInterface;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/web/fragment/WebFragmentV2;->b0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/web/fragment/WebFragmentV2;


# direct methods
.method constructor <init>(Lcom/transsion/web/fragment/WebFragmentV2;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$b;->b:Lcom/transsion/web/fragment/WebFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/transsion/athena/jsbridge/AthenaJsInterface;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/transsion/web/fragment/WebFragmentV2$b;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public track(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/athena/jsbridge/AthenaJsInterface;->track(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$b;->b:Lcom/transsion/web/fragment/WebFragmentV2;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lrl/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lcom/transsion/web/fragment/g;

    .line 15
    .line 16
    invoke-direct {p2}, Lcom/transsion/web/fragment/g;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
