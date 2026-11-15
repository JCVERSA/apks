.class public Lojb$b;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lojb;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lojb;


# direct methods
.method public constructor <init>(Lojb;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lojb$b;->a:Lojb;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/database/UserBehaviorItem;)V
    .locals 2

    const/4 p0, 0x1

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/UserBehaviorItem;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/database/UserBehaviorItem;

    invoke-virtual {p0, p1, p2}, Lojb$b;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/database/UserBehaviorItem;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM `user_behavior` WHERE `id` = ?"

    return-object p0
.end method
