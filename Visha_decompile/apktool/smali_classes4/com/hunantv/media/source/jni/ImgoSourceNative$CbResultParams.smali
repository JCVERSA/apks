.class public Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/source/jni/ImgoSourceNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CbResultParams"
.end annotation


# static fields
.field public static final FT_FLV:I = 0x2

.field public static final FT_M3U8:I = 0x0

.field public static final FT_MP4:I = 0x1

.field public static final FT_UNKNOW:I = -0x1


# instance fields
.field public file_name:Ljava/lang/String;

.field public fullpath:Ljava/lang/String;

.field public taskid:Ljava/lang/String;

.field public ts_names:[Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
