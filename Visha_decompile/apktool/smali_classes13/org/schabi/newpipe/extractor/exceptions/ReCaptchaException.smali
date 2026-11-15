.class public Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;
.super Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
.source "SourceFile"


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;->url:Ljava/lang/String;

    return-object p0
.end method
