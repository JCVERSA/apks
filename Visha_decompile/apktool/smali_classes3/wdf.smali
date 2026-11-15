.class public final Lwdf;
.super Lv9f;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/gms/internal/play_billing/zzca;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzca;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lv9f;-><init>(II)V

    iput-object p1, p0, Lwdf;->d:Lcom/google/android/gms/internal/play_billing/zzca;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lwdf;->d:Lcom/google/android/gms/internal/play_billing/zzca;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
