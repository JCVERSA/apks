.class public final Lcom/transsion/lib_web/zip/db/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lzl/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/lib_web/zip/db/a$d;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/lib_web/zip/db/a$d;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;

.field private final d:Landroidx/room/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/lib_web/zip/db/a$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/lib_web/zip/db/a$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/lib_web/zip/db/a;->e:Lcom/transsion/lib_web/zip/db/a$d;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    const-string v0, "__db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/lib_web/zip/db/a;->a:Landroidx/room/RoomDatabase;

    .line 10
    .line 11
    new-instance p1, Lcom/transsion/lib_web/zip/db/a$a;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/transsion/lib_web/zip/db/a$a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/transsion/lib_web/zip/db/a;->b:Landroidx/room/g;

    .line 17
    .line 18
    new-instance p1, Lcom/transsion/lib_web/zip/db/a$b;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/transsion/lib_web/zip/db/a$b;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/lib_web/zip/db/a;->c:Landroidx/room/e;

    .line 24
    .line 25
    new-instance p1, Lcom/transsion/lib_web/zip/db/a$c;

    .line 26
    .line 27
    invoke-direct {p1}, Lcom/transsion/lib_web/zip/db/a$c;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/transsion/lib_web/zip/db/a;->d:Landroidx/room/e;

    .line 31
    .line 32
    return-void
.end method
