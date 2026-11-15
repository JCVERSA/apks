.class public final synthetic Lcl/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/Item;

.field public final synthetic b:Lcom/transsion/home/bean/FilterVal;

.field public final synthetic c:Landroidx/compose/runtime/snapshots/t;

.field public final synthetic d:Landroidx/compose/ui/f;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcl/j;->a:Lcom/transsion/home/bean/Item;

    .line 5
    .line 6
    iput-object p2, p0, Lcl/j;->b:Lcom/transsion/home/bean/FilterVal;

    .line 7
    .line 8
    iput-object p3, p0, Lcl/j;->c:Landroidx/compose/runtime/snapshots/t;

    .line 9
    .line 10
    iput-object p4, p0, Lcl/j;->d:Landroidx/compose/ui/f;

    .line 11
    .line 12
    iput p5, p0, Lcl/j;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcl/j;->a:Lcom/transsion/home/bean/Item;

    .line 2
    .line 3
    iget-object v1, p0, Lcl/j;->b:Lcom/transsion/home/bean/FilterVal;

    .line 4
    .line 5
    iget-object v2, p0, Lcl/j;->c:Landroidx/compose/runtime/snapshots/t;

    .line 6
    .line 7
    iget-object v3, p0, Lcl/j;->d:Landroidx/compose/ui/f;

    .line 8
    .line 9
    iget v4, p0, Lcl/j;->e:I

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Landroidx/compose/runtime/i;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    invoke-static/range {v0 .. v6}, Lcom/transsion/home/view/filter/popup/e;->b(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
