.class public final synthetic Lzc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc2;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/errors/ErrorModel;

.field public final synthetic c:Le74;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/errors/ErrorModel;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzc3;->b:Lcom/yandex/div/core/view2/errors/ErrorModel;

    iput-object p2, p0, Lzc3;->c:Le74;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lzc3;->b:Lcom/yandex/div/core/view2/errors/ErrorModel;

    iget-object p0, p0, Lzc3;->c:Le74;

    invoke-static {v0, p0}, Lcom/yandex/div/core/view2/errors/ErrorModel;->a(Lcom/yandex/div/core/view2/errors/ErrorModel;Le74;)V

    return-void
.end method
