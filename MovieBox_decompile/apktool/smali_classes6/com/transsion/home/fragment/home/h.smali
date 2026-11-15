.class public final synthetic Lcom/transsion/home/fragment/home/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic a:Landroid/widget/HorizontalScrollView;

.field public final synthetic b:Lcom/transsion/home/fragment/home/HomeFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/HorizontalScrollView;Lcom/transsion/home/fragment/home/HomeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/fragment/home/h;->a:Landroid/widget/HorizontalScrollView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/fragment/home/h;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/h;->a:Landroid/widget/HorizontalScrollView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/fragment/home/h;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/home/fragment/home/HomeFragment;->d0(Landroid/widget/HorizontalScrollView;Lcom/transsion/home/fragment/home/HomeFragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
