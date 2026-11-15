.class public final synthetic Lnoa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/CustomTimePicker$c;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/activities/TimerDialogSheetActivity;

.field public final synthetic b:Landroid/widget/Button;

.field public final synthetic c:Lcom/transsion/widgetslib/dialog/d;

.field public final synthetic d:Lcom/transsion/playercommon/widgets/CustomTimePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Landroid/widget/Button;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnoa;->a:Lcom/transsion/audio/activities/TimerDialogSheetActivity;

    iput-object p2, p0, Lnoa;->b:Landroid/widget/Button;

    iput-object p3, p0, Lnoa;->c:Lcom/transsion/widgetslib/dialog/d;

    iput-object p4, p0, Lnoa;->d:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6

    iget-object v0, p0, Lnoa;->a:Lcom/transsion/audio/activities/TimerDialogSheetActivity;

    iget-object v1, p0, Lnoa;->b:Landroid/widget/Button;

    iget-object v2, p0, Lnoa;->c:Lcom/transsion/widgetslib/dialog/d;

    iget-object v3, p0, Lnoa;->d:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->l0(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Landroid/widget/Button;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;II)V

    return-void
.end method
