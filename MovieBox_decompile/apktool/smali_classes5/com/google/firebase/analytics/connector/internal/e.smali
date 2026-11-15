.class final Lcom/google/firebase/analytics/connector/internal/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;


# instance fields
.field private final synthetic a:Lcom/google/firebase/analytics/connector/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/firebase/analytics/connector/internal/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/e;->a:Lcom/google/firebase/analytics/connector/internal/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/firebase/analytics/connector/internal/a;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "name"

    .line 15
    .line 16
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p2, "timestampInMillis"

    .line 20
    .line 21
    invoke-virtual {p1, p2, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    const-string p2, "params"

    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/google/firebase/analytics/connector/internal/e;->a:Lcom/google/firebase/analytics/connector/internal/f;

    .line 30
    .line 31
    invoke-static {p2}, Lcom/google/firebase/analytics/connector/internal/f;->a(Lcom/google/firebase/analytics/connector/internal/f;)Lmb/a$b;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const/4 p3, 0x3

    .line 36
    invoke-interface {p2, p3, p1}, Lmb/a$b;->a(ILandroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
