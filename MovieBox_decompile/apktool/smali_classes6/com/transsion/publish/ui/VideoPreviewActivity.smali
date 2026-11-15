.class public Lcom/transsion/publish/ui/VideoPreviewActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/ui/VideoPreviewActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Llo/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0016\u0018\u0000 =2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001/B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u000cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0004J\u0019\u0010!\u001a\u00020\u00052\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0014\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0004J\u000f\u0010\'\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008)\u0010(J\u000f\u0010*\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008*\u0010(J\u000f\u0010+\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008+\u0010\u0004J\u000f\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008-\u0010.R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00107\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u0010:\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0016\u0010<\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u00106\u00a8\u0006>"
    }
    d2 = {
        "Lcom/transsion/publish/ui/VideoPreviewActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Llo/g;",
        "<init>",
        "()V",
        "",
        "initView",
        "initData",
        "l0",
        "",
        "status",
        "B0",
        "(Z)V",
        "Lcom/transsion/publish/api/VsMediaInfo;",
        "vsMediaInfo",
        "z0",
        "(Lcom/transsion/publish/api/VsMediaInfo;)V",
        "",
        "path",
        "t0",
        "(Ljava/lang/String;)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "A0",
        "(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;",
        "C0",
        "D0",
        "select",
        "k0",
        "n0",
        "o0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "m0",
        "()Llo/g;",
        "onDestroy",
        "onResume",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "isChangeStatusBar",
        "onStop",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "a",
        "Lcom/transsion/publish/api/VsMediaInfo;",
        "",
        "b",
        "Ljava/lang/Integer;",
        "sourceType",
        "c",
        "I",
        "maxSize",
        "d",
        "Z",
        "isBack",
        "e",
        "maxLimit",
        "f",
        "Publish_psRelease"
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


# static fields
.field public static final f:Lcom/transsion/publish/ui/VideoPreviewActivity$a;


# instance fields
.field private a:Lcom/transsion/publish/api/VsMediaInfo;

.field private b:Ljava/lang/Integer;

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/publish/ui/VideoPreviewActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/publish/ui/VideoPreviewActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/publish/ui/VideoPreviewActivity;->f:Lcom/transsion/publish/ui/VideoPreviewActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->b:Ljava/lang/Integer;

    .line 10
    .line 11
    const/high16 v0, 0x3e800000    # 0.25f

    .line 12
    .line 13
    iput v0, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->c:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->e:I

    .line 17
    .line 18
    return-void
.end method

.method private final A0(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Llo/g;

    .line 18
    .line 19
    iget-object v2, v2, Llo/g;->h:Landroid/widget/ImageView;

    .line 20
    .line 21
    const-string v3, "coverIV"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    if-lez v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-gt v1, v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-gt v0, v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-static {p1, v0, v1, v2}, Lvf/a;->d(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_1
    return-object p1
.end method

.method private final B0(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llo/g;

    .line 8
    .line 9
    iget-object v0, v0, Llo/g;->o:Landroid/widget/TextView;

    .line 10
    .line 11
    const-string v1, "1"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Llo/g;

    .line 21
    .line 22
    iget-object v0, v0, Llo/g;->o:Landroid/widget/TextView;

    .line 23
    .line 24
    sget v1, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Llo/g;

    .line 35
    .line 36
    iget-object v0, v0, Llo/g;->o:Landroid/widget/TextView;

    .line 37
    .line 38
    sget v1, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->k0(Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private final C0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/g;

    .line 6
    .line 7
    iget-object v0, v0, Llo/g;->q:Lcom/transsion/publish/view/MatchParentVideoView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Llo/g;

    .line 17
    .line 18
    iget-object v0, v0, Llo/g;->k:Landroid/widget/ImageView;

    .line 19
    .line 20
    const-string v1, "playIV"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final D0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/g;

    .line 6
    .line 7
    iget-object v0, v0, Llo/g;->q:Lcom/transsion/publish/view/MatchParentVideoView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Llo/g;

    .line 17
    .line 18
    iget-object v0, v0, Llo/g;->k:Landroid/widget/ImageView;

    .line 19
    .line 20
    const-string v1, "playIV"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/publish/ui/VideoPreviewActivity;->x0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/media/MediaPlayer;II)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->y0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->w0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/media/MediaPlayer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->v0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->s0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->u0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->r0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->q0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final initData()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "sourceType"

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->b:Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "data"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v3, "clipLoading"

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Llo/g;

    .line 37
    .line 38
    iget-object v0, v0, Llo/g;->f:Landroid/widget/ProgressBar;

    .line 39
    .line 40
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "null cannot be cast to non-null type com.transsion.publish.api.VsMediaInfo"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    check-cast v0, Lcom/transsion/publish/api/VsMediaInfo;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->a:Lcom/transsion/publish/api/VsMediaInfo;

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->z0(Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->b:Ljava/lang/Integer;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    const/16 v4, 0x8

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-ne v6, v5, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Llo/g;

    .line 89
    .line 90
    iget-object v0, v0, Llo/g;->j:Landroid/widget/LinearLayout;

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Llo/g;

    .line 100
    .line 101
    iget-object v0, v0, Llo/g;->i:Landroid/widget/FrameLayout;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Llo/g;

    .line 111
    .line 112
    iget-object v6, v0, Llo/g;->i:Landroid/widget/FrameLayout;

    .line 113
    .line 114
    const-string v0, "flClear"

    .line 115
    .line 116
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v9, Lcom/transsion/publish/ui/k1;

    .line 120
    .line 121
    invoke-direct {v9, p0}, Lcom/transsion/publish/ui/k1;-><init>(Lcom/transsion/publish/ui/VideoPreviewActivity;)V

    .line 122
    .line 123
    .line 124
    const/4 v10, 0x1

    .line 125
    const/4 v11, 0x0

    .line 126
    const-wide/16 v7, 0x0

    .line 127
    .line 128
    invoke-static/range {v6 .. v11}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-ne v0, v2, :cond_5

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Llo/g;

    .line 146
    .line 147
    iget-object v0, v0, Llo/g;->i:Landroid/widget/FrameLayout;

    .line 148
    .line 149
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Llo/g;

    .line 157
    .line 158
    iget-object v0, v0, Llo/g;->j:Landroid/widget/LinearLayout;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->a:Lcom/transsion/publish/api/VsMediaInfo;

    .line 164
    .line 165
    if-eqz v0, :cond_4

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-direct {p0, v0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->B0(Z)V

    .line 172
    .line 173
    .line 174
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Llo/g;

    .line 179
    .line 180
    iget-object v0, v0, Llo/g;->b:Landroidx/constraintlayout/widget/Group;

    .line 181
    .line 182
    const-string v1, "bottomGroup"

    .line 183
    .line 184
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Llo/g;

    .line 195
    .line 196
    iget-object v6, v0, Llo/g;->j:Landroid/widget/LinearLayout;

    .line 197
    .line 198
    const-string v0, "llSelect"

    .line 199
    .line 200
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    new-instance v9, Lcom/transsion/publish/ui/l1;

    .line 204
    .line 205
    invoke-direct {v9, p0}, Lcom/transsion/publish/ui/l1;-><init>(Lcom/transsion/publish/ui/VideoPreviewActivity;)V

    .line 206
    .line 207
    .line 208
    const/4 v10, 0x1

    .line 209
    const/4 v11, 0x0

    .line 210
    const-wide/16 v7, 0x0

    .line 211
    .line 212
    invoke-static/range {v6 .. v11}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Llo/g;

    .line 220
    .line 221
    iget-object v0, v0, Llo/g;->f:Landroid/widget/ProgressBar;

    .line 222
    .line 223
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Llo/g;

    .line 234
    .line 235
    iget-object v0, v0, Llo/g;->q:Lcom/transsion/publish/view/MatchParentVideoView;

    .line 236
    .line 237
    new-instance v1, Lcom/transsion/publish/ui/m1;

    .line 238
    .line 239
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/m1;-><init>(Lcom/transsion/publish/ui/VideoPreviewActivity;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Llo/g;

    .line 250
    .line 251
    iget-object v0, v0, Llo/g;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 252
    .line 253
    new-instance v1, Lcom/transsion/publish/ui/n1;

    .line 254
    .line 255
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/n1;-><init>(Lcom/transsion/publish/ui/VideoPreviewActivity;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lqi/b;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    if-eqz v0, :cond_6

    .line 266
    .line 267
    invoke-virtual {v0, v5}, Lqi/b;->k(Z)V

    .line 268
    .line 269
    .line 270
    :cond_6
    return-void
.end method

.method private final initView()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/g;

    .line 6
    .line 7
    iget-object v0, v0, Llo/g;->d:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/publish/ui/p1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/p1;-><init>(Lcom/transsion/publish/ui/VideoPreviewActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Llo/g;

    .line 22
    .line 23
    iget-object v0, v0, Llo/g;->q:Lcom/transsion/publish/view/MatchParentVideoView;

    .line 24
    .line 25
    new-instance v1, Lcom/transsion/publish/ui/q1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/q1;-><init>(Lcom/transsion/publish/ui/VideoPreviewActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Llo/g;

    .line 38
    .line 39
    iget-object v1, v0, Llo/g;->g:Landroid/widget/TextView;

    .line 40
    .line 41
    const-string v0, "confirmTV"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lcom/transsion/publish/ui/r1;

    .line 47
    .line 48
    invoke-direct {v4, p0}, Lcom/transsion/publish/ui/r1;-><init>(Lcom/transsion/publish/ui/VideoPreviewActivity;)V

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    const/4 v6, 0x0

    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    invoke-static/range {v1 .. v6}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->p0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k0(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    check-cast v2, Llo/g;

    .line 8
    .line 9
    iget-object v2, v2, Llo/g;->m:Landroid/widget/TextView;

    .line 10
    .line 11
    const-string v3, "selectNumTV"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    move v3, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v1

    .line 21
    :goto_0
    if-eqz v3, :cond_1

    .line 22
    .line 23
    move v3, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/16 v3, 0x8

    .line 26
    .line 27
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Llo/g;

    .line 35
    .line 36
    iget-object v2, v2, Llo/g;->m:Landroid/widget/TextView;

    .line 37
    .line 38
    sget v3, Lcom/transsion/publish/R$string;->video_select_num_tips:I

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget v4, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->e:I

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const/4 v5, 0x2

    .line 51
    new-array v5, v5, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object p1, v5, v1

    .line 54
    .line 55
    aput-object v4, v5, v0

    .line 56
    .line 57
    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private final l0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/g;

    .line 6
    .line 7
    iget-object v0, v0, Llo/g;->q:Lcom/transsion/publish/view/MatchParentVideoView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->C0()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->D0()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private final n0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x400

    .line 10
    .line 11
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->l()V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method private final o0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getDecorView(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x1006

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final p0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->l0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final q0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljo/b;

    .line 7
    .line 8
    invoke-direct {p1}, Ljo/b;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 28
    .line 29
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 36
    .line 37
    const-class v1, Ljo/b;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "getName(...)"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v2, 0x0

    .line 49
    .line 50
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 54
    .line 55
    .line 56
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p0
.end method

.method private static final r0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "it"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->a:Lcom/transsion/publish/api/VsMediaInfo;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoSize()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget v3, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->c:I

    .line 16
    .line 17
    int-to-long v3, v3

    .line 18
    cmp-long v1, v1, v3

    .line 19
    .line 20
    if-lez v1, :cond_0

    .line 21
    .line 22
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 23
    .line 24
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget v1, Lcom/transsion/publish/R$string;->add_media_max_size_tips:I

    .line 33
    .line 34
    const/16 v2, 0x32

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    aput-object v2, v0, v3

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    xor-int/2addr v1, v0

    .line 60
    invoke-virtual {p1, v1}, Lcom/transsion/publish/api/VsMediaInfo;->setEnableSelect(Z)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/transsion/publish/bean/PreviewVideoBean;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/transsion/publish/bean/PreviewVideoBean;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->b:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/transsion/publish/bean/PreviewVideoBean;->setFrom(Ljava/lang/Integer;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Lcom/transsion/publish/bean/PreviewVideoBean;->setSelect(Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v1, v0}, Lcom/transsion/publish/bean/PreviewVideoBean;->setOperator(Ljava/lang/Integer;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x3

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Lcom/transsion/publish/bean/PreviewVideoBean;->setOperator(Ljava/lang/Integer;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 99
    .line 100
    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 107
    .line 108
    const-class v2, Lcom/transsion/publish/bean/PreviewVideoBean;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    const-string v3, "getName(...)"

    .line 115
    .line 116
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-wide/16 v3, 0x0

    .line 120
    .line 121
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->B0(Z)V

    .line 129
    .line 130
    .line 131
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p0
.end method

.method private static final s0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->l0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final t0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Llo/g;

    .line 21
    .line 22
    invoke-virtual {v0}, Llo/g;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/transsion/publish/ui/o1;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lcom/transsion/publish/ui/o1;-><init>(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/graphics/Bitmap;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final u0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/g;

    .line 6
    .line 7
    iget-object v0, v0, Llo/g;->h:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->A0(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final v0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final w0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/transsion/publish/ui/s1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/transsion/publish/ui/s1;-><init>(Lcom/transsion/publish/ui/VideoPreviewActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static final x0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    const/4 p3, 0x3

    .line 2
    if-ne p2, p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Llo/g;

    .line 9
    .line 10
    iget-object p2, p2, Llo/g;->h:Landroid/widget/ImageView;

    .line 11
    .line 12
    const-string p3, "coverIV"

    .line 13
    .line 14
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Luf/c;->g(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Llo/g;

    .line 32
    .line 33
    iget-object p0, p0, Llo/g;->q:Lcom/transsion/publish/view/MatchParentVideoView;

    .line 34
    .line 35
    sget p1, Lcom/tn/lib/widget/R$color;->transparent:I

    .line 36
    .line 37
    invoke-static {p1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    .line 43
    .line 44
    return p2
.end method

.method private static final y0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 13
    .line 14
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 21
    .line 22
    const-class v1, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "getName(...)"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method private final z0(Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/VideoPreviewActivity;->t0(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Llo/g;

    .line 13
    .line 14
    iget-object v0, v0, Llo/g;->q:Lcom/transsion/publish/view/MatchParentVideoView;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/transsion/publish/view/MatchParentVideoView;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v0, p1, v3, v1, v2}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->m0()Llo/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isChangeStatusBar()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public m0()Llo/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Llo/g;->c(Landroid/view/LayoutInflater;)Llo/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "inflate(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "video_preview"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->n0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->o0()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->initView()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->initData()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Llo/g;

    .line 9
    .line 10
    iget-object v0, v0, Llo/g;->f:Landroid/widget/ProgressBar;

    .line 11
    .line 12
    const-string v1, "clipLoading"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->d:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->d:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->a:Lcom/transsion/publish/api/VsMediaInfo;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->z0(Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsion/publish/ui/VideoPreviewActivity;->d:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/publish/ui/VideoPreviewActivity;->C0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
