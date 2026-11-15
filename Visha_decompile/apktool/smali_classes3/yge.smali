.class public final Lyge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llu8;


# instance fields
.field public final b:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyge;->b:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, Lyge;->b:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method
