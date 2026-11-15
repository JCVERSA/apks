.class public final Lcom/mgtv/ssp/download/b;
.super Lcom/mgtv/ssp/download/dao3/a$a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/download/dao3/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    return-void
.end method


# virtual methods
.method public onCreate(Lorg/greenrobot/greendao/database/Database;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mgtv/ssp/download/dao3/a$a;->onCreate(Lorg/greenrobot/greendao/database/Database;)V

    const-string p0, "DbOpenHelpler"

    const-string p1, ">>>>>>>>>> onCreate() - version : 1"

    invoke-static {p0, p1}, Lcom/mgtv/ssp/download/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ">>>>>>>>>> onUpgrade() from version "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DbOpenHelpler"

    invoke-static {p1, p0}, Lcom/mgtv/ssp/download/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
