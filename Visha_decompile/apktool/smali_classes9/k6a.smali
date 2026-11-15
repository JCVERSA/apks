.class public abstract Lk6a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk6a$d;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:Z = false

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    sget v0, Lcom/transsion/magicvideo/R$color;->subtitle_color_1:I

    sget v1, Lcom/transsion/magicvideo/R$color;->subtitle_color_2:I

    sget v2, Lcom/transsion/magicvideo/R$color;->subtitle_color_3:I

    sget v3, Lcom/transsion/magicvideo/R$color;->subtitle_color_4:I

    sget v4, Lcom/transsion/magicvideo/R$color;->subtitle_color_5:I

    sget v5, Lcom/transsion/magicvideo/R$color;->subtitle_color_6:I

    sget v6, Lcom/transsion/magicvideo/R$color;->subtitle_color_7:I

    sget v7, Lcom/transsion/magicvideo/R$color;->subtitle_color_8:I

    sget v8, Lcom/transsion/magicvideo/R$color;->subtitle_color_9:I

    sget v9, Lcom/transsion/magicvideo/R$color;->subtitle_color_10:I

    sget v10, Lcom/transsion/magicvideo/R$color;->subtitle_color_11:I

    sget v11, Lcom/transsion/magicvideo/R$color;->subtitle_color_12:I

    sget v12, Lcom/transsion/magicvideo/R$color;->subtitle_color_13:I

    sget v13, Lcom/transsion/magicvideo/R$color;->subtitle_color_14:I

    filled-new-array/range {v0 .. v13}, [I

    move-result-object v0

    sput-object v0, Lk6a;->c:[I

    sget v0, Lcom/transsion/magicvideo/R$dimen;->subtitle_text_size_small:I

    sget v1, Lcom/transsion/magicvideo/R$dimen;->subtitle_text_size_medium:I

    sget v2, Lcom/transsion/magicvideo/R$dimen;->subtitle_text_size_large:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lk6a;->d:[I

    sget v0, Lcom/transsion/magicvideo/R$style;->subtitle_appearance_small:I

    sget v1, Lcom/transsion/magicvideo/R$style;->subtitle_appearance_medium:I

    sget v2, Lcom/transsion/magicvideo/R$style;->subtitle_appearance_large:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lk6a;->e:[I

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x4

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lk6a;->f:[I

    const v0, 0x800003

    const v1, 0x800005

    const/16 v2, 0x11

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lk6a;->g:[I

    return-void
.end method

.method public static synthetic a(Lk6a$d;Landroid/widget/PopupWindow;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lk6a;->h(Lk6a$d;Landroid/widget/PopupWindow;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static b(Lwoc;)I
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/magicvideo/R$dimen;->subtitle_location_margin_bottom:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lwoc;->a:I

    const/high16 v1, 0x43340000    # 180.0f

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lwoc;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    iget-boolean p0, p0, Lwoc;->g:Z

    if-eqz p0, :cond_2

    const/high16 p0, 0x41f00000    # 30.0f

    goto :goto_0

    :cond_2
    const/high16 p0, 0x43700000    # 240.0f

    :goto_0
    invoke-static {v0, p0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x2

    if-ne v0, p0, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x3

    if-ne v0, p0, :cond_5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p0, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    return p0

    :cond_5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static c(I)I
    .locals 1

    sget-object v0, Lk6a;->c:[I

    aget p0, v0, p0

    return p0
.end method

.method public static d(Landroid/widget/RelativeLayout$LayoutParams;IZLwoc;Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    const/16 v0, 0xc

    const/16 v1, 0xa

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iput v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sget p1, Lk6a;->a:I

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/magicvideo/R$dimen;->subtitle_location_margin_pip:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eqz p4, :cond_7

    new-instance p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-direct {p1, v3}, Lcom/transsion/dbdata/beans/SubtitleSettingData;-><init>(I)V

    iget p2, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textAlignment:I

    invoke-static {p2}, Lk6a;->e(I)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setTextAlignment(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textSize:I

    invoke-static {p3}, Lk6a;->g(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p4, p2}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setTextSize(F)V

    iget p2, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textStyle:I

    invoke-static {p2}, Lk6a;->f(I)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setTextAppearance(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textColor:I

    invoke-static {p3}, Lk6a;->c(I)I

    move-result p3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setTextColor(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundColor:I

    invoke-static {p3}, Lk6a;->c(I)I

    move-result p3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iget p1, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundOpacity:I

    mul-int/lit16 p1, p1, 0xff

    div-int/lit8 p1, p1, 0x64

    invoke-static {p2, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setTextBackground(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/magicvideo/R$dimen;->subtitle_location_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-static {p3}, Lk6a;->b(Lwoc;)I

    move-result p1

    :goto_0
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/magicvideo/R$dimen;->subtitle_location_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/transsion/utils/a;->n(Landroid/content/Context;)I

    move-result p1

    :goto_1
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iput v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_7
    :goto_2
    return-object p0
.end method

.method public static e(I)I
    .locals 1

    sget-object v0, Lk6a;->f:[I

    aget p0, v0, p0

    return p0
.end method

.method public static f(I)I
    .locals 1

    sget-object v0, Lk6a;->e:[I

    aget p0, v0, p0

    return p0
.end method

.method public static g(I)I
    .locals 1

    sget-object v0, Lk6a;->d:[I

    aget p0, v0, p0

    return p0
.end method

.method public static synthetic h(Lk6a$d;Landroid/widget/PopupWindow;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p4}, Lk6a$d;->a(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static i(Landroid/widget/SeekBar;Lk6a$d;ZLandroid/content/Context;)V
    .locals 0

    const/16 p2, 0xd

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    invoke-static {p3, p2}, Lolb;->h(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    new-instance p2, Lk6a$b;

    invoke-direct {p2, p1}, Lk6a$b;-><init>(Lk6a$d;)V

    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public static j(Lcom/transsion/playercommon/widgets/TranOsSeekbar;Landroid/content/Context;Lk6a$d;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$color;->selection_seekbar_thumb_center_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->setThumbInsideColor(I)V

    new-instance p1, Lk6a$c;

    invoke-direct {p1, p2}, Lk6a$c;-><init>(Lk6a$d;)V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->setOnProgressChangedListener(Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;)V

    return-void
.end method

.method public static k(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Landroid/content/Context;Lk6a$d;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$color;->selection_seekbar_dots_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->c(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$color;->selection_seekbar_thumb_center_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->e(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->b(Z)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->d(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->a()V

    new-instance p1, Lk6a$a;

    invoke-direct {p1, p2}, Lk6a$a;-><init>(Lk6a$d;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;)V

    return-void
.end method

.method public static l(ILandroid/view/View;Landroid/content/Context;Lk6a$d;Ljava/util/List;Z)V
    .locals 8

    sget v0, Lcom/transsion/magicvideo/R$layout;->rv_text_selector:I

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    const/high16 v2, 0x3000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setScrollBarStyle(I)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/view/View;->setScrollBarSize(I)V

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/transsion/playercommon/R$style;->popup_anim:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$dimen;->os_popup_menu_shadow_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$drawable;->os_popup_background:I

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    if-eqz p5, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x30

    const/16 v4, 0xac

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_0

    :cond_0
    const/high16 v3, 0x432c0000    # 172.0f

    invoke-static {p2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v7, -0xa

    if-le v3, v4, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    instance-of v3, p2, Landroid/app/Activity;

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, p1, v7, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    instance-of v3, p2, Landroid/app/Activity;

    if-eqz v3, :cond_2

    move-object v3, p2

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, p1, v7, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_2
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const/16 v3, 0x1306

    invoke-virtual {p1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->update()V

    :cond_3
    :goto_1
    new-instance p1, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;

    invoke-direct {p1, p2, p5}, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;-><init>(Landroid/content/Context;Z)V

    new-instance p5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p5, p2, v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->r(I)V

    new-instance p0, Lj6a;

    invoke-direct {p0, p3, v2}, Lj6a;-><init>(Lk6a$d;Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method
