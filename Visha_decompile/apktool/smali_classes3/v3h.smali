.class public final synthetic Lv3h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgjh;


# instance fields
.field public final synthetic a:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3h;->a:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lv3h;->a:Landroid/util/Pair;

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzcl;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/ads/internal/client/zzcl;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
