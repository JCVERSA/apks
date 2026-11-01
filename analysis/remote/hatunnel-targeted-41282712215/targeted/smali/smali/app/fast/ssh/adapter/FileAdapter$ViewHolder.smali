.class Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/adapter/FileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field file_name:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;->view:Landroid/view/View;

    const v0, 0x7f09012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0900f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;->file_name:Landroid/widget/TextView;

    return-void
.end method
