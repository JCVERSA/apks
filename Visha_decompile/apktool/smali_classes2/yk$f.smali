.class public final Lyk$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyk$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Lqw7;

.field public final b:I

.field public final c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lxk$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lxk$b;->b:Lqw7;

    iput-object p1, p0, Lyk$f;->a:Lqw7;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lqw7;->O(I)V

    invoke-virtual {p1}, Lqw7;->G()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lyk$f;->c:I

    invoke-virtual {p1}, Lqw7;->G()I

    move-result p1

    iput p1, p0, Lyk$f;->b:I

    return-void
.end method


# virtual methods
.method public getFixedSampleSize()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSampleCount()I
    .locals 0

    iget p0, p0, Lyk$f;->b:I

    return p0
.end method

.method public readNextSampleSize()I
    .locals 2

    iget v0, p0, Lyk$f;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lyk$f;->a:Lqw7;

    invoke-virtual {p0}, Lqw7;->C()I

    move-result p0

    return p0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lyk$f;->a:Lqw7;

    invoke-virtual {p0}, Lqw7;->I()I

    move-result p0

    return p0

    :cond_1
    iget v0, p0, Lyk$f;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lyk$f;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lyk$f;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->C()I

    move-result v0

    iput v0, p0, Lyk$f;->e:I

    and-int/lit16 p0, v0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    return p0

    :cond_2
    iget p0, p0, Lyk$f;->e:I

    and-int/lit8 p0, p0, 0xf

    return p0
.end method
