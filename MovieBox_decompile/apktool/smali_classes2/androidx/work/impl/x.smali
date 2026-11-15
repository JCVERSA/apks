.class public final synthetic Landroidx/work/impl/x;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lz3/e$c;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/x;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lz3/e$b;)Lz3/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/x;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/work/impl/WorkDatabase$a;->a(Landroid/content/Context;Lz3/e$b;)Lz3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
