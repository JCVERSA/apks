.class public final Lfa/a;
.super Lda/h;
.source "source.java"


# instance fields
.field private final o:Lfa/b;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "DvbDecoder"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lda/h;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [B

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-instance v1, Lfa/b;

    .line 27
    .line 28
    invoke-direct {v1, p1, v0}, Lfa/b;-><init>(II)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lfa/a;->o:Lfa/b;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method protected w([BIZ)Lda/i;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p3, p0, Lfa/a;->o:Lfa/b;

    .line 4
    .line 5
    invoke-virtual {p3}, Lfa/b;->r()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance p3, Lfa/c;

    .line 9
    .line 10
    iget-object v0, p0, Lfa/a;->o:Lfa/b;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lfa/b;->b([BI)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p3, p1}, Lfa/c;-><init>(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-object p3
.end method
