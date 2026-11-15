.class public final Lcom/google/android/gms/common/api/internal/s;
.super Lg0e;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zao;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zao;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->b:Lcom/google/android/gms/common/api/internal/zao;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/s;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lg0e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->b:Lcom/google/android/gms/common/api/internal/zao;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/t;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/t;->r(Lcom/google/android/gms/common/api/internal/t;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/s;->a:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
