.class public final synthetic Lhxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/player/VideoPlayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/player/VideoPlayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxb;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lhxb;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    check-cast p1, Lcom/transsion/dbdata/database/AudioTrack;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/database/AudioTrack;)V

    return-void
.end method
