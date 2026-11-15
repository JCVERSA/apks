.class public final Lcom/google/android/gms/internal/ads/l6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li3i;


# direct methods
.method public constructor <init>(Li3i;)V
    .locals 1

    sget-object v0, Lh2i;->c:Li2i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l6;->a:Li3i;

    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/ads/l6;
    .locals 2

    new-instance p0, Lcom/google/android/gms/internal/ads/l6;

    new-instance v0, La3i;

    const/16 v1, 0xfa0

    invoke-direct {v0, v1}, La3i;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/l6;-><init>(Li3i;)V

    return-object p0
.end method

.method public static b(Li2i;)Lcom/google/android/gms/internal/ads/l6;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/l6;

    new-instance v1, Lb3i;

    invoke-direct {v1, p0}, Lb3i;-><init>(Li2i;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/l6;-><init>(Li3i;)V

    return-object v0
.end method

.method public static c(Ljava/util/regex/Pattern;)Lcom/google/android/gms/internal/ads/l6;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzftn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzftn;-><init>(Ljava/util/regex/Pattern;)V

    const-string p0, ""

    invoke-virtual {v0, p0}, Lk2i;->zza(Ljava/lang/CharSequence;)Lj2i;

    move-result-object p0

    check-cast p0, Ln2i;

    iget-object p0, p0, Ln2i;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v1, "The pattern may not match the empty string: %s"

    invoke-static {p0, v1, v0}, Lv2i;->i(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/l6;

    new-instance v1, Lc3i;

    invoke-direct {v1, v0}, Lc3i;-><init>(Lk2i;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/l6;-><init>(Li3i;)V

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/l6;->g(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg3i;

    invoke-direct {v0, p0, p1}, Lg3i;-><init>(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final f(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/l6;->g(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l6;->a:Li3i;

    invoke-interface {v0, p0, p1}, Li3i;->a(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
