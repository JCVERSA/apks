.class public final synthetic Lggg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lim5;


# direct methods
.method public synthetic constructor <init>(Lim5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggg;->a:Lim5;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    check-cast p1, Lejf;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lggg;->a:Lim5;

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzefy;

    const/4 p1, 0x1

    const-string v0, "Retrieve Web View from image ad response failed."

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    throw p0
.end method
