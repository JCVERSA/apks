.class public Lcom/transsion/audio/lyrics/bean/LyricFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field allLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllLines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audio/lyrics/bean/LyricFile;->allLines:Ljava/util/List;

    return-object p0
.end method

.method public getOffset()I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/lyrics/bean/LyricFile;->offset:I

    return p0
.end method

.method public setAllLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/lyrics/bean/LyricFile;->allLines:Ljava/util/List;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/lyrics/bean/LyricFile;->offset:I

    return-void
.end method
