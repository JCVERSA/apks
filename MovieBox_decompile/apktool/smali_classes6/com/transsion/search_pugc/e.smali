.class public final synthetic Lcom/transsion/search_pugc/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/SearchManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/SearchManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/search_pugc/e;->a:Lcom/transsion/search_pugc/SearchManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/e;->a:Lcom/transsion/search_pugc/SearchManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search_pugc/SearchManager;->c(Lcom/transsion/search_pugc/SearchManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
