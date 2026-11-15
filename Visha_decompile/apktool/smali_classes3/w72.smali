.class public final synthetic Lw72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lz72;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:La82$b;


# direct methods
.method public synthetic constructor <init>(Lz72;Ljava/lang/Runnable;La82$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw72;->b:Lz72;

    iput-object p2, p0, Lw72;->c:Ljava/lang/Runnable;

    iput-object p3, p0, Lw72;->d:La82$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lw72;->b:Lz72;

    iget-object v1, p0, Lw72;->c:Ljava/lang/Runnable;

    iget-object p0, p0, Lw72;->d:La82$b;

    invoke-static {v0, v1, p0}, Lz72;->E(Lz72;Ljava/lang/Runnable;La82$b;)V

    return-void
.end method
