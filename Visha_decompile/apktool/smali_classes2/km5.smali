.class public final synthetic Lkm5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic c:I

.field public final synthetic d:Lom5$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILom5$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkm5;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lkm5;->c:I

    iput-object p3, p0, Lkm5;->d:Lom5$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lkm5;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lkm5;->c:I

    iget-object p0, p0, Lkm5;->d:Lom5$a;

    invoke-static {v0, v1, p0}, Lom5;->a(Ljava/util/concurrent/CopyOnWriteArraySet;ILom5$a;)V

    return-void
.end method
