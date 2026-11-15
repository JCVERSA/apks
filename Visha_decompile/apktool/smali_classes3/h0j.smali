.class public final Lh0j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz8j;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/g;)V
    .locals 0

    iput-object p1, p0, Lh0j;->a:Lcom/google/android/gms/measurement/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "auto"

    const-string v1, "_err"

    if-nez p2, :cond_0

    iget-object p0, p0, Lh0j;->a:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0, v0, v1, p3, p1}, Lcom/google/android/gms/measurement/internal/g;->s(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lh0j;->a:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/g;->q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
