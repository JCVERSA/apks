.class public Lojb$h;
.super Landroidx/room/SharedSQLiteStatement;
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

    iput-object p1, p0, Lojb$h;->a:Lojb;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE user_behavior SET media_id = ?, _data = ? WHERE _data = ?"

    return-object p0
.end method
