.class public Lcom/transsion/audiotagger/tag/id3/valuepair/V2GenreTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static v2GenresTypes:Lcom/transsion/audiotagger/tag/id3/valuepair/V2GenreTypes;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstanceOf()Lcom/transsion/audiotagger/tag/id3/valuepair/V2GenreTypes;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/V2GenreTypes;->v2GenresTypes:Lcom/transsion/audiotagger/tag/id3/valuepair/V2GenreTypes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/valuepair/V2GenreTypes;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/valuepair/V2GenreTypes;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/V2GenreTypes;->v2GenresTypes:Lcom/transsion/audiotagger/tag/id3/valuepair/V2GenreTypes;

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/V2GenreTypes;->v2GenresTypes:Lcom/transsion/audiotagger/tag/id3/valuepair/V2GenreTypes;

    return-object v0
.end method


# virtual methods
.method public getAlphabeticalValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/GenreTypes;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/GenreTypes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->getAlphabeticalValueList()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p0
.end method
