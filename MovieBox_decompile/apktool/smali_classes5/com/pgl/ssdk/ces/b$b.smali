.class Lcom/pgl/ssdk/ces/b$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/ssdk/ces/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pgl/ssdk/ces/b;


# direct methods
.method constructor <init>(Lcom/pgl/ssdk/ces/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pgl/ssdk/ces/b$b;->a:Lcom/pgl/ssdk/ces/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/ces/b$b;->a:Lcom/pgl/ssdk/ces/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/pgl/ssdk/i0;->a(Landroid/content/Context;)Lcom/pgl/ssdk/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/pgl/ssdk/i0;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
