.class public final synthetic Lcom/google/android/gms/net/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lzda;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/net/zza;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/net/zza;->zzb:Lzda;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/net/zza;->zza:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/gms/net/zza;->zzb:Lzda;

    :try_start_0
    invoke-static {v0}, Lnl1;->d(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzda;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lzda;->b(Ljava/lang/Exception;)V

    return-void
.end method
