.class final synthetic Lcom/google/android/gms/iid/zzu;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final zzcm:Lcom/google/android/gms/iid/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/zzt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/iid/zzu;->zzcm:Lcom/google/android/gms/iid/zzt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/iid/zzu;->zzcm:Lcom/google/android/gms/iid/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/iid/zzt;->zzd(Landroid/os/Message;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
