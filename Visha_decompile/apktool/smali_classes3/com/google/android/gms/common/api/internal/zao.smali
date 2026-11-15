.class final Lcom/google/android/gms/common/api/internal/zao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/t;

.field private final zab:Lb2e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/t;Lb2e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zao;->zab:Lb2e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/t;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/t;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zao;->zab:Lb2e;

    invoke-virtual {v0}, Lb2e;->b()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/t;

    iget-object v2, v1, Ltk5;->b:Lvk5;

    invoke-virtual {v1}, Ltk5;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zao;->zab:Lb2e;

    invoke-virtual {p0}, Lb2e;->a()I

    move-result p0

    const/4 v3, 0x0

    invoke-static {v1, v0, p0, v3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {v2, p0, v0}, Lvk5;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/t;

    invoke-virtual {v1}, Ltk5;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/t;->f:Lzi4;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lzi4;->c(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/t;

    invoke-virtual {v1}, Ltk5;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v1, Ltk5;->b:Lvk5;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v5

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/t;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/t;->f:Lzi4;

    const/4 v6, 0x2

    invoke-virtual/range {v2 .. v7}, Lzi4;->x(Landroid/app/Activity;Lvk5;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/t;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/t;->f:Lzi4;

    invoke-virtual {v0}, Ltk5;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lzi4;->s(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/t;

    invoke-virtual {v1}, Ltk5;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/internal/s;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/s;-><init>(Lcom/google/android/gms/common/api/internal/zao;Landroid/app/Dialog;)V

    iget-object p0, v1, Lcom/google/android/gms/common/api/internal/t;->f:Lzi4;

    invoke-virtual {p0, v2, v3}, Lzi4;->t(Landroid/content/Context;Lg0e;)Lcom/google/android/gms/common/api/internal/zabx;

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/t;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zao;->zab:Lb2e;

    invoke-virtual {p0}, Lb2e;->a()I

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/google/android/gms/common/api/internal/t;->q(Lcom/google/android/gms/common/api/internal/t;Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
