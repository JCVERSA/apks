.class public final synthetic Lcom/transsion/shorttv/ui/fragment/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/h;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/h;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    .line 2
    .line 3
    check-cast p1, Landroid/view/View;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    check-cast p3, Lcom/transsion/shorttv/bean/BannerData;

    .line 12
    .line 13
    invoke-static {v0, p1, p2, p3}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->s0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;Landroid/view/View;ILcom/transsion/shorttv/bean/BannerData;)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
