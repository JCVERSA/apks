.class public final Lfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Ljava/lang/String;

.field public final c:Ln3f;

.field public final synthetic d:Lhig;


# direct methods
.method public synthetic constructor <init>(Lhig;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ln3f;Lgig;)V
    .locals 0

    iput-object p1, p0, Lfig;->d:Lhig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfig;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lfig;->b:Ljava/lang/String;

    iput-object p4, p0, Lfig;->c:Ln3f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lfig;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lfig;->d:Lhig;

    iget-object p2, p0, Lfig;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lhig;->n(Ljava/lang/String;Ln3f;)V

    return-void

    :cond_0
    iget-object p0, p0, Lfig;->c:Ln3f;

    invoke-interface {p0, p1, p2}, Ln3f;->a(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
