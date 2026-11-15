.class public Lr10$a;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr10;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr10;


# direct methods
.method public constructor <init>(Lr10;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lr10$a;->a:Lr10;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/database/AudioTrack;)V
    .locals 2

    iget p0, p2, Lcom/transsion/dbdata/database/AudioTrack;->id:I

    int-to-long v0, p0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/database/AudioTrack;->audioId:I

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/dbdata/database/AudioTrack;->name:Ljava/lang/String;

    const/4 p2, 0x3

    if-nez p0, :cond_0

    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/database/AudioTrack;

    invoke-virtual {p0, p1, p2}, Lr10$a;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/database/AudioTrack;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `AudioTrack` (`id`,`audioId`,`name`) VALUES (?,?,?)"

    return-object p0
.end method
