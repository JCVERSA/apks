.class final Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;->c(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.mbwidget.PlayWidgetProvider$Companion$updateWidget$1"
    f = "PlayWidgetProvider.kt"
    l = {
        0x4d,
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $appWidgetId:I

.field final synthetic $appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final synthetic $context:Landroid/content/Context;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;

    .line 2
    .line 3
    iget v0, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;-><init>(ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Landroid/widget/RemoteViews;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget p1, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v4, "updateWidget: "

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    new-instance v1, Landroid/widget/RemoteViews;

    .line 54
    .line 55
    iget-object p1, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget v4, Lcom/transsion/mbwidget/R$layout;->widget_subject_play_small:I

    .line 62
    .line 63
    invoke-direct {v1, p1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lcom/transsion/mbwidget/PlayWidgetProvider;->a:Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;

    .line 67
    .line 68
    iget-object v4, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    .line 69
    .line 70
    iget v5, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    .line 71
    .line 72
    iput-object v1, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    iput v3, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->label:I

    .line 75
    .line 76
    invoke-static {p1, v4, v1, v5, p0}, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;->a(Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, v0, :cond_3

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance v3, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1$1;

    .line 88
    .line 89
    iget-object v4, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 90
    .line 91
    iget v5, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    .line 92
    .line 93
    const/4 v6, 0x0

    .line 94
    invoke-direct {v3, v4, v5, v1, v6}, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1$1;-><init>(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;Lkotlin/coroutines/Continuation;)V

    .line 95
    .line 96
    .line 97
    iput-object v6, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    iput v2, p0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;->label:I

    .line 100
    .line 101
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-ne p1, v0, :cond_4

    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    return-object p1
.end method
