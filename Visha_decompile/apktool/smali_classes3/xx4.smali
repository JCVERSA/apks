.class public final synthetic Lxx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyx4;

.field public final synthetic c:Lzda;


# direct methods
.method public synthetic constructor <init>(Lyx4;Lzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxx4;->b:Lyx4;

    iput-object p2, p0, Lxx4;->c:Lzda;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxx4;->b:Lyx4;

    iget-object p0, p0, Lxx4;->c:Lzda;

    invoke-static {v0, p0}, Lyx4;->a(Lyx4;Lzda;)V

    return-void
.end method
