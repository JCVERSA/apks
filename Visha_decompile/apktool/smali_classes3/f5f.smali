.class public final Lf5f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/AdapterStatus;


# instance fields
.field public final a:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5f;->a:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    iput-object p2, p0, Lf5f;->b:Ljava/lang/String;

    iput p3, p0, Lf5f;->c:I

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf5f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getInitializationState()Lcom/google/android/gms/ads/initialization/AdapterStatus$State;
    .locals 0

    iget-object p0, p0, Lf5f;->a:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    return-object p0
.end method

.method public final getLatency()I
    .locals 0

    iget p0, p0, Lf5f;->c:I

    return p0
.end method
