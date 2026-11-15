.class public final synthetic Lcom/google/android/gms/cloudmessaging/zzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lcom/google/android/gms/cloudmessaging/CloudMessage;

.field public final synthetic zzc:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cloudmessaging/CloudMessage;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzg;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/zzg;->zzb:Lcom/google/android/gms/cloudmessaging/CloudMessage;

    iput-object p3, p0, Lcom/google/android/gms/cloudmessaging/zzg;->zzc:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzg;->zzb:Lcom/google/android/gms/cloudmessaging/CloudMessage;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/CloudMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/tasks/a;->e(Ljava/lang/Object;)Lxda;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/CloudMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "google.message_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/CloudMessage;->zza()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "google.product_id"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzg;->zza:Landroid/content/Context;

    const-string v2, "supports_message_handled"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v0}, Ldnj;->b(Landroid/content/Context;)Ldnj;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ldnj;->c(ILandroid/os/Bundle;)Lxda;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/zzg;->zzc:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ldvg;->b:Ldvg;

    new-instance v2, Lolh;

    invoke-direct {v2, p0}, Lolh;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1, v2}, Lxda;->c(Ljava/util/concurrent/Executor;Lpe7;)Lxda;

    return-void
.end method
