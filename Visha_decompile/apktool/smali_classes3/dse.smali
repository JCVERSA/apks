.class public final Ldse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Li9g;


# direct methods
.method public constructor <init>(Li9g;)V
    .locals 0

    iput-object p1, p0, Ldse;->a:Li9g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Ldse;->a:Li9g;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li9g;->G(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ldse;->a:Li9g;

    check-cast p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;

    invoke-virtual {p0, p1}, Li9g;->F(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;)V

    return-void
.end method
