.class Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/transsion/audiotagger/tag/TagField;",
        ">;"
    }
.end annotation


# instance fields
.field private fieldsIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation
.end field

.field latestEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

.field final synthetic val$it:Ljava/util/Iterator;

.field final synthetic val$itHasNext:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->this$0:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    iput-object p2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->val$it:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->val$itHasNext:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->latestEntry:Ljava/util/Map$Entry;

    return-void
.end method

.method private changeIt()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->val$itHasNext:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->latestEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/TagField;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->val$itHasNext:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->val$itHasNext:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Lcom/transsion/audiotagger/tag/TagField;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->changeIt()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->changeIt()V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    if-eqz p0, :cond_2

    .line 8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/TagField;

    return-object p0

    .line 9
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->next()Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$1;->fieldsIt:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
