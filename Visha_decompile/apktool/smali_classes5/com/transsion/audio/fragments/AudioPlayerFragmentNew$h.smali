.class public Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$h;
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
.field public final synthetic a:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$h;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$h;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$h;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$h;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, p0, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->b2(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V

    const-string p0, "from"

    const-string p2, "playshow"

    const-string v0, "vd_vmore_rename_pop_save"

    const-string v1, "songname"

    invoke-static {v0, v1, p1, p0, p2}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
