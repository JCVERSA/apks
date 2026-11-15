.class public final synthetic Lwf3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwf3;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lwf3;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->b(Landroid/content/Context;)V

    return-void
.end method
