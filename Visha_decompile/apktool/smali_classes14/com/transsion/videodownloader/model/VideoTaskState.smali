.class public Lcom/transsion/videodownloader/model/VideoTaskState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DOWNLOADING:I = 0x3

.field public static final ENOSPC:I = 0x8

.field public static final ERROR:I = 0x6

.field public static final HLS_MERGE_FAILED:I = 0xa

.field public static final HLS_MERGE_PROGRESS:I = 0xb

.field public static final HLS_MERGE_SUCCESS:I = 0x9

.field public static final PAUSE:I = 0x7

.field public static final PENDING:I = -0x1

.field public static final PREPARE:I = 0x1

.field public static final PROXYREADY:I = 0x4

.field public static final START:I = 0x2

.field public static final SUCCESS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
