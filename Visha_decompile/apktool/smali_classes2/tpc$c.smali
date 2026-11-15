.class public Ltpc$c;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltpc;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltpc;


# direct methods
.method public constructor <init>(Ltpc;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Ltpc$c;->a:Ltpc;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM retry_tracking_table_room WHERE create_time < ?"

    return-object p0
.end method
