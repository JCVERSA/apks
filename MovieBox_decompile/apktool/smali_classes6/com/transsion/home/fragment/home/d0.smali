.class public final synthetic Lcom/transsion/home/fragment/home/d0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/home/HomeSearchViewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/fragment/home/d0;->a:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final makeView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/d0;->a:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->d(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
