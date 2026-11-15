.class public final Lcom/google/android/gms/internal/play_billing/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lvkj;

.field public c:Lhnj;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lhnj;->i()Lhnj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/u;->c:Lhnj;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/u;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/u;->b:Lvkj;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/u;->c:Lhnj;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/t;->d(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/u;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/u;->b:Lvkj;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lvkj;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/u;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/u;->b:Lvkj;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/u;->c:Lhnj;

    :cond_1
    return v0
.end method

.method public final finalize()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/u;->b:Lvkj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lvkj;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzq;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/u;->a:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lvkj;->c(Ljava/lang/Throwable;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/u;->d:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/u;->c:Lhnj;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/t;->d(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
