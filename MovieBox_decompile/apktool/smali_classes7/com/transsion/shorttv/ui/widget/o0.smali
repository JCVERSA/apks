.class public final synthetic Lcom/transsion/shorttv/ui/widget/o0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic c:Lcom/transsion/shorttv/bean/ShortTVItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/bean/ShortTVItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/o0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/o0;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/o0;->c:Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/o0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/o0;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/o0;->c:Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 6
    .line 7
    check-cast p1, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->u(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/bean/ShortTVItem;Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
