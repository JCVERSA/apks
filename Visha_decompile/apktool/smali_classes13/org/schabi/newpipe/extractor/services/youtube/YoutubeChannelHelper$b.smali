.class public final Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/grack/nanojson/JsonObject;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;->a:Lcom/grack/nanojson/JsonObject;

    .line 4
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lptc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    return-void
.end method
