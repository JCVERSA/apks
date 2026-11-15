.class public abstract Lcom/transsion/shorttv_pugc/ui/widget/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv_pugc/ui/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lcom/transsion/shorttv_pugc/ui/widget/a;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    if-nez p10, :cond_2

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x40

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move v10, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v10, p7

    .line 13
    .line 14
    :goto_0
    and-int/lit16 v0, v0, 0x80

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    move v11, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move/from16 v11, p8

    .line 21
    .line 22
    :goto_1
    move-object v3, p0

    .line 23
    move-object v4, p1

    .line 24
    move-object v5, p2

    .line 25
    move-object v6, p3

    .line 26
    move/from16 v7, p4

    .line 27
    .line 28
    move-object/from16 v8, p5

    .line 29
    .line 30
    move-object/from16 v9, p6

    .line 31
    .line 32
    invoke-interface/range {v3 .. v11}, Lcom/transsion/shorttv_pugc/ui/widget/a;->setData(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 37
    .line 38
    const-string v1, "Super calls with default arguments not supported in this target, function: setData"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method
