.class public abstract Lcom/google/android/play/core/appupdate/internal/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final a:Landroid/os/IBinder;

.field private final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/a;->a:Landroid/os/IBinder;

    .line 5
    .line 6
    const-string p1, "com.google.android.play.core.appupdate.protocol.IAppUpdateService"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/a;->b:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/a;->a:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object v0
.end method
