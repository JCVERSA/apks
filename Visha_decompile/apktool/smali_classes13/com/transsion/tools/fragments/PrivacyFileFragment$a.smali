.class public Lcom/transsion/tools/fragments/PrivacyFileFragment$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PrivacyFileFragment;->updateShowUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/transsion/tools/fragments/PrivacyFileFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PrivacyFileFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$a;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    iput p2, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$a;->a:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$a;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/PrivacyFileFragment;->W4(Lcom/transsion/tools/fragments/PrivacyFileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$a;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/PrivacyFileFragment;->X4(Lcom/transsion/tools/fragments/PrivacyFileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$a;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/PrivacyFileFragment;->Y4(Lcom/transsion/tools/fragments/PrivacyFileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$a;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/PrivacyFileFragment;->Z4(Lcom/transsion/tools/fragments/PrivacyFileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$a;->a:I

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
