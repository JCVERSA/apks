.class public final synthetic Lc3i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3i;


# instance fields
.field public final synthetic a:Lk2i;


# direct methods
.method public synthetic constructor <init>(Lk2i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3i;->a:Lk2i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lc3i;->a:Lk2i;

    invoke-virtual {p0, p2}, Lk2i;->zza(Ljava/lang/CharSequence;)Lj2i;

    move-result-object p0

    new-instance v0, Le3i;

    invoke-direct {v0, p1, p2, p0}, Le3i;-><init>(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;Lj2i;)V

    return-object v0
.end method
