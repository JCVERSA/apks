.class public abstract Lb4/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ly3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb4/c$a;,
        Lb4/c$b;,
        Lb4/c$c;
    }
.end annotation


# static fields
.field public static final d:Lb4/c$a;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb4/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lb4/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lb4/c;->d:Lb4/c$a;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lb4/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    iput-object p2, p0, Lb4/c;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb4/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final d()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public synthetic getBoolean(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly3/d;->a(Ly3/e;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/c;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb4/c;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb4/c;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final k()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb4/c;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v0, 0x15

    .line 7
    .line 8
    const-string v1, "statement is closed"

    .line 9
    .line 10
    invoke-static {v0, v1}, Ly3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 14
    .line 15
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method
