.class public final Lg3i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Ljava/lang/CharSequence;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/l6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p2, p0, Lg3i;->b:Ljava/lang/CharSequence;

    iput-object p1, p0, Lg3i;->c:Lcom/google/android/gms/internal/ads/l6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lg3i;->c:Lcom/google/android/gms/internal/ads/l6;

    iget-object p0, p0, Lg3i;->b:Ljava/lang/CharSequence;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/l6;->e(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-static {v0, p0, v1}, Lo2i;->b(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
