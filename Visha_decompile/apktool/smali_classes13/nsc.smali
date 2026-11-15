.class public final synthetic Lnsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->J()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object p0

    return-object p0
.end method
