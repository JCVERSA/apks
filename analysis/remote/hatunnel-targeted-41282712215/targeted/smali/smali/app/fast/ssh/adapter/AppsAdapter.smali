.class public Lapp/fast/ssh/adapter/AppsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;,
        Lapp/fast/ssh/adapter/AppsAdapter$App;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/fast/ssh/adapter/AppsAdapter$App;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lapp/fast/ssh/adapter/AppsAdapter$App;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/adapter/AppsAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lapp/fast/ssh/adapter/AppsAdapter;->appList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$300(Lapp/fast/ssh/adapter/AppsAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/adapter/AppsAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method private static greyOut(Landroid/widget/ImageView;Z)V
    .locals 2

    .prologue
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/adapter/AppsAdapter;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lapp/fast/ssh/adapter/AppsAdapter;->onBindViewHolder(Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/adapter/AppsAdapter;->appList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/fast/ssh/adapter/AppsAdapter$App;

    invoke-static {p1}, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;->access$000(Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p2, Lapp/fast/ssh/adapter/AppsAdapter$App;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;->access$100(Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lapp/fast/ssh/adapter/AppsAdapter$App;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;->access$200(Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lapp/fast/ssh/adapter/AppsAdapter$App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;->access$400(Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lapp/fast/ssh/adapter/AppsAdapter$1;

    invoke-direct {v0, p0, p2}, Lapp/fast/ssh/adapter/AppsAdapter$1;-><init>(Lapp/fast/ssh/adapter/AppsAdapter;Lapp/fast/ssh/adapter/AppsAdapter$App;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lapp/fast/ssh/adapter/AppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;
    .locals 2

    iget-object p2, p0, Lapp/fast/ssh/adapter/AppsAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0025

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
