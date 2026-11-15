.class public Lcom/transsion/audiotagger/audio/dsf/Dsf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultTag()Lcom/transsion/audiotagger/tag/Tag;
    .locals 2

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getID3V2Version()Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->ID3_V24:Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>()V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getID3V2Version()Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->ID3_V23:Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;-><init>()V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getID3V2Version()Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->ID3_V22:Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;-><init>()V

    return-object v0

    :cond_2
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>()V

    return-object v0
.end method
