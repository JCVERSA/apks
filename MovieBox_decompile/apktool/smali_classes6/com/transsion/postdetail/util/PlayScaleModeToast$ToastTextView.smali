.class public final Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "com/transsion/postdetail/util/PlayScaleModeToast$ToastTextView",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "msg",
        "",
        "toast",
        "(Ljava/lang/String;)V",
        "onDetachedFromWindow",
        "()V",
        "",
        "a",
        "J",
        "getDelayTime",
        "()J",
        "setDelayTime",
        "(J)V",
        "delayTime",
        "Ljava/lang/Runnable;",
        "b",
        "Ljava/lang/Runnable;",
        "cancelRunnable",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private a:J

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x3e8

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;->a:J

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/postdetail/util/f;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/transsion/postdetail/util/f;-><init>(Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;->b:Ljava/lang/Runnable;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;->c(Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public final getDelayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;->b:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setDelayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;->a:J

    .line 2
    .line 3
    return-void
.end method

.method public final toast(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;->b:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;->b:Ljava/lang/Runnable;

    .line 19
    .line 20
    iget-wide v0, p0, Lcom/transsion/postdetail/util/PlayScaleModeToast$ToastTextView;->a:J

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
