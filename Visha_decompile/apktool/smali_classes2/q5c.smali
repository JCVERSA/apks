.class public final synthetic Lq5c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc6c$a;

.field public final synthetic c:Lju1;


# direct methods
.method public synthetic constructor <init>(Lc6c$a;Lju1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5c;->b:Lc6c$a;

    iput-object p2, p0, Lq5c;->c:Lju1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lq5c;->b:Lc6c$a;

    iget-object p0, p0, Lq5c;->c:Lju1;

    invoke-static {v0, p0}, Lc6c$a;->c(Lc6c$a;Lju1;)V

    return-void
.end method
