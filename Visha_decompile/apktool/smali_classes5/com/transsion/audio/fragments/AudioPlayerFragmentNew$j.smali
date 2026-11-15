.class public Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$j;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$j;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->b2(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V

    return-void
.end method
