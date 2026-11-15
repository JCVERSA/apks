.class public final synthetic Lwt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwt;->a:Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lwt;->a:Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;->f0(Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;Ljava/lang/Boolean;)V

    return-void
.end method
