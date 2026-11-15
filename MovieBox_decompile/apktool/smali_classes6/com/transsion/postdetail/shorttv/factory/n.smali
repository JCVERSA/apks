.class public final Lcom/transsion/postdetail/shorttv/factory/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lur/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/tn/lib/view/NoNetworkBigView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/tn/lib/view/NoNetworkBigView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
