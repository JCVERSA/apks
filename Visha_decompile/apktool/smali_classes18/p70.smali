.class public final synthetic Lp70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/youth/banner/adapter/BannerAdapter;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/youth/banner/adapter/BannerAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp70;->b:Lcom/youth/banner/adapter/BannerAdapter;

    iput-object p2, p0, Lp70;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lp70;->b:Lcom/youth/banner/adapter/BannerAdapter;

    iget-object p0, p0, Lp70;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v0, p0, p1}, Lcom/youth/banner/adapter/BannerAdapter;->c(Lcom/youth/banner/adapter/BannerAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    return-void
.end method
