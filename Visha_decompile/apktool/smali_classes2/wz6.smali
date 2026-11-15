.class public final synthetic Lwz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyz6;

.field public final synthetic c:Lyz6$c;


# direct methods
.method public synthetic constructor <init>(Lyz6;Lyz6$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwz6;->b:Lyz6;

    iput-object p2, p0, Lwz6;->c:Lyz6$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lwz6;->b:Lyz6;

    iget-object p0, p0, Lwz6;->c:Lyz6$c;

    invoke-static {v0, p0}, Lyz6;->a(Lyz6;Lyz6$c;)V

    return-void
.end method
