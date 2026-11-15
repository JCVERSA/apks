.class public Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/source/jni/ImgoSourceNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitParams"
.end annotation


# instance fields
.field public connect_timeout_ms:I

.field public max_task_num:I

.field public request_timeout_ms:I

.field public useragent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;->max_task_num:I

    return-void
.end method
