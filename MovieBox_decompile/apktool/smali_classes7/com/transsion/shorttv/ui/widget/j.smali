.class public final synthetic Lcom/transsion/shorttv/ui/widget/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/bean/ShortTVItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/bean/ShortTVItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/j;->a:Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/j;->a:Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvAdView;->a(Lcom/transsion/shorttv/bean/ShortTVItem;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
