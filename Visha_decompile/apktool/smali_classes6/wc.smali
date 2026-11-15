.class public final synthetic Lwc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lxc;


# direct methods
.method public synthetic constructor <init>(Lxc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc;->b:Lxc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lwc;->b:Lxc;

    invoke-static {p0}, Lxc;->a(Lxc;)V

    return-void
.end method
