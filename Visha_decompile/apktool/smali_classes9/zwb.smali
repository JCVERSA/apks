.class public final synthetic Lzwb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/database/AudioTrack;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/database/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzwb;->b:Lcom/transsion/dbdata/database/AudioTrack;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzwb;->b:Lcom/transsion/dbdata/database/AudioTrack;

    check-cast p1, Lcom/transsion/dbdata/database/AudioTrack;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->m(Lcom/transsion/dbdata/database/AudioTrack;Lcom/transsion/dbdata/database/AudioTrack;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
