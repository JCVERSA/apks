.class public final synthetic Lcom/yandex/div/storage/DivStorageImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzs1$c;
.implements Le84;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/storage/DivStorageImpl;-><init>(Landroid/content/Context;Lat1;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/storage/DivStorageImpl;


# direct methods
.method public constructor <init>(Lcom/yandex/div/storage/DivStorageImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/storage/DivStorageImpl$c;->a:Lcom/yandex/div/storage/DivStorageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lzs1$b;II)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/storage/DivStorageImpl$c;->a:Lcom/yandex/div/storage/DivStorageImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/storage/DivStorageImpl;->t(Lzs1$b;II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lzs1$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Le84;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/storage/DivStorageImpl$c;->getFunctionDelegate()Lx74;

    move-result-object p0

    check-cast p1, Le84;

    invoke-interface {p1}, Le84;->getFunctionDelegate()Lx74;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lx74;
    .locals 8

    new-instance v7, Lkotlin/jvm/internal/FunctionReferenceImpl;

    iget-object v2, p0, Lcom/yandex/div/storage/DivStorageImpl$c;->a:Lcom/yandex/div/storage/DivStorageImpl;

    const-string v5, "onUpgrade(Lcom/yandex/div/storage/database/DatabaseOpenHelper$Database;II)V"

    const/4 v6, 0x0

    const/4 v1, 0x3

    const-class v3, Lcom/yandex/div/storage/DivStorageImpl;

    const-string v4, "onUpgrade"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/storage/DivStorageImpl$c;->getFunctionDelegate()Lx74;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
