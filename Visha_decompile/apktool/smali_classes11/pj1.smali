.class public final synthetic Lpj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpj1;->b:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lpj1;->b:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->d(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method
