.class final Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->m(Landroid/widget/RemoteViews;ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.mbwidget.SportSchedulePreviewWidgetProvider$Companion"
    f = "SportSchedulePreviewWidgetProvider.kt"
    l = {
        0x1af
    }
    m = "loadTeamLogo"
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;


# direct methods
.method constructor <init>(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->this$0:Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->label:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->this$0:Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v5, p0

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->c(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/widget/RemoteViews;ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
