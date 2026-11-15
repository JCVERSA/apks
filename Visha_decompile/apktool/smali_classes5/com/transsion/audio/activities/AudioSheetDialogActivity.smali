.class public Lcom/transsion/audio/activities/AudioSheetDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;
.implements Lcom/transsion/playercommon/data/SheetDialogParamsConstant;


# instance fields
.field public N:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public O:Ljava/util/ArrayList;

.field public P:I

.field public Q:Ljava/lang/String;

.field public R:Ljava/util/List;

.field public S:Ljava/util/List;

.field public T:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

.field public U:Landroid/view/View;

.field public V:Landroid/graphics/Rect;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

.field public final a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Q:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->S:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->V:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->W:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->X:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Y:Ljava/lang/String;

    invoke-static {}, Lpp3;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->a0:Z

    return-void
.end method

.method private synthetic N0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->popPage()Z

    return-void
.end method

.method private synthetic O0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public static synthetic R0(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "editAudioFile failed error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio_edit"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/transsion/playercommon/R$string;->audio_edit_error_tip:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method public static synthetic V0(Landroid/text/Editable;Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x32

    if-lt p0, p1, :cond_0

    sget p0, Lcom/transsion/audio/R$string;->over_text_length:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;ZLcom/transsion/dbdata/beans/media/AudioItem;Landroid/app/Activity;Ljava/util/List;ILcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->U0(ZLcom/transsion/dbdata/beans/media/AudioItem;Landroid/app/Activity;Ljava/util/List;ILcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->X0(I)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Q0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->O0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->W0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->M0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->R0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/audio/activities/AudioSheetDialogActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->P0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/audio/activities/AudioSheetDialogActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Landroid/text/Editable;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->V0(Landroid/text/Editable;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Ljava/util/List;IZLcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Landroid/app/Activity;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->T0(Ljava/util/List;IZLcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;ZLandroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->S0(Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;ZLandroid/app/Activity;)V

    return-void
.end method

.method public static bridge synthetic r0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Z:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    return-object p0
.end method

.method public static bridge synthetic s0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public static bridge synthetic t0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->y0(Z)V

    return-void
.end method

.method public static bridge synthetic u0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Lcom/transsion/playercommon/data/FileOperateItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->A0(Lcom/transsion/playercommon/data/FileOperateItem;)V

    return-void
.end method

.method public static bridge synthetic v0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->B0(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic w0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->E0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A0(Lcom/transsion/playercommon/data/FileOperateItem;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "item_click_data"

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "out_data"

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object p1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "media_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public final B0(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "item_click_data"

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "out_data"

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "rename_data"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "media_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public final C0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final D0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->O:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final E0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lo00;

    invoke-direct {v1, p0, p2, p3, p1}, Lo00;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Le00;

    invoke-direct {p2, p0}, Le00;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)V

    new-instance p0, Lf00;

    invoke-direct {p0}, Lf00;-><init>()V

    invoke-virtual {p1, p2, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public F0(Landroid/app/Activity;Lcom/transsion/dbdata/beans/media/AudioItem;ILjava/util/List;Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V
    .locals 10

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v0

    new-instance v1, Ld00;

    move-object v2, v1

    move-object v3, p0

    move v4, v0

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    move v8, p3

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Ld00;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;ZLcom/transsion/dbdata/beans/media/AudioItem;Landroid/app/Activity;Ljava/util/List;ILcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V

    invoke-static {v1}, Liia;->a(Ljava/lang/Runnable;)V

    xor-int/lit8 p0, v0, 0x1

    iget-boolean p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p1, :cond_0

    const-string p1, "mv"

    goto :goto_0

    :cond_0
    const-string p1, "audio"

    :goto_0
    const-string p2, "audiolist"

    invoke-static {p0, p1, p2}, Lp06;->u0(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public G0()I
    .locals 1

    iget p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->P:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_delete:I

    return p0

    :cond_0
    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_remove:I

    return p0

    :cond_1
    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_delete_all:I

    return p0
.end method

.method public H0()I
    .locals 1

    iget p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->P:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->delete:I

    return p0

    :cond_0
    sget p0, Lcom/transsion/playercommon/R$string;->remove:I

    return p0

    :cond_1
    sget p0, Lcom/transsion/playercommon/R$string;->clear:I

    return p0
.end method

.method public final I0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/playercommon/data/FileOperateItem;
    .locals 6

    iget-boolean p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget p1, Lcom/transsion/playercommon/R$drawable;->ic_rename:I

    sget v0, Lcom/transsion/playercommon/R$string;->rename:I

    const/16 v1, 0x3eb

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    sget p1, Lcom/transsion/playercommon/R$string;->os_edit:I

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    return-object p0

    :cond_0
    sget-boolean p0, Lpp3;->E:Z

    const/4 v0, 0x2

    if-nez p0, :cond_1

    new-instance p0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget p1, Lcom/transsion/playercommon/R$drawable;->ic_rename:I

    sget v1, Lcom/transsion/playercommon/R$string;->rename:I

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    sget p1, Lcom/transsion/playercommon/R$string;->os_edit:I

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p2}, Lul;->c(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    move p2, p0

    :goto_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->getSmartEditEnable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-instance v3, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v4, Lcom/transsion/audio/R$drawable;->ic_more_edit:I

    if-eqz v2, :cond_3

    sget v5, Lcom/transsion/playercommon/R$string;->visha_smart_edit:I

    goto :goto_1

    :cond_3
    sget v5, Lcom/transsion/audio/R$string;->audio_edit:I

    :goto_1
    if-eqz p2, :cond_4

    if-eqz v2, :cond_5

    const/16 v0, 0x10

    goto :goto_2

    :cond_4
    const/16 v0, 0xf

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-nez p1, :cond_6

    move p0, v1

    :cond_6
    invoke-direct {v3, v4, v5, v0, p0}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    sget p0, Lcom/transsion/playercommon/R$string;->os_edit:I

    invoke-virtual {v3, p0}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    return-object v3
.end method

.method public final J0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->P:I

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v3, Lcom/transsion/audio/R$drawable;->ic_filter:I

    sget v4, Lcom/transsion/audio/R$string;->visha_file_not_filter:I

    const/16 v5, 0xe

    invoke-direct {v1, v3, v4, v5}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget v3, Lcom/transsion/playercommon/R$string;->os_add:I

    invoke-virtual {v1, v3}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v1

    iget v3, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->P:I

    const/16 v5, 0x23

    if-ne v3, v5, :cond_1

    new-instance v3, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v5, Lcom/transsion/playercommon/R$drawable;->ic_download_menu_origin_site:I

    sget v6, Lcom/transsion/playercommon/R$string;->origin_site:I

    const/16 v7, 0xb

    invoke-direct {v3, v5, v6, v7}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget v5, Lcom/transsion/playercommon/R$string;->os_network:I

    invoke-virtual {v3, v5}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v5, Lcom/transsion/audio/R$drawable;->ic_share:I

    sget v6, Lcom/transsion/audio/R$string;->share:I

    const/4 v7, 0x4

    invoke-direct {v3, v5, v6, v7}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget v5, Lcom/transsion/playercommon/R$string;->os_share:I

    invoke-virtual {v3, v5}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    sget-boolean v5, Lpp3;->j:Z

    const/4 v6, 0x1

    if-nez v5, :cond_2

    iget-object v5, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v5}, Lox8;->a(Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v6

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    iget v7, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->P:I

    if-eq v7, v2, :cond_7

    new-instance v2, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v7, Lcom/transsion/audio/R$drawable;->ic_play_next:I

    sget v8, Lcom/transsion/audio/R$string;->play_next:I

    const/16 v9, 0x8

    invoke-direct {v2, v7, v8, v9}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget v7, Lcom/transsion/playercommon/R$string;->os_sort:I

    invoke-virtual {v2, v7}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v7, Lcom/transsion/audio/R$drawable;->ic_play_later:I

    sget v8, Lcom/transsion/audio/R$string;->play_later:I

    const/16 v9, 0x9

    invoke-direct {v2, v7, v8, v9}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget v7, Lcom/transsion/playercommon/R$string;->os_Counter_rotation:I

    invoke-virtual {v2, v7}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v7, Lcom/transsion/playercommon/R$drawable;->ic_file_trans:I

    sget v8, Lcom/transsion/playercommon/R$string;->visha_file_trans:I

    const-string v9, "file_trans_menu_click"

    invoke-static {p0, v9, v4}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    xor-int/2addr v4, v6

    const/16 v9, 0x11

    invoke-direct {v2, v7, v8, v4, v9}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIZI)V

    sget v4, Lcom/transsion/playercommon/R$string;->os_move:I

    invoke-virtual {v2, v4}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/transsion/playercommon/data/FileOperateItem;

    if-eqz v1, :cond_3

    sget v4, Lcom/transsion/audio/R$drawable;->ic_farvorited_on:I

    goto :goto_1

    :cond_3
    sget v4, Lcom/transsion/audio/R$drawable;->ic_farvorite:I

    :goto_1
    if-eqz v1, :cond_4

    sget v1, Lcom/transsion/playercommon/R$string;->unfavorite:I

    goto :goto_2

    :cond_4
    sget v1, Lcom/transsion/audio/R$string;->favorites:I

    :goto_2
    const/4 v7, 0x7

    invoke-direct {v2, v4, v1, v7}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbs8;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v2, Lcom/transsion/audio/R$drawable;->ic_add_song:I

    sget v3, Lcom/transsion/audio/R$string;->add_to:I

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    invoke-virtual {v1, v6}, Lcom/transsion/playercommon/data/FileOperateItem;->setHasSubPage(Z)V

    sget v2, Lcom/transsion/playercommon/R$string;->add_to:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/FileOperateItem;->setSubTitle(Ljava/lang/String;)V

    sget v2, Lcom/transsion/playercommon/R$string;->os_add:I

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p0, p1, v5}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->I0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/playercommon/data/FileOperateItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v2, Lcom/transsion/audio/R$drawable;->ic_filter:I

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p1, :cond_6

    sget p1, Lcom/transsion/audio/R$string;->visha_remove_audio_playlist:I

    goto :goto_3

    :cond_6
    sget p1, Lcom/transsion/playercommon/R$string;->visha_file_filter:I

    :goto_3
    const/16 v3, 0xd

    invoke-direct {v1, v2, p1, v3}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget p1, Lcom/transsion/playercommon/R$string;->os_filter:I

    invoke-virtual {v1, p1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v5}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->I0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/playercommon/data/FileOperateItem;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    new-instance p1, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/audio/R$drawable;->ic_info:I

    sget v2, Lcom/transsion/audio/R$string;->info:I

    const/4 v3, 0x6

    invoke-direct {p1, v1, v2, v3}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget v1, Lcom/transsion/playercommon/R$string;->os_info:I

    invoke-virtual {p1, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->P:I

    const/16 v1, 0x29

    const/16 v2, 0x21

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_8

    new-instance p1, Lcom/transsion/playercommon/data/FileOperateItem;

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->G0()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->H0()I

    move-result v4

    const/4 v6, 0x5

    invoke-direct {p1, v3, v4, v6, v5}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Z0(Lcom/transsion/playercommon/data/FileOperateItem;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->P:I

    if-eq p0, v2, :cond_9

    if-eq p0, v1, :cond_9

    const/16 p1, 0x1e

    if-ne p0, p1, :cond_a

    :cond_9
    new-instance p0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget p1, Lcom/transsion/playercommon/R$drawable;->ic_delete:I

    sget v1, Lcom/transsion/playercommon/R$string;->delete:I

    const/16 v2, 0xc

    invoke-direct {p0, p1, v1, v2, v5}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    sget p1, Lcom/transsion/playercommon/R$string;->os_delete:I

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v0
.end method

.method public final K0(Landroid/view/View;Z)V
    .locals 10

    sget v0, Lcom/transsion/audio/R$id;->et_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/audio/R$id;->et_artist:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v7}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v3, v3, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/transsion/audio/R$id;->et_album:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v8}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    sget v3, Lcom/transsion/audio/R$id;->tv_artist:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/audio/R$id;->tv_album:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v1, Lcom/transsion/audio/R$id;->tv_save:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_1

    const/high16 v1, 0x43580000    # 216.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43380000    # 184.0f

    :goto_0
    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setWidth(I)V

    :cond_2
    new-instance v1, Lcom/transsion/audio/activities/AudioSheetDialogActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity$b;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)V

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    new-instance v4, Lk00;

    invoke-direct {v4}, Lk00;-><init>()V

    new-instance v9, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v9, v1, v2}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    new-instance v9, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;

    move-object v1, v9

    move-object v2, p0

    move-object v4, v7

    move-object v5, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Landroid/widget/TextView;)V

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v7}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v8}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Lcom/transsion/audio/activities/AudioSheetDialogActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity$7;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Landroid/widget/TextView;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v2, Lcom/transsion/audio/activities/AudioSheetDialogActivity$d;

    invoke-direct {v2, p0, v1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity$d;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;I)V

    invoke-static {p0, v2}, Lag5;->k(Landroid/app/Activity;Lag5$e;)V

    new-instance v9, Lcom/transsion/audio/activities/AudioSheetDialogActivity$e;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, v7

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audio/activities/AudioSheetDialogActivity$e;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Z)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->W:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->X:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Y:Ljava/lang/String;

    return-void
.end method

.method public final L0()Landroid/view/View;
    .locals 2

    sget v0, Lcom/transsion/playercommon/R$layout;->layout_bottom_dialog_menu_recyclerview:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->U:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->rv_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->T:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-direct {v1, p0}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->S:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->J0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->T:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->S:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->T:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->U:Landroid/view/View;

    return-object p0
.end method

.method public final synthetic M0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->popPage()Z

    return-void
.end method

.method public final synthetic P0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/audio/activities/AudioSheetDialogActivity;)Ljava/lang/Boolean;
    .locals 2

    new-instance p4, Ljava/io/File;

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/transsion/audiotagger/audio/AudioFileIO;->read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;

    move-result-object p4

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {p4, v0, p1, v1}, Lul;->d(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-static {p4, v0, p2, v1}, Lul;->d(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {p4, v0, p3, p0}, Lul;->d(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p4}, Lcom/transsion/audiotagger/audio/AudioFileIO;->write(Lcom/transsion/audiotagger/audio/AudioFile;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic Q0(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/transsion/utils/BaseConstant;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/playercommon/R$string;->audio_edit_error_tip:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

.method public final synthetic S0(Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;ZLandroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->g()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->g()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p3, p1}, Lcd;->g(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->g()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lcd;->i(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->P:I

    const/16 p2, 0x21

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    :cond_2
    return-void
.end method

.method public final synthetic T0(Ljava/util/List;IZLcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Landroid/app/Activity;)V
    .locals 2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/data/FileOperateItem;

    if-nez p3, :cond_0

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_farvorited_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_farvorite:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setImageResId(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/data/FileOperateItem;

    if-nez p3, :cond_1

    sget v0, Lcom/transsion/playercommon/R$string;->unfavorite:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/transsion/audio/R$string;->favorites:I

    :goto_1
    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/data/FileOperateItem;->setTextResId(I)V

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ln00;

    invoke-direct {p2, p0, p4, p3, p5}, Ln00;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;ZLandroid/app/Activity;)V

    const-wide/16 p3, 0x12c

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic U0(ZLcom/transsion/dbdata/beans/media/AudioItem;Landroid/app/Activity;Ljava/util/List;ILcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V
    .locals 9

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p2}, Lao;->l0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    if-eqz p3, :cond_0

    new-instance v0, Ll00;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move v5, p5

    move v6, p1

    move-object v7, p6

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Ll00;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Ljava/util/List;IZLcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const/16 p4, 0x41f

    invoke-virtual {p0, p4, p3}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/16 p3, 0x453

    invoke-virtual {p0, p3, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x41e

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic W0(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Z:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->restoreEditDraft(Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic X0(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Z:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->onKeyboardHeightChanged(I)V

    :cond_0
    return-void
.end method

.method public final Y0()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->a0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getPanelRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    new-instance v0, Lm00;

    invoke-direct {v0, p0}, Lm00;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)V

    invoke-static {p0, v0}, Lag5;->k(Landroid/app/Activity;Lag5$e;)V

    return-void
.end method

.method public final Z0(Lcom/transsion/playercommon/data/FileOperateItem;)V
    .locals 1

    iget p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->P:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/playercommon/R$string;->os_delete:I

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    :cond_1
    sget p0, Lcom/transsion/playercommon/R$string;->os_Remove:I

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    :goto_0
    return-void
.end method

.method public addSoftKeyboardAnim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->a0:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->addSoftKeyboardAnim()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->needLargeScreenImeAdapt(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public initView()V
    .locals 5

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    const-string v1, "data_list_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->O:Ljava/util/ArrayList;

    const-string v1, "list_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->P:I

    const-string v1, "from_list_more_icon"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "from_page"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Q:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->R:Ljava/util/List;

    invoke-static {}, Lvg9;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->C0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->x0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->D0()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lvg9;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    sget v1, Lcom/transsion/playercommon/R$string;->add_to:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->z0(Ljava/lang/String;ZZ[Lcom/transsion/dbdata/beans/media/AudioItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->C0()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/transsion/playercommon/R$string;->add_to:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    filled-new-array {v1}, [Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->z0(Ljava/lang/String;ZZ[Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->a0:Z

    if-eqz v0, :cond_4

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->b0:Z

    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->c0:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->C0()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->c0:Z

    invoke-virtual {p0, v2}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->y0(Z)V

    :cond_4
    return-void
.end method

.method public isFixedHeight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x7d1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Lcom/transsion/audio/activities/AudioSheetDialogActivity$10;

    invoke-direct {p2, p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity$10;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Landroid/net/Uri;)V

    invoke-static {p2}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onBackPressed()V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->T:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->release()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->a0:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->b0:Z

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->b0:Z

    invoke-static {p0}, Lag5;->l(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->a0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "state_smart_edit_open"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->c0:Z

    const-string v0, "state_smart_edit_draft"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->d0:Landroid/os/Bundle;

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "audio_sheet_dialog_destroy"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v2, "video_sheet_dialog_destroy"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lag5;->l(Landroid/app/Activity;)V

    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 10

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/data/FileOperateItem;

    iget p2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->P:I

    const/16 v0, 0x24

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    invoke-static {p2}, Luy5;->j(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    const/4 v0, 0x3

    const-string v1, "audio"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->hasSubPage()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getSubTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    filled-new-array {p2}, [Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p2

    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->z0(Ljava/lang/String;ZZ[Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_1
    const-string p0, "vd_vmore_addlist_cl"

    const-wide/16 p1, 0x246c

    invoke-static {v1, p0, p1, p2}, Lp06;->c0(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_3

    iget-object v6, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v8, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->S:Ljava/util/List;

    iget-object v9, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->T:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    move-object v4, p0

    move-object v5, p0

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->F0(Landroid/app/Activity;Lcom/transsion/dbdata/beans/media/AudioItem;ILjava/util/List;Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V

    goto/16 :goto_1

    :cond_3
    sget-boolean p2, Lpp3;->E:Z

    const-string p3, "vd_vmore_edit_cl"

    const-string v0, "mv"

    const-string v4, "file_type"

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    const/16 v5, 0x3eb

    if-eq p2, v5, :cond_4

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    const/4 v5, 0x2

    if-ne p2, v5, :cond_8

    :cond_4
    iget-object p2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-boolean p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p2, :cond_5

    move-object v1, v0

    :cond_5
    const-string p2, "vd_vmore_edit_pop"

    const-string v0, "from"

    const-string v2, "playshow"

    invoke-static {p2, v0, v2, v4, v1}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-boolean p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p2, :cond_7

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "item_click_data"

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "out_data"

    iget-object p3, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "media_type"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void

    :cond_7
    invoke-static {p3}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->y0(Z)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    const/16 v5, 0xd

    const/16 v6, 0x455

    if-ne p2, v5, :cond_a

    iget-object p2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p2}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->j(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-boolean p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p2, :cond_9

    move-object v1, v0

    :cond_9
    const-string p2, "vd_vmore_filt_cl"

    invoke-static {p2, v4, v1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->A0(Lcom/transsion/playercommon/data/FileOperateItem;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v6, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    const/16 v0, 0xe

    if-ne p2, v0, :cond_b

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v6, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    const/16 v0, 0xf

    if-ne p2, v0, :cond_c

    invoke-static {}, Lp10;->a()V

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_e

    invoke-static {p3}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/16 p3, 0x492

    invoke-virtual {p1, p3, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_d

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p1, :cond_d

    goto :goto_0

    :cond_d
    move v2, v3

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/audio/activities/AudioSheetDialogActivity$1;

    invoke-direct {p2, p0, v2}, Lcom/transsion/audio/activities/AudioSheetDialogActivity$1;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Z)V

    const-wide/16 v0, 0x140

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_e
    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    const/16 p3, 0x11

    if-ne p2, p3, :cond_f

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/16 p3, 0x495

    invoke-virtual {p1, p3, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    const-string p1, "file_trans_menu_click"

    invoke-static {p0, p1, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    const-string p1, "vd_audio"

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->m(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->A0(Lcom/transsion/playercommon/data/FileOperateItem;)V

    :goto_1
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->a0:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Z:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->d0:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->d0:Landroid/os/Bundle;

    new-instance v1, Lg00;

    invoke-direct {v1, p0, v0}, Lg00;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->a0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Z:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "state_smart_edit_open"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Z:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->saveEditDraft(Landroid/os/Bundle;)V

    const-string p0, "state_smart_edit_draft"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final x0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->L0()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(Ljava/lang/String;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v0}, Lda7;->a(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V

    return-void
.end method

.method public final y0(Z)V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->getSmartEditEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Z:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Z:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Z:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Z:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    new-instance v0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity$a;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->setOnSmartEditPageChangeListener(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;)V

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->needLargeScreenImeAdapt(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Y0()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Z:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    new-instance v0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity$3;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/audio/R$layout;->audio_editor_dialog:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->K0(Landroid/view/View;Z)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setBackIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$string;->audio_edit:I

    invoke-virtual {p1, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(I)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    new-instance v0, Lj00;

    invoke-direct {v0, p0}, Lj00;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setOnTitleBackIconClickListener(Landroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    :goto_0
    return-void
.end method

.method public final varargs z0(Ljava/lang/String;ZZ[Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 3

    new-instance v0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->R:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p4}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;-><init>(Landroid/content/Context;Ljava/util/List;Z[Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p4, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Q:Ljava/lang/String;

    const-string v1, "AudioPlayPage"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "playpage"

    goto :goto_0

    :cond_0
    const-string p4, "audiolist"

    :goto_0
    iput-object p4, v0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->fromPage:Ljava/lang/String;

    iget-object p4, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->U:Landroid/view/View;

    if-eqz p4, :cond_1

    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->U:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p4, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(Ljava/lang/String;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setBackIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    new-instance p1, Lh00;

    invoke-direct {p1, p0}, Lh00;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)V

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setOnTitleBackIconClickListener(Landroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    :cond_2
    if-eqz p3, :cond_3

    new-instance p1, Li00;

    invoke-direct {p1, p0}, Li00;-><init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)V

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setOnTitleCloseIconClickListener(Landroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    :cond_3
    invoke-virtual {p4, p3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    return-void
.end method
