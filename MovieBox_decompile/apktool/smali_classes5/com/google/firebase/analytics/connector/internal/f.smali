.class public final Lcom/google/firebase/analytics/connector/internal/f;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lmb/a$b;

.field private b:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field private c:Lcom/google/firebase/analytics/connector/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lmb/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/f;->a:Lmb/a$b;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/f;->b:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 7
    .line 8
    new-instance p1, Lcom/google/firebase/analytics/connector/internal/e;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/google/firebase/analytics/connector/internal/e;-><init>(Lcom/google/firebase/analytics/connector/internal/f;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/f;->c:Lcom/google/firebase/analytics/connector/internal/e;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/firebase/analytics/connector/internal/f;->b:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method static bridge synthetic a(Lcom/google/firebase/analytics/connector/internal/f;)Lmb/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/f;->a:Lmb/a$b;

    .line 2
    .line 3
    return-object p0
.end method
