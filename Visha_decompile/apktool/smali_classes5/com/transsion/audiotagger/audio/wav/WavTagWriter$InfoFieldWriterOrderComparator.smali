.class Lcom/transsion/audiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/audio/wav/WavTagWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InfoFieldWriterOrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/audiotagger/tag/TagField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audiotagger/audio/wav/WavTagWriter;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/wav/WavTagWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;->this$0:Lcom/transsion/audiotagger/audio/wav/WavTagWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/transsion/audiotagger/tag/TagField;Lcom/transsion/audiotagger/tag/TagField;)I
    .locals 0

    .line 2
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->getByByFieldKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object p0

    .line 3
    invoke-interface {p2}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->getByByFieldKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object p1

    const p2, 0x7fffffff

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->getPreferredWriteOrder()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->getPreferredWriteOrder()I

    move-result p2

    :cond_1
    sub-int/2addr p0, p2

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/audiotagger/tag/TagField;

    check-cast p2, Lcom/transsion/audiotagger/tag/TagField;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;->compare(Lcom/transsion/audiotagger/tag/TagField;Lcom/transsion/audiotagger/tag/TagField;)I

    move-result p0

    return p0
.end method
