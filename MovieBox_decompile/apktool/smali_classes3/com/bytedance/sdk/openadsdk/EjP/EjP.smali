.class public Lcom/bytedance/sdk/openadsdk/EjP/EjP;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static Sj()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CREATE TABLE IF NOT EXISTS adevent (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0 , channel INTEGER default 0)"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static sP()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ALTER TABLE adevent ADD COLUMN encrypt INTEGER default 0"

    .line 2
    .line 3
    return-object v0
.end method
