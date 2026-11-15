.class public final Lcom/transsion/audio/activities/AudioSpeedSettingActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/activities/AudioSpeedSettingActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \r2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/audio/activities/AudioSpeedSettingActivity;",
        "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;",
        "<init>",
        "()V",
        "Lzfb;",
        "initView",
        "onDestroy",
        "",
        "speed",
        "",
        "text",
        "k0",
        "(FLjava/lang/String;)V",
        "N",
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
.field public static final N:Lcom/transsion/audio/activities/AudioSpeedSettingActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/audio/activities/AudioSpeedSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/audio/activities/AudioSpeedSettingActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/audio/activities/AudioSpeedSettingActivity;->N:Lcom/transsion/audio/activities/AudioSpeedSettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic f0(Ljava/util/ArrayList;Lcom/transsion/audio/activities/AudioSpeedSettingActivity;Lcom/transsion/playercommon/widgets/SeekView;Lcom/transsion/playercommon/adapter/SpeedAdapter;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/audio/activities/AudioSpeedSettingActivity;->h0(Ljava/util/ArrayList;Lcom/transsion/audio/activities/AudioSpeedSettingActivity;Lcom/transsion/playercommon/widgets/SeekView;Lcom/transsion/playercommon/adapter/SpeedAdapter;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/playercommon/adapter/SpeedAdapter;Lcom/transsion/audio/activities/AudioSpeedSettingActivity;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/activities/AudioSpeedSettingActivity;->i0(Lcom/transsion/playercommon/adapter/SpeedAdapter;Lcom/transsion/audio/activities/AudioSpeedSettingActivity;ILjava/lang/String;)V

    return-void
.end method

.method public static final h0(Ljava/util/ArrayList;Lcom/transsion/audio/activities/AudioSpeedSettingActivity;Lcom/transsion/playercommon/widgets/SeekView;Lcom/transsion/playercommon/adapter/SpeedAdapter;I)V
    .locals 2

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/data/Speed;

    invoke-virtual {v0}, Lcom/transsion/playercommon/data/Speed;->getSpV()F

    move-result v0

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/data/Speed;

    invoke-virtual {p0}, Lcom/transsion/playercommon/data/Speed;->getSpS()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getSpS(...)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Lcom/transsion/audio/activities/AudioSpeedSettingActivity;->k0(FLjava/lang/String;)V

    const/16 p1, 0x64

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Lcom/transsion/playercommon/widgets/SeekView;->setSelectValue(IZ)V

    invoke-virtual {p3, p4}, Lcom/transsion/playercommon/adapter/SpeedAdapter;->r(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemClick v:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", s:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioSpeedSettingActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lty5;->a:Lty5$a;

    invoke-virtual {p0, v0}, Lty5$a;->c(F)V

    return-void
.end method

.method public static final i0(Lcom/transsion/playercommon/adapter/SpeedAdapter;Lcom/transsion/audio/activities/AudioSpeedSettingActivity;ILjava/lang/String;)V
    .locals 1

    const-string v0, "drawString"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    const/16 v0, 0x64

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/adapter/SpeedAdapter;->s(F)V

    invoke-virtual {p1, p2, p3}, Lcom/transsion/audio/activities/AudioSpeedSettingActivity;->k0(FLjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onValueChange speed:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioSpeedSettingActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lty5;->a:Lty5$a;

    invoke-virtual {p0, p2}, Lty5$a;->a(F)V

    return-void
.end method

.method public static final j0(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/transsion/audio/activities/AudioSpeedSettingActivity;->N:Lcom/transsion/audio/activities/AudioSpeedSettingActivity$a;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/activities/AudioSpeedSettingActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 9

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$layout;->dialog_audio_speed_setting:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lw6c;->b(Landroid/content/Context;)F

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Lcom/transsion/playercommon/data/Speed;

    const-string v4, "0.5X"

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v3, v4, v5}, Lcom/transsion/playercommon/data/Speed;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/playercommon/data/Speed;

    const-string v4, "1.0X"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Lcom/transsion/playercommon/data/Speed;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/playercommon/data/Speed;

    const-string v4, "1.5X"

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4, v5}, Lcom/transsion/playercommon/data/Speed;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/playercommon/data/Speed;

    const-string v4, "2.0X"

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v3, v4, v5}, Lcom/transsion/playercommon/data/Speed;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v3, Lcom/transsion/audio/R$id;->seekView:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SeekView;

    sget v4, Lcom/transsion/audio/R$id;->speed_list_view:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v5, Lcom/transsion/playercommon/adapter/SpeedAdapter;

    sget v7, Lcom/transsion/audio/R$drawable;->speed_item_bg_new:I

    sget v8, Lcom/transsion/audio/R$drawable;->settings_item_textcolor_audio:I

    invoke-direct {v5, v2, v7, v8}, Lcom/transsion/playercommon/adapter/SpeedAdapter;-><init>(Ljava/util/List;II)V

    new-instance v7, Ll10;

    invoke-direct {v7, v2, p0, v3, v5}, Ll10;-><init>(Ljava/util/ArrayList;Lcom/transsion/audio/activities/AudioSpeedSettingActivity;Lcom/transsion/playercommon/widgets/SeekView;Lcom/transsion/playercommon/adapter/SpeedAdapter;)V

    invoke-virtual {v5, v7}, Lcom/transsion/playercommon/adapter/SpeedAdapter;->h(Lcom/transsion/playercommon/adapter/SpeedAdapter$a;)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v5, v1}, Lcom/transsion/playercommon/adapter/SpeedAdapter;->s(F)V

    const/16 v2, 0xa

    invoke-virtual {v3, v2, v6}, Lcom/transsion/playercommon/widgets/SeekView;->setStep(IZ)V

    const/16 v2, 0x32

    invoke-virtual {v3, v2, v6}, Lcom/transsion/playercommon/widgets/SeekView;->setTextStep(IZ)V

    const/16 v4, 0xc8

    invoke-virtual {v3, v2, v4, v6}, Lcom/transsion/playercommon/widgets/SeekView;->setRange(IIZ)V

    new-instance v2, Lm10;

    invoke-direct {v2, v5, p0}, Lm10;-><init>(Lcom/transsion/playercommon/adapter/SpeedAdapter;Lcom/transsion/audio/activities/AudioSpeedSettingActivity;)V

    invoke-virtual {v3, v2}, Lcom/transsion/playercommon/widgets/SeekView;->setValueChange(Lcom/transsion/playercommon/widgets/SeekView$b;)V

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v3, v1, v6}, Lcom/transsion/playercommon/widgets/SeekView;->setSelectValue(IZ)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    return-void
.end method

.method public final k0(FLjava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lw6c;->b(Landroid/content/Context;)F

    move-result p2

    cmpg-float p2, p1, p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lw6c;->A(Landroid/content/Context;F)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->v1(F)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x475

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lty5;->a:Lty5$a;

    invoke-static {p0}, Lw6c;->b(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lty5$a;->b(F)V

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    return-void
.end method
