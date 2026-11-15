.class public final Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzn8;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/storage/DivStorageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CursorDrivenRawJson"
.end annotation


# instance fields
.field public final b:Landroid/database/Cursor;

.field public c:Z

.field public final d:Ljava/lang/String;

.field public final e:Lyi5;

.field public final synthetic f:Lcom/yandex/div/storage/DivStorageImpl;


# direct methods
.method public constructor <init>(Lcom/yandex/div/storage/DivStorageImpl;Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->f:Lcom/yandex/div/storage/DivStorageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->b:Landroid/database/Cursor;

    const-string v0, "raw_json_id"

    invoke-static {p1, p2, v0}, Lcom/yandex/div/storage/DivStorageImpl;->h(Lcom/yandex/div/storage/DivStorageImpl;Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "cursor.getString(cursor.\u2026exOf(COLUMN_RAW_JSON_ID))"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->d:Ljava/lang/String;

    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson$data$2;

    invoke-direct {v0, p0, p1}, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson$data$2;-><init>(Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;Lcom/yandex/div/storage/DivStorageImpl;)V

    invoke-static {p2, v0}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->e:Lyi5;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->c:Z

    return p0
.end method


# virtual methods
.method public final b()Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->b:Landroid/database/Cursor;

    return-object p0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->c:Z

    return-void
.end method

.method public getData()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->e:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/DivStorageImpl$CursorDrivenRawJson;->d:Ljava/lang/String;

    return-object p0
.end method
