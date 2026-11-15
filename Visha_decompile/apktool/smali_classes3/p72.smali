.class public final synthetic Lp72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:La82$b;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;La82$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp72;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lp72;->c:La82$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lp72;->b:Ljava/lang/Runnable;

    iget-object p0, p0, Lp72;->c:La82$b;

    invoke-static {v0, p0}, Lz72;->n(Ljava/lang/Runnable;La82$b;)V

    return-void
.end method
