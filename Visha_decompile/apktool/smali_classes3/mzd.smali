.class public final Lmzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpe7;


# instance fields
.field public final synthetic a:Lzda;

.field public final synthetic b:Lozd;


# direct methods
.method public constructor <init>(Lozd;Lzda;)V
    .locals 0

    iput-object p1, p0, Lmzd;->b:Lozd;

    iput-object p2, p0, Lmzd;->a:Lzda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lxda;)V
    .locals 0

    iget-object p1, p0, Lmzd;->b:Lozd;

    invoke-static {p1}, Lozd;->b(Lozd;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lmzd;->a:Lzda;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
