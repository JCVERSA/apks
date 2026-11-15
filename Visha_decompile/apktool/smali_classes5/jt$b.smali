.class public Ljt$b;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljt;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljt;


# direct methods
.method public constructor <init>(Ljt;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Ljt$b;->a:Ljt;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/database/AudioPlayHistory;)V
    .locals 1

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/AudioPlayHistory;->get_data()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/AudioPlayHistory;->get_data()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/database/AudioPlayHistory;

    invoke-virtual {p0, p1, p2}, Ljt$b;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/database/AudioPlayHistory;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM `audio_play_history` WHERE `_data` = ?"

    return-object p0
.end method
