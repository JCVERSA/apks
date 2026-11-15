.class public final synthetic Li5c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc6c$a;

.field public final synthetic c:Lf7c;


# direct methods
.method public synthetic constructor <init>(Lc6c$a;Lf7c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5c;->b:Lc6c$a;

    iput-object p2, p0, Li5c;->c:Lf7c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Li5c;->b:Lc6c$a;

    iget-object p0, p0, Li5c;->c:Lf7c;

    invoke-static {v0, p0}, Lc6c$a;->f(Lc6c$a;Lf7c;)V

    return-void
.end method
