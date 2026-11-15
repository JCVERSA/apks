.class Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameAndSubId"
.end annotation


# instance fields
.field private frameId:Ljava/lang/String;

.field private genericKey:Lcom/transsion/audiotagger/tag/FieldKey;

.field private subId:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->this$0:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->genericKey:Lcom/transsion/audiotagger/tag/FieldKey;

    iput-object p3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->frameId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->subId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrameId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->frameId:Ljava/lang/String;

    return-object p0
.end method

.method public getGenericKey()Lcom/transsion/audiotagger/tag/FieldKey;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->genericKey:Lcom/transsion/audiotagger/tag/FieldKey;

    return-object p0
.end method

.method public getSubId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->subId:Ljava/lang/String;

    return-object p0
.end method
