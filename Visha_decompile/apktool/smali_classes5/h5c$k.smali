.class public Lh5c$k;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh5c;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh5c;


# direct methods
.method public constructor <init>(Lh5c;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lh5c$k;->a:Lh5c;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE VideoStates SET play_count = play_count + 1, record_date_modified = ? WHERE _data = ?"

    return-object p0
.end method
