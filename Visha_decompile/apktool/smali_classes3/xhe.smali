.class public final Lxhe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Lcom/google/android/gms/internal/ads/zzfxb;

.field public static final f:Lcom/google/android/gms/internal/ads/zzfxb;

.field public static final g:Lcom/google/android/gms/internal/ads/zzfxb;

.field public static final h:Lcom/google/android/gms/internal/ads/zzfxb;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lxhe;->d:Ljava/util/regex/Pattern;

    const-string v0, "auto"

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxb;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v0

    sput-object v0, Lxhe;->e:Lcom/google/android/gms/internal/ads/zzfxb;

    const-string v0, "sesame"

    const-string v1, "circle"

    const-string v2, "dot"

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfxb;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v0

    sput-object v0, Lxhe;->f:Lcom/google/android/gms/internal/ads/zzfxb;

    const-string v0, "filled"

    const-string v1, "open"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxb;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v0

    sput-object v0, Lxhe;->g:Lcom/google/android/gms/internal/ads/zzfxb;

    const-string v0, "before"

    const-string v1, "outside"

    const-string v2, "after"

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfxb;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v0

    sput-object v0, Lxhe;->h:Lcom/google/android/gms/internal/ads/zzfxb;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lxhe;->a:I

    iput p2, p0, Lxhe;->b:I

    iput p3, p0, Lxhe;->c:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lxhe;
    .locals 8

    if-nez p0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld2i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lxhe;->d:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfxb;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object p0

    sget-object v0, Lxhe;->h:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-static {v0, p0}, Ls5i;->b(Ljava/util/Set;Ljava/util/Set;)Lq5i;

    move-result-object v0

    const-string v1, "outside"

    invoke-static {v0, v1}, Lq4i;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x41ecca5b

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_2

    const v1, 0x58705dc

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "after"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v4

    :goto_1
    const/4 v1, 0x2

    if-eqz v0, :cond_5

    if-eq v0, v6, :cond_4

    move v0, v6

    goto :goto_2

    :cond_4
    const/4 v0, -0x2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    sget-object v2, Lxhe;->e:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-static {v2, p0}, Ls5i;->b(Ljava/util/Set;Ljava/util/Set;)Lq5i;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x33af38

    if-eq v1, v2, :cond_6

    goto/16 :goto_7

    :cond_6
    const-string v1, "none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move v4, v5

    goto/16 :goto_7

    :cond_7
    sget-object v2, Lxhe;->g:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-static {v2, p0}, Ls5i;->b(Ljava/util/Set;Ljava/util/Set;)Lq5i;

    move-result-object v2

    sget-object v3, Lxhe;->f:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-static {v3, p0}, Ls5i;->b(Ljava/util/Set;Ljava/util/Set;)Lq5i;

    move-result-object p0

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    const-string v3, "filled"

    invoke-static {v2, v3}, Lq4i;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v7, 0x34264a

    if-eq v3, v7, :cond_9

    goto :goto_3

    :cond_9
    const-string v3, "open"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v1

    goto :goto_4

    :cond_a
    :goto_3
    move v2, v6

    :goto_4
    const-string v3, "circle"

    invoke-static {p0, v3}, Lq4i;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v7, -0x35fdaa48    # -2135406.0f

    if-eq v3, v7, :cond_c

    const v7, 0x18549

    if-eq v3, v7, :cond_b

    goto :goto_5

    :cond_b
    const-string v3, "dot"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    move v4, v5

    goto :goto_5

    :cond_c
    const-string v3, "sesame"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    move v4, v6

    :cond_d
    :goto_5
    if-eqz v4, :cond_f

    if-eq v4, v6, :cond_e

    move v5, v2

    move v4, v6

    goto :goto_7

    :cond_e
    const/4 v4, 0x3

    :goto_6
    move v5, v2

    goto :goto_7

    :cond_f
    move v4, v1

    goto :goto_6

    :cond_10
    :goto_7
    new-instance p0, Lxhe;

    invoke-direct {p0, v4, v5, v0}, Lxhe;-><init>(III)V

    return-object p0

    :cond_11
    :goto_8
    const/4 p0, 0x0

    return-object p0
.end method
