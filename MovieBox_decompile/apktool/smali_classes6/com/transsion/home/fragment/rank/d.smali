.class public final synthetic Lcom/transsion/home/fragment/rank/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/rank/RankAllFragment;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/rank/RankAllFragment;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/fragment/rank/d;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/fragment/rank/d;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/fragment/rank/d;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/home/fragment/rank/d;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/d;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/fragment/rank/d;->b:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/fragment/rank/d;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/home/fragment/rank/d;->d:I

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    check-cast v4, Landroidx/compose/runtime/i;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/transsion/home/fragment/rank/RankAllFragment;->a0(Lcom/transsion/home/fragment/rank/RankAllFragment;Ljava/util/List;Ljava/lang/String;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
