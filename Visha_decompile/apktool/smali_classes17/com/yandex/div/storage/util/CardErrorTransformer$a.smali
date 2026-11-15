.class public final Lcom/yandex/div/storage/util/CardErrorTransformer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/storage/util/CardErrorTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/storage/util/CardErrorTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:[Lcom/yandex/div/storage/util/CardErrorTransformer;


# direct methods
.method public varargs constructor <init>([Lcom/yandex/div/storage/util/CardErrorTransformer;)V
    .locals 1

    const-string v0, "transformers"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/storage/util/CardErrorTransformer$a;->a:[Lcom/yandex/div/storage/util/CardErrorTransformer;

    return-void
.end method
