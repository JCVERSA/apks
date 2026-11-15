.class public final synthetic Lxq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loj8;


# instance fields
.field public final synthetic a:Lzs1$b;

.field public final synthetic b:Le74;


# direct methods
.method public synthetic constructor <init>(Lzs1$b;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxq2;->a:Lzs1$b;

    iput-object p2, p0, Lxq2;->b:Le74;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lxq2;->a:Lzs1$b;

    iget-object p0, p0, Lxq2;->b:Le74;

    invoke-static {v0, p0}, Lcom/yandex/div/storage/DivStorageImpl;->e(Lzs1$b;Le74;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
