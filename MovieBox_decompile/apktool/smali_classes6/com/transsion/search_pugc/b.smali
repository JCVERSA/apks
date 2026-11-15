.class public final synthetic Lcom/transsion/search_pugc/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/SearchManager;

.field public final synthetic b:Lcom/transsion/search_pugc/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/SearchManager;Lcom/transsion/search_pugc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/search_pugc/b;->a:Lcom/transsion/search_pugc/SearchManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/search_pugc/b;->b:Lcom/transsion/search_pugc/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/b;->a:Lcom/transsion/search_pugc/SearchManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search_pugc/b;->b:Lcom/transsion/search_pugc/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/search_pugc/SearchManager;->a(Lcom/transsion/search_pugc/SearchManager;Lcom/transsion/search_pugc/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
