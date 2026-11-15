.class public final synthetic Ldb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic b:Leb0;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/transsion/widgets/popup/ISelectCallback;


# direct methods
.method public synthetic constructor <init>(Leb0;Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb0;->b:Leb0;

    iput-object p2, p0, Ldb0;->c:Ljava/util/List;

    iput-object p3, p0, Ldb0;->d:Lcom/transsion/widgets/popup/ISelectCallback;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, Ldb0;->b:Leb0;

    iget-object v1, p0, Ldb0;->c:Ljava/util/List;

    iget-object p0, p0, Ldb0;->d:Lcom/transsion/widgets/popup/ISelectCallback;

    invoke-static {v0, v1, p0}, Leb0;->a(Leb0;Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;)V

    return-void
.end method
