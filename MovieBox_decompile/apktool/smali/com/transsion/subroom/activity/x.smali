.class public final synthetic Lcom/transsion/subroom/activity/x;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/subroom/activity/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subroom/activity/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/subroom/activity/x;->a:Lcom/transsion/subroom/activity/MainActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/x;->a:Lcom/transsion/subroom/activity/MainActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->d(Lcom/transsion/subroom/activity/MainActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
