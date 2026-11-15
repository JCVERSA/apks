.class public final synthetic Lt28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt28;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final onMd5Computed(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lt28;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->a(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V

    return-void
.end method
