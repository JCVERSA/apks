.class public final Llui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2h;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/e;


# direct methods
.method public constructor <init>(Lzui;Lcom/google/android/gms/measurement/internal/e;)V
    .locals 0

    iput-object p2, p0, Llui;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    iget-object v0, p0, Llui;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Llui;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->B()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
