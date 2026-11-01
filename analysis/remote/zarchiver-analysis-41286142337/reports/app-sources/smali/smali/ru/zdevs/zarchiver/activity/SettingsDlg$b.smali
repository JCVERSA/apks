.class public final Lru/zdevs/zarchiver/activity/SettingsDlg$b;
.super Lw0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/activity/SettingsDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final e:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$b;->e:Ljava/io/OutputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f()Lw0/a$b;
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$b;->e:Ljava/io/OutputStream;

    .line 2
    .line 3
    sget-object v1, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    .line 15
    :try_start_1
    const-string v4, "ZA 1.0.10"

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v3, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    move-object v2, v3

    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception v1

    .line 42
    :goto_0
    invoke-static {v2}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :catch_0
    move-object v3, v2

    .line 50
    :catch_1
    invoke-static {v3}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_1
    if-eqz v0, :cond_0

    .line 58
    .line 59
    const v0, 0x7f0c0104

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_0
    const v0, 0x7f0c00e7

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 67
    .line 68
    .line 69
    return-object v2
.end method
