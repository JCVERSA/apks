.class public final synthetic Lloa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/TimerDialogSheetActivity;

.field public final synthetic c:Lcom/transsion/widgetslib/dialog/d;

.field public final synthetic d:Lcom/transsion/playercommon/widgets/CustomTimePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloa;->b:Lcom/transsion/audio/activities/TimerDialogSheetActivity;

    iput-object p2, p0, Lloa;->c:Lcom/transsion/widgetslib/dialog/d;

    iput-object p3, p0, Lloa;->d:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lloa;->b:Lcom/transsion/audio/activities/TimerDialogSheetActivity;

    iget-object v1, p0, Lloa;->c:Lcom/transsion/widgetslib/dialog/d;

    iget-object p0, p0, Lloa;->d:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->m0(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;Landroid/view/View;)V

    return-void
.end method
