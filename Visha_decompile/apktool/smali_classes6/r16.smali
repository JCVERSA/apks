.class public abstract Lr16;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/transsion/dbdata/R$id;->id:I

    sput v0, Lr16;->a:I

    sget v0, Lcom/transsion/dbdata/R$id;->item_id:I

    sput v0, Lr16;->b:I

    sget v0, Lcom/transsion/dbdata/R$id;->sort:I

    sput v0, Lr16;->c:I

    sget v0, Lcom/transsion/dbdata/R$id;->channel_id:I

    sput v0, Lr16;->d:I

    sget v0, Lcom/transsion/dbdata/R$id;->name:I

    sput v0, Lr16;->e:I

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/transsion/dbdata/R$id;->mark:I

    return v0
.end method

.method public static b(Landroid/view/View;JLjava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lr16;->e(Landroid/view/View;)V

    sget v0, Lr16;->a:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lr16;->b:I

    const/16 p2, 0x2711

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lr16;->c:I

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static c(Landroid/view/View;JLjava/lang/String;JLjava/lang/String;JI)V
    .locals 1

    invoke-static {p0}, Lr16;->e(Landroid/view/View;)V

    sget v0, Lr16;->a:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lr16;->b:I

    const/16 p2, 0x2712

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lr16;->e:I

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lr16;->d:I

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->request_id:I

    invoke-virtual {p0, p1, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->topic_id:I

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->pay_type:I

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static d(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lr16;->e(Landroid/view/View;)V

    sget v0, Lr16;->b:I

    const/16 v1, 0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static e(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lr16;->a()I

    move-result v0

    const-string v1, "msg"

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static f(Landroid/view/View;JIJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lr16;->e(Landroid/view/View;)V

    sget v0, Lr16;->a:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lr16;->b:I

    const/16 p2, 0x270f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lr16;->c:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lr16;->d:I

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->biz_group_id:I

    invoke-virtual {p0, p1, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->video_list:I

    invoke-virtual {p0, p1, p7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->is_more:I

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->recommend_part:I

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->request_id:I

    invoke-virtual {p0, p1, p10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->pay_type:I

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->vk_id:I

    invoke-virtual {p0, p1, p12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static g(Landroid/view/View;JIJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lr16;->e(Landroid/view/View;)V

    sget v0, Lr16;->a:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lr16;->b:I

    const/16 p2, 0x2713

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lr16;->c:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lr16;->d:I

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->biz_group_id:I

    invoke-virtual {p0, p1, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->video_list:I

    invoke-virtual {p0, p1, p7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->is_more:I

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->recommend_part:I

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lr16;->e:I

    invoke-virtual {p0, p1, p10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->video_id:I

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/transsion/dbdata/R$id;->vk_id:I

    invoke-virtual {p0, p1, p12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
