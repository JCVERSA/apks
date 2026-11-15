.class public Lcom/transsion/audio/widgets/AppWidgetMusicDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1a
.end annotation


# static fields
.field public static final FROM_AUDIO:I = 0x0

.field public static final FROM_MORE:I = 0x1


# instance fields
.field from:I

.field private mContext:Landroid/content/Context;

.field mImageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mIndex:I

.field mPageAdapter:Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;

.field mPager:Lcom/transsion/widgets/CustomViewPager;

.field mSpotA:Landroid/view/View;

.field mSpotB:Landroid/view/View;

.field mSpotC:Landroid/view/View;

.field mSpots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mImageViews:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpots:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mIndex:I

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->lambda$showDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/widgets/AppWidgetMusicDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->lambda$showDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/audio/widgets/AppWidgetMusicDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->updateUI(I)V

    return-void
.end method

.method private getView(I)Landroid/view/View;
    .locals 2

    iget-object p0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/audio/R$layout;->dialog_music_appwidget_page:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/transsion/audio/R$id;->img:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mImageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpots:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpotA:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpots:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpotB:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpots:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpotC:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mImageViews:Ljava/util/List;

    sget v1, Lcom/transsion/audio/R$drawable;->ic_music_widget:I

    invoke-direct {p0, v1}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mImageViews:Ljava/util/List;

    sget v1, Lcom/transsion/audio/R$drawable;->ic_music_widget_second_large:I

    invoke-direct {p0, v1}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mImageViews:Ljava/util/List;

    sget v1, Lcom/transsion/audio/R$drawable;->ic_music_widget_third:I

    invoke-direct {p0, v1}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->getView(I)Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initItemClick(Landroid/view/View;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    sget v0, Lcom/transsion/audio/R$id;->spot_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpotA:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->spot_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpotB:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->spot_3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpotC:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/CustomViewPager;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mPager:Lcom/transsion/widgets/CustomViewPager;

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->init()V

    new-instance p1, Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mImageViews:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mPageAdapter:Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;

    iget-object p1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mPager:Lcom/transsion/widgets/CustomViewPager;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mImageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mPager:Lcom/transsion/widgets/CustomViewPager;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mPageAdapter:Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mPager:Lcom/transsion/widgets/CustomViewPager;

    new-instance v0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog$1;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog$1;-><init>(Lcom/transsion/audio/widgets/AppWidgetMusicDialog;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mPager:Lcom/transsion/widgets/CustomViewPager;

    invoke-static {p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/viewpager/widget/ViewPager;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->updateUI(I)V

    iget p1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mIndex:I

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->from:I

    invoke-static {p1, v0}, Lry5;->n(II)V

    iget p1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->from:I

    invoke-static {p1}, Lry5;->m(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mPager:Lcom/transsion/widgets/CustomViewPager;

    iget p0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mIndex:I

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private synthetic lambda$showDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mIndex:I

    invoke-static {p1, p2}, Lvf;->g(Landroid/content/Context;I)V

    const-string p1, "vd_widget_add_show_checkpop_show"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mIndex:I

    add-int/lit8 p1, p1, 0x1

    iget p0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->from:I

    invoke-static {p1, p0}, Lry5;->h(II)V

    return-void
.end method

.method private static synthetic lambda$showDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "vd_widget_add_show_close"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;I)Lcom/transsion/audio/widgets/AppWidgetMusicDialog;
    .locals 1

    new-instance v0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;

    invoke-direct {v0}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;-><init>()V

    iput-object p0, v0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mContext:Landroid/content/Context;

    iput p1, v0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->from:I

    return-object v0
.end method

.method private updateUI(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mSpots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eq v0, p1, :cond_0

    sget v2, Lcom/transsion/audio/R$drawable;->ic_page_dot_unselected:I

    goto :goto_1

    :cond_0
    sget v2, Lcom/transsion/audio/R$drawable;->ic_page_dot_selected:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/audio/R$layout;->dialog_music_appwidget:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->initItemClick(Landroid/view/View;)V

    return-object v0
.end method

.method public showDialog(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "music_widget_show_count"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "music_widget_show_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->u(Ljava/lang/String;J)Z

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget-boolean p1, Lpp3;->c:Z

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/audio/R$string;->visha_add_widget_guide_pre:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/audio/R$string;->visha_add_widget_guide:I

    :goto_0
    invoke-static {p1}, Lr0a;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->onCreateView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/audio/R$string;->ok:I

    invoke-static {v0}, Lr0a;->e(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Llf;

    invoke-direct {v1, p0}, Llf;-><init>(Lcom/transsion/audio/widgets/AppWidgetMusicDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/audio/R$string;->cancel:I

    invoke-static {p1}, Lr0a;->e(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf;

    invoke-direct {v0}, Lmf;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method
