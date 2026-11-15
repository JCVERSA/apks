.class public final synthetic Lcl/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/snapshots/t;

.field public final synthetic b:Lcom/transsion/home/bean/Item;

.field public final synthetic c:Lcom/transsion/home/bean/FilterVal;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcl/i;->a:Landroidx/compose/runtime/snapshots/t;

    .line 5
    .line 6
    iput-object p2, p0, Lcl/i;->b:Lcom/transsion/home/bean/Item;

    .line 7
    .line 8
    iput-object p3, p0, Lcl/i;->c:Lcom/transsion/home/bean/FilterVal;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcl/i;->a:Landroidx/compose/runtime/snapshots/t;

    .line 2
    .line 3
    iget-object v1, p0, Lcl/i;->b:Lcom/transsion/home/bean/Item;

    .line 4
    .line 5
    iget-object v2, p0, Lcl/i;->c:Lcom/transsion/home/bean/FilterVal;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsion/home/view/filter/popup/e;->i(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
