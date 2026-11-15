.class public abstract Lig5;
.super Ltl5;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltl5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    iput-object p3, p0, Lig5;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lig5;->g:Ljava/lang/String;

    return-object p0
.end method

.method public abstract k()Ljava/lang/String;
.end method
