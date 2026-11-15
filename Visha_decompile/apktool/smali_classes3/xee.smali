.class public final Lxee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loee;


# instance fields
.field public final a:Lu4h;

.field public final b:I

.field public final c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lkjh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lkjh;->b:Lu4h;

    iput-object p1, p0, Lxee;->a:Lu4h;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lu4h;->l(I)V

    invoke-virtual {p1}, Lu4h;->J()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lxee;->c:I

    invoke-virtual {p1}, Lu4h;->J()I

    move-result p1

    iput p1, p0, Lxee;->b:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lxee;->b:I

    return p0
.end method

.method public final zzc()I
    .locals 2

    iget v0, p0, Lxee;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lxee;->a:Lu4h;

    invoke-virtual {p0}, Lu4h;->G()I

    move-result p0

    return p0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lxee;->a:Lu4h;

    invoke-virtual {p0}, Lu4h;->K()I

    move-result p0

    return p0

    :cond_1
    iget v0, p0, Lxee;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lxee;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lxee;->a:Lu4h;

    invoke-virtual {v0}, Lu4h;->G()I

    move-result v0

    iput v0, p0, Lxee;->e:I

    and-int/lit16 p0, v0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    return p0

    :cond_2
    iget p0, p0, Lxee;->e:I

    and-int/lit8 p0, p0, 0xf

    return p0
.end method
