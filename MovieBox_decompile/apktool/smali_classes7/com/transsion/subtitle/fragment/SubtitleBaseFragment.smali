.class public abstract Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lf4/a;",
        ">",
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0005J\r\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005R$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010#\u001a\n \u001e*\u0004\u0018\u00010\u00110\u00118\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0014\u0010&\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0014\u0010*\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0014\u0010,\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010)R$\u00100\u001a\u0004\u0018\u00010\u00118\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010 \u001a\u0004\u0008.\u0010\"\"\u0004\u0008/\u0010\u0014\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;",
        "Lf4/a;",
        "T",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "a0",
        "",
        "c0",
        "()Z",
        "",
        "dialogName",
        "e0",
        "(Ljava/lang/String;)V",
        "d0",
        "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;",
        "a",
        "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;",
        "b0",
        "()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;",
        "setViewModel",
        "(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;)V",
        "viewModel",
        "kotlin.jvm.PlatformType",
        "b",
        "Ljava/lang/String;",
        "getTAG",
        "()Ljava/lang/String;",
        "TAG",
        "c",
        "Z",
        "isSmallScreen",
        "",
        "d",
        "I",
        "screenWidth",
        "e",
        "screenHeight",
        "f",
        "getPageName",
        "setPageName",
        "pageName",
        "VideoSubtitle_psRelease"
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
.field private a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:I

.field private final e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 15
    .line 16
    invoke-virtual {v0}, Lzg/h;->f()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->c:Z

    .line 21
    .line 22
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->d:I

    .line 27
    .line 28
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->e:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public a0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method protected final b0()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c0()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->d:I

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x9

    .line 10
    .line 11
    div-int/lit8 v0, v0, 0x10

    .line 12
    .line 13
    const/high16 v2, 0x42200000    # 40.0f

    .line 14
    .line 15
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v0, v2

    .line 20
    int-to-float v0, v0

    .line 21
    iget v2, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->e:I

    .line 22
    .line 23
    int-to-float v2, v2

    .line 24
    div-float/2addr v0, v2

    .line 25
    float-to-double v2, v0

    .line 26
    const-wide v4, 0x3fd6666666666666L    # 0.35

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    cmpl-double v0, v2, v4

    .line 32
    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    return v1
.end method

.method public d0()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e0(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "dialogName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "dialog_name"

    .line 12
    .line 13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->f:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 21
    .line 22
    invoke-virtual {v1, p1, v0}, Lqi/h;->p(Ljava/lang/String;Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method protected final getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v1, Landroidx/lifecycle/v0;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 23
    .line 24
    .line 25
    const-class v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 34
    .line 35
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const-string p2, "KEY_PAGE_NAME"

    .line 45
    .line 46
    const-string v0, ""

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->f:Ljava/lang/String;

    .line 53
    .line 54
    :cond_2
    return-void
.end method
