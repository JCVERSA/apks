.class public final synthetic Lcom/transsion/home/fragment/tab/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/f;->a:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/fragment/tab/f;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/fragment/tab/f;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/home/fragment/tab/f;->d:Lkotlin/jvm/internal/Ref$IntRef;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsion/home/fragment/tab/f;->e:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/f;->a:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/fragment/tab/f;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/fragment/tab/f;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/fragment/tab/f;->d:Lkotlin/jvm/internal/Ref$IntRef;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/home/fragment/tab/f;->e:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Lkotlin/Pair;

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->e(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;)Lkotlin/Unit;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
