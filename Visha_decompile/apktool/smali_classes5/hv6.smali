.class public final synthetic Lhv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/dbdata/beans/media/PlayAudioListData$RemoveListener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemoveAndPlayNew(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-static {p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->f(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
