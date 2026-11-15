.class public Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;
.super Lcom/transsion/liblan/interfaces/ITranMedia$Track;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/interfaces/ITranMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoTrack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack$Projection;,
        Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack$Orientation;
    }
.end annotation


# instance fields
.field public final frameRateDen:I

.field public final frameRateNum:I

.field public final height:I

.field public final orientation:I

.field public final projection:I

.field public final sarDen:I

.field public final sarNum:I

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;IIIIIIII)V
    .locals 12

    move-object v11, p0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/transsion/liblan/interfaces/ITranMedia$Track;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p10

    iput v0, v11, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->height:I

    move/from16 v0, p11

    iput v0, v11, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->width:I

    move/from16 v0, p12

    iput v0, v11, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->sarNum:I

    move/from16 v0, p13

    iput v0, v11, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->sarDen:I

    move/from16 v0, p14

    iput v0, v11, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->frameRateNum:I

    move/from16 v0, p15

    iput v0, v11, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->frameRateDen:I

    move/from16 v0, p16

    iput v0, v11, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->orientation:I

    move/from16 v0, p17

    iput v0, v11, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->projection:I

    return-void
.end method
