.class public final synthetic Lwc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lmj5;

.field public final synthetic c:Lpj8;


# direct methods
.method public synthetic constructor <init>(Lmj5;Lpj8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc1;->b:Lmj5;

    iput-object p2, p0, Lwc1;->c:Lpj8;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lwc1;->b:Lmj5;

    iget-object p0, p0, Lwc1;->c:Lpj8;

    invoke-static {v0, p0}, Lxc1;->j(Lmj5;Lpj8;)V

    return-void
.end method
