.class public final Lcom/google/android/gms/internal/measurement/zzia;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final zza:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhz;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhz;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/q;)Lcom/google/common/base/q;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzia;->zza:Lcom/google/common/base/q;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic zza()Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableSetMultimap$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSetMultimap$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSetMultimap$a;->j()Lcom/google/common/collect/ImmutableSetMultimap;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
