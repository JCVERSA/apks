.class public abstract Lcom/transsion/tranplayer/Media$Track;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Track"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/Media$Track$Type;
    }
.end annotation


# instance fields
.field public final bitrate:I

.field public final codec:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final id:I

.field public final language:Ljava/lang/String;

.field public final level:I

.field public final originalCodec:Ljava/lang/String;

.field public final profile:I

.field public final type:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/transsion/tranplayer/Media$Track;->type:I

    .line 4
    iput-object p2, p0, Lcom/transsion/tranplayer/Media$Track;->codec:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/transsion/tranplayer/Media$Track;->originalCodec:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/transsion/tranplayer/Media$Track;->id:I

    .line 7
    iput p5, p0, Lcom/transsion/tranplayer/Media$Track;->profile:I

    .line 8
    iput p6, p0, Lcom/transsion/tranplayer/Media$Track;->level:I

    .line 9
    iput p7, p0, Lcom/transsion/tranplayer/Media$Track;->bitrate:I

    .line 10
    iput-object p8, p0, Lcom/transsion/tranplayer/Media$Track;->language:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/transsion/tranplayer/Media$Track;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/Media$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/transsion/tranplayer/Media$Track;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
