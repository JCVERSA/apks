.class public final Lpb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzs1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Landroid/database/sqlite/SQLiteDatabase;

.field public final c:Lpb$d;

.field public final synthetic d:Lpb;


# direct methods
.method public constructor <init>(Lpb;Landroid/database/sqlite/SQLiteDatabase;Lpb$d;)V
    .locals 1

    const-string v0, "mDb"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mOpenCloseInfo"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpb$b;->d:Lpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lpb$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lpb$b;->c:Lpb$d;

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 0

    iget-object p0, p0, Lpb$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lpb$b;->d:Lpb;

    invoke-static {v0}, Lpb;->a(Lpb;)Lpb$c;

    move-result-object v0

    iget-object p0, p0, Lpb$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Lpb$c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1

    const-string v0, "sql"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpb$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    const-string p1, "mDb.compileStatement(sql)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public endTransaction()V
    .locals 0

    iget-object p0, p0, Lpb$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sql"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpb$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpb$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, "mDb.rawQuery(query, selectionArgs)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTransactionSuccessful()V
    .locals 0

    iget-object p0, p0, Lpb$b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
