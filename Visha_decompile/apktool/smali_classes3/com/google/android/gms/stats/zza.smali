.class public final synthetic Lcom/google/android/gms/stats/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Llgc;


# direct methods
.method public synthetic constructor <init>(Llgc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/stats/zza;->zza:Llgc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/stats/zza;->zza:Llgc;

    invoke-static {p0}, Llgc;->e(Llgc;)V

    return-void
.end method
