.class public final Lmie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhe;


# instance fields
.field public final a:Lu4h;

.field public final b:Lu4h;

.field public final c:Llie;

.field public d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    iput-object v0, p0, Lmie;->a:Lu4h;

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    iput-object v0, p0, Lmie;->b:Lu4h;

    new-instance v0, Llie;

    invoke-direct {v0}, Llie;-><init>()V

    iput-object v0, p0, Lmie;->c:Llie;

    new-instance p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, p0}, Llie;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a([BIILwge;Lqfg;)V
    .locals 6

    add-int/2addr p3, p2

    iget-object p4, p0, Lmie;->a:Lu4h;

    invoke-virtual {p4, p1, p3}, Lu4h;->j([BI)V

    invoke-virtual {p4, p2}, Lu4h;->l(I)V

    iget-object p1, p0, Lmie;->d:Ljava/util/zip/Inflater;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p1, p0, Lmie;->d:Ljava/util/zip/Inflater;

    :cond_0
    iget-object p1, p0, Lmie;->b:Lu4h;

    iget-object p2, p0, Lmie;->d:Ljava/util/zip/Inflater;

    invoke-static {p4, p1, p2}, Lkfh;->o(Lu4h;Lu4h;Ljava/util/zip/Inflater;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object p2

    invoke-virtual {p1}, Lu4h;->x()I

    move-result p1

    invoke-virtual {p4, p2, p1}, Lu4h;->j([BI)V

    :cond_1
    iget-object p0, p0, Lmie;->c:Llie;

    invoke-virtual {p0}, Llie;->d()V

    invoke-virtual {p4}, Lu4h;->u()I

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-lt p1, p2, :cond_3

    invoke-virtual {p4}, Lu4h;->K()I

    move-result p2

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p4}, Llie;->c(Lu4h;)V

    invoke-virtual {p0, p4}, Llie;->a(Lu4h;)Lfyf;

    move-result-object p3

    :cond_3
    :goto_0
    new-instance p0, Lqge;

    if-eqz p3, :cond_4

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    goto :goto_1

    :goto_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/32 v4, 0x4c4b40

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqge;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p5, p0}, Lqfg;->zza(Ljava/lang/Object;)V

    return-void
.end method
