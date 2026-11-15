.class public final synthetic Lkyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lztf;


# instance fields
.field public final synthetic a:Leoh;


# direct methods
.method public synthetic constructor <init>(Leoh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkyg;->a:Leoh;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 0

    iget-object p0, p0, Lkyg;->a:Leoh;

    invoke-virtual {p0}, Leoh;->g()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p0

    return-object p0
.end method
