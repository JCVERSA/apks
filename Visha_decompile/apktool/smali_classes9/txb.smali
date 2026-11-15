.class public final synthetic Ltxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lorg/schabi/newpipe/extractor/stream/StreamInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltxb;->b:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ltxb;->b:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Q0(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object p0

    return-object p0
.end method
