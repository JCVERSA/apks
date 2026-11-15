.class public final synthetic Lioa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/TimerDialogSheetActivity;

.field public final synthetic c:Landroid/widget/Switch;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Landroid/widget/Switch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lioa;->b:Lcom/transsion/audio/activities/TimerDialogSheetActivity;

    iput-object p2, p0, Lioa;->c:Landroid/widget/Switch;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lioa;->b:Lcom/transsion/audio/activities/TimerDialogSheetActivity;

    iget-object p0, p0, Lioa;->c:Landroid/widget/Switch;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->f0(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Landroid/widget/Switch;Landroid/view/View;)V

    return-void
.end method
