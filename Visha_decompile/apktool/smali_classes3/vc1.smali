.class public final synthetic Lvc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lrs7;

.field public final synthetic c:Lpj8;


# direct methods
.method public synthetic constructor <init>(Lrs7;Lpj8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc1;->b:Lrs7;

    iput-object p2, p0, Lvc1;->c:Lpj8;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lvc1;->b:Lrs7;

    iget-object p0, p0, Lvc1;->c:Lpj8;

    invoke-static {v0, p0}, Lxc1;->i(Lrs7;Lpj8;)V

    return-void
.end method
