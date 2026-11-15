.class public Lg68$i;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg68;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg68;


# direct methods
.method public constructor <init>(Lg68;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lg68$i;->a:Lg68;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM media_playlist_item WHERE playlist_id =? AND media_id =?"

    return-object p0
.end method
