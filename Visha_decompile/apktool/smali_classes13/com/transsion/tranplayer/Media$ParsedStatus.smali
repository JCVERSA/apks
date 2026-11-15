.class public Lcom/transsion/tranplayer/Media$ParsedStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedStatus"
.end annotation


# static fields
.field public static final Done:I = 0x4

.field public static final Failed:I = 0x2

.field public static final Skipped:I = 0x1

.field public static final Timeout:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
