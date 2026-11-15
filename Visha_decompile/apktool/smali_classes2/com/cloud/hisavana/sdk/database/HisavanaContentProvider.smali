.class public final Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 52\u00020\u0001:\u00016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006JM\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0008\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J1\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ;\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ!\u0010#\u001a\u00020\u00042\u0010\u0010\"\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010 H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\'\u0010&\u001a\u0008\u0012\u0004\u0012\u00020!0%2\u0010\u0010\"\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010 H\u0002\u00a2\u0006\u0004\u0008&\u0010\'J!\u0010)\u001a\u00020\u00042\u0010\u0010(\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010 H\u0002\u00a2\u0006\u0004\u0008)\u0010$J!\u0010+\u001a\u00020\u00042\u0010\u0010*\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010 H\u0002\u00a2\u0006\u0004\u0008+\u0010$J!\u0010-\u001a\u00020\u00042\u0010\u0010(\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010,\u0018\u00010 H\u0002\u00a2\u0006\u0004\u0008-\u0010$J!\u0010.\u001a\u00020\u00042\u0010\u0010*\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010,\u0018\u00010 H\u0002\u00a2\u0006\u0004\u0008.\u0010$J\u000f\u00100\u001a\u00020/H\u0002\u00a2\u0006\u0004\u00080\u0010\u0003R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103\u00a8\u00067"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;",
        "Landroid/content/ContentProvider;",
        "<init>",
        "()V",
        "",
        "onCreate",
        "()Z",
        "Landroid/net/Uri;",
        "uri",
        "",
        "",
        "projection",
        "selection",
        "selectionArgs",
        "sortOrder",
        "Landroid/database/Cursor;",
        "query",
        "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;",
        "getType",
        "(Landroid/net/Uri;)Ljava/lang/String;",
        "Landroid/content/ContentValues;",
        "values",
        "insert",
        "(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;",
        "",
        "delete",
        "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I",
        "update",
        "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I",
        "content",
        "f",
        "(Ljava/lang/String;)Landroid/net/Uri;",
        "",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "adsDTOList",
        "k",
        "(Ljava/util/List;)Z",
        "",
        "g",
        "(Ljava/util/List;)Ljava/util/List;",
        "insertList",
        "i",
        "updateList",
        "l",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;",
        "d",
        "m",
        "Lzfb;",
        "j",
        "Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;",
        "b",
        "Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;",
        "database",
        "c",
        "a",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;

.field public static d:Ljava/lang/String;

.field public static e:Landroid/content/UriMatcher;


# instance fields
.field public b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->c:Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b(Landroid/content/UriMatcher;)V
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e:Landroid/content/UriMatcher;

    return-void
.end method

.method public static final synthetic c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->d:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic e()Landroid/content/UriMatcher;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e:Landroid/content/UriMatcher;

    return-object v0
.end method

