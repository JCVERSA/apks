.class final Lcom/yandex/div/storage/DivStorageImpl$collectsRawJsonsIdsFor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/storage/DivStorageImpl;->k(Le74;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/yandex/div/storage/database/ReadState;",
        "it",
        "Lzfb;",
        "invoke",
        "(Lcom/yandex/div/storage/database/ReadState;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $predicate:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field final synthetic $results:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yandex/div/storage/DivStorageImpl;


# direct methods
.method public constructor <init>(Lcom/yandex/div/storage/DivStorageImpl;Le74;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/storage/DivStorageImpl;",
            "Le74;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/storage/DivStorageImpl$collectsRawJsonsIdsFor$1;->this$0:Lcom/yandex/div/storage/DivStorageImpl;

    iput-object p2, p0, Lcom/yandex/div/storage/DivStorageImpl$collectsRawJsonsIdsFor$1;->$predicate:Le74;

    iput-object p3, p0, Lcom/yandex/div/storage/DivStorageImpl$collectsRawJsonsIdsFor$1;->$results:Ljava/util/Set;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div/storage/database/ReadState;

    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/DivStorageImpl$collectsRawJsonsIdsFor$1;->invoke(Lcom/yandex/div/storage/database/ReadState;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lcom/yandex/div/storage/database/ReadState;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/div/storage/database/ReadState;->b()Landroid/database/Cursor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;

    iget-object v1, p0, Lcom/yandex/div/storage/DivStorageImpl$collectsRawJsonsIdsFor$1;->this$0:Lcom/yandex/div/storage/DivStorageImpl;

    invoke-direct {v0, v1, p1}, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;-><init>(Lcom/yandex/div/storage/DivStorageImpl;Landroid/database/Cursor;)V

    .line 5
    iget-object v1, p0, Lcom/yandex/div/storage/DivStorageImpl$collectsRawJsonsIdsFor$1;->$predicate:Le74;

    invoke-interface {v1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/yandex/div/storage/DivStorageImpl$collectsRawJsonsIdsFor$1;->$results:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->close()V

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    :goto_0
    return-void
.end method
