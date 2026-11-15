.class public final Lky0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnv9;
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Lzs1$b;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lzs1$b;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lky0;->b:Lzs1$b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lky0;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lky0;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic b(Lky0;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    invoke-static {p0, p1, p2}, Lky0;->d(Lky0;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lky0;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sql"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$selectionArgs"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lky0;->b:Lzs1$b;

    invoke-interface {v0, p1, p2}, Lzs1$b;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iget-object p0, p0, Lky0;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yandex/div/storage/database/ReadState;
    .locals 2

    const-string v0, "sql"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionArgs"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/storage/database/ReadState;

    new-instance v1, Ljy0;

    invoke-direct {v1, p0, p1, p2}, Ljy0;-><init>(Lky0;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p0, p1}, Lcom/yandex/div/storage/database/ReadState;-><init>(Lc74;Loj8;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lky0;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v1}, Lov9;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lky0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lky0;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lov9;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lky0;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1

    const-string v0, "sql"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lky0;->b:Lzs1$b;

    invoke-interface {v0, p1}, Lzs1$b;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    iget-object p0, p0, Lky0;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
