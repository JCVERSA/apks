.class Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao_Impl;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao_Impl$1;->a:Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;)V
    .locals 1

    iget-object p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;->b:[B

    const/4 p2, 0x2

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao_Impl$1;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `FastResume` (`torrentId`,`data`) VALUES (?,?)"

    return-object p0
.end method
