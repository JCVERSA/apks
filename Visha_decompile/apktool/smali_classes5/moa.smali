.class public final synthetic Lmoa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/TimerDialogSheetActivity;

.field public final synthetic c:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoa;->b:Lcom/transsion/audio/activities/TimerDialogSheetActivity;

    iput-object p2, p0, Lmoa;->c:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lmoa;->b:Lcom/transsion/audio/activities/TimerDialogSheetActivity;

    iget-object p0, p0, Lmoa;->c:Lcom/transsion/widgetslib/dialog/d;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->k0(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V

    return-void
.end method
