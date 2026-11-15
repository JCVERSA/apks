.class public final synthetic Lcom/transsion/player/longvideo/helper/l0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/l0;->a:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/l0;->a:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/String;

    .line 6
    .line 7
    check-cast p3, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-static {v0, p1, p2, p3}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->c(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
