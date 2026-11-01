.class public Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/adapter/AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private app_icon:Landroid/widget/ImageView;

.field private app_name:Landroid/widget/TextView;

.field private app_package:Landroid/widget/TextView;

.field private parent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;->parent:Landroid/view/View;

    const v0, 0x7f090057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;->app_icon:Landroid/widget/ImageView;

    const v0, 0x7f090058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;->app_name:Landroid/widget/TextView;

    const v0, 0x7f090059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;->app_package:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;->app_icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;->app_name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;->app_package:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;->parent:Landroid/view/View;

    return-object p0
.end method
