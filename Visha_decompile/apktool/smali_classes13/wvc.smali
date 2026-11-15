.class public final synthetic Lwvc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lqy9;


# direct methods
.method public synthetic constructor <init>(Lqy9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwvc;->b:Lqy9;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lwvc;->b:Lqy9;

    check-cast p1, Lbzc;

    invoke-virtual {p0, p1}, Lqy9;->h(Lpy9;)V

    return-void
.end method
