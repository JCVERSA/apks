.class public final synthetic Lsp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyp;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lyp;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsp;->b:Lyp;

    iput-object p2, p0, Lsp;->c:Landroid/content/Context;

    iput-object p3, p0, Lsp;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lsp;->b:Lyp;

    iget-object v1, p0, Lsp;->c:Landroid/content/Context;

    iget-object p0, p0, Lsp;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lyp;->g(Lyp;Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method
