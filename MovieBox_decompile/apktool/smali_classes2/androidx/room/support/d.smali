.class public final synthetic Landroidx/room/support/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/ContentValues;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/support/d;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroidx/room/support/d;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/room/support/d;->c:Landroid/content/ContentValues;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/room/support/d;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/room/support/d;->e:[Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/room/support/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Landroidx/room/support/d;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/support/d;->c:Landroid/content/ContentValues;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/room/support/d;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/room/support/d;->e:[Ljava/lang/Object;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Lz3/d;

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->k(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;Lz3/d;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
