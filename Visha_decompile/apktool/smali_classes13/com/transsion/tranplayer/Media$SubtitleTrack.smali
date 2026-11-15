.class public Lcom/transsion/tranplayer/Media$SubtitleTrack;
.super Lcom/transsion/tranplayer/Media$Track;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubtitleTrack"
.end annotation


# instance fields
.field public final encoding:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x2

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 2
    invoke-direct/range {v0 .. v10}, Lcom/transsion/tranplayer/Media$Track;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/Media$1;)V

    move-object/from16 v1, p9

    .line 3
    iput-object v1, v0, Lcom/transsion/tranplayer/Media$SubtitleTrack;->encoding:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/Media$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/transsion/tranplayer/Media$SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
