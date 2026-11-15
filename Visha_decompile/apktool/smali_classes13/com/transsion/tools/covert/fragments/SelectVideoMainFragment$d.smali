.class public Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$d;->b:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

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
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$d;->b:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-static {p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->R0()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$d;->b:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-static {p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->y0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$d;->b:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-static {p0, v0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->y0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Z)V

    :goto_0
    return-void
.end method
