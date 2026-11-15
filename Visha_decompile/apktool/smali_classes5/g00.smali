.class public final synthetic Lg00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg00;->b:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iput-object p2, p0, Lg00;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lg00;->b:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iget-object p0, p0, Lg00;->c:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->j0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Landroid/os/Bundle;)V

    return-void
.end method
