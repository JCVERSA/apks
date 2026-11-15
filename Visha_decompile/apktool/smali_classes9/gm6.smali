.class public final synthetic Lgm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/CustomTimePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/CustomTimePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgm6;->b:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lgm6;->b:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;->k0(Lcom/transsion/playercommon/widgets/CustomTimePicker;Landroid/content/DialogInterface;)V

    return-void
.end method
