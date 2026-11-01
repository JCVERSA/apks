.class public final Lru/zdevs/zarchiver/activity/OpenAsDlg$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/activity/OpenAsDlg$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu0/b;


# direct methods
.method public constructor <init>(Lu0/b;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$b$a;->a:Lu0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$b$a;->a:Lu0/b;

    .line 2
    .line 3
    const-string v1, "FA"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Lu0/a;

    .line 7
    .line 8
    sget-object v4, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 9
    .line 10
    invoke-direct {v3, v4}, Lu0/a;-><init>(Lru/zdevs/zarchiver/ZApp;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-object v3, v2

    .line 19
    :goto_0
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :try_start_1
    iget v4, v0, Lu0/b;->e:I

    .line 23
    .line 24
    const/16 v5, 0x3e8

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    if-ne v4, v5, :cond_1

    .line 28
    .line 29
    iput v6, v0, Lu0/b;->e:I

    .line 30
    .line 31
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    .line 32
    .line 33
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v5, "EXT"

    .line 37
    .line 38
    iget-object v7, v0, Lu0/b;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v5, "PKG"

    .line 44
    .line 45
    iget-object v7, v0, Lu0/b;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v5, "CLS"

    .line 51
    .line 52
    iget-object v7, v0, Lu0/b;->c:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v5, "SCHEME"

    .line 58
    .line 59
    iget v7, v0, Lu0/b;->d:I

    .line 60
    .line 61
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    .line 67
    .line 68
    const-string v5, "TYPE"

    .line 69
    .line 70
    iget v7, v0, Lu0/b;->e:I

    .line 71
    .line 72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    .line 78
    .line 79
    const-string v5, "EXT = ? AND TYPE = ?"

    .line 80
    .line 81
    const/4 v7, 0x2

    .line 82
    new-array v7, v7, [Ljava/lang/String;

    .line 83
    .line 84
    iget-object v8, v0, Lu0/b;->a:Ljava/lang/String;

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    aput-object v8, v7, v9

    .line 88
    .line 89
    iget v0, v0, Lu0/b;->e:I

    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    aput-object v0, v7, v6

    .line 96
    .line 97
    invoke-virtual {v3, v1, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    invoke-virtual {v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-static {v3}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    invoke-static {v3}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 112
    .line 113
    .line 114
    throw v0
.end method
