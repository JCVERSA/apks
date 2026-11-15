.class public final Lxie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhe;


# instance fields
.field public final a:Lu4h;

.field public final b:Loie;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    iput-object v0, p0, Lxie;->a:Lu4h;

    new-instance v0, Loie;

    invoke-direct {v0}, Loie;-><init>()V

    iput-object v0, p0, Lxie;->b:Loie;

    return-void
.end method


# virtual methods
.method public final a([BIILwge;Lqfg;)V
    .locals 7

    add-int/2addr p3, p2

    iget-object v0, p0, Lxie;->a:Lu4h;

    invoke-virtual {v0, p1, p3}, Lu4h;->j([BI)V

    invoke-virtual {v0, p2}, Lu4h;->l(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Lu4h;->w()I

    move-result p2

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p3}, Lu4h;->T(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "WEBVTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_a

    :cond_0
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Lu4h;->T(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    const/4 p3, -0x1

    const/4 v1, 0x0

    move v2, p3

    move v3, v1

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, p3, :cond_5

    invoke-virtual {v0}, Lu4h;->w()I

    move-result v3

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Lu4h;->T(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const-string v6, "STYLE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    const-string v5, "NOTE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Lu4h;->l(I)V

    if-eqz v2, :cond_9

    if-ne v2, v4, :cond_6

    :goto_2
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p3}, Lu4h;->T(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_2

    :cond_6
    if-ne v2, v5, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_7

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p3}, Lu4h;->T(Ljava/nio/charset/Charset;)Ljava/lang/String;

    iget-object p3, p0, Lxie;->b:Loie;

    invoke-virtual {p3, v0}, Loie;->b(Lu4h;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A style block was found after the first cue."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {v0, p1}, Lwie;->c(Lu4h;Ljava/util/List;)Lqie;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    new-instance p0, Lzie;

    invoke-direct {p0, p2}, Lzie;-><init>(Ljava/util/List;)V

    invoke-static {p0, p4, p5}, Lsge;->a(Ltge;Lwge;Lqfg;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_a
    :try_start_1
    invoke-virtual {v0, p2}, Lu4h;->l(I)V

    invoke-virtual {v0, p3}, Lu4h;->T(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Expected WEBVTT. Got "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
