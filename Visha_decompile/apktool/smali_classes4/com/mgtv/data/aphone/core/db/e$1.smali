.class final Lcom/mgtv/data/aphone/core/db/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/data/aphone/core/db/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/data/aphone/core/db/e;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/data/aphone/core/db/e$1;->a:Z

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/db/e$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/db/e$1;->c:Ljava/util/List;

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

    iget-boolean v0, p0, Lcom/mgtv/data/aphone/core/db/e$1;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/db/e$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/data/aphone/core/db/e$1;->b:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->values()[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/mgtv/data/aphone/core/db/d;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Enum;Ljava/util/List;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/db/e$1;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/data/aphone/core/bean/EventBean;

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->url:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->url:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->eventId:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->eventId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->bid:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->bid:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->params:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->params:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->method:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->method:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->status:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->status:I

    int-to-long v3, v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->create_time:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v0, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->create_time:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_0

    :cond_1
    return v1
.end method
