.class public Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$a;->b:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$a;->b:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->e:Lom7;

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object p4, p0, Lom7;->b:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_1

    iget-object p4, p0, Lom7;->b:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/xuanniao/account/model/data/CloudItem;

    if-ne p2, p3, :cond_0

    const/4 p5, 0x1

    goto :goto_1

    :cond_0
    move p5, p1

    :goto_1
    iput-boolean p5, p4, Lcom/transsion/xuanniao/account/model/data/CloudItem;->select:Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
