.class public Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;
.super Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;
    }
.end annotation


# instance fields
.field private reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    sget-object p1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    return-void
.end method


# virtual methods
.method public getReason()Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    return-object p0
.end method
