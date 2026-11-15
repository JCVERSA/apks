.class public final Lwee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loee;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lu4h;


# direct methods
.method public constructor <init>(Lkjh;Lerj;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lkjh;->b:Lu4h;

    iput-object p1, p0, Lwee;->c:Lu4h;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lu4h;->l(I)V

    invoke-virtual {p1}, Lu4h;->J()I

    move-result v0

    iget-object v1, p2, Lerj;->o:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p2, Lerj;->G:I

    iget p2, p2, Lerj;->E:I

    invoke-static {v1}, Lkfh;->F(I)I

    move-result v1

    mul-int/2addr v1, p2

    if-eqz v0, :cond_0

    rem-int p2, v0, v1

    if-eqz p2, :cond_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BoxParsers"

    invoke-static {v0, p2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    :cond_2
    iput v0, p0, Lwee;->a:I

    invoke-virtual {p1}, Lu4h;->J()I

    move-result p1

    iput p1, p0, Lwee;->b:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lwee;->a:I

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lwee;->b:I

    return p0
.end method

.method public final zzc()I
    .locals 2

    iget v0, p0, Lwee;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lwee;->c:Lu4h;

    invoke-virtual {p0}, Lu4h;->J()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method
