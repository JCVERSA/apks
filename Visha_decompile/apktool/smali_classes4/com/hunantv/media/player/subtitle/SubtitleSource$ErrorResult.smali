.class public Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/subtitle/SubtitleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorResult"
.end annotation


# static fields
.field public static final ERROR_DEFAULT:I = -0x1

.field public static final ERROR_NOT_ENABLE_MODULE:I = -0x2


# instance fields
.field public code:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;->code:I

    return-void
.end method


# virtual methods
.method public setCode(I)Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;->code:I

    return-object p0
.end method
