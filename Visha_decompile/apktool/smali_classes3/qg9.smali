.class public final synthetic Lqg9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lrg9;


# direct methods
.method public synthetic constructor <init>(Lrg9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqg9;->b:Lrg9;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lqg9;->b:Lrg9;

    invoke-static {p0}, Lrg9;->a(Lrg9;)V

    return-void
.end method
