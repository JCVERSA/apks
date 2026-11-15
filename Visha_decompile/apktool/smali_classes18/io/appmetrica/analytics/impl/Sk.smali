.class public final Lio/appmetrica/analytics/impl/Sk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/F6;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/f7;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/f7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Sk;->a:Lio/appmetrica/analytics/impl/f7;

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Sk;->a:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/f7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
