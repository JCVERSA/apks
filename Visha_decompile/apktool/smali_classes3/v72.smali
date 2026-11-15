.class public final synthetic Lv72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lz72;

.field public final synthetic c:Ljava/util/concurrent/Callable;

.field public final synthetic d:La82$b;


# direct methods
.method public synthetic constructor <init>(Lz72;Ljava/util/concurrent/Callable;La82$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv72;->b:Lz72;

    iput-object p2, p0, Lv72;->c:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lv72;->d:La82$b;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lv72;->b:Lz72;

    iget-object v1, p0, Lv72;->c:Ljava/util/concurrent/Callable;

    iget-object p0, p0, Lv72;->d:La82$b;

    invoke-static {v0, v1, p0}, Lz72;->k(Lz72;Ljava/util/concurrent/Callable;La82$b;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
