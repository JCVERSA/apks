.class public final synthetic Ldxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldxc;->b:Ljava/lang/String;

    iput-object p2, p0, Ldxc;->c:Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ldxc;->b:Ljava/lang/String;

    iget-object p0, p0, Ldxc;->c:Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, p0, p1}, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->a(Ljava/lang/String;Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method
