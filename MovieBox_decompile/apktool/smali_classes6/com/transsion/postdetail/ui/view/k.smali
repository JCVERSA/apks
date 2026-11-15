.class public final synthetic Lcom/transsion/postdetail/ui/view/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/expand/ExpandView;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field public final synthetic e:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/expand/ExpandView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/k;->a:Lcom/tn/lib/view/expand/ExpandView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/k;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/postdetail/ui/view/k;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/postdetail/ui/view/k;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsion/postdetail/ui/view/k;->e:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/k;->a:Lcom/tn/lib/view/expand/ExpandView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/k;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/k;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/k;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/k;->e:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Landroid/view/View;

    .line 13
    .line 14
    move-object v6, p2

    .line 15
    check-cast v6, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static/range {v0 .. v6}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q(Lcom/tn/lib/view/expand/ExpandView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Landroid/view/View;Ljava/lang/String;)Lkotlin/Unit;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
