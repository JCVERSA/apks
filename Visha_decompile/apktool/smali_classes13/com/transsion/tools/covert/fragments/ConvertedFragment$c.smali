.class public Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/ConvertedFragment;->I2(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/tools/covert/fragments/ConvertedFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Lcom/transsion/dbdata/beans/media/AudioItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->c:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput p3, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic j(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->m(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->l(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lao;->v0(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic m(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAudioConvertedElement error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConvertedFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x430

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->c:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->v2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->c:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->w2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->b:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->c:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->x2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->c:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->y2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Lcom/transsion/audio/adapter/AudioItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->c:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->A1()V

    return-void
.end method

.method public e()V
    .locals 2

    sget-boolean p0, Lpp3;->p:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x473

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lqi1;

    invoke-direct {v0, p2}, Lqi1;-><init>(Ljava/lang/String;)V

    new-instance v1, Lri1;

    invoke-direct {v1}, Lri1;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->c:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-static {p1}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->t2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->c:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v0, 0x1

    invoke-static {p1, p0, p2, v0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->u2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V

    return-void
.end method
