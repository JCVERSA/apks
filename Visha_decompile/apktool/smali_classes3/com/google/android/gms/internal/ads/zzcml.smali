.class public final synthetic Lcom/google/android/gms/internal/ads/zzcml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Liqf;


# direct methods
.method public synthetic constructor <init>(Liqf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcml;->zza:Liqf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcml;->zza:Liqf;

    iget-object p0, p0, Liqf;->a:Lkqf;

    invoke-static {p0}, Lkqf;->a(Lkqf;)Loqf;

    move-result-object p0

    invoke-virtual {p0}, Loqf;->a()V

    return-void
.end method
