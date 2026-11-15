.class public final synthetic Lwo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lxo1;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lxo1;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwo1;->b:Lxo1;

    iput-object p2, p0, Lwo1;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lwo1;->b:Lxo1;

    iget-object p0, p0, Lwo1;->c:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lxo1;->a(Lxo1;Ljava/lang/Runnable;)V

    return-void
.end method
