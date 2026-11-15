.class public final Lio/appmetrica/analytics/impl/Fa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Ga;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ga;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Lio/appmetrica/analytics/impl/Ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    const-string v0, "content://com.huawei.appmarket.commondata/item/5"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->a:Lio/appmetrica/analytics/impl/Ga;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ga;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->a:Lio/appmetrica/analytics/impl/Ga;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/Ga;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Ga;->b:Landroid/database/Cursor;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->a:Lio/appmetrica/analytics/impl/Ga;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ga;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->a:Lio/appmetrica/analytics/impl/Ga;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ga;->b:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->a:Lio/appmetrica/analytics/impl/Ga;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ga;->b:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->a:Lio/appmetrica/analytics/impl/Ga;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ga;->b:Landroid/database/Cursor;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    new-instance p0, Lio/appmetrica/analytics/impl/cg;

    sget-object v8, Lio/appmetrica/analytics/impl/bg;->d:Lio/appmetrica/analytics/impl/bg;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lio/appmetrica/analytics/impl/cg;-><init>(Ljava/lang/String;JJLio/appmetrica/analytics/impl/bg;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
