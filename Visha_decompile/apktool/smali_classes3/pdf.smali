.class public final synthetic Lpdf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lrdf;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lrdf;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpdf;->b:Lrdf;

    iput-object p2, p0, Lpdf;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpdf;->b:Lrdf;

    iget-object p0, p0, Lpdf;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Lrdf;->a(Lrdf;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
