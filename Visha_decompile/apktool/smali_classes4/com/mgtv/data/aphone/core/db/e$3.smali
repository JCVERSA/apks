.class final Lcom/mgtv/data/aphone/core/db/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/data/aphone/core/db/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/data/aphone/core/db/e;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/db/e$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/db/e$3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/db/e$3;->a:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->values()[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/mgtv/data/aphone/core/db/d;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Enum;Ljava/util/List;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/db/e$3;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/data/aphone/core/bean/a;

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->taskId:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->logs:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->reportUrl:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->netStatus:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, v0, Lcom/mgtv/data/aphone/core/bean/a;->d:I

    int-to-long v3, v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->localLog:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, v0, Lcom/mgtv/data/aphone/core/bean/a;->e:I

    int-to-long v3, v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->status:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget v0, v0, Lcom/mgtv/data/aphone/core/bean/a;->f:I

    int-to-long v3, v0

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    sget-object v0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->create_time:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/mgtv/data/aphone/core/j/e;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_0

    :cond_0
    return v1
.end method
