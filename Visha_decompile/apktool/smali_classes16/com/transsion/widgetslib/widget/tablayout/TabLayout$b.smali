.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$b;->c:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$b;->b:Z

    return-void
.end method

.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$b;->c:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-object v0, p2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->J:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$b;->b:Z

    invoke-virtual {p2, p3, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->B(Landroidx/viewpager/widget/PagerAdapter;Z)V

    :cond_0
    return-void
.end method
