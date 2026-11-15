.class public final Ld5f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/a$b;


# instance fields
.field public final synthetic b:Leff;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/s3;Leff;)V
    .locals 0

    iput-object p2, p0, Ld5f;->b:Leff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Connection failed."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ld5f;->b:Leff;

    invoke-virtual {p0, p1}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
