.class Lda/h$a;
.super Lda/n;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lda/h;->t()Lda/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lda/h;


# direct methods
.method constructor <init>(Lda/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lda/h$a;->f:Lda/h;

    .line 2
    .line 3
    invoke-direct {p0}, Lda/n;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lda/h$a;->f:Lda/h;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lda/h;->r(Lda/h;Lcom/google/android/exoplayer2/decoder/f;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
