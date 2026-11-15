.class public abstract Loxi;
.super Lmxi;
.source "SourceFile"

# interfaces
.implements Lqne;


# instance fields
.field public j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    const-string p1, "mvhd"

    invoke-direct {p0, p1}, Lmxi;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e()I
    .locals 1

    iget-boolean v0, p0, Lmxi;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmxi;->d()V

    :cond_0
    iget p0, p0, Loxi;->j:I

    return p0
.end method

.method public final f(Ljava/nio/ByteBuffer;)J
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lpne;->c(B)I

    move-result v0

    iput v0, p0, Loxi;->j:I

    invoke-static {p1}, Lpne;->d(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    const-wide/16 p0, 0x4

    return-wide p0
.end method
