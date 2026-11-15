.class public final synthetic Ldsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroid/view/WindowManager;


# direct methods
.method public synthetic constructor <init>(Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsd;->b:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ldsd;->b:Landroid/view/WindowManager;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rt1;->c(Landroid/view/WindowManager;)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method
