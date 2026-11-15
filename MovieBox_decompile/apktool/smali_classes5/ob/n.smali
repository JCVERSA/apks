.class public final synthetic Lob/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lob/v;

.field public final synthetic b:Lkc/b;


# direct methods
.method public synthetic constructor <init>(Lob/v;Lkc/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lob/n;->a:Lob/v;

    .line 5
    .line 6
    iput-object p2, p0, Lob/n;->b:Lkc/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lob/n;->a:Lob/v;

    .line 2
    .line 3
    iget-object v1, p0, Lob/n;->b:Lkc/b;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lob/o;->l(Lob/v;Lkc/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
