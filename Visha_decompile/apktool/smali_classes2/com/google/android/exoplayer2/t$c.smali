.class public final Lcom/google/android/exoplayer2/t$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lzx3;


# direct methods
.method public constructor <init>(Lzx3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/t$c;->a:Lzx3;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/t$c;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/t$c;

    iget-object p0, p0, Lcom/google/android/exoplayer2/t$c;->a:Lzx3;

    iget-object p1, p1, Lcom/google/android/exoplayer2/t$c;->a:Lzx3;

    invoke-virtual {p0, p1}, Lzx3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/t$c;->a:Lzx3;

    invoke-virtual {p0}, Lzx3;->hashCode()I

    move-result p0

    return p0
.end method
