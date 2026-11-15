.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/tablayout/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$h;->a:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$h;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public c(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;)V
    .locals 0

    return-void
.end method
