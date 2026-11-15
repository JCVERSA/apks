.class public final synthetic Lcom/transsion/shorttv/ui/widget/x;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ad/playeroverlayad/a;

.field public final synthetic b:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field public final synthetic c:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ad/playeroverlayad/a;Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/x;->a:Lcom/transsion/shorttv/ad/playeroverlayad/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/x;->b:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/x;->c:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/x;->a:Lcom/transsion/shorttv/ad/playeroverlayad/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/x;->b:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/x;->c:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o(Lcom/transsion/shorttv/ad/playeroverlayad/a;Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Z)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
