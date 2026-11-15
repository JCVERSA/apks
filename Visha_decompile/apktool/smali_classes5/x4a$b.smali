.class public Lx4a$b;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx4a;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx4a;


# direct methods
.method public constructor <init>(Lx4a;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lx4a$b;->a:Lx4a;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/beans/SubtitleHistory;)V
    .locals 0

    iget-object p0, p2, Lcom/transsion/dbdata/beans/SubtitleHistory;->subId:Ljava/lang/String;

    const/4 p2, 0x1

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

    check-cast p2, Lcom/transsion/dbdata/beans/SubtitleHistory;

    invoke-virtual {p0, p1, p2}, Lx4a$b;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM `SubtitleHistory` WHERE `sub_id` = ?"

    return-object p0
.end method
