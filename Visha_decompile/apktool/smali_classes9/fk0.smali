.class public final synthetic Lfk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfk0;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfk0;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->C(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Lcom/transsion/dbdata/beans/media/MediaItem;)Lzfb;

    move-result-object p0

    return-object p0
.end method
