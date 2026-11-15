.class public Lphb;
.super Lt90;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lphb$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Ljp1;

    invoke-direct {v0}, Ljp1;-><init>()V

    invoke-direct {p0, v0}, Lt90;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lphb$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lphb;-><init>()V

    return-void
.end method

.method public static q()Lphb;
    .locals 1

    invoke-static {}, Lphb$b;->a()Lphb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    check-cast p1, Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, p1}, Lphb;->p(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "upload"

    return-object p0
.end method

.method public bridge synthetic f(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lphb;->s(Landroid/database/Cursor;)Lcom/lzy/okgo/model/Progress;

    move-result-object p0

    return-object p0
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lt90;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method public o(Ljava/lang/String;)Lcom/lzy/okgo/model/Progress;
    .locals 1

    const-string v0, "tag=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lt90;->j(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/model/Progress;

    return-object p0
.end method

.method public p(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;
    .locals 0

    invoke-static {p1}, Lcom/lzy/okgo/model/Progress;->buildContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/util/List;
    .locals 9

    const-string v0, "5"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "date ASC"

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "status not in(?)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lt90;->h([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public s(Landroid/database/Cursor;)Lcom/lzy/okgo/model/Progress;
    .locals 0

    invoke-static {p1}, Lcom/lzy/okgo/model/Progress;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/model/Progress;

    move-result-object p0

    return-object p0
.end method

.method public t(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tag=?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lt90;->m(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
