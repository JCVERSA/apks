.class public final synthetic Lpg7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

.field public final synthetic c:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg7;->b:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    iput-object p2, p0, Lpg7;->c:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lpg7;->b:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    iget-object p0, p0, Lpg7;->c:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->g(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Landroid/view/View;)V

    return-void
.end method
