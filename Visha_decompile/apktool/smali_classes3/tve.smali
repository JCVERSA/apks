.class public final Ltve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V
    .locals 0

    iput-object p1, p0, Ltve;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ltve;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/android/gms/internal/measurement/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/b;->D()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
