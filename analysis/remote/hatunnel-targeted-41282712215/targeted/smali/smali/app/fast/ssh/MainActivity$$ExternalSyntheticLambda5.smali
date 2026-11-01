.class public final synthetic Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lapp/fast/ssh/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lapp/fast/ssh/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda5;->f$0:Lapp/fast/ssh/MainActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda5;->f$0:Lapp/fast/ssh/MainActivity;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {v0, p1}, Lapp/fast/ssh/MainActivity;->lambda$onCreate$3$app-fast-ssh-MainActivity(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method
