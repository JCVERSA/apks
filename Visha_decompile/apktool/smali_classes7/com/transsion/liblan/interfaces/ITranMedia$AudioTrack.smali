.class public Lcom/transsion/liblan/interfaces/ITranMedia$AudioTrack;
.super Lcom/transsion/liblan/interfaces/ITranMedia$Track;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/interfaces/ITranMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioTrack"
.end annotation


# instance fields
.field public final channels:I

.field public final rate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;II)V
    .locals 12

    move-object v11, p0

    const/4 v1, 0x0

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

    iput v0, v11, Lcom/transsion/liblan/interfaces/ITranMedia$AudioTrack;->channels:I

    move/from16 v0, p11

    iput v0, v11, Lcom/transsion/liblan/interfaces/ITranMedia$AudioTrack;->rate:I

    return-void
.end method
