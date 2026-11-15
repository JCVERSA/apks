.class public final Lube;
.super Lxbe;
.source "SourceFile"


# static fields
.field public static final e:[I


# instance fields
.field public b:Z

.field public c:Z

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x5622

    const v1, 0xac44

    const/16 v2, 0x1588

    const/16 v3, 0x2b11

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lube;->e:[I

    return-void
.end method

.method public constructor <init>(Lrae;)V
    .locals 0

    invoke-direct {p0, p1}, Lxbe;-><init>(Lrae;)V

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)Z
    .locals 4

    iget-boolean v0, p0, Lube;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lu4h;->G()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    iput v0, p0, Lube;->d:I

    const-string v2, "video/x-flv"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    shr-int/2addr p1, v3

    sget-object v0, Lube;->e:[I

    and-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    new-instance v0, Lgpj;

    invoke-direct {v0}, Lgpj;-><init>()V

    invoke-virtual {v0, v2}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v2}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v0, v1}, Lgpj;->b(I)Lgpj;

    invoke-virtual {v0, p1}, Lgpj;->F(I)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object p1

    iget-object v0, p0, Lxbe;->a:Lrae;

    invoke-interface {v0, p1}, Lrae;->f(Lerj;)V

    iput-boolean v1, p0, Lube;->c:Z

    goto :goto_2

    :cond_0
    const/4 p1, 0x7

    if-eq v0, p1, :cond_3

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    if-ne v0, p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzafl;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio format not supported: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    new-instance v3, Lgpj;

    invoke-direct {v3}, Lgpj;-><init>()V

    invoke-virtual {v3, v2}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    if-ne v0, p1, :cond_4

    const-string p1, "audio/g711-alaw"

    goto :goto_1

    :cond_4
    const-string p1, "audio/g711-mlaw"

    :goto_1
    invoke-virtual {v3, p1}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v3, v1}, Lgpj;->b(I)Lgpj;

    const/16 p1, 0x1f40

    invoke-virtual {v3, p1}, Lgpj;->F(I)Lgpj;

    invoke-virtual {v3}, Lgpj;->K()Lerj;

    move-result-object p1

    iget-object v0, p0, Lxbe;->a:Lrae;

    invoke-interface {v0, p1}, Lrae;->f(Lerj;)V

    iput-boolean v1, p0, Lube;->c:Z

    :goto_2
    iput-boolean v1, p0, Lube;->b:Z

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v1}, Lu4h;->m(I)V

    :goto_3
    return v1
.end method

.method public final b(Lu4h;J)Z
    .locals 12

    iget v0, p0, Lube;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v7

    iget-object v3, p0, Lxbe;->a:Lrae;

    invoke-interface {v3, p1, v7}, Lrae;->d(Lu4h;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-wide v4, p2

    invoke-interface/range {v3 .. v9}, Lrae;->g(JIIILqae;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Lu4h;->G()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v3, p0, Lube;->c:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lu4h;->u()I

    move-result p2

    new-array p3, p2, [B

    invoke-virtual {p1, p3, v1, p2}, Lu4h;->h([BII)V

    invoke-static {p3}, Lp7e;->a([B)Ln7e;

    move-result-object p1

    new-instance p2, Lgpj;

    invoke-direct {p2}, Lgpj;-><init>()V

    const-string v0, "video/x-flv"

    invoke-virtual {p2, v0}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {p2, v0}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    iget-object v0, p1, Ln7e;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lgpj;->c(Ljava/lang/String;)Lgpj;

    iget v0, p1, Ln7e;->b:I

    invoke-virtual {p2, v0}, Lgpj;->b(I)Lgpj;

    iget p1, p1, Ln7e;->a:I

    invoke-virtual {p2, p1}, Lgpj;->F(I)Lgpj;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {p2}, Lgpj;->K()Lerj;

    move-result-object p1

    iget-object p2, p0, Lxbe;->a:Lrae;

    invoke-interface {p2, p1}, Lrae;->f(Lerj;)V

    iput-boolean v2, p0, Lube;->c:Z

    return v1

    :cond_2
    :goto_0
    iget v3, p0, Lube;->d:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v9

    iget-object v5, p0, Lxbe;->a:Lrae;

    invoke-interface {v5, p1, v9}, Lrae;->d(Lu4h;I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    move-wide v6, p2

    invoke-interface/range {v5 .. v11}, Lrae;->g(JIIILqae;)V

    return v2
.end method
