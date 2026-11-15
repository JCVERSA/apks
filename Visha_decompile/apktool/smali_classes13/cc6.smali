.class public final synthetic Lcc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic b:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc6;->b:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public final build(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 0

    iget-object p0, p0, Lcc6;->b:Lcom/grack/nanojson/JsonObject;

    invoke-static {p0, p1, p2}, Ldc6;->C(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;

    move-result-object p0

    return-object p0
.end method
