.class public final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$prepareSwipeGuide$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->D(Lcom/transsion/wrapperad/view/cardpage/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$prepareSwipeGuide$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "wrapperad_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $pageData:Lcom/transsion/wrapperad/view/cardpage/f;

.field final synthetic this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$prepareSwipeGuide$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$prepareSwipeGuide$1;->$pageData:Lcom/transsion/wrapperad/view/cardpage/f;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$prepareSwipeGuide$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$prepareSwipeGuide$1;->$pageData:Lcom/transsion/wrapperad/view/cardpage/f;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->q(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$prepareSwipeGuide$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->i(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-wide/16 v1, 0x1b58

    .line 17
    .line 18
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
