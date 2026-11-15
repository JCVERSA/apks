.class public Lcom/transsion/cloudcore/db/CloudTaskEntity$TaskStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloudcore/db/CloudTaskEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskStatus"
.end annotation


# static fields
.field public static final ERROR:I = 0x4

.field public static final FINISH:I = 0x5

.field public static final LOADING:I = 0x2

.field public static final NONE:I = 0x0

.field public static final NO_NET:I = 0x7

.field public static final PAUSE:I = 0x3

.field public static final PAUSE_MOBILE:I = 0x6

.field public static final PROCESSING:I = 0x8

.field public static final PROCESS_FAIL:I = 0x9

.field public static final WAITING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
