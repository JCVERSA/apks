.class public final synthetic Lp4e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4e;->b:Landroid/view/ViewGroup;

    iput-boolean p2, p0, Lp4e;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lp4e;->b:Landroid/view/ViewGroup;

    iget-boolean p0, p0, Lp4e;->c:Z

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/zg2;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method
