.class public final synthetic Lcom/google/android/gms/tasks/zzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lzda;


# direct methods
.method public synthetic constructor <init>(Lzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzx;->zza:Lzda;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzx;->zza:Lzda;

    invoke-virtual {p0, v0}, Lzda;->d(Ljava/lang/Exception;)Z

    return-void
.end method
