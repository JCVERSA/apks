.class public final Lcom/transsion/audio/activities/AudioShortcutGuideActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/activities/AudioShortcutGuideActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008R\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/audio/activities/AudioShortcutGuideActivity;",
        "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;",
        "<init>",
        "()V",
        "Lzfb;",
        "initView",
        "",
        "isFixedHeight",
        "()Z",
        "getDragHandlerVisibility",
        "Landroid/widget/CheckBox;",
        "N",
        "Landroid/widget/CheckBox;",
        "checkBox",
        "O",
        "a",
        "audio_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final O:Lcom/transsion/audio/activities/AudioShortcutGuideActivity$a;


# instance fields
.field public N:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/audio/activities/AudioShortcutGuideActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/audio/activities/AudioShortcutGuideActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/audio/activities/AudioShortcutGuideActivity;->O:Lcom/transsion/audio/activities/AudioShortcutGuideActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic f0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioShortcutGuideActivity;->i0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/audio/activities/AudioShortcutGuideActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioShortcutGuideActivity;->k0(Lcom/transsion/audio/activities/AudioShortcutGuideActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/audio/activities/AudioShortcutGuideActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioShortcutGuideActivity;->j0(Lcom/transsion/audio/activities/AudioShortcutGuideActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final i0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lsy5;->a:Lsy5$a;

    invoke-virtual {p0, p1}, Lsy5$a;->d(Z)V

    return-void
.end method

.method public static final j0(Lcom/transsion/audio/activities/AudioShortcutGuideActivity;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/audio/shortcut/AudioShortCutHelper;->a(Landroid/content/Context;Z)V

    sget-object v0, Lsy5;->a:Lsy5$a;

    invoke-virtual {v0, p1}, Lsy5$a;->b(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    return-void
.end method

.method public static final k0(Lcom/transsion/audio/activities/AudioShortcutGuideActivity;Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioShortcutGuideActivity;->N:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notRemind = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioShortcutGuideDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "MMKV_SHORTCUT_DO_NOT_REMIND"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    sget-object p1, Lsy5;->a:Lsy5$a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsy5$a;->b(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    return-void
.end method


# virtual methods
.method public getDragHandlerVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$layout;->dialog_audio_shortcut_guide:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/transsion/audio/R$id;->tv_music_shortcut_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-boolean v2, Lpp3;->c:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/playercommon/R$string;->visha_music_pre:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/playercommon/R$string;->visha_music:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    sget v1, Lcom/transsion/audio/R$id;->cb_do_not_reminder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/transsion/audio/activities/AudioShortcutGuideActivity;->N:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    new-instance v2, Lp00;

    invoke-direct {v2}, Lp00;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    sget v1, Lcom/transsion/audio/R$id;->btn_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lq00;

    invoke-direct {v2, p0}, Lq00;-><init>(Lcom/transsion/audio/activities/AudioShortcutGuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/audio/R$id;->btn_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lr00;

    invoke-direct {v2, p0}, Lr00;-><init>(Lcom/transsion/audio/activities/AudioShortcutGuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    sget v0, Lcom/transsion/audio/R$string;->add_shortcut:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(I)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    sget-object p0, Lsy5;->a:Lsy5$a;

    invoke-virtual {p0}, Lsy5$a;->c()V

    return-void
.end method

.method public isFixedHeight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
