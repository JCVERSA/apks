.class public Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private lastIndex:I

.field private removeIndex:I

.field private tag:Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    iput v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->removeIndex:I

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    iput v1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->removeIndex:I

    if-ltz v1, :cond_1

    if-ltz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_0
    iput v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    return-object v1

    .line 7
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Iteration has no more elements."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->removeIndex:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1Iterator;->tag:Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->setLyric(Ljava/lang/String;)V

    return-void
.end method
