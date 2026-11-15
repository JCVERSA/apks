.class public abstract Ltk5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final b:Lvk5;


# direct methods
.method public constructor <init>(Lvk5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltk5;->b:Lvk5;

    return-void
.end method

.method public static c(Lsk5;)Lvk5;
    .locals 1

    invoke-virtual {p0}, Lsk5;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsk5;->d()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zzd;->u(Landroidx/fragment/app/FragmentActivity;)Lcom/google/android/gms/common/api/internal/zzd;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lsk5;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsk5;->c()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zza;->a(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zza;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get fragment for unexpected activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/app/Activity;)Lvk5;
    .locals 1

    new-instance v0, Lsk5;

    invoke-direct {v0, p0}, Lsk5;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Ltk5;->c(Lsk5;)Lvk5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Ltk5;->b:Lvk5;

    invoke-interface {p0}, Lvk5;->n()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public abstract e(IILandroid/content/Intent;)V
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method
