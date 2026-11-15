.class public final Lcom/yandex/div/storage/database/ReadState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Lc74;

.field public final c:Loj8;

.field public d:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Lc74;Loj8;)V
    .locals 1

    const-string v0, "onCloseState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div/storage/database/ReadState;->b:Lc74;

    .line 3
    iput-object p2, p0, Lcom/yandex/div/storage/database/ReadState;->c:Loj8;

    return-void
.end method

.method public synthetic constructor <init>(Lc74;Loj8;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 4
    sget-object p1, Lcom/yandex/div/storage/database/ReadState$1;->INSTANCE:Lcom/yandex/div/storage/database/ReadState$1;

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/yandex/div/storage/database/ReadState;-><init>(Lc74;Loj8;)V

    return-void
.end method


# virtual methods
.method public final b()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/storage/database/ReadState;->d:Landroid/database/Cursor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/storage/database/ReadState;->c:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iput-object v0, p0, Lcom/yandex/div/storage/database/ReadState;->d:Landroid/database/Cursor;

    const-string p0, "c"

    invoke-static {v0, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cursor should be called only once"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/storage/database/ReadState;->d:Landroid/database/Cursor;

    invoke-static {v0}, Lnv4;->a(Landroid/database/Cursor;)V

    iget-object p0, p0, Lcom/yandex/div/storage/database/ReadState;->b:Lc74;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method
