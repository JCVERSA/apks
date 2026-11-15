.class public final synthetic Ldvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Ljsg;


# direct methods
.method public synthetic constructor <init>(Ljsg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldvf;->a:Ljsg;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 0

    iget-object p0, p0, Ldvf;->a:Ljsg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbuy;

    invoke-virtual {p0, p1}, Ljsg;->a(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;

    move-result-object p0

    return-object p0
.end method
