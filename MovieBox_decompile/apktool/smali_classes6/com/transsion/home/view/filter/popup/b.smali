.class public final synthetic Lcom/transsion/home/view/filter/popup/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroidx/compose/runtime/snapshots/t;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/view/filter/popup/b;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/view/filter/popup/b;->b:Landroidx/compose/runtime/snapshots/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/view/filter/popup/b;->a:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/view/filter/popup/b;->b:Landroidx/compose/runtime/snapshots/t;

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/foundation/lazy/u;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/transsion/home/view/filter/popup/e$a;->b(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/foundation/lazy/u;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
