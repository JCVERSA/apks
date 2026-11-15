.class public final Landroidx/compose/runtime/ComputedProvidableCompositionLocal;
.super Landroidx/compose/runtime/s1;
.source "source.java"


# instance fields
.field private final b:Landroidx/compose/runtime/x;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/ComputedProvidableCompositionLocal$1;->INSTANCE:Landroidx/compose/runtime/ComputedProvidableCompositionLocal$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/runtime/s1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/runtime/x;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/compose/runtime/x;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;->b:Landroidx/compose/runtime/x;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/compose/runtime/g3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;->g()Landroidx/compose/runtime/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Landroidx/compose/runtime/t1;
    .locals 9

    .line 1
    new-instance v8, Landroidx/compose/runtime/t1;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :goto_0
    move v3, v0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :goto_1
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v0, v8

    .line 15
    move-object v1, p0

    .line 16
    move-object v2, p1

    .line 17
    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/t1;-><init>(Landroidx/compose/runtime/q;Ljava/lang/Object;ZLandroidx/compose/runtime/q2;Landroidx/compose/runtime/i1;Lkotlin/jvm/functions/Function1;Z)V

    .line 18
    .line 19
    .line 20
    return-object v8
.end method

.method public g()Landroidx/compose/runtime/x;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;->b:Landroidx/compose/runtime/x;

    .line 2
    .line 3
    return-object v0
.end method
