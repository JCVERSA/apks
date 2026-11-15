.class public abstract Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008 \u0018\u0000 22\u00020\u0001:\u00012B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J3\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0008\u0008\u0001\u0010\n\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012JI\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017\"\u0004\u0008\u0000\u0010\u00132\u0006\u0010\u0007\u001a\u00020\u00062$\u0010\u0016\u001a \u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0014j\u0008\u0012\u0004\u0012\u00028\u0000`\u0015H\u0004\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J7\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u001a\u0008\u0004\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u001a0\u0014H\u0084\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u001bJI\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017\"\u0004\u0008\u0000\u0010\u001c2\u0006\u0010\u0007\u001a\u00020\u00062 \u0008\u0004\u0010\u001e\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u001d0\u0014H\u0084\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010\u0019Jc\u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00170 \"\u0004\u0008\u0000\u0010\u001c2\u0006\u0010\u0007\u001a\u00020\u00062.\u0008\u0004\u0010!\u001a(\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0006\u0012\u0004\u0018\u00018\u00000 0\u001d0\u0014H\u0084\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#JE\u0010$\u001a\u0004\u0018\u00018\u0000\"\u0004\u0008\u0000\u0010\u00132\u0006\u0010\u0007\u001a\u00020\u00062$\u0010\u0016\u001a \u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0014j\u0008\u0012\u0004\u0012\u00028\u0000`\u0015H\u0004\u00a2\u0006\u0004\u0008$\u0010%R\u0017\u0010\'\u001a\u00020&8\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u001b\u0010.\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010\u0010R\u001b\u00101\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010,\u001a\u0004\u00080\u0010\u0012\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u00063"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
        "queryBundle",
        "",
        "offset",
        "pageSize",
        "Landroid/database/Cursor;",
        "query",
        "(Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;",
        "Landroid/net/Uri;",
        "providerUri",
        "()Landroid/net/Uri;",
        "providerPageSize",
        "()I",
        "Data",
        "Lkotlin/Function2;",
        "Lcom/transsion/dbdata/source/data/repository/BuildCursorItem;",
        "cursorAction",
        "",
        "queryBatch",
        "(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;",
        "",
        "(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)I",
        "T",
        "Lpc9;",
        "sequenceProcessor",
        "queryBatchWithSequence",
        "Lkotlin/Pair;",
        "filterProcessor",
        "queryBatchWithFilter",
        "(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Lkotlin/Pair;",
        "querySingle",
        "(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/lang/Object;",
        "",
        "mTag",
        "Ljava/lang/String;",
        "getMTag",
        "()Ljava/lang/String;",
        "mUri$delegate",
        "Lyi5;",
        "getMUri",
        "mUri",
        "mPageSize$delegate",
        "getMPageSize",
        "mPageSize",
        "Companion",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository$Companion;

.field private static final PAGE_SIZE:I = 0x1f4


# instance fields
.field private final mPageSize$delegate:Lyi5;

.field private final mTag:Ljava/lang/String;

