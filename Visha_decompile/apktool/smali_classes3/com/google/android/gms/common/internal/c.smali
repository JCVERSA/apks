.class public final Lcom/google/android/gms/common/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/a$a;


# instance fields
.field public final synthetic b:Lbf1;


# direct methods
.method public constructor <init>(Lbf1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->b:Lbf1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/c;->b:Lbf1;

    invoke-interface {p0, p1}, Lbf1;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/c;->b:Lbf1;

    invoke-interface {p0, p1}, Lbf1;->onConnectionSuspended(I)V

    return-void
.end method
