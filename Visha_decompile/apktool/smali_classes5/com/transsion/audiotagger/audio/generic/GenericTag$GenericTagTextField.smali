.class public Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/TagTextField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/audio/generic/GenericTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenericTagTextField"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/audiotagger/audio/generic/GenericTag;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;->this$0:Lcom/transsion/audiotagger/audio/generic/GenericTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyContent(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/TagTextField;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/audiotagger/tag/TagTextField;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getRawContent()[B
    .locals 1

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->a()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isBinary(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public isBinary()Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public isCommon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    const-string v0, ""

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
