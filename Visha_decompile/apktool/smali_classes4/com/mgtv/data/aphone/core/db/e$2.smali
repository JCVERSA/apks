.class final Lcom/mgtv/data/aphone/core/db/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/data/aphone/core/db/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/data/aphone/core/db/e;->a(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/db/e$2;->a:Ljava/lang/String;

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
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/db/e$2;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/mgtv/data/aphone/core/db/d;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    const/4 p0, 0x1

    return p0
.end method
