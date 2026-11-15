.class public final synthetic Lcom/google/android/gms/internal/ads/zzcmn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljqf;


# direct methods
.method public synthetic constructor <init>(Ljqf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zza:Ljqf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zza:Ljqf;

    iget-object p0, p0, Ljqf;->a:Lkqf;

    invoke-static {p0}, Lkqf;->a(Lkqf;)Loqf;

    move-result-object p0

    invoke-virtual {p0}, Loqf;->e()V

    return-void
.end method
