.class public final synthetic Lcl/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/i1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/i1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcl/m;->a:Landroidx/compose/runtime/i1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcl/m;->a:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/home/view/filter/popup/PopupFilterView;->b(Landroidx/compose/runtime/i1;)Lkotlin/Unit;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
