.class Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/audio/wav/WavTagWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BothTagsFileStructure"
.end annotation


# instance fields
.field isAtEnd:Z

.field isContiguous:Z

.field isInfoTagFirst:Z

.field final synthetic this$0:Lcom/transsion/audiotagger/audio/wav/WavTagWriter;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/wav/WavTagWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->this$0:Lcom/transsion/audiotagger/audio/wav/WavTagWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    iput-boolean p1, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    iput-boolean p1, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsInfoTagFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":isContiguous:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":isAtEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
