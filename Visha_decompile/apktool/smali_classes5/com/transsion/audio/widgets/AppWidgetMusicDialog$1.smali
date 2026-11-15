.class Lcom/transsion/audio/widgets/AppWidgetMusicDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->initItemClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AppWidgetMusicDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AppWidgetMusicDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog$1;->this$0:Lcom/transsion/audio/widgets/AppWidgetMusicDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog$1;->this$0:Lcom/transsion/audio/widgets/AppWidgetMusicDialog;

    iput p1, v0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->mIndex:I

    add-int/lit8 v1, p1, 0x1

    iget v0, v0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->from:I

    invoke-static {v1, v0}, Lry5;->n(II)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AppWidgetMusicDialog$1;->this$0:Lcom/transsion/audio/widgets/AppWidgetMusicDialog;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->c(Lcom/transsion/audio/widgets/AppWidgetMusicDialog;I)V

    return-void
.end method
