.class public final Lp3e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llu8;


# instance fields
.field public final b:Lcom/google/android/gms/common/api/Status;

.field public final c:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3e;->b:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lp3e;->c:Lcom/google/android/gms/auth/api/credentials/Credential;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, Lp3e;->b:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method
