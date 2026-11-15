.class public Ljvb$k;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljvb;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljvb;


# direct methods
.method public constructor <init>(Ljvb;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Ljvb$k;->a:Ljvb;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM video_media_playList WHERE playlistFlag = 2 AND _data =?"

    return-object p0
.end method
