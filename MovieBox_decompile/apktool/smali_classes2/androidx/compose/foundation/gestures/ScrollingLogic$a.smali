.class public final Landroidx/compose/foundation/gestures/ScrollingLogic$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/foundation/gestures/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/o;Landroidx/compose/foundation/f0;Landroidx/compose/foundation/gestures/g;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 2
    .line 3
    invoke-static {v0, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(Landroidx/compose/foundation/gestures/ScrollingLogic;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(Landroidx/compose/foundation/gestures/ScrollingLogic;)Landroidx/compose/foundation/f0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 15
    .line 16
    invoke-static {v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->h(Landroidx/compose/foundation/gestures/ScrollingLogic;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object p3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 23
    .line 24
    invoke-static {p3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->b(Landroidx/compose/foundation/gestures/ScrollingLogic;)I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 29
    .line 30
    invoke-static {v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(Landroidx/compose/foundation/gestures/ScrollingLogic;)Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/compose/foundation/f0;->c(JILkotlin/jvm/functions/Function1;)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 40
    .line 41
    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->e(Landroidx/compose/foundation/gestures/ScrollingLogic;)Landroidx/compose/foundation/gestures/k;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 46
    .line 47
    invoke-static {v1, v0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->i(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/k;JI)J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    :goto_0
    return-wide p1
.end method

.method public b(JI)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->e(Landroidx/compose/foundation/gestures/ScrollingLogic;)Landroidx/compose/foundation/gestures/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 8
    .line 9
    invoke-static {v1, v0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->i(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/k;JI)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method
