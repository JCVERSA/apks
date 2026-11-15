.class public Lcom/transsion/widgets/CustomTabLayoutNew$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomTabLayoutNew$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/CustomTabLayoutNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V
    .locals 0
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V
    .locals 0

    return-void
.end method
