.class public abstract Lcom/transsion/liblan/interfaces/ITranMedia$Track;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/interfaces/ITranMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Track"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/interfaces/ITranMedia$Track$Type;
    }
.end annotation


# instance fields
.field public final bitrate:I

.field public final codec:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final fourcc:I

.field public final id:I

.field public final language:Ljava/lang/String;

.field public final level:I

.field public final originalCodec:Ljava/lang/String;

.field public final profile:I

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Track;->type:I

    iput-object p2, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Track;->codec:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Track;->originalCodec:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Track;->fourcc:I

    iput p5, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Track;->id:I

    iput p6, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Track;->profile:I

    iput p7, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Track;->level:I

    iput p8, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Track;->bitrate:I

    iput-object p9, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Track;->language:Ljava/lang/String;

    iput-object p10, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Track;->description:Ljava/lang/String;

    return-void
.end method
