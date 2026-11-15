.class public final synthetic Lbw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcw5;

.field public final synthetic c:Lzv5;


# direct methods
.method public synthetic constructor <init>(Lcw5;Lzv5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbw5;->b:Lcw5;

    iput-object p2, p0, Lbw5;->c:Lzv5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbw5;->b:Lcw5;

    iget-object p0, p0, Lbw5;->c:Lzv5;

    invoke-static {v0, p0}, Lcw5;->f(Lcw5;Lzv5;)V

    return-void
.end method
