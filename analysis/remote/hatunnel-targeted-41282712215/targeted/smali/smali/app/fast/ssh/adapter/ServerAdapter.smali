.class public Lapp/fast/ssh/adapter/ServerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ServerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;,
        Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;
    }
.end annotation


# instance fields
.field private final itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lapp/fast/ssh/adapter/ServerAdapter;->position:I

    iput-object p1, p0, Lapp/fast/ssh/adapter/ServerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lapp/fast/ssh/adapter/ServerAdapter;->itemList:Ljava/util/List;

    return-void
.end method

.method private getImageResourceId(Ljava/lang/String;)I
    .locals 3

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/adapter/ServerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2fc4"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lapp/fast/ssh/adapter/ServerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2fc5"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/adapter/ServerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lapp/fast/ssh/adapter/ServerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2fc6"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :cond_0
    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/adapter/ServerAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/adapter/ServerAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    if-nez p2, :cond_0

    iget-object p2, p0, Lapp/fast/ssh/adapter/ServerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c00a2

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;

    invoke-direct {p3, v0}, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;-><init>(Lapp/fast/ssh/adapter/ServerAdapter$1;)V

    const v0, 0x7f090222

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;->server_flag:Landroid/widget/ImageView;

    const v0, 0x7f090223

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;->server_name:Landroid/widget/TextView;

    const v0, 0x7f090221

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;->server_description:Landroid/widget/TextView;

    const v0, 0x7f09021c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;->select_image:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;

    :goto_0
    iget-object v0, p0, Lapp/fast/ssh/adapter/ServerAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;

    iget-object v1, p3, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;->server_flag:Landroid/widget/ImageView;

    iget-object v2, v0, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;->flag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lapp/fast/ssh/adapter/ServerAdapter;->getImageResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p3, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;->server_name:Landroid/widget/TextView;

    iget-object v2, v0, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;->server_description:Landroid/widget/TextView;

    iget-object v0, v0, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lapp/fast/ssh/adapter/ServerAdapter;->position:I

    if-ne p1, v0, :cond_1

    iget-object p1, p3, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;->select_image:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p3, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;->select_image:Landroid/widget/ImageView;

    const p3, 0x7f0800dd

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_1
    iget-object p1, p3, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;->select_image:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lapp/fast/ssh/adapter/ServerAdapter;->position:I

    return-void
.end method
