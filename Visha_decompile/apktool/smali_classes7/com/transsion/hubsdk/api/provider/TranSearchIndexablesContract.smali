.class public Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesContract$TranRawData;,
        Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesContract$TranBaseColumns;
    }
.end annotation


# static fields
.field public static final INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v14, "payload_type"

    const-string v15, "payload"

    const-string v0, "rank"

    const-string v1, "title"

    const-string v2, "summaryOn"

    const-string v3, "summaryOff"

    const-string v4, "entries"

    const-string v5, "keywords"

    const-string v6, "screenTitle"

    const-string v7, "className"

    const-string v8, "iconResId"

    const-string v9, "intentAction"

    const-string v10, "intentTargetPackage"

    const-string v11, "intentTargetClass"

    const-string v12, "key"

    const-string v13, "user_id"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
