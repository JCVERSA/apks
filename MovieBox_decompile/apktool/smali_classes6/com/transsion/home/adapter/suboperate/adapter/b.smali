.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/adapter/f;

.field public final synthetic c:Lcom/transsion/home/bean/AppointSubject;

.field public final synthetic d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/home/adapter/suboperate/adapter/f;Lcom/transsion/home/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->b:Lcom/transsion/home/adapter/suboperate/adapter/f;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->c:Lcom/transsion/home/bean/AppointSubject;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->b:Lcom/transsion/home/adapter/suboperate/adapter/f;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->c:Lcom/transsion/home/bean/AppointSubject;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/adapter/suboperate/adapter/f;->C1(ZLcom/transsion/home/adapter/suboperate/adapter/f;Lcom/transsion/home/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z)Lkotlin/Unit;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
