.class public final synthetic Lefc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/IMediaPlayer$OnSubTitleTypeListener;


# instance fields
.field public final synthetic b:Lifc;


# direct methods
.method public synthetic constructor <init>(Lifc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefc;->b:Lifc;

    return-void
.end method


# virtual methods
.method public final onSubTitleType(Lcom/transsion/tranplayer/IMediaPlayer;II)V
    .locals 0

    iget-object p0, p0, Lefc;->b:Lifc;

    invoke-virtual {p0, p1, p2, p3}, Lifc;->onSubTitleType(Lcom/transsion/tranplayer/IMediaPlayer;II)V

    return-void
.end method
