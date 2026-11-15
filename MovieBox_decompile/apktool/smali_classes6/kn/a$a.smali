.class public abstract Lkn/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkn/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lkn/a;Ljava/lang/String;Lcom/transsion/player/longvideo/constants/LongVodPageType;Ljava/lang/String;Landroid/widget/FrameLayout;Landroid/view/ViewGroup;Ljava/util/List;Lcom/transsion/player/longvideo/constants/LongVodContentType;ILjava/lang/Object;)V
    .locals 9

    .line 1
    if-nez p9, :cond_2

    .line 2
    .line 3
    and-int/lit8 v0, p8, 0x20

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v7, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v7, p6

    .line 14
    :goto_0
    and-int/lit8 v0, p8, 0x40

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/transsion/player/longvideo/constants/LongVodContentType;->SUBJECT:Lcom/transsion/player/longvideo/constants/LongVodContentType;

    .line 19
    .line 20
    move-object v8, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object/from16 v8, p7

    .line 23
    .line 24
    :goto_1
    move-object v1, p0

    .line 25
    move-object v2, p1

    .line 26
    move-object v3, p2

    .line 27
    move-object v4, p3

    .line 28
    move-object v5, p4

    .line 29
    move-object v6, p5

    .line 30
    invoke-interface/range {v1 .. v8}, Lkn/a;->init(Ljava/lang/String;Lcom/transsion/player/longvideo/constants/LongVodPageType;Ljava/lang/String;Landroid/widget/FrameLayout;Landroid/view/ViewGroup;Ljava/util/List;Lcom/transsion/player/longvideo/constants/LongVodContentType;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 35
    .line 36
    const-string v1, "Super calls with default arguments not supported in this target, function: init"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method
