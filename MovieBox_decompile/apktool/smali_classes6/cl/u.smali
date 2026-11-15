.class public final synthetic Lcl/u;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/Item;

.field public final synthetic b:Landroidx/compose/foundation/layout/k;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/Item;Landroidx/compose/foundation/layout/k;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcl/u;->a:Lcom/transsion/home/bean/Item;

    .line 5
    .line 6
    iput-object p2, p0, Lcl/u;->b:Landroidx/compose/foundation/layout/k;

    .line 7
    .line 8
    iput-object p3, p0, Lcl/u;->c:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcl/u;->a:Lcom/transsion/home/bean/Item;

    .line 2
    .line 3
    iget-object v1, p0, Lcl/u;->b:Landroidx/compose/foundation/layout/k;

    .line 4
    .line 5
    iget-object v2, p0, Lcl/u;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/foundation/lazy/u;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcl/w$a;->a(Lcom/transsion/home/bean/Item;Landroidx/compose/foundation/layout/k;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/lazy/u;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