.method public static final h()V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->c:Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;->a()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/util/List;)Z
    .locals 4

    invoke-static {}, Likd;->c()Z

    move-result v0

    const-string v1, "HisavanaContentProvider"

    if-eqz v0, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertOrUpdateConfig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Li81;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-nez v0, :cond_5

    return v2

    :cond_5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->l()Ltba;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ltba;->a()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_6
    :goto_1
    sget-object v0, Lkmb;->c:Lkmb$a;

    invoke-virtual {v0, p1}, Lkmb$a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->l()Ltba;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Ltba;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearAndInsertConfig fail "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete invalid uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toString(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HisavanaContentProvider"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e:Landroid/content/UriMatcher;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->j()V

    sget-object v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e:Landroid/content/UriMatcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :catch_1
    move-exception p0

    goto/16 :goto_8

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, ""

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_4

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->l()Ltba;

    move-result-object p0

    new-instance p1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-nez p2, :cond_3

    move-object p2, v3

    :cond_3
    invoke-direct {p1, p2, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ltba;->b(Landroidx/sqlite/db/SupportSQLiteQuery;)I

    goto :goto_6

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_7

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->b()Lufd;

    move-result-object p0

    new-instance p1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-nez p2, :cond_6

    move-object p2, v3

    :cond_6
    invoke-direct {p1, p2, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lufd;->b(Landroidx/sqlite/db/SupportSQLiteQuery;)I

    goto :goto_6

    :cond_7
    :goto_2
    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x12c

    if-ne v3, v4, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x12d

    if-ne v3, v4, :cond_b

    :goto_4
    invoke-static {p1, p2, p3}, Lcom/cloud/hisavana/abtestkit/db/ABContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    :goto_5
    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x190

    if-ne p1, v0, :cond_d

    sget-object p1, Lgx8;->a:Lgx8;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    invoke-virtual {p1, p0, p2, p3}, Lgx8;->a(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :cond_d
    :goto_6
    const/4 p0, 0x0

    return p0

    :goto_7
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delete exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_8
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delete sqlException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final f(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "parse(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final g(Ljava/util/List;)Ljava/util/List;
    .locals 6

    const-string v0, "HisavanaContentProvider"

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v2, ""

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getCodeSeatId(...)"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAdCreativeId(...)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_6

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM adList_room WHERE codeSeatId = ?  AND ad_creative_id IN ("

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v4, "?,"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Likd;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getQueryAdsByAdIds "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :try_start_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->b()Lufd;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p0, v1}, Lufd;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpid;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lpid;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    const-class v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v1, v2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lpid;->o()I

    move-result v0

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTableId(I)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    :goto_5
    invoke-static {p1}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_b
    :goto_7
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "ad list is null or empty"

    invoke-virtual {p0, v0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i(Ljava/util/List;)Z
    .locals 6

    if-eqz p1, :cond_0

    invoke-static {p1}, Li81;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HisavanaContentProvider"

    if-eqz v0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "insertAdsList adList is null or empty"

    invoke-virtual {p0, v2, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-static {}, Likd;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertAdsList list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Luna;->c(J)J

    move-result-wide v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v5, v3, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowDate(J)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->b()Lufd;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-object v0, Lpid;->i:Lpid$a;

    invoke-virtual {v0, p1}, Lpid$a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lufd;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert ads fail "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "HisavanaContentProvider"

    if-eqz v0, :cond_10

    if-nez p2, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-static {}, Likd;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e:Landroid/content/UriMatcher;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->j()V

    sget-object v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e:Landroid/content/UriMatcher;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_a

    :cond_3
    :goto_1
    const/4 v0, 0x0

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_5

    const-string p1, "config"

    const-string v2, "CloudConfig"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$c;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$c;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->d(Ljava/util/List;)Z

    move-result p2

    :goto_2
    move v0, p2

    goto/16 :goto_8

    :cond_5
    :goto_3
    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_7

    const-string p1, "ad_data"

    const-string v2, "AdsData"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$b;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$b;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->k(Ljava/util/List;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_7
    :goto_4
    const-string v0, "error/invalid_uri"

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x12c

    if-ne v3, v4, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x12d

    if-ne v3, v4, :cond_c

    :goto_6
    invoke-static {p1, p2}, Lcom/cloud/hisavana/abtestkit/db/ABContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/cloud/hisavana/abtestkit/db/ABContentProvider;->INSTANCE:Lcom/cloud/hisavana/abtestkit/db/ABContentProvider;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/abtestkit/db/ABContentProvider;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_b
    return-object p1

    :cond_c
    :goto_7
    if-nez v2, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x190

    if-ne p1, v2, :cond_f

    const-string p1, "click_freq"

    sget-object v0, Lgx8;->a:Lgx8;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    invoke-virtual {v0, v2, p2}, Lgx8;->c(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;Landroid/content/ContentValues;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_e
    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->f(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_9
    :try_start_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string p2, "insert uri is wrong"

    invoke-virtual {p1, v1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->f(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_a
    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error/exception"

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->f(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_b
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string/jumbo p2, "uriMatcher or values is null"

    invoke-virtual {p1, v1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error/null_input"

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->f(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    :cond_0
    return-void
.end method

.method public final k(Ljava/util/List;)Z
    .locals 9

    if-eqz p1, :cond_0

    invoke-static {p1}, Li81;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "HisavanaContentProvider"

    if-eqz v1, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "insertOrUpdateAds list is null or empty"

    invoke-virtual {p0, v3, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-static {}, Likd;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertOrUpdateAds list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->i(Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_4
    const/16 p1, 0xa

    invoke-static {v1, p1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lky5;->g(I)I

    move-result p1

    const/16 v4, 0x10

    invoke-static {p1, v4}, Lwn8;->d(II)I

    move-result p1

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v6, Lkotlin/Triple;

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v6, v7, v8, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v5, Lkotlin/Triple;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getShowDate()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowDate(J)V

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getShowNum()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowNum(Ljava/lang/Integer;)V

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTableId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTableId(I)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v3}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->l(Ljava/util/List;)Z

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->i(Ljava/util/List;)Z

    move-result p0

    if-eqz p1, :cond_a

    if-eqz p0, :cond_a

    const/4 v2, 0x1

    :cond_a
    return v2
.end method

.method public final l(Ljava/util/List;)Z
    .locals 7

    if-eqz p1, :cond_0

    invoke-static {p1}, Li81;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "HisavanaContentProvider"

    if-eqz v1, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string/jumbo p1, "updateAdsList list is empty "

    invoke-virtual {p0, v3, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-static {}, Likd;->c()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAdsList "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v4

    :goto_0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->j()V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-nez p0, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->b()Lufd;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-object p1, Lpid;->i:Lpid$a;

    invoke-virtual {p1, v0}, Lpid$a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lufd;->a(Ljava/util/List;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateAdsList: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert Config fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final m(Ljava/util/List;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, Li81;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->j()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-nez v1, :cond_2

    return v0

    :cond_2
    sget-object v1, Lkmb;->c:Lkmb$a;

    invoke-virtual {v1, p1}, Lkmb$a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->l()Ltba;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Ltba;->a(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update config fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HisavanaContentProvider"

    invoke-virtual {p1, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return v0
.end method

.method public onCreate()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lul4;->k(Landroid/content/Context;)V

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->c:Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSCoreUtil set context failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HisavanaContentProvider"

    invoke-virtual {v0, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->j()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e:Landroid/content/UriMatcher;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    move-object v1, v0

    :goto_0
    const-string v2, ""

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->l()Ltba;

    move-result-object p0

    new-instance p1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-nez p3, :cond_3

    move-object p3, v2

    :cond_3
    invoke-direct {p1, p3, p4}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ltba;->a(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    :goto_1
    move-object v0, p0

    goto/16 :goto_9

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_7

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->b()Lufd;

    move-result-object p0

    new-instance p1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-nez p3, :cond_6

    move-object p3, v2

    :cond_6
    invoke-direct {p1, p3, p4}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lufd;->a(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_1

    :cond_7
    :goto_3
    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_9

    goto :goto_6

    :cond_9
    :goto_4
    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x12d

    if-ne v2, v3, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_d

    :goto_6
    invoke-static {p1, p2, p3, p4, p5}, Lcom/cloud/hisavana/abtestkit/db/ABContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_7
    if-nez v1, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x190

    if-ne p1, p2, :cond_f

    sget-object p1, Lgx8;->a:Lgx8;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    invoke-virtual {p1, p0, p3, p4}, Lgx8;->d(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :goto_8
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "HisavanaContentProvider"

    invoke-virtual {p1, p2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_9
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "HisavanaContentProvider"

    const/4 v2, -0x1

    if-eqz v0, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->j()V

    sget-object v0, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e:Landroid/content/UriMatcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :catch_1
    move-exception p0

    goto/16 :goto_8

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "getType(...)"

    const-string v4, "getAsString(...)"

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_4

    const-string p1, "CloudConfig"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_9

    :cond_3
    new-instance p2, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$d;

    invoke-direct {p2}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$d;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->m(Ljava/util/List;)Z

    move-result p0

    :goto_1
    move v2, p0

    goto/16 :goto_9

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_7

    const-string p1, "AdsData"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_9

    :cond_6
    new-instance p2, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$e;

    invoke-direct {p2}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$e;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->l(Ljava/util/List;)Z

    move-result p0

    goto :goto_1

    :cond_7
    :goto_3
    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v3, 0x12c

    if-ne p0, v3, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x12d

    if-ne p0, v0, :cond_b

    :goto_5
    invoke-static {p1, p2, p3, p4}, Lcom/cloud/hisavana/abtestkit/db/ABContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    :goto_6
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string/jumbo p1, "update uri is wrong"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :goto_7
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "update exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "update sqlException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return v2

    :cond_c
    :goto_a
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string/jumbo p1, "uriMatcher or values is null"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
