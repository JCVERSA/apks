.class final Lcom/google/android/play/core/review/zzc;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lzda;


# direct methods
.method public constructor <init>(Lv4g;Landroid/os/Handler;Lzda;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/play/core/review/zzc;->zza:Lzda;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/review/zzc;->zza:Lzda;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lzda;->e(Ljava/lang/Object;)Z

    return-void
.end method
