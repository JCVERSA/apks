.class public Lcom/transsion/tools/covert/adapter/ConvertingAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/convert/ConvertingTask$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/convert/ConvertingTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/BaseViewHolder;

.field public final synthetic b:Lcom/transsion/playercommon/convert/ConvertingTask;

.field public final synthetic c:Lcom/transsion/tools/covert/adapter/ConvertingAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/adapter/ConvertingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/convert/ConvertingTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter$a;->c:Lcom/transsion/tools/covert/adapter/ConvertingAdapter;

    iput-object p2, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter$a;->a:Lcom/chad/library/adapter/base/BaseViewHolder;

    iput-object p3, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter$a;->b:Lcom/transsion/playercommon/convert/ConvertingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter$a;->c:Lcom/transsion/tools/covert/adapter/ConvertingAdapter;

    iget-object p0, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter$a;->a:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->c(Lcom/transsion/tools/covert/adapter/ConvertingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    return-void
.end method

.method public b(D)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter$a;->a:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/tools/R$id;->tv_main_fragment_item_content:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter$a;->b:Lcom/transsion/playercommon/convert/ConvertingTask;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter$a;->a:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/tools/R$id;->progressBar:I

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setProgress(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method
