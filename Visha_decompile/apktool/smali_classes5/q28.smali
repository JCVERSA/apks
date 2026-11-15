.class public final synthetic Lq28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq28;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object p2, p0, Lq28;->c:Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lq28;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lq28;->c:Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;

    invoke-static {v0, p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->c(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;)V

    return-void
.end method
