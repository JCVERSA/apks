.class public final synthetic Lrhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/y3;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrhf;->b:Lcom/google/android/gms/internal/ads/y3;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrhf;->b:Lcom/google/android/gms/internal/ads/y3;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/y3;->b(Lcom/google/android/gms/internal/ads/y3;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
