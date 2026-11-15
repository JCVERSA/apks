.class public Lcom/transsion/playercommon/widgets/CircleIndicator$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/CircleIndicator;->setViewPager(Landroidx/viewpager2/widget/ViewPager2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/playercommon/widgets/CircleIndicator;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/CircleIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CircleIndicator$a;->d:Lcom/transsion/playercommon/widgets/CircleIndicator;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CircleIndicator$a;->d:Lcom/transsion/playercommon/widgets/CircleIndicator;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/CircleIndicator;->a(Lcom/transsion/playercommon/widgets/CircleIndicator;I)V

    return-void
.end method