.field private final mUri$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mTag:Ljava/lang/String;

    new-instance v0, Li9a;

    invoke-direct {v0, p0}, Li9a;-><init>(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mUri$delegate:Lyi5;

    new-instance v0, Lj9a;

    invoke-direct {v0, p0}, Lj9a;-><init>(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mPageSize$delegate:Lyi5;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mUri_delegate$lambda$0(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMPageSize()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMUri(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$query(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->query(Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mPageSize_delegate$lambda$1(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result p0

    return p0
.end method

.method private final getMPageSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mPageSize$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mUri$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method private static final mPageSize_delegate$lambda$1(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->providerPageSize()I

    move-result p0

    return p0
.end method

.method private static final mUri_delegate$lambda$0(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->providerUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private final query(Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;
    .locals 5
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMUri()Landroid/net/Uri;

    move-result-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getProjection()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getSortOrder()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "android:query-arg-sql-selection"

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    array-length v1, v2

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string v1, "android:query-arg-limit"

    invoke-virtual {v3, v1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "android:query-arg-offset"

    invoke-virtual {v3, p4, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    const-string p3, "android:query-arg-sql-sort-order"

    invoke-virtual {v3, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p0, v3, p2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getMTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public providerPageSize()I
    .locals 0

    const/16 p0, 0x1f4

    return p0
.end method

.method public abstract providerUri()Landroid/net/Uri;
.end method

.method public final queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
            "Ls74;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "queryBundle"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cursorAction"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMUri(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;

    move-result-object v1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryBatchNoResult(uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") start"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v2

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 25
    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v2

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    move v5, v3

    move v6, v5

    .line 27
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") start query"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v7, Lge6;->a:Lge6;

    invoke-virtual {v7}, Lge6;->g()Landroid/content/Context;

    move-result-object v7

    .line 29
    invoke-static {p0, v7, p1, v5, v2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$query(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 30
    check-cast v7, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v8, v7

    check-cast v8, Landroid/database/Cursor;

    .line 31
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :try_start_2
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ") end query,count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 34
    invoke-interface {p2, v8, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/2addr v6, v0

    .line 35
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v10

    if-lt v6, v10, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v8

    goto :goto_2

    .line 36
    :cond_5
    :goto_1
    sget-object v8, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :try_start_3
    invoke-static {v0}, Lj05;->b(I)V

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lj05;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v7

    goto :goto_3

    :catchall_1
    move-exception v8

    move v9, v3

    :goto_2
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v10

    :try_start_5
    invoke-static {v0}, Lj05;->b(I)V

    invoke-static {v7, v8}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lj05;->a(I)V

    throw v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v7

    move v9, v3

    goto :goto_3

    .line 38
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") cursor is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move v9, v3

    goto :goto_4

    .line 39
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ") error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v7}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/2addr v5, v2

    .line 40
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v7

    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ") ,count:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", totalNumber:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pageSize:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 42
    invoke-static {v7, v8}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v9, v2, :cond_7

    .line 43
    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 44
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") end"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method public final queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
            "Ls74;",
            ")",
            "Ljava/util/List<",
            "TData;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ") cursor is null"

    const-string v5, "queryBatch(uri:"

    const-string v0, "queryBundle"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorAction"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMUri()Landroid/net/Uri;

    move-result-object v0

    :cond_0
    move-object v6, v0

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMPageSize()I

    move-result v8

    if-le v0, v8, :cond_1

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMPageSize()I

    move-result v0

    :goto_0
    move v8, v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v10, 0x0

    .line 6
    :cond_2
    :try_start_0
    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0}, Lge6;->g()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-direct {v1, v0, v2, v10, v8}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->query(Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 8
    move-object v11, v0

    check-cast v11, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v0, v11

    check-cast v0, Landroid/database/Cursor;

    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    sget-object v13, Lvdb;->a:Lvdb$a;

    iget-object v14, v1, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cursor_count: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v14, v9}, Lvdb$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 12
    invoke-interface {v3, v0, v6}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v9, v0

    goto :goto_3

    .line 13
    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v13

    if-lt v9, v13, :cond_3

    .line 14
    :cond_5
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 15
    :try_start_3
    invoke-static {v11, v0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v9, v0

    const/4 v12, 0x0

    :goto_3
    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v13, v0

    :try_start_5
    invoke-static {v11, v9}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    goto :goto_4

    .line 16
    :cond_6
    :try_start_6
    sget-object v0, Lvdb;->a:Lvdb$a;

    iget-object v9, v1, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Lvdb$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, v1, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v12, 0x0

    goto :goto_5

    .line 18
    :goto_4
    sget-object v9, Lvdb;->a:Lvdb$a;

    iget-object v11, v1, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ") error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Lvdb$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v9, v1, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ") error:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    add-int/2addr v10, v8

    if-ne v12, v8, :cond_7

    .line 20
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v9

    if-lt v0, v9, :cond_2

    .line 21
    :cond_7
    sget-object v0, Lvdb;->a:Lvdb$a;

    iget-object v1, v1, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mTag:Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") items: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvdb$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public final queryBatchWithFilter(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Lkotlin/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
            "Ls74;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "queryBatchWithFilter(uri:"

    const-string v2, "queryBundle"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "filterProcessor"

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMUri(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;

    move-result-object v2

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v4

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v4

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :cond_2
    :try_start_0
    sget-object v8, Lge6;->a:Lge6;

    invoke-virtual {v8}, Lge6;->g()Landroid/content/Context;

    move-result-object v8

    invoke-static {p0, v8, p1, v6, v4}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$query(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_6

    check-cast v8, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v9, v8

    check-cast v9, Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {p2, v9, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpc9;

    invoke-interface {v9}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/Pair;

    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v11

    if-eqz v12, :cond_3

    if-eqz v11, :cond_4

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v12

    goto :goto_1

    :catchall_0
    move-exception v9

    goto :goto_2

    :cond_4
    add-int/2addr v7, v0

    goto :goto_1

    :cond_5
    sget-object v9, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0}, Lj05;->b(I)V

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lj05;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v8

    goto :goto_3

    :catchall_1
    move-exception v9

    move v10, v5

    :goto_2
    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v11

    :try_start_5
    invoke-static {v0}, Lj05;->b(I)V

    invoke-static {v8, v9}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lj05;->a(I)V

    throw v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v8

    move v10, v5

    goto :goto_3

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ") cursor is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move v10, v5

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ") error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    add-int/2addr v6, v4

    if-ne v10, v4, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v9

    if-lt v8, v9, :cond_2

    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchWithSequence(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
            "Ls74;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "queryBatchWithSequence(uri:"

    const-string v1, "queryBundle"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sequenceProcessor"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMUri(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v3

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :cond_2
    :try_start_0
    sget-object v6, Lge6;->a:Lge6;

    invoke-virtual {v6}, Lge6;->g()Landroid/content/Context;

    move-result-object v6

    invoke-static {p0, v6, p1, v5, v3}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$query(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    check-cast v6, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x1

    :try_start_1
    move-object v8, v6

    check-cast v8, Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {p2, v8, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpc9;

    invoke-interface {v8}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    goto :goto_1

    :catchall_0
    move-exception v8

    goto :goto_2

    :cond_3
    sget-object v8, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v7}, Lj05;->b(I)V

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v7}, Lj05;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception v8

    move v9, v4

    :goto_2
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v10

    :try_start_5
    invoke-static {v7}, Lj05;->b(I)V

    invoke-static {v6, v8}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v7}, Lj05;->a(I)V

    throw v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v6

    move v9, v4

    goto :goto_3

    :cond_4
    :try_start_6
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") cursor is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move v9, v4

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ") error:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    add-int/2addr v5, v3

    if-ne v9, v3, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v7

    if-lt v6, v7, :cond_2

    :cond_5
    return-object v2
.end method

.method public final querySingle(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
            "Ls74;",
            ")TData;"
        }
    .end annotation

    const-string v0, "querySingle(uri:"

    const-string v1, "queryBundle"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cursorAction"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMUri()Landroid/net/Uri;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object v3, Lge6;->a:Lge6;

    invoke-virtual {v3}, Lge6;->g()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v3, p1, v4, v5}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->query(Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v3, p1

    check-cast v3, Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "a single query(uri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "), the number of conditions met is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2, v3, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_0
    :try_start_2
    invoke-static {p1, v2}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_4
    invoke-static {p1, p2}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") cursor is null"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v2

    :cond_3
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") error:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, p1

    :goto_5
    return-object v2
.end method
