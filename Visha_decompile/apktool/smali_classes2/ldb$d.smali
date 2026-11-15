.class public Lldb$d;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lldb;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lldb;


# direct methods
.method public constructor <init>(Lldb;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lldb$d;->a:Lldb;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE cloudList_room SET code_seat_bean = ? WHERE codeSeatId = ?"

    return-object p0
.end method
