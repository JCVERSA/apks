.class public final Lcom/transsion/baselib/db/video/b1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/db/video/a1;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/baselib/db/video/b1;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lcom/transsion/baselib/db/video/b1$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/b1$a;-><init>(Lcom/transsion/baselib/db/video/b1;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/baselib/db/video/b1;->b:Landroidx/room/g;

    .line 12
    .line 13
    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
