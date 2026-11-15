.class public final synthetic Lcom/transsion/home/fragment/home/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/home/HomeFragment;

.field public final synthetic b:Lcom/transsion/home/bean/AppTab;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/home/HomeFragment;Lcom/transsion/home/bean/AppTab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/fragment/home/e;->a:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/fragment/home/e;->b:Lcom/transsion/home/bean/AppTab;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/e;->a:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/fragment/home/e;->b:Lcom/transsion/home/bean/AppTab;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/home/fragment/home/HomeFragment;->j0(Lcom/transsion/home/fragment/home/HomeFragment;Lcom/transsion/home/bean/AppTab;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
