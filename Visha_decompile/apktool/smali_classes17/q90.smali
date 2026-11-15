.class public final synthetic Lq90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/internal/widget/tabs/f$a;


# instance fields
.field public final synthetic a:Lcom/yandex/div/internal/widget/tabs/a;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/tabs/a;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq90;->a:Lcom/yandex/div/internal/widget/tabs/a;

    iput p2, p0, Lq90;->b:I

    iput p3, p0, Lq90;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget-object v0, p0, Lq90;->a:Lcom/yandex/div/internal/widget/tabs/a;

    iget v1, p0, Lq90;->b:I

    iget p0, p0, Lq90;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/yandex/div/internal/widget/tabs/a;->e(Lcom/yandex/div/internal/widget/tabs/a;III)I

    move-result p0

    return p0
.end method
